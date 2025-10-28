package com.thisissandipp.one.contacts.models

data class PostalAddress(
    val formattedAddress: String? = "",
    val city: String? = "",
    val country: String? = "",
    val neighborhood: String? = "",
    val poBox: String? = "",
    val postCode: String? = "",
    val region: String? = "",
    val street: String? = "",
    val label: String? = "",
    val isPrimary: Boolean = false,
) {
    fun toMap(): Map<String, Any?> {
        return mapOf(
            "formattedAddress" to formattedAddress,
            "city" to city,
            "country" to country,
            "neighborhood" to neighborhood,
            "poBox" to poBox,
            "postCode" to postCode,
            "region" to region,
            "street" to street,
            "label" to label,
            "isPrimary" to isPrimary,
        )
    }
}
