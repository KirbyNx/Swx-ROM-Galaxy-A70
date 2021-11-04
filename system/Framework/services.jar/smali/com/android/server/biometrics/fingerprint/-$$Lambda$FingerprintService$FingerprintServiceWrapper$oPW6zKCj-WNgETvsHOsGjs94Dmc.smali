.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$FingerprintServiceWrapper$oPW6zKCj-WNgETvsHOsGjs94Dmc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$FingerprintServiceWrapper$oPW6zKCj-WNgETvsHOsGjs94Dmc;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$FingerprintServiceWrapper$oPW6zKCj-WNgETvsHOsGjs94Dmc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$FingerprintServiceWrapper$oPW6zKCj-WNgETvsHOsGjs94Dmc;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$FingerprintServiceWrapper$oPW6zKCj-WNgETvsHOsGjs94Dmc;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->lambda$startPreparedClient$0$FingerprintService$FingerprintServiceWrapper(I)V

    return-void
.end method
