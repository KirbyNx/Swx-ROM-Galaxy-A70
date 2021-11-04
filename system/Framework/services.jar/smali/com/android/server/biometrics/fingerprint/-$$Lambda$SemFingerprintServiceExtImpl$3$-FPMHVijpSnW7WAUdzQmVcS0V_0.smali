.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$3$-FPMHVijpSnW7WAUdzQmVcS0V_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$3$-FPMHVijpSnW7WAUdzQmVcS0V_0;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$3$-FPMHVijpSnW7WAUdzQmVcS0V_0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$3$-FPMHVijpSnW7WAUdzQmVcS0V_0;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$3$-FPMHVijpSnW7WAUdzQmVcS0V_0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;->lambda$handleUpdate$0$SemFingerprintServiceExtImpl$3(I)V

    return-void
.end method
