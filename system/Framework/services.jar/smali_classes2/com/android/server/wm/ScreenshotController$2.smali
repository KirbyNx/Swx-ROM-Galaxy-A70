.class Lcom/android/server/wm/ScreenshotController$2;
.super Landroid/os/Handler;
.source "ScreenshotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ScreenshotController;->sendScreenshotMessage(Landroid/os/IBinder;Landroid/content/ServiceConnection;Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ScreenshotController;

.field final synthetic val$conn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ScreenshotController;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/wm/ScreenshotController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 373
    iput-object p1, p0, Lcom/android/server/wm/ScreenshotController$2;->this$0:Lcom/android/server/wm/ScreenshotController;

    iput-object p3, p0, Lcom/android/server/wm/ScreenshotController$2;->val$conn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController$2;->this$0:Lcom/android/server/wm/ScreenshotController;

    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController$2;->val$conn:Landroid/content/ServiceConnection;

    # invokes: Lcom/android/server/wm/ScreenshotController;->resetScreenshotConnection(Landroid/content/ServiceConnection;)V
    invoke-static {v0, v1}, Lcom/android/server/wm/ScreenshotController;->access$300(Lcom/android/server/wm/ScreenshotController;Landroid/content/ServiceConnection;)V

    .line 377
    return-void
.end method
