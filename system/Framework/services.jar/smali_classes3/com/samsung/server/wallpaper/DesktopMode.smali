.class public Lcom/samsung/server/wallpaper/DesktopMode;
.super Ljava/lang/Object;
.source "DesktopMode.java"


# static fields
.field private static final ACTION_WALLPAPER_ENGINE_SHOWN:Ljava/lang/String; = "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

.field private static final DEBUG:Z = false

.field public static final DISPLAY_CATEGORY_DESKTOP:Ljava/lang/String; = "com.samsung.android.hardware.display.category.DESKTOP"

.field private static final TAG:Ljava/lang/String; = "DesktopMode"

.field public static final WALLPAPER_DESKTOP:Ljava/lang/String; = "wallpaper_desktop_orig"

.field public static final WALLPAPER_DESKTOP_CROP:Ljava/lang/String; = "wallpaper_desktop"

.field public static final WALLPAPER_DESKTOP_INFO:Ljava/lang/String; = "wallpaper_desktop_info.xml"

.field public static final WALLPAPER_DESKTOP_LOCK:Ljava/lang/String; = "wallpaper_desktop_lock_orig"

.field public static final WALLPAPER_DESKTOP_LOCK_CROP:Ljava/lang/String; = "wallpaper_desktop_lock"


# instance fields
.field private final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field private final mContext:Landroid/content/Context;

.field private mDesktopMode:I

.field private final mDesktopModeLock:Ljava/lang/Object;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDesktopMode:Z

.field private final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

.field private mWallpaperBindingFallbackCount:I

.field private mWallpaperBindingFallbackExecuted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .param p3, "service"    # Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    .line 57
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    .line 58
    iput v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 59
    iput v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackCount:I

    .line 63
    const-string v0, "DesktopMode"

    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 67
    iput-object p3, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 69
    invoke-direct {p0}, Lcom/samsung/server/wallpaper/DesktopMode;->initDesktopMode()V

    .line 70
    return-void
.end method

.method private getWallpaperDir(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 209
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private initDesktopMode()V
    .registers 2

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 108
    return-void
.end method


# virtual methods
.method public getDesktopMode()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getWallpaperBindingFallbackExecuted()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    return v0
.end method

.method public increaseWallpaperBindingFallbackCount()V
    .registers 2

    .line 73
    iget v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackCount:I

    .line 74
    return-void
.end method

.method public isDesktopDualMode()Z
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopMode()Z
    .registers 2

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopModeEnabled(I)Z
    .registers 3
    .param p1, "which"    # I

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopSingleMode()Z
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopWallpaperFileExist(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/samsung/server/wallpaper/DesktopMode;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "wallpaper_desktop_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 200
    .local v1, "ret":Z
    nop

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDesktopWallpaperFileExist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DesktopMode"

    invoke-static {v3, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v1
.end method

.method public onRefreshWallpaperByUiMode(Z)V
    .registers 6
    .param p1, "isDesktopMode"    # Z

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRefreshWallpaperByUiMode() isDesktopMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DesktopMode"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_19
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    .line 159
    if-eqz p1, :cond_32

    .line 160
    const-class v1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    .line 161
    .local v1, "dexState":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    if-eqz v1, :cond_31

    .line 162
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    iput v2, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 164
    .end local v1    # "dexState":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    :cond_31
    goto :goto_46

    .line 165
    :cond_32
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopDualMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    .line 166
    iput v2, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 167
    const-string v1, "DesktopMode"

    const-string v2, "No need to refresh phone wallpaper when Dual dex is disabled"

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    monitor-exit v0

    return-void

    .line 170
    :cond_44
    iput v2, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 173
    :goto_46
    const-string v1, "DesktopMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDesktopMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopDualMode()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 176
    const-string v1, "DesktopMode"

    const-string v2, "No need to refresh phone wallpaper when Dual dex is enabled"

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    monitor-exit v0

    return-void

    .line 180
    :cond_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_19 .. :try_end_74} :catchall_82

    .line 182
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCurrentUserId()I

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->switchDexWallpaper(IZ)V

    .line 183
    return-void

    .line 180
    :catchall_82
    move-exception v1

    :try_start_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v1
.end method

.method public sendWallpaperEngineShownIntent()V
    .registers 1

    .line 195
    return-void
.end method

.method public setWallpaperBindingFallbackExecuted(Z)V
    .registers 2
    .param p1, "wallpaperBindingFallbackExecuted"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    .line 78
    return-void
.end method
