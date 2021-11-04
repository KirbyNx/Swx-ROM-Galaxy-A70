.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$kw0BBGgTrFveHiSJWRbNG8sygqA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$kw0BBGgTrFveHiSJWRbNG8sygqA;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iput-object p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$kw0BBGgTrFveHiSJWRbNG8sygqA;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$kw0BBGgTrFveHiSJWRbNG8sygqA;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$kw0BBGgTrFveHiSJWRbNG8sygqA;->f$1:[B

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->lambda$resetLockout$1$FaceService$FaceServiceWrapper([B)V

    return-void
.end method
