.class Lcom/samsung/server/wallpaper/LegibilityColor$1;
.super Landroid/os/Handler;
.source "LegibilityColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/LegibilityColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/server/wallpaper/LegibilityColor;


# direct methods
.method constructor <init>(Lcom/samsung/server/wallpaper/LegibilityColor;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/server/wallpaper/LegibilityColor;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 82
    iput-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$1;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    const-string v0, "LegibilityColor"

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3f7

    if-eq v1, v2, :cond_a

    goto/16 :goto_b0

    .line 87
    :cond_a
    const-string v1, "setWhiteBgSettings"

    .line 88
    .local v1, "logs":Ljava/lang/String;
    const-string v2, "need_dark_statusbar"

    const-string v3, "need_dark_font"

    const-string v4, "need_dark_navigationbar"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "wallpaperFontColor":[Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    .line 93
    .local v3, "newValues":[I
    const/4 v4, 0x0

    .line 95
    .local v4, "isChanged":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    :try_start_1c
    array-length v6, v3

    if-ge v5, v6, :cond_8a

    .line 96
    aget v6, v3, v5

    .line 97
    .local v6, "newVal":I
    iget-object v7, p0, Lcom/samsung/server/wallpaper/LegibilityColor$1;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    # getter for: Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$000(Lcom/samsung/server/wallpaper/LegibilityColor;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aget-object v8, v2, v5

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 99
    .local v7, "oldVal":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", area["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] oldVal = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " newVal = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 101
    if-eq v7, v6, :cond_87

    .line 102
    iget-object v8, p0, Lcom/samsung/server/wallpaper/LegibilityColor$1;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    # getter for: Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$000(Lcom/samsung/server/wallpaper/LegibilityColor;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aget-object v9, v2, v5

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_86} :catch_8b

    .line 105
    const/4 v4, 0x1

    .line 95
    .end local v6    # "newVal":I
    .end local v7    # "oldVal":I
    :cond_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 111
    .end local v5    # "i":I
    :cond_8a
    goto :goto_a0

    .line 109
    :catch_8b
    move-exception v5

    .line 110
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to get/put "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_a0
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz v4, :cond_b0

    .line 114
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$1;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    # getter for: Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    invoke-static {v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$100(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->sendWallpaperChangeIntent()V

    .line 119
    .end local v1    # "logs":Ljava/lang/String;
    .end local v2    # "wallpaperFontColor":[Ljava/lang/String;
    .end local v3    # "newValues":[I
    .end local v4    # "isChanged":Z
    :cond_b0
    :goto_b0
    return-void
.end method
