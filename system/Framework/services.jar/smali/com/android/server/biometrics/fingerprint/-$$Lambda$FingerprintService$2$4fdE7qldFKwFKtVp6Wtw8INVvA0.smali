.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$2$4fdE7qldFKwFKtVp6Wtw8INVvA0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$2;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$2;Z[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$2$4fdE7qldFKwFKtVp6Wtw8INVvA0;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$2;

    iput-boolean p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$2$4fdE7qldFKwFKtVp6Wtw8INVvA0;->f$1:Z

    iput-object p3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$2$4fdE7qldFKwFKtVp6Wtw8INVvA0;->f$2:[B

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/util/ArrayList;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$2$4fdE7qldFKwFKtVp6Wtw8INVvA0;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$2;

    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$2$4fdE7qldFKwFKtVp6Wtw8INVvA0;->f$1:Z

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$2$4fdE7qldFKwFKtVp6Wtw8INVvA0;->f$2:[B

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->lambda$request$0$FingerprintService$2(Z[BILjava/util/ArrayList;)V

    return-void
.end method
