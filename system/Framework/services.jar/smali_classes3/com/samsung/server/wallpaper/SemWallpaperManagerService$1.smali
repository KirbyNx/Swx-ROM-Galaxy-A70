.class Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/server/wallpaper/SemWallpaperManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 203
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", densityDpi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDensityDpi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWallpaperManagerService"

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    # getter for: Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->access$000(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 210
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 211
    .local v2, "densityDpi":I
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 213
    .local v3, "orientation":I
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDensityDpi()I

    move-result v4

    if-eq v4, v2, :cond_76

    .line 214
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v4, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setDensityDpi(I)V

    .line 216
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    # getter for: Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->access$100(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateDisplayData()V

    .line 218
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 219
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 222
    :cond_76
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v4

    if-eq v4, v3, :cond_8c

    .line 223
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v4, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setOrientation(I)V

    .line 225
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    # getter for: Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->access$100(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors()V

    .line 228
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "densityDpi":I
    .end local v3    # "orientation":I
    :cond_8c
    return-void
.end method
