.class Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;
.super Ljava/lang/Object;
.source "ScreenshotController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenshotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TakeScreenshotRunnable"
.end annotation


# instance fields
.field final info:Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;

.field final synthetic this$0:Lcom/android/server/wm/ScreenshotController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ScreenshotController;)V
    .registers 3

    .line 421
    iput-object p1, p0, Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;->this$0:Lcom/android/server/wm/ScreenshotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance p1, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;-><init>(Lcom/android/server/wm/ScreenshotController$1;)V

    iput-object p1, p0, Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ScreenshotController;Lcom/android/server/wm/ScreenshotController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/ScreenshotController;
    .param p2, "x1"    # Lcom/android/server/wm/ScreenshotController$1;

    .line 421
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;-><init>(Lcom/android/server/wm/ScreenshotController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;->this$0:Lcom/android/server/wm/ScreenshotController;

    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;

    # invokes: Lcom/android/server/wm/ScreenshotController;->takeScreenshot(Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/wm/ScreenshotController;->access$500(Lcom/android/server/wm/ScreenshotController;Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V

    .line 427
    return-void
.end method
