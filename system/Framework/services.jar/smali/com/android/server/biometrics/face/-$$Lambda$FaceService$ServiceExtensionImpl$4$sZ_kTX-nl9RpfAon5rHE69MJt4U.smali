.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$4$sZ_kTX-nl9RpfAon5rHE69MJt4U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$4$sZ_kTX-nl9RpfAon5rHE69MJt4U;->f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$4$sZ_kTX-nl9RpfAon5rHE69MJt4U;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$4$sZ_kTX-nl9RpfAon5rHE69MJt4U;->f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$4$sZ_kTX-nl9RpfAon5rHE69MJt4U;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;->lambda$handleUpdate$0$FaceService$ServiceExtensionImpl$4(I)V

    return-void
.end method
