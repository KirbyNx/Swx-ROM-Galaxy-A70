.class Lcom/android/server/wm/ScreenshotController$1;
.super Ljava/lang/Object;
.source "ScreenshotController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ScreenshotController;->takeScreenshot(Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ScreenshotController;

.field final synthetic val$info:Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ScreenshotController;Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/ScreenshotController;

    .line 253
    iput-object p1, p0, Lcom/android/server/wm/ScreenshotController$1;->this$0:Lcom/android/server/wm/ScreenshotController;

    iput-object p2, p0, Lcom/android/server/wm/ScreenshotController$1;->val$info:Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController$1;->this$0:Lcom/android/server/wm/ScreenshotController;

    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController$1;->val$info:Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;

    # invokes: Lcom/android/server/wm/ScreenshotController;->sendScreenshotMessage(Landroid/os/IBinder;Landroid/content/ServiceConnection;Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V
    invoke-static {v0, p2, p0, v1}, Lcom/android/server/wm/ScreenshotController;->access$200(Lcom/android/server/wm/ScreenshotController;Landroid/os/IBinder;Landroid/content/ServiceConnection;Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V

    .line 257
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 262
    return-void
.end method
