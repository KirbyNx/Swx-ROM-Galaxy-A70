.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;ZLjava/lang/String;IIILandroid/os/IBinder;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iput-boolean p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$1:Z

    iput-object p3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$3:I

    iput p5, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$4:I

    iput p6, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$5:I

    iput-object p7, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$6:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-boolean v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$1:Z

    iget-object v2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$3:I

    iget v4, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$4:I

    iget v5, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$5:I

    iget-object v6, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$xNjuykhZX1rwkwv69Dfy_Y5giWo;->f$6:Landroid/os/IBinder;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase;->lambda$cancelAuthenticationInternal$4$BiometricServiceBase(ZLjava/lang/String;IIILandroid/os/IBinder;)V

    return-void
.end method
