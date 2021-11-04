.class Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SemFingerprintServiceExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->registerPersistentBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 286
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_61

    .line 292
    const-string v1, "android.intent.extra.user_handle"

    const/16 v4, -0x2710

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 293
    .local v1, "userId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_USER_REMOVED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-eq v1, v4, :cond_5f

    .line 295
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 296
    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 297
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$000()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v1

    .line 298
    if-eqz v1, :cond_5f

    .line 299
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # invokes: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->removeFingerprints(II)I
    invoke-static {v2, v3, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$100(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;II)I

    .line 302
    .end local v1    # "userId":I
    :cond_5f
    goto/16 :goto_115

    :cond_61
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 303
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$200(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_a1

    .line 304
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_115

    .line 305
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$000()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    .line 306
    .local v1, "c":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v3, v1, Lcom/android/server/biometrics/AuthenticationClient;

    if-nez v3, :cond_96

    instance-of v3, v1, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v3, :cond_8c

    goto :goto_96

    .line 310
    :cond_8c
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$300(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->handleScreenOnOffBroadcast(ZZ)V

    goto :goto_9f

    .line 308
    :cond_96
    :goto_96
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;
    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$300(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->handleScreenOnOffBroadcast(ZZ)V

    .line 312
    .end local v1    # "c":Lcom/android/server/biometrics/ClientMonitor;
    :goto_9f
    goto/16 :goto_115

    .line 313
    :cond_a1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 314
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$200(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 315
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_115

    .line 316
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$300(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->handleScreenOnOffBroadcast(ZZ)V

    goto :goto_115

    .line 318
    :cond_c3
    const-string v1, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 319
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    if-eqz v1, :cond_115

    .line 320
    const-string/jumbo v1, "info"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 321
    .local v1, "actionInfo":I
    const/16 v3, 0xe1

    const-wide/16 v5, 0xfa

    if-ne v1, v3, :cond_f7

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 322
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsTspBlock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$400(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 323
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsTspBlock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$400(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # invokes: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleTspBlockAction(J)V
    invoke-static {v2, v5, v6}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$500(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;J)V

    goto :goto_115

    .line 325
    :cond_f7
    const/16 v3, 0xe2

    if-ne v1, v3, :cond_115

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 326
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsTspBlock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$400(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_115

    .line 327
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsTspBlock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$400(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 328
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # invokes: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleTspBlockAction(J)V
    invoke-static {v2, v5, v6}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$500(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;J)V

    .line 332
    .end local v1    # "actionInfo":I
    :cond_115
    :goto_115
    return-void
.end method
