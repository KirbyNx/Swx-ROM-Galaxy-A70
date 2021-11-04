.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:[B

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroid/hardware/face/IFaceServiceReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;ILjava/lang/String;I[BZLandroid/hardware/face/IFaceServiceReceiver;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$3:I

    iput-object p5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$4:[B

    iput-boolean p6, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$5:Z

    iput-object p7, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$6:Landroid/hardware/face/IFaceServiceReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$0:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$3:I

    iget-object v4, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$4:[B

    iget-boolean v5, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$5:Z

    iget-object v6, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;->f$6:Landroid/hardware/face/IFaceServiceReceiver;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->lambda$setFeature$2$FaceService$FaceServiceWrapper(ILjava/lang/String;I[BZLandroid/hardware/face/IFaceServiceReceiver;)V

    return-void
.end method
