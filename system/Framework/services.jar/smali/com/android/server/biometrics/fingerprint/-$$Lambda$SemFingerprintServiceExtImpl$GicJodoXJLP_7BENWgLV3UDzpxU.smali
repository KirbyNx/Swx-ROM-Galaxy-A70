.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$GicJodoXJLP_7BENWgLV3UDzpxU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

.field public final synthetic f$1:Landroid/hardware/fingerprint/Fingerprint;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$GicJodoXJLP_7BENWgLV3UDzpxU;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    iput-object p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$GicJodoXJLP_7BENWgLV3UDzpxU;->f$1:Landroid/hardware/fingerprint/Fingerprint;

    iput p3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$GicJodoXJLP_7BENWgLV3UDzpxU;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$GicJodoXJLP_7BENWgLV3UDzpxU;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$GicJodoXJLP_7BENWgLV3UDzpxU;->f$1:Landroid/hardware/fingerprint/Fingerprint;

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$GicJodoXJLP_7BENWgLV3UDzpxU;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->lambda$enumerate$13$SemFingerprintServiceExtImpl(Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method
