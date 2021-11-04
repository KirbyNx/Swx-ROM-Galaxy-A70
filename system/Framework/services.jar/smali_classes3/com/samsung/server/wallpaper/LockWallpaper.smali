.class public Lcom/samsung/server/wallpaper/LockWallpaper;
.super Ljava/lang/Object;
.source "LockWallpaper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LockWallpaper"

.field public static final WALLPAPER_ANIMATED_BACKGROUND:Ljava/lang/String; = "wallpaper_animated_background"

.field public static final WALLPAPER_ANIMATED_BACKGROUND_SUB:Ljava/lang/String; = "wallpaper_animated_background_sub"

.field public static final WALLPAPER_FIRST_FRAME:Ljava/lang/String; = "wallpaper_first"

.field public static final WALLPAPER_FIRST_FRAME_SUB:Ljava/lang/String; = "wallpaper_first_sub"

.field public static final WALLPAPER_MOTION_BACKGROUND:Ljava/lang/String; = "wallpaper_motion_background"

.field public static final WALLPAPER_MOTION_BACKGROUND_SUB:Ljava/lang/String; = "wallpaper_motion_background_sub"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "LockWallpaper"

    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method


# virtual methods
.method public getWallpaperFile(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)Ljava/io/File;
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "wallpaper"    # Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 52
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_VIDEO_WALLPAPER:Z

    const-string v1, "LockWallpaper"

    if-eqz v0, :cond_17

    .line 53
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_17

    .line 54
    const-string v0, "generateResizedBitmap: get first frame for video wallpaper."

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object p1

    .line 60
    :cond_17
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    const/4 v2, 0x4

    const-string v3, "generateResizedBitmap: get background for animated wallpaper."

    if-ne v0, v2, :cond_27

    .line 61
    invoke-static {v1, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedBackground()Ljava/io/File;

    move-result-object p1

    .line 66
    :cond_27
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v0, :cond_39

    .line 67
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_39

    .line 68
    invoke-static {v1, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionBackground()Ljava/io/File;

    move-result-object p1

    .line 73
    :cond_39
    return-object p1
.end method
