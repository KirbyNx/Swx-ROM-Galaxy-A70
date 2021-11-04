.class Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OMCWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/OMCWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OMCWallpaperUpdatedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;


# direct methods
.method private constructor <init>(Lcom/samsung/server/wallpaper/OMCWallpaper;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/server/wallpaper/OMCWallpaper;Lcom/samsung/server/wallpaper/OMCWallpaper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/server/wallpaper/OMCWallpaper;
    .param p2, "x1"    # Lcom/samsung/server/wallpaper/OMCWallpaper$1;

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;-><init>(Lcom/samsung/server/wallpaper/OMCWallpaper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;->this$0:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-virtual {v1, v0}, Lcom/samsung/server/wallpaper/OMCWallpaper;->updateOmcWallpaper(Ljava/lang/String;)V

    .line 102
    return-void
.end method
