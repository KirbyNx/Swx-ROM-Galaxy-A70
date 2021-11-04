.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintClientExtImpl$8QHnSNlMYFHfhxkZUrhFKBwDc4w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintClientExtImpl$8QHnSNlMYFHfhxkZUrhFKBwDc4w;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintClientExtImpl$8QHnSNlMYFHfhxkZUrhFKBwDc4w;->f$0:Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->lambda$onAcquired$2$SemFingerprintClientExtImpl()V

    return-void
.end method
