package com.thisissandipp.one.contacts.models

data class DialerContact(
    val id: Long,
    val displayName: String,
    val displayPhoto: ByteArray? = null,
    val contactName: ContactName = ContactName(),
    val phoneNumbers: List<PhoneNumber> = emptyList(),
    val contactEmails: List<ContactEmail> = emptyList(),
    val postalAddresses: List<PostalAddress> = emptyList(),
) {
    fun toMap(): Map<String, Any?> {
        return mapOf(
            "id" to id,
            "displayName" to displayName,
            "displayPhoto" to displayPhoto,
            "contactName" to contactName.toMap(),
            "phoneNumbers" to phoneNumbers.map { it.toMap() },
            "contactEmails" to contactEmails.map { it.toMap() },
            "postalAddresses" to postalAddresses.map { it.toMap() }
        )
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as DialerContact

        if (id != other.id) return false
        if (displayName != other.displayName) return false
        if (!displayPhoto.contentEquals(other.displayPhoto)) return false
        if (contactName != other.contactName) return false
        if (phoneNumbers != other.phoneNumbers) return false
        if (contactEmails != other.contactEmails) return false
        if (postalAddresses != other.postalAddresses) return false

        return true
    }

    override fun hashCode(): Int {
        var result = id.hashCode()
        result = 31 * result + displayName.hashCode()
        result = 31 * result + (displayPhoto?.contentHashCode() ?: 0)
        result = 31 * result + contactName.hashCode()
        result = 31 * result + phoneNumbers.hashCode()
        result = 31 * result + contactEmails.hashCode()
        result = 31 * result + postalAddresses.hashCode()
        return result
    }
}
