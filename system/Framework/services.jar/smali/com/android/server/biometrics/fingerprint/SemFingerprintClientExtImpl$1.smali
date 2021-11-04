.class Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl$1;
.super Ljava/lang/Object;
.source "SemFingerprintClientExtImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->initForInDisplaySensor(Lcom/android/server/biometrics/ClientMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 537
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(I[B)V
    .registers 7
    .param p1, "reason"    # I
    .param p2, "credentialAttestation"    # [B

    .line 540
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->access$100(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->access$000(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->handleError(Lcom/android/server/biometrics/ClientMonitor;II)V

    .line 543
    return-void
.end method

.method public onError(II)V
    .registers 8
    .param p1, "code"    # I
    .param p2, "msg"    # I

    .line 547
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    if-ne p2, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 549
    .local v0, "isRetryError":Z
    :goto_8
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mIsKeyguard:Z
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->access$200(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)Z

    move-result v1

    if-eqz v1, :cond_26

    if-eqz v0, :cond_26

    .line 550
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->access$100(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->access$300(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->handleError(Lcom/android/server/biometrics/ClientMonitor;II)V

    goto :goto_36

    .line 554
    :cond_26
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->access$100(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl$1;->this$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->mClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->access$400(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->handleError(Lcom/android/server/biometrics/ClientMonitor;II)V

    .line 557
    :goto_36
    return-void
.end method

.method public onEvent(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "code"    # I

    .line 562
    return-void
.end method

.method public onTouchEvent(I)V
    .registers 2
    .param p1, "event"    # I

    .line 567
    return-void
.end method
