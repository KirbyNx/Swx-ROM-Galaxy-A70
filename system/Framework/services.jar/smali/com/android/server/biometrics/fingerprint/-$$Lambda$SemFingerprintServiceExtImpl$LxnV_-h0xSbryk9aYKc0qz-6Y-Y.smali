.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$LxnV_-h0xSbryk9aYKc0qz-6Y-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$LxnV_-h0xSbryk9aYKc0qz-6Y-Y;->f$0:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$LxnV_-h0xSbryk9aYKc0qz-6Y-Y;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$LxnV_-h0xSbryk9aYKc0qz-6Y-Y;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$LxnV_-h0xSbryk9aYKc0qz-6Y-Y;->f$0:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$LxnV_-h0xSbryk9aYKc0qz-6Y-Y;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$LxnV_-h0xSbryk9aYKc0qz-6Y-Y;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->lambda$startRequest$8(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method
