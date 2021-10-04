package com.example.fanpage

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    val actionCodeSettings = actionCodeSettings {
        // URL you want to redirect back to. The domain (www.example.com) for this
        // URL must be whitelisted in the Firebase Console.
        url = "https://www.example.com/finishSignUp?cartId=1234"
        // This must be true
        handleCodeInApp = true
        setIOSBundleId("com.example.ios")
        setAndroidPackageName(
            "com.mdgsdc.fanpage",
            true, /* installIfNotAvailable */
            "12" /* minimumVersion */)
    }

    Firebase.auth.sendSignInLinkToEmail(email, actionCodeSettings)
    .addOnCompleteListener { task ->
        if (task.isSuccessful) {
            Log.d(TAG, "Email sent.")
        }
    }

    Firebase.auth.signOut()
}
