.class Lcom/samsung/server/wallpaper/OMCWallpaper$1;
.super Landroid/os/Handler;
.source "OMCWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/OMCWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;


# direct methods
.method constructor <init>(Lcom/samsung/server/wallpaper/OMCWallpaper;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/server/wallpaper/OMCWallpaper;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 68
    iput-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_f

    .line 73
    :cond_6
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v0}, Lcom/samsung/server/wallpaper/OMCWallpaper;->access$000(Lcom/samsung/server/wallpaper/OMCWallpaper;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateOmcWallpaper()V

    .line 77
    :goto_f
    return-void
.end method
