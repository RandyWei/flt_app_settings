package dev.bughub.flt_app_settings

import android.content.Intent
import android.net.Uri
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar
import android.provider.Settings;

class FltAppSettingsPlugin(private var registrar: Registrar) : MethodCallHandler {

    /// Private method to open device settings window
    private fun openSettings(url: String) {
        this.registrar.activity().startActivity(Intent(url))
    }

    companion object {
        @JvmStatic
        fun registerWith(registrar: Registrar) {
            val channel = MethodChannel(registrar.messenger(), "bughub.dev/flt_app_settings")
            channel.setMethodCallHandler(FltAppSettingsPlugin(registrar))
        }
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when {
            call.method == "wifi" -> openSettings(Settings.ACTION_WIFI_SETTINGS)
            call.method == "location" -> openSettings(Settings.ACTION_LOCATION_SOURCE_SETTINGS)
            call.method == "security" -> openSettings(Settings.ACTION_SECURITY_SETTINGS)
            call.method == "app_settings" -> {
                val intent = Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS)
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                val uri = Uri.fromParts("package", this.registrar.activity().packageName, null)
                intent.data = uri
                this.registrar.activity().startActivity(intent)
            }
            else -> result.notImplemented()
        }
    }
}
