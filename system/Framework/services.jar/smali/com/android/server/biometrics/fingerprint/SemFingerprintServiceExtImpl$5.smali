.class Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "SemFingerprintServiceExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleUpdateMatcher()V
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

    .line 1734
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$SemFingerprintServiceExtImpl$5()V
    .registers 3

    .line 1740
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForMatcherUpgrade:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1100(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1741
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1200()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForMatcherUpgrade:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1100(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 1742
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForMatcherUpgrade:Landroid/content/BroadcastReceiver;
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1102(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 1744
    :cond_1b
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1737
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1738
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # invokes: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForAvailableNewMatcher()V
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$1000(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 1739
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$700()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$5$4zbN6omq-Um-M7LhijEu1YePG1g;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$5$4zbN6omq-Um-M7LhijEu1YePG1g;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1746
    :cond_1d
    return-void
.end method
