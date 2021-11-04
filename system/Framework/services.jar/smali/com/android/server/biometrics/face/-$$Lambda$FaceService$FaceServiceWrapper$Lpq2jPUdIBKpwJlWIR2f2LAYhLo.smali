.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$Lpq2jPUdIBKpwJlWIR2f2LAYhLo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$Lpq2jPUdIBKpwJlWIR2f2LAYhLo;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$Lpq2jPUdIBKpwJlWIR2f2LAYhLo;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->lambda$semSessionClose$9$FaceService$FaceServiceWrapper()V

    return-void
.end method
