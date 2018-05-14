# Mutante 9

--

**Error :** SI
**Tipo Mutante :** Trivial

```
// CRASH: me.kuehle.carreport (pid 27086)
// Short Msg: java.lang.NullPointerException
// Long Msg: java.lang.NullPointerException: Attempt to invoke virtual method 'void android.view.View.setVisibility(int)' on a null object reference
// Build Label: google/sdk_gphone_x86/generic_x86:8.0.0/OSR1.170901.043/4456315:user/release-keys
// Build Changelist: 4456315
// Build Time: 1510873337000
// java.lang.NullPointerException: Attempt to invoke virtual method 'void android.view.View.setVisibility(int)' on a null object reference
// 	at me.kuehle.carreport.gui.m$3.onAnimationEnd(Unknown Source:7)
// 	at android.animation.Animator$AnimatorListener.onAnimationEnd(Animator.java:552)
// 	at android.animation.AnimatorSet.endAnimation(AnimatorSet.java:1293)
// 	at android.animation.AnimatorSet.doAnimationFrame(AnimatorSet.java:1079)
// 	at android.animation.AnimationHandler.doAnimationFrame(AnimationHandler.java:146)
// 	at android.animation.AnimationHandler.-wrap2(Unknown Source:0)
// 	at android.animation.AnimationHandler$1.doFrame(AnimationHandler.java:54)
// 	at android.view.Choreographer$CallbackRecord.run(Choreographer.java:909)
// 	at android.view.Choreographer.doCallbacks(Choreographer.java:723)
// 	at android.view.Choreographer.doFrame(Choreographer.java:655)
// 	at android.view.Choreographer$FrameDisplayEventReceiver.run(Choreographer.java:897)
// 	at android.os.Handler.handleCallback(Handler.java:789)
// 	at android.os.Handler.dispatchMessage(Handler.java:98)
// 	at android.os.Looper.loop(Looper.java:164)
// 	at android.app.ActivityThread.main(ActivityThread.java:6541)
// 	at java.lang.reflect.Method.invoke(Native Method)
// 	at com.android.internal.os.Zygote$MethodAndArgsCaller.run(Zygote.java:240)
// 	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:767)
```
