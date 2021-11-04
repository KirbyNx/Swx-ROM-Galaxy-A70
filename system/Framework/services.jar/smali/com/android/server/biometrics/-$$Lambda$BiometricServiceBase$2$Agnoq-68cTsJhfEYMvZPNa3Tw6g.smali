.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$2$Agnoq-68cTsJhfEYMvZPNa3Tw6g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase$2;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase$2;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$2$Agnoq-68cTsJhfEYMvZPNa3Tw6g;->f$0:Lcom/android/server/biometrics/BiometricServiceBase$2;

    iput p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$2$Agnoq-68cTsJhfEYMvZPNa3Tw6g;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$2$Agnoq-68cTsJhfEYMvZPNa3Tw6g;->f$0:Lcom/android/server/biometrics/BiometricServiceBase$2;

    iget v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$2$Agnoq-68cTsJhfEYMvZPNa3Tw6g;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$2;->lambda$onUserSwitchComplete$0$BiometricServiceBase$2(I)V

    return-void
.end method
