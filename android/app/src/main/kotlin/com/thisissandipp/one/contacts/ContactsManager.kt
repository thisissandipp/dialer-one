package com.thisissandipp.one.contacts

import android.content.ContentResolver
import android.content.res.Resources
import android.database.Cursor
import android.provider.ContactsContract
import android.provider.ContactsContract.CommonDataKinds.Email
import android.provider.ContactsContract.CommonDataKinds.Phone
import android.provider.ContactsContract.CommonDataKinds.StructuredName
import android.provider.ContactsContract.CommonDataKinds.StructuredPostal
import com.thisissandipp.one.contacts.models.ContactEmail
import com.thisissandipp.one.contacts.models.ContactName
import com.thisissandipp.one.contacts.models.DialerContact
import com.thisissandipp.one.contacts.models.PhoneNumber
import com.thisissandipp.one.contacts.models.PostalAddress
import java.io.FileNotFoundException
import java.io.InputStream
import androidx.core.net.toUri

class ContactsManager {
    companion object {
        fun getContacts(contentResolver: ContentResolver, resources: Resources): List<DialerContact> {
            val dialerContactsList = mutableListOf<DialerContact>()

            val projection = arrayOf(
                ContactsContract.Contacts._ID,
                ContactsContract.Contacts.DISPLAY_NAME_PRIMARY,
                ContactsContract.Contacts.HAS_PHONE_NUMBER,
                ContactsContract.Contacts.PHOTO_URI,
            )

            val cursor: Cursor? = contentResolver.query(
                ContactsContract.Contacts.CONTENT_URI,
                projection,
                null,
                null,
                null
            )

            cursor?.use {
                if (it.moveToFirst()) {
                    val idColumnIndex = it.getColumnIndex(ContactsContract.Contacts._ID)
                    val displayNameColumnIndex = it.getColumnIndex(ContactsContract.Contacts.DISPLAY_NAME_PRIMARY)
                    val hasPhoneColumnIndex = it.getColumnIndex(ContactsContract.Contacts.HAS_PHONE_NUMBER)
                    val photoUriColumnIndex = it.getColumnIndex(ContactsContract.Contacts.PHOTO_URI)

                    do {
                        val contactId = it.getString(idColumnIndex)
                        val displayName = it.getString(displayNameColumnIndex) ?: ""
                        val photoUri = it.getString(photoUriColumnIndex)

                        val hasPhoneNumber = it.getInt(hasPhoneColumnIndex)

                        // Sub-query for [ContactName] from StructuredName
                        val contactName: ContactName = getContactName(contentResolver, contactId)
                        // Sub-query for [PhoneNumber]s from Phone
                        val phoneNumbers: List<PhoneNumber> = getPhoneNumbers(contentResolver, resources, contactId, hasPhoneNumber)
                        // Sub-query for [ContactEmail]s from Email
                        val contactEmails: List<ContactEmail> = getContactEmails(contentResolver, resources, contactId)
                        // Sub-query for [PostalAddress]es from StructuredPostal
                        val postalAddresses: List<PostalAddress> = getPostalAddresses(contentResolver, resources, contactId)
                        // Fetch Display Photo
                        val displayPhoto: ByteArray? = getDisplayPhoto(contentResolver, photoUri)

                        val dialerContact = DialerContact(
                            contactId,
                            displayName,
                            displayPhoto,
                            contactName,
                            phoneNumbers,
                            contactEmails,
                            postalAddresses
                        )
                        dialerContactsList.add(dialerContact)
                    } while (it.moveToNext())
                }
            }
            cursor?.close()
            return dialerContactsList
        }

        private fun getContactName(contentResolver: ContentResolver, contactId: String): ContactName {
            val projection = arrayOf(
                StructuredName.GIVEN_NAME,
                StructuredName.FAMILY_NAME,
                StructuredName.MIDDLE_NAME,
                StructuredName.PREFIX,
                StructuredName.SUFFIX,
                StructuredName.PHONETIC_GIVEN_NAME,
                StructuredName.PHONETIC_FAMILY_NAME,
                StructuredName.PHONETIC_MIDDLE_NAME,
            )

            val cursor: Cursor? = contentResolver.query(
                ContactsContract.Data.CONTENT_URI,
                projection,
                "${ContactsContract.Data.CONTACT_ID} = ? AND ${ContactsContract.Data.MIMETYPE} = ?",
                arrayOf(contactId, StructuredName.CONTENT_ITEM_TYPE),
                null,
            )

            var firstName = ""
            var lastName = ""
            var middleName = ""
            var prefix = ""
            var suffix = ""
            var phoneticFirstName = ""
            var phoneticLastName = ""
            var phoneticMiddleName = ""

            cursor?.use {
                if (it.moveToFirst()) {
                    val firstNameColumnIndex = it.getColumnIndex(StructuredName.GIVEN_NAME)
                    firstName = it.getString(firstNameColumnIndex)

                    val lastNameColumnIndex = it.getColumnIndex(StructuredName.FAMILY_NAME)
                    lastName = it.getString(lastNameColumnIndex)

                    val middleNameColumnIndex = it.getColumnIndex(StructuredName.MIDDLE_NAME)
                    middleName = it.getString(middleNameColumnIndex)

                    val prefixColumnIndex = it.getColumnIndex(StructuredName.PREFIX)
                    prefix = it.getString(prefixColumnIndex)

                    val suffixColumnIndex = it.getColumnIndex(StructuredName.SUFFIX)
                    suffix = it.getString(suffixColumnIndex)

                    val phoneticFirstNameColumnIndex = it.getColumnIndex(StructuredName.PHONETIC_GIVEN_NAME)
                    phoneticFirstName = it.getString(phoneticFirstNameColumnIndex)

                    val phoneticLastNameColumnIndex = it.getColumnIndex(StructuredName.PHONETIC_FAMILY_NAME)
                    phoneticLastName = it.getString(phoneticLastNameColumnIndex)

                    val phoneticMiddleNameColumnIndex = it.getColumnIndex(StructuredName.PHONETIC_MIDDLE_NAME)
                    phoneticMiddleName = it.getString(phoneticMiddleNameColumnIndex)
                }
            }

            cursor?.close()
            return ContactName(
                firstName,
                lastName,
                middleName,
                prefix,
                suffix,
                phoneticFirstName,
                phoneticLastName,
                phoneticMiddleName
            )
        }

        private fun getPhoneNumbers(
            contentResolver: ContentResolver,
            resources: Resources,
            contactId: String,
            hasPhoneNumber: Int
        ): List<PhoneNumber> {
            val phoneNumbers = mutableListOf<PhoneNumber>()

            if (hasPhoneNumber > 0) {
                val projection = arrayOf(
                    Phone.NUMBER,
                    Phone.NORMALIZED_NUMBER,
                    Phone.LABEL,
                    Phone.TYPE,
                    Phone.IS_PRIMARY,
                )

                val cursor: Cursor? = contentResolver.query(
                    Phone.CONTENT_URI,
                    projection,
                    "${Phone.CONTACT_ID} = ?",
                    arrayOf(contactId),
                    null,
                )

                cursor?.use {
                    if (it.moveToFirst()) {
                        val numberColumnIndex = it.getColumnIndex(Phone.NUMBER)
                        val normalizedNumberColumnIndex = it.getColumnIndex(Phone.NORMALIZED_NUMBER)
                        val labelColumnIndex = it.getColumnIndex(Phone.LABEL)
                        val typeColumnIndex = it.getColumnIndex(Phone.TYPE)
                        val isPrimaryColumnIndex = it.getColumnIndex(Phone.IS_PRIMARY)

                        do {
                            val number = it.getString(numberColumnIndex)
                            val normalizedNumber = it.getString(normalizedNumberColumnIndex)
                            val label = it.getString(labelColumnIndex)
                            val type = Phone.getTypeLabel(resources, it.getInt(typeColumnIndex), label).toString()

                            val isPrimary = it.getInt(isPrimaryColumnIndex) == 1
                            val phoneNumber = PhoneNumber(number, normalizedNumber, type, isPrimary)
                            phoneNumbers.add(phoneNumber)
                        } while (it.moveToNext())
                    }
                }
                cursor?.close()
            }
            return phoneNumbers
        }

        private fun getContactEmails(
            contentResolver: ContentResolver,
            resources: Resources,
            contactId: String
        ): List<ContactEmail> {
            val contactEmails = mutableListOf<ContactEmail>()

            val projection = arrayOf(
                Email.ADDRESS,
                Email.LABEL,
                Email.TYPE,
                Email.IS_PRIMARY,
            )

            val cursor: Cursor? = contentResolver.query(
                Email.CONTENT_URI,
                projection,
                "${Email.CONTACT_ID} = ?",
                arrayOf(contactId),
                null,
            )

            cursor?.use {
                if (it.moveToFirst()) {
                    val addressColumnIndex = it.getColumnIndex(Email.ADDRESS)
                    val labelColumnIndex = it.getColumnIndex(Email.LABEL)
                    val typeColumnIndex = it.getColumnIndex(Email.TYPE)
                    val isPrimaryColumnIndex = it.getColumnIndex(Email.IS_PRIMARY)

                    do {
                        val address = it.getString(addressColumnIndex)
                        val label = it.getString(labelColumnIndex)
                        val type = Email.getTypeLabel(resources, it.getInt(typeColumnIndex), label).toString()

                        val isPrimary = it.getInt(isPrimaryColumnIndex) == 1
                        val contactEmail = ContactEmail(address, type, isPrimary)
                        contactEmails.add(contactEmail)
                    } while (it.moveToNext())
                }
            }
            cursor?.close()
            return contactEmails
        }

        private fun getPostalAddresses(
            contentResolver: ContentResolver,
            resources: Resources,
            contactId: String
        ): List<PostalAddress> {
            val postalAddresses = mutableListOf<PostalAddress>()

            val projection = arrayOf(
                StructuredPostal.FORMATTED_ADDRESS,
                StructuredPostal.CITY,
                StructuredPostal.COUNTRY,
                StructuredPostal.NEIGHBORHOOD,
                StructuredPostal.POBOX,
                StructuredPostal.POSTCODE,
                StructuredPostal.REGION,
                StructuredPostal.STREET,
                StructuredPostal.LABEL,
                StructuredPostal.TYPE,
                StructuredPostal.IS_PRIMARY,
            )

            val cursor: Cursor? = contentResolver.query(
                StructuredPostal.CONTENT_URI,
                projection,
                "${StructuredPostal.CONTACT_ID} = ?",
                arrayOf(contactId),
                null
            )

            cursor?.use {
                if (it.moveToFirst()) {
                    val formattedAddressColumnIndex = it.getColumnIndex(StructuredPostal.FORMATTED_ADDRESS)
                    val cityColumnIndex = it.getColumnIndex(StructuredPostal.CITY)
                    val countryColumnIndex = it.getColumnIndex(StructuredPostal.COUNTRY)
                    val neighborhoodColumnIndex = it.getColumnIndex(StructuredPostal.NEIGHBORHOOD)
                    val poBoxColumnIndex = it.getColumnIndex(StructuredPostal.POBOX)
                    val postCodeColumnIndex = it.getColumnIndex(StructuredPostal.POSTCODE)
                    val regionColumnIndex = it.getColumnIndex(StructuredPostal.REGION)
                    val streetColumnIndex = it.getColumnIndex(StructuredPostal.STREET)
                    val labelColumnIndex = it.getColumnIndex(StructuredPostal.LABEL)
                    val typeColumnIndex = it.getColumnIndex(StructuredPostal.TYPE)
                    val isPrimaryColumnIndex = it.getColumnIndex(StructuredPostal.IS_PRIMARY)

                    do {
                        val formattedAddress = it.getString(formattedAddressColumnIndex)
                        val city = it.getString(cityColumnIndex)
                        val country = it.getString(countryColumnIndex)
                        val neighborhood = it.getString(neighborhoodColumnIndex)
                        val poBox = it.getString(poBoxColumnIndex)
                        val postCode = it.getString(postCodeColumnIndex)
                        val region = it.getString(regionColumnIndex)
                        val street = it.getString(streetColumnIndex)
                        val label = it.getString(labelColumnIndex)
                        val type = Email.getTypeLabel(resources, it.getInt(typeColumnIndex), label).toString()

                        val isPrimary = it.getInt(isPrimaryColumnIndex) == 1
                        val postalAddress = PostalAddress(
                            formattedAddress,
                            city,
                            country,
                            neighborhood,
                            poBox,
                            postCode,
                            region,
                            street,
                            type,
                            isPrimary,
                        )
                        postalAddresses.add(postalAddress)
                    } while (it.moveToNext())
                }
            }
            cursor?.close()
            return postalAddresses
        }

        private fun getDisplayPhoto(contentResolver: ContentResolver, photoUri: String?): ByteArray? {
            if (photoUri == null) return null
            try {
                val photoUri = photoUri.toUri()
                val inputStream: InputStream? = contentResolver.openInputStream(photoUri)
                return inputStream?.readBytes()
            } catch (_: FileNotFoundException) {
                // This happens if the photo URI is invalid or the photo doesn't exist.
                return null
            } catch (_: Exception) {
                // Handle other potential exceptions during photo retrieval.
                return null
            }
        }
    }
}
