.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$QGahMrMqFojE3Vg-iLKL7thHJyY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$QGahMrMqFojE3Vg-iLKL7thHJyY;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$QGahMrMqFojE3Vg-iLKL7thHJyY;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$QGahMrMqFojE3Vg-iLKL7thHJyY;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$QGahMrMqFojE3Vg-iLKL7thHJyY;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$QGahMrMqFojE3Vg-iLKL7thHJyY;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$QGahMrMqFojE3Vg-iLKL7thHJyY;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->lambda$removeFingerprints$2$SemFingerprintServiceExtImpl(II)V

    return-void
.end method
