.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$j-LLQzW9EnY1BeUwXybbRTlOEfo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$j-LLQzW9EnY1BeUwXybbRTlOEfo;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$j-LLQzW9EnY1BeUwXybbRTlOEfo;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$j-LLQzW9EnY1BeUwXybbRTlOEfo;->f$2:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$j-LLQzW9EnY1BeUwXybbRTlOEfo;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$j-LLQzW9EnY1BeUwXybbRTlOEfo;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$j-LLQzW9EnY1BeUwXybbRTlOEfo;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$j-LLQzW9EnY1BeUwXybbRTlOEfo;->f$2:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$j-LLQzW9EnY1BeUwXybbRTlOEfo;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->lambda$startRequest$6$SemFingerprintServiceExtImpl(ILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
