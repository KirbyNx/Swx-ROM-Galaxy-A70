.class public Lcom/samsung/server/wallpaper/SubDisplayMode;
.super Ljava/lang/Object;
.source "SubDisplayMode.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_SWITCH_WALLPAPER_BY_DISPLAY_CHANGED:I = 0x3f2

.field private static final TAG:Ljava/lang/String; = "SubDisplayMode"

.field public static final WALLPAPER_SUB_DISPLAY:Ljava/lang/String; = "wallpaper_sub_display_orig"

.field public static final WALLPAPER_SUB_DISPLAY_CROP:Ljava/lang/String; = "wallpaper_sub_display"

.field public static final WALLPAPER_SUB_DISPLAY_INFO:Ljava/lang/String; = "wallpaper_subdisplay_info.xml"

.field public static final WALLPAPER_SUB_DISPLAY_LOCK:Ljava/lang/String; = "wallpaper_sub_display_lock_orig"

.field public static final WALLPAPER_SUB_DISPLAY_LOCK_CROP:Ljava/lang/String; = "wallpaper_sub_display_lock"


# instance fields
.field private final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field private final mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

.field private final mHandler:Landroid/os/Handler;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mLidState:I


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    .line 61
    new-instance v0, Lcom/samsung/server/wallpaper/SubDisplayMode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode$1;-><init>(Lcom/samsung/server/wallpaper/SubDisplayMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;

    invoke-direct {v0, p0}, Lcom/samsung/server/wallpaper/SubDisplayMode$2;-><init>(Lcom/samsung/server/wallpaper/SubDisplayMode;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

    .line 54
    const-string v0, "SubDisplayMode"

    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 58
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->initSubDisplayMode()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/server/wallpaper/SubDisplayMode;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 37
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-object v0
.end method


# virtual methods
.method public getFolderStateBasedWhich(I)I
    .registers 3
    .param p1, "which"    # I

    .line 112
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_5

    return p1

    .line 114
    :cond_5
    invoke-static {p1}, Lcom/samsung/server/wallpaper/WhichChecker;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 115
    return p1

    .line 118
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(II)I

    move-result v0

    return v0
.end method

.method public getFolderStateBasedWhich(II)I
    .registers 5
    .param p1, "which"    # I
    .param p2, "state"    # I

    .line 122
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_5

    return p1

    .line 124
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFolderStateBasedWhich state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubDisplayMode"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-nez p2, :cond_20

    .line 127
    or-int/lit8 p1, p1, 0x10

    goto :goto_22

    .line 129
    :cond_20
    or-int/lit8 p1, p1, 0x4

    .line 131
    :goto_22
    return p1
.end method

.method public getLidState()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    return v0
.end method

.method public initSubDisplayMode()V
    .registers 3

    .line 76
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1b

    .line 77
    nop

    .line 78
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mIWindowManager:Landroid/view/IWindowManager;

    .line 80
    :try_start_11
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    .line 83
    goto :goto_1b

    .line 81
    :catch_17
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public setFolderState(II)V
    .registers 5
    .param p1, "prevState"    # I
    .param p2, "curState"    # I

    .line 135
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 136
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    :cond_f
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 140
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 141
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 142
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method

.method public setLidState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 104
    iput p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    .line 105
    return-void
.end method

.method public updateLidStateFromInputManager()V
    .registers 7

    .line 146
    const-string v0, "SubDisplayMode"

    const/4 v1, -0x1

    .line 149
    .local v1, "lidState":I
    :try_start_3
    const-string v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService;

    .line 150
    .local v2, "inputManagerService":Lcom/android/server/input/InputManagerService;
    if-nez v2, :cond_13

    .line 151
    const-string v3, "updateLidStateFromInputManager: inputManagerService is null! Setting lidState to UNKNOWN(ABSENT)"

    invoke-static {v0, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 153
    :cond_13
    const/4 v3, -0x1

    const/16 v4, -0x100

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_25

    .line 155
    .local v3, "switchState":I
    if-lez v3, :cond_1f

    .line 157
    const/4 v1, 0x0

    goto :goto_24

    .line 158
    :cond_1f
    if-nez v3, :cond_23

    .line 160
    const/4 v1, 0x1

    goto :goto_24

    .line 164
    :cond_23
    const/4 v1, -0x1

    .line 169
    .end local v2    # "inputManagerService":Lcom/android/server/input/InputManagerService;
    .end local v3    # "switchState":I
    :goto_24
    goto :goto_27

    .line 167
    :catch_25
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 171
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLidStateFromInputManager: lidState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->setLidState(I)V

    .line 173
    return-void
.end method
