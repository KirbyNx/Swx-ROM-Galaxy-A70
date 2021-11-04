.class Lcom/samsung/server/wallpaper/SubDisplayMode$1;
.super Landroid/os/Handler;
.source "SubDisplayMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/SubDisplayMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;


# direct methods
.method constructor <init>(Lcom/samsung/server/wallpaper/SubDisplayMode;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/server/wallpaper/SubDisplayMode;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 61
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$1;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_7

    goto :goto_14

    .line 67
    :cond_7
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$1;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    # getter for: Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->access$000(Lcom/samsung/server/wallpaper/SubDisplayMode;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->switchWallpaperByDisplayChanged(II)V

    .line 72
    :goto_14
    return-void
.end method
