.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$zMNPychEWdi7031mkqLKZLFNoV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$zMNPychEWdi7031mkqLKZLFNoV0;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$zMNPychEWdi7031mkqLKZLFNoV0;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->lambda$handleError$11$SemFingerprintServiceExtImpl()V

    return-void
.end method
