.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$5$4zbN6omq-Um-M7LhijEu1YePG1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$5$4zbN6omq-Um-M7LhijEu1YePG1g;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$5$4zbN6omq-Um-M7LhijEu1YePG1g;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;->lambda$onReceive$0$SemFingerprintServiceExtImpl$5()V

    return-void
.end method
