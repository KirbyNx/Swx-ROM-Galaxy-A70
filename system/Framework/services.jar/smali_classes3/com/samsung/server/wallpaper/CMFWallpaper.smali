.class public Lcom/samsung/server/wallpaper/CMFWallpaper;
.super Ljava/lang/Object;
.source "CMFWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;
    }
.end annotation


# static fields
.field private static final COLOR_CODE_POLLING_THREAD_COUNTDOWN:I = 0x3c

.field private static final DEBUG:Z = false

.field private static final MSG_UPDATE_CMF_COLOR_SETTING:I = 0x3f5

.field private static final RIL_SYSTEM_PROPERTY_FOR_COLOR_CODE:Ljava/lang/String; = "ril.product_code"

.field private static final TAG:Ljava/lang/String; = "CMFWallpaper"

.field private static sCmfSwitchMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColorCodePollingThread:Ljava/lang/Thread;

.field private final mContext:Landroid/content/Context;

.field private mDeviceColor:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mLastColorCodePollingThreadCount:I

.field private mLegacyDeviceColor:Ljava/lang/String;

.field private mProductCode:Ljava/lang/String;

.field private final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "zk"

    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 45
    const-string v0, "black"

    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    .line 50
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    .line 61
    new-instance v0, Lcom/samsung/server/wallpaper/CMFWallpaper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/CMFWallpaper$1;-><init>(Lcom/samsung/server/wallpaper/CMFWallpaper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mHandler:Landroid/os/Handler;

    .line 55
    const-string v0, "CMFWallpaper"

    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/server/wallpaper/CMFWallpaper;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 34
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 34
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/CMFWallpaper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/server/wallpaper/CMFWallpaper;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 34
    iget v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    return v0
.end method

.method static synthetic access$206(Lcom/samsung/server/wallpaper/CMFWallpaper;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 34
    iget v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/server/wallpaper/CMFWallpaper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 34
    invoke-direct {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->isOperatorWallpaper()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/server/wallpaper/CMFWallpaper;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 34
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/CMFWallpaper;
    .param p1, "x1"    # Ljava/lang/Thread;

    .line 34
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->switchCmfByCscFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCmfColorCodeFromSettingsDB()Ljava/lang/String;
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmf_color_code"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceColorCodeFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CMF_WALLPAPER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    .line 116
    const-string v0, "ril.product_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "rilProductCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rilProductCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CMFWallpaper"

    invoke-static {v3, v2}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa

    if-le v2, v4, :cond_60

    .line 121
    const/16 v2, 0x8

    :try_start_31
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "colorCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rilProductCode=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', colorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0, v2}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setCMFColorCode(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_58} :catch_59

    .line 124
    return-object v2

    .line 125
    .end local v2    # "colorCode":Ljava/lang/String;
    :catch_59
    move-exception v2

    .line 126
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "IndexOutOfBoundsException occurred on getDeviceColorCodeFromSystemProperty"

    invoke-static {v3, v4}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v1

    .line 130
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_60
    iget-object v2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    if-nez v2, :cond_75

    .line 131
    new-instance v2, Lcom/samsung/server/wallpaper/CMFWallpaper$2;

    invoke-direct {v2, p0}, Lcom/samsung/server/wallpaper/CMFWallpaper$2;-><init>(Lcom/samsung/server/wallpaper/CMFWallpaper;)V

    iput-object v2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    .line 164
    const-string v3, "ColorCodePollingThread"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 167
    :cond_75
    return-object v1

    .line 170
    .end local v0    # "rilProductCode":Ljava/lang/String;
    :cond_76
    return-object v1
.end method

.method private static getPreciseMillisTimeString(J)Ljava/lang/String;
    .registers 7
    .param p0, "nano"    # J

    .line 366
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "rest":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isOperatorWallpaper()Z
    .registers 6

    .line 372
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "deviceColor":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/WallpaperManager$SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 374
    const/4 v4, 0x2

    invoke-static {v1, v4, v3, v0}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/WallpaperManager$SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 375
    invoke-static {v1, v2, v0}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 376
    invoke-static {v1, v4, v0}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v2, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    nop

    .line 373
    :goto_2b
    return v2
.end method

.method private setLegacyDeviceColor(Ljava/lang/String;)V
    .registers 6
    .param p1, "cmfColorCode"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "colorName":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "featureBasedColor":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLegacyDeviceColor cmfColorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", featureBasedColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CMFWallpaper"

    invoke-static {v3, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-eqz v1, :cond_156

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    goto/16 :goto_156

    .line 183
    :cond_2d
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_158

    :cond_35
    goto/16 :goto_12c

    :sswitch_37
    const-string v3, "zy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0x15

    goto/16 :goto_12c

    :sswitch_43
    const-string v3, "zw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0x12

    goto/16 :goto_12c

    :sswitch_4f
    const-string v3, "zv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0xb

    goto/16 :goto_12c

    :sswitch_5b
    const-string v3, "zs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0xd

    goto/16 :goto_12c

    :sswitch_67
    const-string v3, "zr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0xc

    goto/16 :goto_12c

    :sswitch_73
    const-string v3, "zp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0xf

    goto/16 :goto_12c

    :sswitch_7f
    const-string v3, "zn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0x10

    goto/16 :goto_12c

    :sswitch_8b
    const-string v3, "zk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v2, 0x1

    goto/16 :goto_12c

    :sswitch_96
    const-string v3, "zi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v2, 0x4

    goto/16 :goto_12c

    :sswitch_a1
    const-string v3, "zg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0x14

    goto/16 :goto_12c

    :sswitch_ad
    const-string v3, "zd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v2, 0x2

    goto/16 :goto_12c

    :sswitch_b8
    const-string v3, "zb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v2, 0x7

    goto/16 :goto_12c

    :sswitch_c3
    const-string v3, "za"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0xa

    goto :goto_12c

    :sswitch_ce
    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0xe

    goto :goto_12c

    :sswitch_d9
    const-string v3, "mg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0x13

    goto :goto_12c

    :sswitch_e4
    const-string v3, "mb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v2, 0x6

    goto :goto_12c

    :sswitch_ee
    const-string v3, "lb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0x9

    goto :goto_12c

    :sswitch_f9
    const-string v3, "gb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0x8

    goto :goto_12c

    :sswitch_104
    const-string v3, "ed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v2, 0x3

    goto :goto_12c

    :sswitch_10e
    const-string v3, "di"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v2, 0x5

    goto :goto_12c

    :sswitch_118
    const-string v3, "cw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v2, 0x11

    goto :goto_12c

    :sswitch_123
    const-string v3, "ck"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v2, 0x0

    :goto_12c
    packed-switch v2, :pswitch_data_1b2

    .line 229
    const-string v0, "black"

    goto :goto_153

    .line 226
    :pswitch_132
    const-string v0, "yellow"

    .line 227
    goto :goto_153

    .line 223
    :pswitch_135
    const-string v0, "green"

    .line 224
    goto :goto_153

    .line 219
    :pswitch_138
    const-string v0, "white"

    .line 220
    goto :goto_153

    .line 215
    :pswitch_13b
    const-string v0, "brown"

    .line 216
    goto :goto_153

    .line 212
    :pswitch_13e
    const-string v0, "purple"

    .line 213
    goto :goto_153

    .line 209
    :pswitch_141
    const-string v0, "silver"

    .line 210
    goto :goto_153

    .line 205
    :pswitch_144
    const-string v0, "orchid"

    .line 206
    goto :goto_153

    .line 200
    :pswitch_147
    const-string v0, "blue"

    .line 201
    goto :goto_153

    .line 194
    :pswitch_14a
    const-string v0, "pink"

    .line 195
    goto :goto_153

    .line 189
    :pswitch_14d
    const-string v0, "gold"

    .line 190
    goto :goto_153

    .line 186
    :pswitch_150
    const-string v0, "black"

    .line 187
    nop

    .line 232
    :goto_153
    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    .line 233
    return-void

    .line 180
    :cond_156
    :goto_156
    return-void

    nop

    :sswitch_data_158
    .sparse-switch
        0xc68 -> :sswitch_123
        0xc74 -> :sswitch_118
        0xc85 -> :sswitch_10e
        0xc9f -> :sswitch_104
        0xcdb -> :sswitch_f9
        0xd76 -> :sswitch_ee
        0xd95 -> :sswitch_e4
        0xd9a -> :sswitch_d9
        0xda6 -> :sswitch_ce
        0xf27 -> :sswitch_c3
        0xf28 -> :sswitch_b8
        0xf2a -> :sswitch_ad
        0xf2d -> :sswitch_a1
        0xf2f -> :sswitch_96
        0xf31 -> :sswitch_8b
        0xf34 -> :sswitch_7f
        0xf36 -> :sswitch_73
        0xf38 -> :sswitch_67
        0xf39 -> :sswitch_5b
        0xf3c -> :sswitch_4f
        0xf3d -> :sswitch_43
        0xf3f -> :sswitch_37
    .end sparse-switch

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_150
        :pswitch_150
        :pswitch_14d
        :pswitch_14a
        :pswitch_14a
        :pswitch_14a
        :pswitch_147
        :pswitch_147
        :pswitch_147
        :pswitch_147
        :pswitch_144
        :pswitch_144
        :pswitch_144
        :pswitch_141
        :pswitch_141
        :pswitch_13e
        :pswitch_13b
        :pswitch_138
        :pswitch_138
        :pswitch_135
        :pswitch_135
        :pswitch_132
    .end packed-switch
.end method

.method private static switchCmfByCscFeature(Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p0, "originalColor"    # Ljava/lang/String;

    .line 283
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 284
    .local v2, "elapsed":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchCmfByCscFeature: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "logPrefix":Ljava/lang/String;
    const/4 v5, 0x0

    .line 287
    .local v5, "resultColor":Ljava/lang/String;
    const/4 v6, 0x0

    .line 289
    .local v6, "resultMsg":Ljava/lang/String;
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CMF_WALLPAPER:Z

    if-nez v0, :cond_3a

    .line 290
    const-string v0, " CMF NOT SUPPORTED"

    .line 291
    .end local v6    # "resultMsg":Ljava/lang/String;
    .local v0, "resultMsg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CMFWallpaper"

    invoke-static {v7, v6}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_221

    .line 292
    .end local v0    # "resultMsg":Ljava/lang/String;
    .restart local v6    # "resultMsg":Ljava/lang/String;
    :cond_3a
    sget-object v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CSC_REPLACE_WALLPAPER_CMF:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20c

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20c

    .line 293
    sget-object v7, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CSC_REPLACE_WALLPAPER_CMF:Ljava/lang/String;

    monitor-enter v7

    .line 294
    :try_start_4b
    sget-object v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->sCmfSwitchMap:Ljava/util/HashMap;

    if-nez v0, :cond_1c0

    .line 295
    const-string v0, "CMFWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "init: start: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CSC_REPLACE_WALLPAPER_CMF:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->sCmfSwitchMap:Ljava/util/HashMap;

    .line 300
    sget-object v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CSC_REPLACE_WALLPAPER_CMF:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 302
    .local v8, "switchList":[Ljava/lang/String;
    array-length v0, v8

    move v9, v0

    .line 304
    .local v9, "size":I
    const-string v0, "CMFWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "init: replace Items: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_97
    if-ge v10, v9, :cond_185

    .line 307
    aget-object v0, v8, v10
    :try_end_9b
    .catchall {:try_start_4b .. :try_end_9b} :catchall_205

    move-object v11, v0

    .line 310
    .local v11, "switchItem":Ljava/lang/String;
    :try_start_9c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_143

    .line 314
    const-string v0, ":"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "replaceFromTo":[Ljava/lang/String;
    array-length v12, v0

    const/4 v13, 0x2

    if-ne v12, v13, :cond_137

    .line 318
    const/4 v12, 0x0

    aget-object v12, v0, v12

    .line 319
    .local v12, "from":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v0, v13

    .line 323
    .local v13, "to":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_12b

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_12b

    .line 327
    sget-object v14, Lcom/samsung/server/wallpaper/CMFWallpaper;->sCmfSwitchMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 328
    .local v14, "prevValue":Ljava/lang/String;
    if-nez v14, :cond_108

    .line 333
    const-string v15, "CMFWallpaper"

    move-object/from16 v16, v0

    .end local v0    # "replaceFromTo":[Ljava/lang/String;
    .local v16, "replaceFromTo":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_d8} :catch_14f
    .catchall {:try_start_9c .. :try_end_d8} :catchall_205

    move-object/from16 v17, v5

    .end local v5    # "resultColor":Ljava/lang/String;
    .local v17, "resultColor":Ljava/lang/String;
    :try_start_da
    const-string v5, "init: ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] put "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-object v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->sCmfSwitchMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v12    # "from":Ljava/lang/String;
    .end local v13    # "to":Ljava/lang/String;
    .end local v14    # "prevValue":Ljava/lang/String;
    .end local v16    # "replaceFromTo":[Ljava/lang/String;
    goto/16 :goto_17f

    .line 329
    .end local v17    # "resultColor":Ljava/lang/String;
    .restart local v0    # "replaceFromTo":[Ljava/lang/String;
    .restart local v5    # "resultColor":Ljava/lang/String;
    .restart local v12    # "from":Ljava/lang/String;
    .restart local v13    # "to":Ljava/lang/String;
    .restart local v14    # "prevValue":Ljava/lang/String;
    :cond_108
    move-object/from16 v16, v0

    move-object/from16 v17, v5

    .end local v0    # "replaceFromTo":[Ljava/lang/String;
    .end local v5    # "resultColor":Ljava/lang/String;
    .restart local v16    # "replaceFromTo":[Ljava/lang/String;
    .restart local v17    # "resultColor":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "duplicated from color!! key "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " has value already: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "elapsed":J
    .end local v4    # "logPrefix":Ljava/lang/String;
    .end local v6    # "resultMsg":Ljava/lang/String;
    .end local v8    # "switchList":[Ljava/lang/String;
    .end local v9    # "size":I
    .end local v10    # "i":I
    .end local v11    # "switchItem":Ljava/lang/String;
    .end local v17    # "resultColor":Ljava/lang/String;
    .end local p0    # "originalColor":Ljava/lang/String;
    throw v0

    .line 323
    .end local v14    # "prevValue":Ljava/lang/String;
    .end local v16    # "replaceFromTo":[Ljava/lang/String;
    .restart local v0    # "replaceFromTo":[Ljava/lang/String;
    .restart local v2    # "elapsed":J
    .restart local v4    # "logPrefix":Ljava/lang/String;
    .restart local v5    # "resultColor":Ljava/lang/String;
    .restart local v6    # "resultMsg":Ljava/lang/String;
    .restart local v8    # "switchList":[Ljava/lang/String;
    .restart local v9    # "size":I
    .restart local v10    # "i":I
    .restart local v11    # "switchItem":Ljava/lang/String;
    .restart local p0    # "originalColor":Ljava/lang/String;
    :cond_12b
    move-object/from16 v16, v0

    move-object/from16 v17, v5

    .line 324
    .end local v0    # "replaceFromTo":[Ljava/lang/String;
    .end local v5    # "resultColor":Ljava/lang/String;
    .restart local v16    # "replaceFromTo":[Ljava/lang/String;
    .restart local v17    # "resultColor":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "empty value included!!"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "elapsed":J
    .end local v4    # "logPrefix":Ljava/lang/String;
    .end local v6    # "resultMsg":Ljava/lang/String;
    .end local v8    # "switchList":[Ljava/lang/String;
    .end local v9    # "size":I
    .end local v10    # "i":I
    .end local v11    # "switchItem":Ljava/lang/String;
    .end local v17    # "resultColor":Ljava/lang/String;
    .end local p0    # "originalColor":Ljava/lang/String;
    throw v0

    .line 316
    .end local v12    # "from":Ljava/lang/String;
    .end local v13    # "to":Ljava/lang/String;
    .end local v16    # "replaceFromTo":[Ljava/lang/String;
    .restart local v0    # "replaceFromTo":[Ljava/lang/String;
    .restart local v2    # "elapsed":J
    .restart local v4    # "logPrefix":Ljava/lang/String;
    .restart local v5    # "resultColor":Ljava/lang/String;
    .restart local v6    # "resultMsg":Ljava/lang/String;
    .restart local v8    # "switchList":[Ljava/lang/String;
    .restart local v9    # "size":I
    .restart local v10    # "i":I
    .restart local v11    # "switchItem":Ljava/lang/String;
    .restart local p0    # "originalColor":Ljava/lang/String;
    :cond_137
    move-object/from16 v16, v0

    move-object/from16 v17, v5

    .end local v0    # "replaceFromTo":[Ljava/lang/String;
    .end local v5    # "resultColor":Ljava/lang/String;
    .restart local v16    # "replaceFromTo":[Ljava/lang/String;
    .restart local v17    # "resultColor":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "wrong format"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "elapsed":J
    .end local v4    # "logPrefix":Ljava/lang/String;
    .end local v6    # "resultMsg":Ljava/lang/String;
    .end local v8    # "switchList":[Ljava/lang/String;
    .end local v9    # "size":I
    .end local v10    # "i":I
    .end local v11    # "switchItem":Ljava/lang/String;
    .end local v17    # "resultColor":Ljava/lang/String;
    .end local p0    # "originalColor":Ljava/lang/String;
    throw v0

    .line 311
    .end local v16    # "replaceFromTo":[Ljava/lang/String;
    .restart local v2    # "elapsed":J
    .restart local v4    # "logPrefix":Ljava/lang/String;
    .restart local v5    # "resultColor":Ljava/lang/String;
    .restart local v6    # "resultMsg":Ljava/lang/String;
    .restart local v8    # "switchList":[Ljava/lang/String;
    .restart local v9    # "size":I
    .restart local v10    # "i":I
    .restart local v11    # "switchItem":Ljava/lang/String;
    .restart local p0    # "originalColor":Ljava/lang/String;
    :cond_143
    move-object/from16 v17, v5

    .end local v5    # "resultColor":Ljava/lang/String;
    .restart local v17    # "resultColor":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "null switchItem"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "elapsed":J
    .end local v4    # "logPrefix":Ljava/lang/String;
    .end local v6    # "resultMsg":Ljava/lang/String;
    .end local v8    # "switchList":[Ljava/lang/String;
    .end local v9    # "size":I
    .end local v10    # "i":I
    .end local v11    # "switchItem":Ljava/lang/String;
    .end local v17    # "resultColor":Ljava/lang/String;
    .end local p0    # "originalColor":Ljava/lang/String;
    throw v0
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_14d} :catch_14d
    .catchall {:try_start_da .. :try_end_14d} :catchall_201

    .line 335
    .restart local v2    # "elapsed":J
    .restart local v4    # "logPrefix":Ljava/lang/String;
    .restart local v6    # "resultMsg":Ljava/lang/String;
    .restart local v8    # "switchList":[Ljava/lang/String;
    .restart local v9    # "size":I
    .restart local v10    # "i":I
    .restart local v11    # "switchItem":Ljava/lang/String;
    .restart local v17    # "resultColor":Ljava/lang/String;
    .restart local p0    # "originalColor":Ljava/lang/String;
    :catch_14d
    move-exception v0

    goto :goto_152

    .end local v17    # "resultColor":Ljava/lang/String;
    .restart local v5    # "resultColor":Ljava/lang/String;
    :catch_14f
    move-exception v0

    move-object/from16 v17, v5

    .line 336
    .end local v5    # "resultColor":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "resultColor":Ljava/lang/String;
    :goto_152
    :try_start_152
    const-string v5, "CMFWallpaper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "init: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "] skipped: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17f
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v17

    goto/16 :goto_97

    .end local v11    # "switchItem":Ljava/lang/String;
    .end local v17    # "resultColor":Ljava/lang/String;
    .restart local v5    # "resultColor":Ljava/lang/String;
    :cond_185
    move-object/from16 v17, v5

    .line 340
    .end local v5    # "resultColor":Ljava/lang/String;
    .end local v10    # "i":I
    .restart local v17    # "resultColor":Ljava/lang/String;
    const-string v0, "CMFWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "init: Done. ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/samsung/server/wallpaper/CMFWallpaper;->sCmfSwitchMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") took :"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-static {v10, v11}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getPreciseMillisTimeString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c2

    .line 294
    .end local v8    # "switchList":[Ljava/lang/String;
    .end local v9    # "size":I
    .end local v17    # "resultColor":Ljava/lang/String;
    .restart local v5    # "resultColor":Ljava/lang/String;
    :cond_1c0
    move-object/from16 v17, v5

    .line 344
    .end local v5    # "resultColor":Ljava/lang/String;
    .restart local v17    # "resultColor":Ljava/lang/String;
    :goto_1c2
    sget-object v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->sCmfSwitchMap:Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1ce
    .catchall {:try_start_152 .. :try_end_1ce} :catchall_201

    move-object v5, v0

    .line 345
    .end local v17    # "resultColor":Ljava/lang/String;
    .restart local v5    # "resultColor":Ljava/lang/String;
    if-eqz v5, :cond_1ec

    .line 346
    :try_start_1d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switched "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .end local v6    # "resultMsg":Ljava/lang/String;
    .local v0, "resultMsg":Ljava/lang/String;
    goto :goto_1fe

    .line 348
    .end local v0    # "resultMsg":Ljava/lang/String;
    .restart local v6    # "resultMsg":Ljava/lang/String;
    :cond_1ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no need to switch "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v6    # "resultMsg":Ljava/lang/String;
    .restart local v0    # "resultMsg":Ljava/lang/String;
    move-object v6, v0

    .line 350
    .end local v0    # "resultMsg":Ljava/lang/String;
    .restart local v6    # "resultMsg":Ljava/lang/String;
    :goto_1fe
    monitor-exit v7

    move-object v0, v6

    goto :goto_221

    .end local v5    # "resultColor":Ljava/lang/String;
    .restart local v17    # "resultColor":Ljava/lang/String;
    :catchall_201
    move-exception v0

    move-object/from16 v5, v17

    goto :goto_208

    .end local v17    # "resultColor":Ljava/lang/String;
    .restart local v5    # "resultColor":Ljava/lang/String;
    :catchall_205
    move-exception v0

    move-object/from16 v17, v5

    :goto_208
    monitor-exit v7
    :try_end_209
    .catchall {:try_start_1d1 .. :try_end_209} :catchall_20a

    throw v0

    :catchall_20a
    move-exception v0

    goto :goto_208

    .line 292
    :cond_20c
    move-object/from16 v17, v5

    .line 352
    .end local v5    # "resultColor":Ljava/lang/String;
    .restart local v17    # "resultColor":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipped, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v17

    .line 355
    .end local v6    # "resultMsg":Ljava/lang/String;
    .end local v17    # "resultColor":Ljava/lang/String;
    .restart local v0    # "resultMsg":Ljava/lang/String;
    .restart local v5    # "resultColor":Ljava/lang/String;
    :goto_221
    if-nez v5, :cond_229

    if-eqz v1, :cond_229

    .line 356
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 359
    :cond_229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "[DONE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] took :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-static {v7, v8}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getPreciseMillisTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CMFWallpaper"

    invoke-static {v7, v6}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-object v5
.end method


# virtual methods
.method public getDefaultColorCode()Ljava/lang/String;
    .registers 4

    .line 102
    invoke-direct {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getCmfColorCodeFromSettingsDB()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "cmfColorCode":Ljava/lang/String;
    const-string v1, "CMFWallpaper"

    const-string v2, "getDefaultDeviceColor"

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 105
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColorCodeFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_17
    return-object v0
.end method

.method public getDeviceColor()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMFWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    return-object v0
.end method

.method public getLastColorCodePollingThreadCount()I
    .registers 2

    .line 380
    iget v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    return v0
.end method

.method public getLegacyDeviceColor()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyDeviceColor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , color code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMFWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProductCode()Ljava/lang/String;
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    return-object v0
.end method

.method public initDeviceColor()V
    .registers 3

    .line 81
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDefaultColorCode()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "defaultColorCode":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 83
    invoke-direct {p0, v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setLegacyDeviceColor(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setCMFColorCode(Ljava/lang/String;)V
    .registers 4
    .param p1, "colorCode"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 76
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    return-void
.end method

.method public setDeviceColor(Ljava/lang/String;)V
    .registers 3
    .param p1, "color"    # Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setLegacyDeviceColor(Ljava/lang/String;)V

    .line 89
    return-void
.end method
