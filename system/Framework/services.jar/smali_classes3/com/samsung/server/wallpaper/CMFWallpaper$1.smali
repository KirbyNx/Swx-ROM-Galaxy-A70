.class Lcom/samsung/server/wallpaper/CMFWallpaper$1;
.super Landroid/os/Handler;
.source "CMFWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/CMFWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;


# direct methods
.method constructor <init>(Lcom/samsung/server/wallpaper/CMFWallpaper;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/server/wallpaper/CMFWallpaper;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 61
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_7

    goto :goto_1b

    .line 66
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "colorCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->access$000(Lcom/samsung/server/wallpaper/CMFWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cmf_color_code"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    nop

    .line 71
    .end local v0    # "colorCode":Ljava/lang/String;
    :goto_1b
    return-void
.end method
