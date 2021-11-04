.class Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;
.super Landroid/os/Handler;
.source "SemWallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 310
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 313
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f1

    if-eq v0, v1, :cond_7

    goto :goto_10

    .line 315
    :cond_7
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    # getter for: Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->access$100(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->handleWallpaperBindingTimeout()V

    .line 319
    :goto_10
    return-void
.end method
