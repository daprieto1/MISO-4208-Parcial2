# Mutante 9

--

**Error :** Si
**Tipo Mutante :** Trivial

```
// CRASH: me.kuehle.carreport (pid 15972)
// Short Msg: java.lang.NullPointerException
// Long Msg: java.lang.NullPointerException: Attempt to invoke virtual method 'void android.view.View.getBoundsOnScreen(android.graphics.Rect)' on a null object reference
// Build Label: google/sdk_gphone_x86/generic_x86:8.0.0/OSR1.170901.043/4456315:user/release-keys
// Build Changelist: 4456315
// Build Time: 1510873337000
// java.lang.NullPointerException: Attempt to invoke virtual method 'void android.view.View.getBoundsOnScreen(android.graphics.Rect)' on a null object reference
// 	at android.app.assist.AssistStructure$WindowNode.<init>(AssistStructure.java:484)
// 	at android.app.assist.AssistStructure.<init>(AssistStructure.java:1908)
// 	at android.app.ActivityThread.handleRequestAssistContextExtras(ActivityThread.java:3035)
// 	at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1807)
// 	at android.os.Handler.dispatchMessage(Handler.java:105)
// 	at android.os.Looper.loop(Looper.java:164)
// 	at android.app.ActivityThread.main(ActivityThread.java:6541)
// 	at java.lang.reflect.Method.invoke(Native Method)
// 	at com.android.internal.os.Zygote$MethodAndArgsCaller.run(Zygote.java:240)
// 	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:767)
//
```
