.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$lUc458WTScCT_53xCEF75wpzCzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/hardware/face/Face;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;ILandroid/hardware/face/Face;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$lUc458WTScCT_53xCEF75wpzCzU;->f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$lUc458WTScCT_53xCEF75wpzCzU;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$lUc458WTScCT_53xCEF75wpzCzU;->f$2:Landroid/hardware/face/Face;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$lUc458WTScCT_53xCEF75wpzCzU;->f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$lUc458WTScCT_53xCEF75wpzCzU;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$lUc458WTScCT_53xCEF75wpzCzU;->f$2:Landroid/hardware/face/Face;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->lambda$doTemplateSyncForUser$5$FaceService$ServiceExtensionImpl(ILandroid/hardware/face/Face;)V

    return-void
.end method
