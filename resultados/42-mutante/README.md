# Mutante 42

--

**Error :** SI
**Tipo Mutante :** Trivial

```

// CRASH: me.kuehle.carreport (pid 3558)
// Short Msg: java.lang.NullPointerException
// Long Msg: java.lang.NullPointerException: Attempt to invoke virtual method 'long java.util.Date.getTime()' on a null object reference
// Build Label: google/sdk_gphone_x86/generic_x86:8.0.0/OSR1.170901.043/4456315:user/release-keys
// Build Changelist: 4456315
// Build Time: 1510873337000
// java.lang.NullPointerException: Attempt to invoke virtual method 'long java.util.Date.getTime()' on a null object reference
// 	at me.kuehle.carreport.gui.dialog.m.a(Unknown Source:15)
// 	at me.kuehle.carreport.gui.util.d.onClick(Unknown Source:18)
// 	at android.view.View.performClick(View.java:6256)
// 	at android.view.View$PerformClick.run(View.java:24701)
// 	at android.os.Handler.handleCallback(Handler.java:789)
// 	at android.os.Handler.dispatchMessage(Handler.java:98)
// 	at android.os.Looper.loop(Looper.java:164)
// 	at android.app.ActivityThread.main(ActivityThread.java:6541)
// 	at java.lang.reflect.Method.invoke(Native Method)
// 	at com.android.internal.os.Zygote$MethodAndArgsCaller.run(Zygote.java:240)
// 	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:767)
//
** System appears to have crashed at event 66610 of 100000 using seed 34567654
```
