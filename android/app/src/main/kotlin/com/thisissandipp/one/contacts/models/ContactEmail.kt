package com.thisissandipp.one.contacts.models

data class ContactEmail(
    val address: String? = "",
    val label: String? = "",
    val isPrimary: Boolean = false,
) {
    fun toMap(): Map<String, Any?> {
        return mapOf(
            "address" to address,
            "label" to label,
            "isPrimary" to isPrimary,
        )
    }
}
