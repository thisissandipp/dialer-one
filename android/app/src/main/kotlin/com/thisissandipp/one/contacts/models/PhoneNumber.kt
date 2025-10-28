package com.thisissandipp.one.contacts.models

data class PhoneNumber(
    val number: String? = "",
    val normalizedNumber: String? = "",
    val label: String? = "",
    val isPrimary: Boolean? = false,
) {
    fun toMap(): Map<String, Any?> {
        return mapOf(
            "number" to number,
            "normalizedNumber" to normalizedNumber,
            "label" to label,
            "isPrimary" to isPrimary,
        )
    }
}
