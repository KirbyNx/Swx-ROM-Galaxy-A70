.class Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;
.super Lcom/android/server/biometrics/SemBiometricTrustAppManager;
.source "SemFingerprintServiceExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->updateTrustApp(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;Ljava/lang/String;)V
    .registers 21
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "constants"    # Lcom/android/server/biometrics/Constants;
    .param p4, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p5, "halDeviceId"    # J
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p9, "path"    # Ljava/lang/String;

    .line 783
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleUpdate(I)V
    .registers 4
    .param p1, "status"    # I

    .line 786
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$700()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$3$-FPMHVijpSnW7WAUdzQmVcS0V_0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$3$-FPMHVijpSnW7WAUdzQmVcS0V_0;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    return-void
.end method

.method public synthetic lambda$handleUpdate$0$SemFingerprintServiceExtImpl$3(I)V
    .registers 7
    .param p1, "status"    # I

    .line 787
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;->onAcquired(II)Z

    .line 788
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;->stop()I

    .line 789
    const/16 v0, 0x64

    if-ne p1, v0, :cond_28

    .line 790
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->updateCacheForHAL()V

    .line 791
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$900(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 792
    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpDaemonVersion:[B
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->access$800(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, -0x1

    const/4 v3, 0x2

    .line 791
    const-string v4, "FPDA"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 794
    :cond_28
    return-void
.end method
