package com.thisissandipp.one.contacts.models

data class ContactName(
    val firstName: String? = "",            // Mapped to GIVEN_NAME
    val lastName: String? = "",             // Mapped to FAMILY_NAME
    val middleName: String? = "",           // Mapped to MIDDLE_NAME
    val prefix: String? = "",               // Mapped to PREFIX
    val suffix: String? = "",               // Mapped to SUFFIX
    val phoneticFirstName: String? = "",    // Mapped to PHONETIC_GIVEN_NAME
    val phoneticLastName: String? = "",     // Mapped to PHONETIC_FAMILY_NAME
    val phoneticMiddleName: String? = "",   // Mapped to PHONETIC_MIDDLE_NAME
) {
    fun toMap(): Map<String, Any?> {
        return mapOf(
            "firstName" to firstName,
            "lastName" to lastName,
            "middleName" to middleName,
            "prefix" to prefix,
            "suffix" to suffix,
            "phoneticFirstName" to phoneticFirstName,
            "phoneticLastName" to phoneticLastName,
            "phoneticMiddleName" to phoneticMiddleName
        )
    }
}
