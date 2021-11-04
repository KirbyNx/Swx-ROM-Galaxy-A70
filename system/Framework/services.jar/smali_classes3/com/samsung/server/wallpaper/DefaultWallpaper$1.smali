.class Lcom/samsung/server/wallpaper/DefaultWallpaper$1;
.super Landroid/os/Handler;
.source "DefaultWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/DefaultWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;


# direct methods
.method constructor <init>(Lcom/samsung/server/wallpaper/DefaultWallpaper;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/server/wallpaper/DefaultWallpaper;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 79
    iput-object p1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f3

    const-string v2, "DefaultWallpaper"

    if-eq v0, v1, :cond_b7

    packed-switch v0, :pswitch_data_e4

    goto/16 :goto_e3

    .line 125
    :pswitch_d
    const-string v0, "msg MSG_UPDATE_DEFAULT_WALLPAPER"

    invoke-static {v2, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/DefaultWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->access$300(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->rebindDefaultWallpaperIfNeeded()V

    .line 127
    goto/16 :goto_e3

    .line 117
    :pswitch_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v0, "wallpaperChangedIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->access$100(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/DefaultWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    invoke-static {v4}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->access$200(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCurrentUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 121
    const-string v1, "send wallpaperChangedIntent"

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    goto/16 :goto_e3

    .line 106
    .end local v0    # "wallpaperChangedIntent":Landroid/content/Intent;
    :pswitch_4b
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 107
    .local v0, "which":I
    const-string v1, "lockscreen_wallpaper_transparent"

    .line 108
    .local v1, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/server/wallpaper/WhichChecker;->isDex(I)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 109
    const-string v1, "dex_lockscreen_wallpaper_transparency"

    goto :goto_60

    .line 110
    :cond_58
    invoke-static {v0}, Lcom/samsung/server/wallpaper/WhichChecker;->isSubDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 111
    const-string v1, "sub_display_lockscreen_wallpaper_transparency"

    .line 113
    :cond_60
    :goto_60
    iget-object v2, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/samsung/server/wallpaper/DefaultWallpaper;->setSettingsSystemUiTransparency(ILjava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->access$000(Lcom/samsung/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V

    .line 114
    goto/16 :goto_e3

    .line 95
    .end local v0    # "which":I
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_69
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 96
    .local v0, "mode":I
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v2, -0x2

    if-eqz v1, :cond_88

    and-int/lit8 v1, v0, 0x1c

    const/16 v3, 0x10

    if-ne v1, v3, :cond_88

    .line 97
    iget-object v1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->access$100(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    const-string v4, "lockscreen_wallpaper_sub"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_e3

    .line 100
    :cond_88
    iget-object v1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->access$100(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    const-string v4, "lockscreen_wallpaper"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 103
    goto :goto_e3

    .line 84
    .end local v0    # "mode":I
    :pswitch_9a
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 85
    .local v0, "which":I
    const-string v1, "android.wallpaper.settings_systemui_transparency"

    .line 86
    .restart local v1    # "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/server/wallpaper/WhichChecker;->isDex(I)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 87
    const-string v1, "dex_system_wallpaper_transparency"

    goto :goto_af

    .line 88
    :cond_a7
    invoke-static {v0}, Lcom/samsung/server/wallpaper/WhichChecker;->isSubDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 89
    const-string v1, "sub_display_system_wallpaper_transparency"

    .line 91
    :cond_af
    :goto_af
    iget-object v2, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/samsung/server/wallpaper/DefaultWallpaper;->setSettingsSystemUiTransparency(ILjava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->access$000(Lcom/samsung/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V

    .line 92
    goto :goto_e3

    .line 130
    .end local v0    # "which":I
    .end local v1    # "value":Ljava/lang/String;
    :cond_b7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 131
    .local v0, "callingPkg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: reset kwp tilt setting. by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->DEFAULT_WALLPAPER_TYPE_MULTIPLE:Z

    if-eqz v1, :cond_e3

    .line 133
    iget-object v1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    # getter for: Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->access$100(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "lockscreen_wallpaper_tilt_effect"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    .end local v0    # "callingPkg":Ljava/lang/String;
    :cond_e3
    :goto_e3
    return-void

    :pswitch_data_e4
    .packed-switch 0x3ec
        :pswitch_9a
        :pswitch_69
        :pswitch_4b
        :pswitch_1d
        :pswitch_d
    .end packed-switch
.end method
