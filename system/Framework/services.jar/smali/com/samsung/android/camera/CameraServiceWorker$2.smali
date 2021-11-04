.class Lcom/samsung/android/camera/CameraServiceWorker$2;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 960
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayFoldChanged(IZ)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "folded"    # Z

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display fold changed,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_worker"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    if-nez p2, :cond_25

    const-wide/16 v1, 0x0

    goto :goto_27

    :cond_25
    const-wide/16 v1, 0x6

    :goto_27
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChange(J)V

    .line 965
    return-void
.end method
