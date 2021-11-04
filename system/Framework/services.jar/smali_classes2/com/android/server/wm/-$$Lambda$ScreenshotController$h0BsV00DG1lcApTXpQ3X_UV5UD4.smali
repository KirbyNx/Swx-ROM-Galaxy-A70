.class public final synthetic Lcom/android/server/wm/-$$Lambda$ScreenshotController$h0BsV00DG1lcApTXpQ3X_UV5UD4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ScreenshotController;

.field public final synthetic f$1:Landroid/content/ServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ScreenshotController;Landroid/content/ServiceConnection;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$h0BsV00DG1lcApTXpQ3X_UV5UD4;->f$0:Lcom/android/server/wm/ScreenshotController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$h0BsV00DG1lcApTXpQ3X_UV5UD4;->f$1:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$h0BsV00DG1lcApTXpQ3X_UV5UD4;->f$0:Lcom/android/server/wm/ScreenshotController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ScreenshotController$h0BsV00DG1lcApTXpQ3X_UV5UD4;->f$1:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ScreenshotController;->lambda$takeScreenshot$0$ScreenshotController(Landroid/content/ServiceConnection;)V

    return-void
.end method
