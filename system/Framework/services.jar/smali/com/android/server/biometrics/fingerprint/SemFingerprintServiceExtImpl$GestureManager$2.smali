.class Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SemFingerprintServiceExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->registerBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    .line 2004
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2007
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2008
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GestureManager.onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-nez v1, :cond_69

    .line 2010
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_69

    .line 2021
    :cond_2e
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 2022
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 2024
    :cond_3e
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    iget-boolean v1, v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledFpMotion:Z

    if-eqz v1, :cond_93

    .line 2026
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    iget-object v1, v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    iget-object v1, v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 2027
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v1

    if-nez v1, :cond_93

    .line 2029
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    iget-object v1, v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    goto :goto_93

    .line 2012
    :cond_69
    :goto_69
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    iget-boolean v1, v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledFpMotion:Z

    if-eqz v1, :cond_93

    .line 2013
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    iget-object v1, v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    iget-object v1, v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 2014
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 2016
    :cond_8b
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    iget-object v1, v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    .line 2035
    :cond_93
    :goto_93
    return-void
.end method
