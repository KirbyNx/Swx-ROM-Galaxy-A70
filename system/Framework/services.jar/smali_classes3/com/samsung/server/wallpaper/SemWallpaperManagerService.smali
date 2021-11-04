.class public Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
.super Ljava/lang/Object;
.source "SemWallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;,
        Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;
    }
.end annotation


# static fields
.field public static final BACKUP_DEX_WALLPAPER_DIR:Ljava/lang/String; = "dex_wallpaper_backup"

.field public static final BACKUP_SUBDISPLAY_WALLPAPER_DIR:Ljava/lang/String; = "sub_wallpaper_backup"

.field public static final BACKUP_WALLPAPER_DIR:Ljava/lang/String; = "wallpaper_backup"

.field private static final DEBUG:Z = true

.field public static final DEFAULT_MULTIPACK_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator"

.field public static final DESKTOP_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field public static final DRESSROOM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.dressroom"

.field public static final EXTRA_WALLPAPER_FLAG:Ljava/lang/String; = "which"

.field public static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final LIVE_WALLPAPER_PICKER_PACKAGE_NAME:Ljava/lang/String; = "com.android.wallpaper.livepicker"

.field public static final MAXIMUM_BACKUP_DATA_CAPACITY:I = 0xa

.field public static final MSG_WALLPAPER_BINDING_TIMEOUT:I = 0x3f1

.field public static final ODTC_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "service.odtcfactory.sec.com.odtcfactoryservice"

.field public static final REQUEST_DELETE_WALLPAPER:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_DELETE_WALLPAPER"

.field public static final SYSTEMUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "SemWallpaperManagerService"

.field public static final THEME_CENTER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.themecenter"

.field private static final WALLPAPER:Ljava/lang/String; = "wallpaper_orig"

.field public static final WALLPAPER_BACKUP_INFO:Ljava/lang/String; = "wallpaper_backup_info.xml"

.field private static final WALLPAPER_BINDING_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final WALLPAPER_CROP:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final WALLPAPER_LOCK:Ljava/lang/String; = "wallpaper_lock_orig"

.field private static final WALLPAPER_LOCK_CROP:Ljava/lang/String; = "wallpaper_lock"

.field public static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.samsung.android.wallpaper.res"

.field static final sLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

.field private final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field public mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

.field private mDensityDpi:I

.field public mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field public mKnox:Lcom/samsung/server/wallpaper/Knox;

.field public mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

.field public mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

.field public mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

.field private mOldUserId:I

.field private mOrientation:I

