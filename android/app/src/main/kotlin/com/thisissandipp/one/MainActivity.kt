package com.thisissandipp.one

import com.thisissandipp.one.contacts.ContactsManager
import com.thisissandipp.one.contacts.models.DialerContact
import com.thisissandipp.one.core.DefaultDispatcherProvider
import com.thisissandipp.one.core.DispatcherProvider
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch

class MainActivity : FlutterActivity() {
    private val channel = "com.thisissandipp.one/channel"
    private val coroutineScope = CoroutineScope(Dispatchers.IO)

    private val dispatchers: DispatcherProvider = DefaultDispatcherProvider()

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel).setMethodCallHandler { call, result ->
            when (call.method) {
                "getContacts" -> {
                    coroutineScope.launch(dispatchers.io) {
                        val contacts: List<DialerContact> = ContactsManager.getContacts(contentResolver, resources)
                        coroutineScope.launch(dispatchers.main) { result.success(contacts.map { it.toMap() }) }
                    }
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        coroutineScope.cancel()
    }
}
