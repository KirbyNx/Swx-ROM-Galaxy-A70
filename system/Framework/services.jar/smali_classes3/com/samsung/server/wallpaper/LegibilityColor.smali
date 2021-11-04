.class public Lcom/samsung/server/wallpaper/LegibilityColor;
.super Ljava/lang/Object;
.source "LegibilityColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_UPDATE_SEM_WALLPAPER_HOME_FONT_COLORS:I = 0x3f7

.field private static final PREFERENCES_NEED_DARK_FONT:Ljava/lang/String; = "need_dark_font"

.field private static final PREFERENCES_NEED_DARK_NAVIGATIONBAR:Ljava/lang/String; = "need_dark_navigationbar"

.field private static final PREFERENCES_NEED_DARK_STATUSBAR:Ljava/lang/String; = "need_dark_statusbar"

.field private static final TAG:Ljava/lang/String; = "LegibilityColor"

.field private static final WALLPAPER_COLOR_DIR:Ljava/lang/String; = "wallpaper_colors_info"


# instance fields
.field private mAllowScreenRotateLock:Z

.field private mAllowScreenRotateSystem:Z

.field private final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field private final mColorExtractors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

.field private mSettingsObserver:Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .param p3, "service"    # Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    .line 69
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    .line 82
    new-instance v0, Lcom/samsung/server/wallpaper/LegibilityColor$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor$1;-><init>(Lcom/samsung/server/wallpaper/LegibilityColor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mHandler:Landroid/os/Handler;

    .line 75
    const-string v0, "LegibilityColor"

    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 79
    iput-object p3, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/server/wallpaper/LegibilityColor;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 52
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 52
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 52
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/server/wallpaper/LegibilityColor;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 52
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/server/wallpaper/LegibilityColor;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/LegibilityColor;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    move-result v0

    return v0
.end method

.method private allowScreenRotate(I)Z
    .registers 9
    .param p1, "which"    # I

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "result":Z
    invoke-static {p1}, Lcom/samsung/server/wallpaper/WhichChecker;->getType(I)I

    move-result v1

    .line 502
    .local v1, "type":I
    iget-object v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const-string v4, "accelerometer_rotation"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    move v2, v5

    :goto_1e
    move v0, v2

    .line 503
    if-eqz v0, :cond_22

    .line 504
    return v5

    .line 507
    :cond_22
    if-ne v1, v3, :cond_35

    .line 508
    iget-object v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "sehome_portrait_mode_only"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_33

    move v5, v3

    :cond_33
    move v0, v5

    goto :goto_65

    .line 509
    :cond_35
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4f

    .line 510
    iget-object v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const-string v6, "lock_screen_allow_rotation"

    invoke-static {v2, v6, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_4d

    move v5, v3

    :cond_4d
    move v0, v5

    goto :goto_65

    .line 512
    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowScreenRoatate, unhandle type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LegibilityColor"

    invoke-static {v3, v2}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_65
    return v0
.end method

.method private centercropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "centercropBitmap, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegibilityColor"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-nez p1, :cond_28

    .line 453
    const/4 v0, 0x0

    return-object v0

    .line 455
    :cond_28
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/LegibilityColor;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 456
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/LegibilityColor;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 457
    return-object p1
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 481
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 482
    .local v0, "originWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 484
    .local v1, "originHeight":I
    const/4 v2, 0x0

    .line 485
    .local v2, "x":I
    const/4 v3, 0x0

    .line 487
    .local v3, "y":I
    if-le v0, p2, :cond_10

    .line 488
    sub-int v4, v0, p2

    div-int/lit8 v2, v4, 0x2

    .line 491
    :cond_10
    if-le v1, p3, :cond_16

    .line 492
    sub-int v4, v1, p3

    div-int/lit8 v3, v4, 0x2

    .line 495
    :cond_16
    invoke-static {p1, v2, v3, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private declared-synchronized getColorExtractor(IZ)Landroid/os/AsyncTask;
    .registers 7
    .param p1, "which"    # I
    .param p2, "landscape"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 141
    if-eqz p2, :cond_6

    const/16 v0, 0x64

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 142
    .local v0, "offset":I
    :goto_7
    :try_start_7
    iget-object v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    .line 144
    .local v1, "extractor":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 145
    const-string v2, "LegibilityColor"

    const-string v3, "getColorExtractor cancel"

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 147
    const/4 v1, 0x0

    .line 148
    iget-object v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    add-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 151
    .end local p0    # "this":Lcom/samsung/server/wallpaper/LegibilityColor;
    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/samsung/server/wallpaper/LegibilityColor;->makeColorExtractor(IZ)Landroid/os/AsyncTask;

    move-result-object v2

    move-object v1, v2

    .line 152
    iget-object v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    add-int v3, p1, v0

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_3a

    .line 154
    monitor-exit p0

    return-object v1

    .line 140
    .end local v0    # "offset":I
    .end local v1    # "extractor":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    .end local p1    # "which":I
    .end local p2    # "landscape":Z
    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getWallpaperColorPath(IIZ)Ljava/lang/String;
    .registers 10
    .param p0, "userId"    # I
    .param p1, "which"    # I
    .param p2, "landscape"    # Z

    .line 266
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "wallpaper_colors_info"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "LegibilityColor"

    if-nez v1, :cond_1e

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 269
    .local v1, "success":Z
    if-nez v1, :cond_1e

    .line 270
    const-string v3, "getWallpaperColorPath failed to mkdir"

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v1    # "success":Z
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "path":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/server/wallpaper/WhichChecker;->getType(I)I

    move-result v3

    .line 276
    .local v3, "type":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3b

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/home"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_65

    .line 278
    :cond_3b
    const/4 v4, 0x2

    if-ne v3, v4, :cond_50

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/lock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_65

    .line 281
    :cond_50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unhandle type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v1, 0x0

    .line 285
    :goto_65
    if-eqz p2, :cond_78

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_landscape"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    :cond_78
    invoke-static {p1}, Lcom/samsung/server/wallpaper/WhichChecker;->getMode(I)I

    move-result v4

    .line 290
    .local v4, "mode":I
    if-eqz v4, :cond_c4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_82

    goto :goto_c4

    .line 292
    :cond_82
    const/16 v5, 0x8

    if-ne v4, v5, :cond_98

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_dex.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d5

    .line 294
    :cond_98
    const/16 v5, 0x10

    if-ne v4, v5, :cond_ae

    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_sub.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d5

    .line 297
    :cond_ae
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unhandle mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v1, 0x0

    goto :goto_d5

    .line 291
    :cond_c4
    :goto_c4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_phone.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    :goto_d5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWallpaperColorPath, path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-object v1
.end method

.method private makeColorExtractor(IZ)Landroid/os/AsyncTask;
    .registers 5
    .param p1, "which"    # I
    .param p2, "landscape"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeColorExtractor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegibilityColor"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Lcom/samsung/server/wallpaper/LegibilityColor$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/server/wallpaper/LegibilityColor$2;-><init>(Lcom/samsung/server/wallpaper/LegibilityColor;IZ)V

    return-object v0
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 462
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_31

    .line 465
    :cond_c
    if-le p2, p3, :cond_16

    .line 466
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .local v0, "ratio":F
    goto :goto_1d

    .line 468
    .end local v0    # "ratio":F
    :cond_16
    int-to-float v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 471
    .restart local v0    # "ratio":F
    :goto_1d
    nop

    .line 472
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 473
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    .line 471
    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 477
    .end local v0    # "ratio":F
    :cond_31
    return-object p1
.end method

.method private static support()Z
    .registers 1

    .line 445
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public convertColors(Landroid/app/WallpaperColors;Lcom/samsung/server/wallpaper/SemWallpaperData;Lcom/samsung/server/wallpaper/SemWallpaperData;)V
    .registers 9
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "home"    # Lcom/samsung/server/wallpaper/SemWallpaperData;
    .param p3, "lock"    # Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 393
    invoke-static {}, Lcom/samsung/server/wallpaper/LegibilityColor;->support()Z

    move-result v0

    if-nez v0, :cond_7

    .line 394
    return-void

    .line 397
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertColors "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegibilityColor"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-nez p1, :cond_20

    .line 400
    return-void

    .line 403
    :cond_20
    new-instance v0, Landroid/app/SemWallpaperColors$Builder;

    invoke-direct {v0}, Landroid/app/SemWallpaperColors$Builder;-><init>()V

    .line 405
    .local v0, "builder":Landroid/app/SemWallpaperColors$Builder;
    const/4 v1, 0x0

    .line 406
    .local v1, "color":I
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2f

    .line 407
    const/4 v1, 0x1

    .line 409
    :cond_2f
    invoke-virtual {v0, v1}, Landroid/app/SemWallpaperColors$Builder;->setColorType(I)Landroid/app/SemWallpaperColors$Builder;

    .line 411
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/SemWallpaperColors$Builder;->setWhich(I)Landroid/app/SemWallpaperColors$Builder;

    .line 412
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setPrimarySemColors(Landroid/app/SemWallpaperColors;)V

    .line 413
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setLandscapeColors([Landroid/app/SemWallpaperColors;)V

    .line 414
    iget-object v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 416
    iget-object v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/server/wallpaper/WhichChecker;->isSubDisplay(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->hasLockscreenWallpaper(Z)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 417
    return-void

    .line 420
    :cond_5e
    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/SemWallpaperColors$Builder;->setWhich(I)Landroid/app/SemWallpaperColors$Builder;

    .line 421
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setPrimarySemColors(Landroid/app/SemWallpaperColors;)V

    .line 422
    invoke-virtual {p3, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setLandscapeColors([Landroid/app/SemWallpaperColors;)V

    .line 423
    iget-object v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 424
    return-void
.end method

.method public doPackagesChangedLocked(Lcom/samsung/server/wallpaper/SemWallpaperData;)V
    .registers 5
    .param p1, "wallpaper"    # Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 427
    invoke-static {}, Lcom/samsung/server/wallpaper/LegibilityColor;->support()Z

    move-result v0

    if-nez v0, :cond_7

    .line 428
    return-void

    .line 431
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doPackagesChangedLocked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegibilityColor"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    if-eqz p1, :cond_53

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_53

    .line 433
    const-string v0, "external live wallpaper is removed"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 435
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/server/wallpaper/WhichChecker;->getMode(I)I

    move-result v0

    .line 436
    .local v0, "mode":I
    iget-object v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/WhichChecker;->isSubDisplay(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->hasLockscreenWallpaper(Z)Z

    move-result v1

    if-nez v1, :cond_53

    .line 437
    iget-object v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setKWPTypeLiveWallpaper(I)V

    .line 438
    or-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 441
    .end local v0    # "mode":I
    :cond_53
    return-void
.end method

.method public extractColor(I)V
    .registers 3
    .param p1, "which"    # I

    .line 123
    invoke-static {}, Lcom/samsung/server/wallpaper/LegibilityColor;->support()Z

    move-result v0

    if-nez v0, :cond_7

    .line 124
    return-void

    .line 126
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    .line 127
    return-void
.end method

.method public extractColor(IZ)V
    .registers 6
    .param p1, "which"    # I
    .param p2, "landscape"    # Z

    .line 131
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/server/wallpaper/LegibilityColor;->getColorExtractor(IZ)Landroid/os/AsyncTask;

    move-result-object v0

    .line 132
    .local v0, "extractor":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    if-eqz v0, :cond_e

    .line 133
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 137
    .end local v0    # "extractor":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :cond_e
    goto :goto_2a

    .line 135
    :catch_f
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractcolor: Error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LegibilityColor"

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method public getAllowScreenRotateLock()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    return v0
.end method

.method public getAllowScreenRotateSystem()Z
    .registers 2

    .line 214
    iget-boolean v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    return v0
.end method

.method public initSemWallpaperColors(ILcom/samsung/server/wallpaper/SemWallpaperData;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "wallpaper"    # Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 226
    const-string v0, "LegibilityColor"

    if-nez p2, :cond_a

    .line 227
    const-string v1, "initSemWallpaperColors wallpaper == null"

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 231
    :cond_a
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v1

    .line 232
    .local v1, "which":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSemWallpaperColors which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/SemWallpaperColors;->getDeviceVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_36

    .line 236
    return-void

    .line 239
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSemWallpaperColors:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :try_start_4a
    invoke-static {v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "xml":Ljava/lang/String;
    invoke-static {v3}, Landroid/app/SemWallpaperColors;->getXmlVersion(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Landroid/app/SemWallpaperColors;->getDeviceVersion()I

    move-result v5

    if-eq v4, v5, :cond_61

    .line 244
    const-string v4, "fota, calSemWallpaperColors"

    invoke-static {v0, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    goto :goto_6f

    .line 247
    :cond_61
    invoke-static {v3}, Landroid/app/SemWallpaperColors;->fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;

    move-result-object v4

    .line 248
    .local v4, "colors":Landroid/app/SemWallpaperColors;
    if-eqz v4, :cond_6f

    .line 249
    invoke-virtual {p2, v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setPrimarySemColors(Landroid/app/SemWallpaperColors;)V

    .line 250
    iget-object v5, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v5, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_6f} :catch_70

    .line 260
    .end local v3    # "xml":Ljava/lang/String;
    .end local v4    # "colors":Landroid/app/SemWallpaperColors;
    :cond_6f
    :goto_6f
    goto :goto_92

    .line 253
    :catch_70
    move-exception v3

    .line 254
    .local v3, "e":Ljava/lang/Exception;
    instance-of v4, v3, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_7e

    .line 255
    const-string v4, "fota, calcSemWallpaperColors"

    invoke-static {v0, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    goto :goto_92

    .line 258
    :cond_7e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_92
    const-string v3, "initSemWallpaperColors done"

    invoke-static {v0, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method public initWallpaperLegibilityColors()V
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;

    .line 344
    new-instance v0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;-><init>(Lcom/samsung/server/wallpaper/LegibilityColor;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mSettingsObserver:Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;

    .line 345
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->init()V

    .line 347
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->setAllowScreenRotateSystem(Z)V

    .line 348
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->setAllowScreenRotateLock(Z)V

    .line 349
    return-void
.end method

.method public setAllowScreenRotateLock(Z)V
    .registers 2
    .param p1, "allowScreenRotateLock"    # Z

    .line 218
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    .line 219
    return-void
.end method

.method public setAllowScreenRotateSystem(Z)V
    .registers 2
    .param p1, "allowScreenRotateSystem"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    .line 211
    return-void
.end method

.method public setWhiteBgSettings(Landroid/app/SemWallpaperColors;I)V
    .registers 8
    .param p1, "colors"    # Landroid/app/SemWallpaperColors;
    .param p2, "which"    # I

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWhiteBgSettings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegibilityColor"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {p2}, Lcom/samsung/server/wallpaper/WhichChecker;->isDex(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopSingleMode()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 310
    const-string v0, "Dex dual mode, ignore SemWallpaperColors"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 314
    :cond_2c
    invoke-static {p2}, Lcom/samsung/server/wallpaper/WhichChecker;->isDex(I)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopSingleMode()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 315
    const-string v0, "Dex single mode, ignore SemWallpaperColors"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 319
    :cond_42
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    .line 321
    .local v0, "values":[I
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object v1

    .line 322
    .local v1, "item":Landroid/app/SemWallpaperColors$Item;
    const/4 v2, 0x2

    if-eqz v1, :cond_62

    .line 323
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 324
    aget v3, v0, v4

    if-ne v3, v2, :cond_62

    .line 325
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result v3

    aput v3, v0, v4

    .line 329
    :cond_62
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_71

    .line 331
    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v4

    aput v4, v0, v3

    .line 333
    :cond_71
    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_7f

    .line 335
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v3

    aput v3, v0, v2

    .line 337
    :cond_7f
    iget-object v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 338
    .local v2, "msg":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 339
    iget-object v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    return-void

    nop

    :array_90
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public smartCropBitmap(Landroid/graphics/Bitmap;Lcom/samsung/server/wallpaper/SemWallpaperData;I)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "wallpaper"    # Lcom/samsung/server/wallpaper/SemWallpaperData;
    .param p3, "rotation"    # I

    .line 352
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropOriginalRect()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "LegibilityColor"

    const/4 v2, 0x0

    if-eqz v0, :cond_f4

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_11

    goto/16 :goto_f4

    .line 358
    :cond_11
    :try_start_11
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsPreloaded()Z

    move-result v0

    if-nez v0, :cond_28

    .line 359
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->isThemeContents()Z

    move-result v0

    if-nez v0, :cond_28

    .line 360
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    .line 363
    .local v0, "fixed":Z
    :goto_29
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    if-eqz v3, :cond_38

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/server/wallpaper/WhichChecker;->isSubDisplay(I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 364
    const/4 v0, 0x0

    .line 367
    :cond_38
    if-eqz p3, :cond_5a

    if-eqz v0, :cond_5a

    .line 368
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 369
    .local v3, "matrix":Landroid/graphics/Matrix;
    rsub-int v4, p3, 0x168

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 370
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, p1

    move-object v9, v3

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object p1, v1

    .line 371
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    goto :goto_b8

    .line 372
    :cond_5a
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7b

    .line 373
    iget-object v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 374
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    if-eqz v4, :cond_7a

    iget v4, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    if-nez v4, :cond_70

    goto :goto_7a

    .line 376
    :cond_70
    iget v4, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/server/wallpaper/LegibilityColor;->centercropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object p1, v1

    .line 377
    .end local v3    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_b8

    .line 374
    .restart local v3    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_7a
    :goto_7a
    return-object v2

    .line 378
    .end local v3    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_7b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropOriginalRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 379
    .local v3, "scaleWidth":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropOriginalRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 380
    .local v4, "scaleHeight":F
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 381
    .local v5, "rect":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    iget v7, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v4

    float-to-int v9, v9

    invoke-static {p1, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_b7} :catch_ba

    move-object p1, v1

    .line 387
    .end local v0    # "fixed":Z
    .end local v3    # "scaleWidth":F
    .end local v4    # "scaleHeight":F
    .end local v5    # "rect":Landroid/graphics/Rect;
    :goto_b8
    nop

    .line 389
    return-object p1

    .line 384
    :catch_ba
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", smart crop info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropOriginalRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-object v2

    .line 353
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f4
    :goto_f4
    const-string v0, "smartCropRect == null"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-object v2
.end method