.field public mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 138
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    .line 143
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 172
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 173
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 174
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

    .line 175
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 176
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 177
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 178
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    .line 310
    new-instance v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Landroid/os/Handler;

    .line 181
    const-string v0, "SemWallpaperManagerService"

    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    .line 184
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 186
    new-instance v0, Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 187
    new-instance v0, Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-direct {v0, p1, p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;-><init>(Landroid/content/Context;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 188
    new-instance v0, Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/server/wallpaper/OMCWallpaper;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 189
    new-instance v0, Lcom/samsung/server/wallpaper/LockWallpaper;

    invoke-direct {v0}, Lcom/samsung/server/wallpaper/LockWallpaper;-><init>()V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

    .line 190
    new-instance v0, Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/server/wallpaper/DesktopMode;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 191
    new-instance v0, Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-direct {v0, p2}, Lcom/samsung/server/wallpaper/SubDisplayMode;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 192
    new-instance v0, Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/server/wallpaper/LegibilityColor;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 193
    new-instance v0, Lcom/samsung/server/wallpaper/Knox;

    invoke-direct {v0, p1}, Lcom/samsung/server/wallpaper/Knox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    .line 195
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 197
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 198
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setDensityDpi(I)V

    .line 199
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setOrientation(I)V

    .line 201
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v1, "confChangeFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;

    invoke-direct {v3, p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 115
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 115
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-object v0
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 435
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 437
    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 438
    .local v3, "firstLine":Ljava/lang/Boolean;
    :goto_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-eqz v4, :cond_36

    .line 439
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_17

    .line 443
    :cond_2d
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 446
    :cond_36
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 447
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getCallStackString()Ljava/lang/String;
    .registers 2

    .line 494
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCallStackString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCallStackString(IZ)Ljava/lang/String;
    .registers 10
    .param p0, "maxLevel"    # I
    .param p1, "showClassName"    # Z

    .line 498
    const-string v0, ""

    .line 500
    .local v0, "msg":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 502
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    if-gez p0, :cond_d

    .line 503
    array-length p0, v1

    .line 506
    :cond_d
    const-string v2, ""

    .line 507
    .local v2, "methodTrace":Ljava/lang/String;
    const/4 v3, 0x2

    .line 509
    .local v3, "minLevel":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    array-length v5, v1

    if-ge v4, v5, :cond_27

    .line 510
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getCallStackString"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 511
    add-int/lit8 v3, v4, 0x1

    .line 509
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 515
    .end local v4    # "i":I
    :cond_27
    array-length v4, v1

    sub-int/2addr v4, v3

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2f

    .line 516
    array-length v4, v1

    sub-int p0, v4, v3

    .line 519
    :cond_2f
    move v4, v3

    .restart local v4    # "i":I
    :goto_30
    add-int v5, v3, p0

    if-ge v4, v5, :cond_8b

    array-length v5, v1

    if-ge v4, v5, :cond_8b

    .line 520
    aget-object v5, v1, v4

    .line 521
    .local v5, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-ne v4, v3, :cond_40

    .line 522
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    goto :goto_62

    .line 524
    :cond_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_56

    const-string v7, "\n"

    goto :goto_58

    :cond_56
    const-string v7, ""

    :goto_58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 529
    :goto_62
    if-eqz p1, :cond_88

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 534
    .end local v4    # "i":I
    .end local v5    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_8b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_aa

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    :cond_aa
    return-object v0
.end method

.method private getCroppedBitmapInfo(IIII)[Landroid/graphics/Point;
    .registers 23
    .param p1, "optimalWidth"    # I
    .param p2, "optimalHeight"    # I
    .param p3, "deviceWidth"    # I
    .param p4, "deviceHeight"    # I

    .line 734
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/Point;

    .line 735
    .local v4, "points":[Landroid/graphics/Point;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResizedBitmapOffset start optimal width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SemWallpaperManagerService"

    invoke-static {v7, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/high16 v5, 0x3f800000    # 1.0f

    .line 737
    .local v5, "bitmapRatio":F
    int-to-float v8, v3

    int-to-float v9, v2

    div-float/2addr v8, v9

    .line 739
    .local v8, "deviceRatio":F
    const/4 v9, 0x0

    .line 740
    .local v9, "dx":I
    const/4 v10, 0x0

    .line 742
    .local v10, "dy":I
    const/4 v11, 0x0

    .line 743
    .local v11, "newWidth":I
    const/4 v12, 0x0

    .line 745
    .local v12, "newHeight":I
    if-lez v0, :cond_62

    if-lez v1, :cond_62

    .line 746
    int-to-float v13, v1

    int-to-float v14, v0

    div-float v5, v13, v14

    .line 748
    move/from16 v11, p1

    .line 749
    move/from16 v12, p2

    .line 750
    cmpl-float v13, v8, v5

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    if-lez v13, :cond_52

    .line 751
    mul-int v13, v2, v12

    div-int v11, v13, v3

    .line 752
    sub-int v13, v0, v11

    move/from16 v16, v8

    move/from16 v17, v9

    .end local v8    # "deviceRatio":F
    .end local v9    # "dx":I
    .local v16, "deviceRatio":F
    .local v17, "dx":I
    int-to-double v8, v13

    mul-double/2addr v8, v14

    double-to-int v9, v8

    .end local v17    # "dx":I
    .restart local v9    # "dx":I
    goto :goto_68

    .line 754
    .end local v16    # "deviceRatio":F
    .restart local v8    # "deviceRatio":F
    :cond_52
    move/from16 v16, v8

    move/from16 v17, v9

    .end local v8    # "deviceRatio":F
    .end local v9    # "dx":I
    .restart local v16    # "deviceRatio":F
    .restart local v17    # "dx":I
    mul-int v8, v3, v11

    div-int v12, v8, v2

    .line 755
    sub-int v8, v1, v12

    int-to-double v8, v8

    mul-double/2addr v8, v14

    double-to-int v10, v8

    move/from16 v9, v17

    goto :goto_68

    .line 745
    .end local v16    # "deviceRatio":F
    .end local v17    # "dx":I
    .restart local v8    # "deviceRatio":F
    .restart local v9    # "dx":I
    :cond_62
    move/from16 v16, v8

    move/from16 v17, v9

    .line 758
    .end local v8    # "deviceRatio":F
    .end local v9    # "dx":I
    .restart local v16    # "deviceRatio":F
    .restart local v17    # "dx":I
    move/from16 v9, v17

    .end local v17    # "dx":I
    .restart local v9    # "dx":I
    :goto_68
    const/4 v8, 0x0

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    aput-object v13, v4, v8

    .line 759
    const/4 v8, 0x1

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v13, v4, v8

    .line 760
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDisplayInfo end width = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", dx = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , dy = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-object v4
.end method

.method private static getLogArray()[Ljava/lang/String;
    .registers 3

    .line 792
    sget-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 793
    :try_start_3
    sget-object v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 794
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 796
    :cond_e
    sget-object v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    sget-object v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 797
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "fl":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 421
    .local v1, "fin":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 423
    .local v2, "ret":Ljava/lang/String;
    :try_start_b
    invoke-static {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_17
    .catchall {:try_start_b .. :try_end_f} :catchall_15

    move-object v2, v3

    .line 428
    nop

    :goto_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 429
    goto :goto_30

    .line 428
    :catchall_15
    move-exception v3

    goto :goto_31

    .line 424
    :catch_17
    move-exception v3

    .line 425
    .local v3, "e":Ljava/lang/Exception;
    :try_start_18
    const-string v4, "SemWallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStringFromFile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_15

    .line 428
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_11

    .line 430
    :goto_30
    return-object v2

    .line 428
    :goto_31
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 429
    throw v3
.end method

.method public static putLog(Ljava/lang/String;)V
    .registers 10
    .param p0, "msg"    # Ljava/lang/String;

    .line 776
    const-string v0, "SemWallpaperManagerService"

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    sget-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 778
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 779
    .local v1, "time":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 780
    .local v3, "date":Ljava/util/Date;
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    .line 781
    .local v4, "format":Ljava/text/DateFormat;
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 782
    .local v5, "currentTime":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    rem-long v7, v1, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 784
    sget-object v6, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    sget-object v6, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_5b

    .line 786
    sget-object v6, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 788
    .end local v1    # "time":J
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "format":Ljava/text/DateFormat;
    .end local v5    # "currentTime":Ljava/lang/String;
    :cond_5b
    monitor-exit v0

    .line 789
    return-void

    .line 788
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_5d

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 233
    const-string v0, "SemWallpaperManagerService start"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CMF_WALLPAPER:Z

    if-eqz v0, :cond_3d

    .line 238
    const-string v0, " mLastColorCodePollingThreadCount ="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getLastColorCodePollingThreadCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 239
    const-string v0, " mProductCode ="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getProductCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Legibility Version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/SemWallpaperColors;->getLegibilityVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  allowScreenRotate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->getAllowScreenRotateSystem()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->getAllowScreenRotateLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_9b

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Lid state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    :cond_9b
    invoke-static {}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getLogArray()[Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "logArray":[Ljava/lang/String;
    const-string v1, " --------------LogArray--------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    if-eqz v0, :cond_cc

    .line 254
    array-length v1, v0

    .line 255
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a8
    if-ge v2, v1, :cond_cb

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    .line 258
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_cb
    goto :goto_d1

    .line 259
    :cond_cc
    const-string v1, "  logArray is null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    :goto_d1
    const-string v1, "SemWallpaperManagerService"

    invoke-static {v1, p1, p2, p3}, Lcom/samsung/server/wallpaper/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 263
    const-string v1, "SemWallpaperManagerService end"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V
    .registers 34
    .param p1, "file"    # Ljava/io/File;
    .param p2, "wallpaper"    # Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 603
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v2

    .line 604
    .local v2, "which":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateResizedBitmap: which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemWallpaperManagerService"

    invoke-static {v4, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 607
    .local v5, "elapsed":J
    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayId(Lcom/samsung/server/wallpaper/SemWallpaperData;)I

    move-result v3

    .line 609
    .local v3, "displayId":I
    new-instance v7, Landroid/view/DisplayInfo;

    invoke-direct {v7}, Landroid/view/DisplayInfo;-><init>()V

    .line 610
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v8, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 612
    iget v8, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    if-eqz v8, :cond_239

    iget v8, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    if-nez v8, :cond_52

    move-object/from16 v10, p1

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v7

    goto/16 :goto_241

    .line 614
    :cond_52
    const/4 v8, 0x0

    .line 616
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/samsung/server/wallpaper/WhichChecker;->isSingleType(I)Z

    move-result v9

    if-nez v9, :cond_6e

    .line 617
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateResizedBitmap: invalid which = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void

    .line 621
    :cond_6e
    invoke-static {v2}, Lcom/samsung/server/wallpaper/WhichChecker;->isLock(I)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 622
    iget-object v9, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

    move-object/from16 v10, p1

    invoke-virtual {v9, v10, v1}, Lcom/samsung/server/wallpaper/LockWallpaper;->getWallpaperFile(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)Ljava/io/File;

    move-result-object v9

    .end local p1    # "file":Ljava/io/File;
    .local v9, "file":Ljava/io/File;
    goto :goto_80

    .line 621
    .end local v9    # "file":Ljava/io/File;
    .restart local p1    # "file":Ljava/io/File;
    :cond_7d
    move-object/from16 v10, p1

    move-object v9, v10

    .line 625
    .end local p1    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    :goto_80
    sget-boolean v10, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CSC_CMF_WALLPAPER:Z

    if-nez v10, :cond_cd

    if-eqz v9, :cond_8c

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_cd

    .line 626
    :cond_8c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateResizedBitmap: file is null, (which = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") so create Operator wallpaper bitmap"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v10, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-virtual {v10, v2}, Lcom/samsung/server/wallpaper/OMCWallpaper;->getOperatorWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 628
    if-nez v8, :cond_d5

    .line 629
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateResizedBitmap: file operator bitmap is null, (which = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") so create Default wallpaper bitmap"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v10, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {v10, v2}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->getDefaultWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_d5

    .line 633
    :cond_cd
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 634
    .local v10, "cropFile":Ljava/lang/String;
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 637
    .end local v10    # "cropFile":Ljava/lang/String;
    :cond_d5
    :goto_d5
    if-nez v8, :cond_dd

    .line 638
    const-string v10, "generateResizedBitmap: bitmap is null"

    invoke-static {v4, v10}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void

    .line 642
    :cond_dd
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 643
    .local v10, "width":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 645
    .local v11, "height":I
    if-lez v10, :cond_22b

    if-gtz v11, :cond_f3

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v7

    move-object/from16 v21, v9

    goto/16 :goto_233

    .line 650
    :cond_f3
    move v12, v10

    .line 651
    .local v12, "optimalWidth":I
    move v13, v11

    .line 652
    .local v13, "optimalHeight":I
    iget v14, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 653
    .local v14, "deviceWidth":I
    iget v15, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 655
    .local v15, "deviceHeight":I
    move/from16 v16, v2

    .end local v2    # "which":I
    .local v16, "which":I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getOrientation()I

    move-result v2

    move/from16 v17, v3

    .end local v3    # "displayId":I
    .local v17, "displayId":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_13a

    .line 656
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v2

    if-nez v2, :cond_12a

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_119

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/server/wallpaper/WhichChecker;->isSubDisplay(I)Z

    move-result v2

    if-nez v2, :cond_119

    goto :goto_12a

    .line 660
    :cond_119
    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 661
    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_13a

    .line 657
    :cond_12a
    :goto_12a
    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 658
    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 665
    :cond_13a
    :goto_13a
    invoke-direct {v0, v12, v13, v14, v15}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCroppedBitmapInfo(IIII)[Landroid/graphics/Point;

    move-result-object v2

    .line 666
    .local v2, "bitmapInfo":[Landroid/graphics/Point;
    const/4 v3, 0x0

    aget-object v0, v2, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 667
    .local v0, "finalWidth":I
    move-object/from16 v18, v7

    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .local v18, "displayInfo":Landroid/view/DisplayInfo;
    aget-object v7, v2, v3

    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 668
    .local v7, "finalHeight":I
    const/16 v19, 0x1

    aget-object v3, v2, v19

    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 669
    .local v3, "dx":I
    move-object/from16 v21, v9

    .end local v9    # "file":Ljava/io/File;
    .local v21, "file":Ljava/io/File;
    aget-object v9, v2, v19

    iget v9, v9, Landroid/graphics/Point;->y:I

    .line 671
    .local v9, "dy":I
    if-gez v3, :cond_158

    const/4 v3, 0x0

    .line 672
    :cond_158
    if-gez v9, :cond_15b

    const/4 v9, 0x0

    .line 674
    :cond_15b
    move-object/from16 v22, v2

    .end local v2    # "bitmapInfo":[Landroid/graphics/Point;
    .local v22, "bitmapInfo":[Landroid/graphics/Point;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v14

    .end local v14    # "deviceWidth":I
    .local v23, "deviceWidth":I
    const-string v14, "generateResizedBitmap: start bitmapWidth = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", bitmapHeight = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " optimalWidth = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", optimalHeight = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", finalWidth = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " , finalHeight = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", optimalDx = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " , optimalDy = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-lez v12, :cond_220

    if-lez v13, :cond_220

    if-lez v0, :cond_220

    if-gtz v7, :cond_1b6

    move/from16 v24, v0

    goto :goto_222

    .line 686
    :cond_1b6
    const/4 v2, 0x0

    invoke-static {v8, v12, v13, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 687
    .local v14, "optimalBitmap":Landroid/graphics/Bitmap;
    const-string v2, "generateResizedBitmap end createScaledBitmap"

    invoke-static {v4, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-static {v14, v3, v9, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 689
    .local v2, "croppedBitmap":Landroid/graphics/Bitmap;
    move/from16 v24, v0

    .end local v0    # "finalWidth":I
    .local v24, "finalWidth":I
    const-string v0, "generateResizedBitmap end createBitmap"

    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    .line 693
    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d7

    .line 694
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 697
    :cond_1d7
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e0

    .line 698
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 701
    :cond_1e0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v25

    sub-long v25, v25, v5

    .line 702
    .local v25, "gap":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateResizedBitmap : took :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/32 v27, 0xf4240

    div-long v29, v25, v27

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const/16 v20, 0x0

    aput-object v29, v1, v20

    rem-long v27, v25, v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v1, v19

    move-object/from16 p1, v2

    .end local v2    # "croppedBitmap":Landroid/graphics/Bitmap;
    .local p1, "croppedBitmap":Landroid/graphics/Bitmap;
    const-string v2, "%d.%06dms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void

    .line 679
    .end local v14    # "optimalBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "finalWidth":I
    .end local v25    # "gap":J
    .end local p1    # "croppedBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "finalWidth":I
    :cond_220
    move/from16 v24, v0

    .line 681
    .end local v0    # "finalWidth":I
    .restart local v24    # "finalWidth":I
    :goto_222
    const-string v0, "generateResizedBitmap: Width or height of newly generated bitmap should be greater than 0."

    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    return-void

    .line 645
    .end local v12    # "optimalWidth":I
    .end local v13    # "optimalHeight":I
    .end local v15    # "deviceHeight":I
    .end local v16    # "which":I
    .end local v17    # "displayId":I
    .end local v18    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v21    # "file":Ljava/io/File;
    .end local v22    # "bitmapInfo":[Landroid/graphics/Point;
    .end local v23    # "deviceWidth":I
    .end local v24    # "finalWidth":I
    .local v2, "which":I
    .local v3, "displayId":I
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    .local v9, "file":Ljava/io/File;
    :cond_22b
    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v7

    move-object/from16 v21, v9

    .line 646
    .end local v2    # "which":I
    .end local v3    # "displayId":I
    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v9    # "file":Ljava/io/File;
    .restart local v16    # "which":I
    .restart local v17    # "displayId":I
    .restart local v18    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v21    # "file":Ljava/io/File;
    :goto_233
    const-string v0, "generateResizedBitmap: bitmap size must be > 0"

    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void

    .line 612
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v16    # "which":I
    .end local v17    # "displayId":I
    .end local v18    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v21    # "file":Ljava/io/File;
    .restart local v2    # "which":I
    .restart local v3    # "displayId":I
    .restart local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .local p1, "file":Ljava/io/File;
    :cond_239
    move-object/from16 v10, p1

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v7

    .end local v2    # "which":I
    .end local v3    # "displayId":I
    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v16    # "which":I
    .restart local v17    # "displayId":I
    .restart local v18    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_241
    return-void
.end method

.method public getCurrentUserId()I
    .registers 2

    .line 272
    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    return v0
.end method

.method public getDensityDpi()I
    .registers 2

    .line 299
    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    return v0
.end method

.method public getDisplayId(Lcom/samsung/server/wallpaper/SemWallpaperData;)I
    .registers 6
    .param p1, "wallpaper"    # Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 713
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 714
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v0

    and-int/lit8 v0, v0, 0x1c

    const/16 v2, 0x10

    if-ne v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    move v0, v1

    .line 715
    .local v0, "isSubDisplay":Z
    const/4 v1, 0x0

    .line 716
    .local v1, "displayId":I
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v2

    if-nez v2, :cond_1e

    .line 717
    if-nez v0, :cond_21

    .line 718
    const/4 v1, 0x1

    goto :goto_21

    .line 721
    :cond_1e
    if-eqz v0, :cond_21

    .line 722
    const/4 v1, 0x1

    .line 725
    :cond_21
    :goto_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayId: displayId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWallpaperManagerService"

    invoke-static {v3, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return v1

    .line 729
    .end local v0    # "isSubDisplay":Z
    .end local v1    # "displayId":I
    :cond_38
    return v1
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 5

    .line 276
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 277
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 278
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 279
    .local v2, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 281
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 282
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 283
    return-object v3
.end method

.method public getOldUserId()I
    .registers 2

    .line 291
    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 307
    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    return v0
.end method

.method public handleLiveWallpaperRemoved()V
    .registers 3

    .line 592
    const-string v0, "SemWallpaperManagerService"

    const-string v1, "external live wallpaper is removed"

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->hasLockscreenWallpaper(Z)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 597
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setKWPTypeLiveWallpaper(I)V

    .line 598
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 600
    :cond_1f
    return-void
.end method

.method public handleWallpaperBindingTimeout(ZZ)V
    .registers 7
    .param p1, "remove"    # Z
    .param p2, "bind"    # Z

    .line 765
    const/16 v0, 0x3f1

    if-eqz p1, :cond_9

    .line 766
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 768
    :cond_9
    if-eqz p2, :cond_12

    .line 769
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 771
    :cond_12
    return-void
.end method

.method public hasLockscreenWallpaper(Z)Z
    .registers 7
    .param p1, "forSubDisplay"    # Z

    .line 556
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1a

    .line 557
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const-string v4, "lockscreen_wallpaper_sub"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_19

    move v0, v1

    :cond_19
    return v0

    .line 559
    :cond_1a
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const-string v4, "lockscreen_wallpaper"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_2f

    move v0, v1

    :cond_2f
    return v0
.end method

.method public isLiveWallpaper(I)Z
    .registers 3
    .param p1, "wpType"    # I

    .line 585
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 586
    const/4 v0, 0x1

    return v0

    .line 588
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportingMode(I)Z
    .registers 5
    .param p1, "which"    # I

    .line 564
    invoke-static {p1}, Lcom/samsung/server/wallpaper/WhichChecker;->getMode(I)I

    move-result v0

    .line 566
    .local v0, "mode":I
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_15

    const/16 v1, 0x10

    if-eq v0, v1, :cond_e

    goto :goto_13

    .line 573
    :cond_e
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v1, :cond_13

    .line 574
    return v2

    .line 581
    :cond_13
    :goto_13
    const/4 v1, 0x1

    return v1

    .line 569
    :cond_15
    return v2
.end method

.method public removeOriginalSavedFile(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "which"    # I

    .line 543
    const-string v0, "com.android.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 544
    const-string v1, "com.samsung.android.app.dressroom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_29

    .line 548
    :cond_11
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 549
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.intent.action.REQUEST_DELETE_WALLPAPER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v0, "WHICH"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 553
    return-void

    .line 545
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_29
    :goto_29
    return-void
.end method

.method public setCurrentUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 268
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 269
    return-void
.end method

.method public setDensityDpi(I)V
    .registers 2
    .param p1, "densityDpi"    # I

    .line 295
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    .line 296
    return-void
.end method

.method public setOldUserId(I)V
    .registers 2
    .param p1, "oldUserId"    # I

    .line 287
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    .line 288
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 303
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    .line 304
    return-void
.end method
