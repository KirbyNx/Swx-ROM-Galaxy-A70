.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VXdG63GUA4UZD3m-z1GKoP27c6g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;ILcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VXdG63GUA4UZD3m-z1GKoP27c6g;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iput p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VXdG63GUA4UZD3m-z1GKoP27c6g;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VXdG63GUA4UZD3m-z1GKoP27c6g;->f$2:Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VXdG63GUA4UZD3m-z1GKoP27c6g;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VXdG63GUA4UZD3m-z1GKoP27c6g;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VXdG63GUA4UZD3m-z1GKoP27c6g;->f$2:Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->lambda$enrollInternal$1$BiometricServiceBase(ILcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V

    return-void
.end method
