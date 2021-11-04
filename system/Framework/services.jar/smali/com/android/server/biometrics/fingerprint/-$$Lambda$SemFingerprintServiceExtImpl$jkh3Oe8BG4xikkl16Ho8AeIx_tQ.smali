.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$jkh3Oe8BG4xikkl16Ho8AeIx_tQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;ILandroid/hardware/fingerprint/Fingerprint;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$jkh3Oe8BG4xikkl16Ho8AeIx_tQ;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$jkh3Oe8BG4xikkl16Ho8AeIx_tQ;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$jkh3Oe8BG4xikkl16Ho8AeIx_tQ;->f$2:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$jkh3Oe8BG4xikkl16Ho8AeIx_tQ;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$jkh3Oe8BG4xikkl16Ho8AeIx_tQ;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$jkh3Oe8BG4xikkl16Ho8AeIx_tQ;->f$2:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->lambda$enumerate$14$SemFingerprintServiceExtImpl(ILandroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method
