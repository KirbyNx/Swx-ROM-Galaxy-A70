.class public Lcom/samsung/server/wallpaper/SemWallpaperData;
.super Ljava/lang/Object;
.source "SemWallpaperData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SemWallpaperData"


# instance fields
.field private mAnimatedBackground:Ljava/io/File;

.field private mAnimatedPkgName:Ljava/lang/String;

.field private mCroppedBitmap:Landroid/graphics/Bitmap;

.field private mDlsSemColors:Landroid/app/SemWallpaperColors;

.field private mHeight:I

.field private mIsCopied:Z

.field private mIsDesktopWallpaper:Z

.field private mIsPreloaded:Z

.field private mLandscapeColors:[Landroid/app/SemWallpaperColors;

.field private mLastCallingPackage:Ljava/lang/String;

.field private mMotionBackground:Ljava/io/File;

.field private mMotionPkgName:Ljava/lang/String;

.field private mOrientation:I

.field private mPrimarySemColors:Landroid/app/SemWallpaperColors;

.field private mSmartCropOriginalRect:Landroid/graphics/Rect;

.field private mSmartCropRect:Landroid/graphics/Rect;

.field private mUri:Ljava/lang/String;

.field private mVideoColor:Ljava/lang/String;

.field private mVideoDefaultHasBeenUsed:Z

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoFilePath:Ljava/lang/String;

.field private mVideoFirstFrameFile:Ljava/io/File;

.field private mVideoPkgName:Ljava/lang/String;

.field private mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

.field private mWhich:I

.field private mWidth:I

.field private mWpType:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 53
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 55
    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    .line 56
    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 60
    new-instance v2, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-direct {v2, p0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    iput-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 64
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 69
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 74
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 75
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoColor:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    .line 79
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    .line 83
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsDesktopWallpaper:Z

    .line 96
    const-string v0, "SemWallpaperData"

    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/server/wallpaper/SemWallpaperData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/SemWallpaperData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .line 299
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/server/wallpaper/SemWallpaperData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 300
    .local v0, "data":Lcom/samsung/server/wallpaper/SemWallpaperData;
    return-object v0

    .line 301
    .end local v0    # "data":Lcom/samsung/server/wallpaper/SemWallpaperData;
    :catch_7
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 303
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAnimatedBackground()Ljava/io/File;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    return-object v0
.end method

.method public getAnimatedPkgName()Ljava/lang/String;
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getCroppedBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mCroppedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDlsSemColors()Landroid/app/SemWallpaperColors;
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 200
    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    return v0
.end method

.method public getIsCopied()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    return v0
.end method

.method public getIsDesktopWallpaper()Z
    .registers 2

    .line 501
    iget-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsDesktopWallpaper:Z

    return v0
.end method

.method public getIsPreloaded()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    return v0
.end method

.method public getLandscapeColors()[Landroid/app/SemWallpaperColors;
    .registers 2

    .line 543
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    return-object v0
.end method

.method public getLastCallingPackage()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getMotionBackground()Ljava/io/File;
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    return-object v0
.end method

.method public getMotionPkgName()Ljava/lang/String;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 168
    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mOrientation:I

    return v0
.end method

.method public getPrimarySemColors()Landroid/app/SemWallpaperColors;
    .registers 2

    .line 511
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    return-object v0
.end method

.method public getSmartCropOriginalRect()Landroid/graphics/Rect;
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSmartCropRect()Landroid/graphics/Rect;
    .registers 2

    .line 535
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoColor()Ljava/lang/String;
    .registers 2

    .line 475
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoColor:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDefaultHasBeenUsed()Z
    .registers 2

    .line 491
    iget-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    return v0
.end method

.method public getVideoFileName()Ljava/lang/String;
    .registers 2

    .line 483
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFilePath()Ljava/lang/String;
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFirstFrameFile()Ljava/io/File;
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    return-object v0
.end method

.method public getVideoPkgName()Ljava/lang/String;
    .registers 2

    .line 467
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getWallpaperHistory()Ljava/lang/String;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperHistoryList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->getWallpaperHistoryDataList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperTypeString()Ljava/lang/String;
    .registers 3

    .line 257
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    .line 259
    .local v0, "type":I
    if-eqz v0, :cond_28

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_19

    .line 279
    const-string v1, "default"

    .local v1, "typeString":Ljava/lang/String;
    goto :goto_2b

    .line 276
    .end local v1    # "typeString":Ljava/lang/String;
    :cond_19
    const-string v1, "video"

    .line 277
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_2b

    .line 273
    .end local v1    # "typeString":Ljava/lang/String;
    :cond_1c
    const-string v1, "live"

    .line 274
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_2b

    .line 270
    .end local v1    # "typeString":Ljava/lang/String;
    :cond_1f
    const-string v1, "animated"

    .line 271
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_2b

    .line 267
    .end local v1    # "typeString":Ljava/lang/String;
    :cond_22
    const-string v1, "multiple"

    .line 268
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_2b

    .line 264
    .end local v1    # "typeString":Ljava/lang/String;
    :cond_25
    const-string v1, "motion"

    .line 265
    .restart local v1    # "typeString":Ljava/lang/String;
    goto :goto_2b

    .line 261
    .end local v1    # "typeString":Ljava/lang/String;
    :cond_28
    const-string v1, "image"

    .line 262
    .restart local v1    # "typeString":Ljava/lang/String;
    nop

    .line 282
    :goto_2b
    return-object v1
.end method

.method public getWhich()I
    .registers 2

    .line 176
    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 192
    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    return v0
.end method

.method public getWpType()I
    .registers 2

    .line 184
    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    return v0
.end method

.method public isThemeContents()Z
    .registers 4

    .line 286
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistory()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 288
    const-string v1, "com.samsung.android.themecenter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 289
    const-string v1, "SemWallpaperData"

    const-string v2, "Theme contents."

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, 0x1

    return v1

    .line 293
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method public parseWallpaperHistoryInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 241
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 243
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "packages":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_41

    aget-object v5, v1, v4

    .line 245
    .local v5, "packageInfo":Ljava/lang/String;
    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, "info":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v6, v7

    aget-object v8, v6, v3

    array-length v9, v6
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_23} :catch_38

    const-string v10, ""

    const/4 v11, 0x2

    if-le v9, v11, :cond_2b

    :try_start_28
    aget-object v9, v6, v11

    goto :goto_2c

    :cond_2b
    move-object v9, v10

    :goto_2c
    array-length v11, v6

    const/4 v12, 0x3

    if-le v11, v12, :cond_32

    aget-object v10, v6, v12

    :cond_32
    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_35} :catch_38

    .line 244
    .end local v5    # "packageInfo":Ljava/lang/String;
    .end local v6    # "info":[Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 251
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "packages":[Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 252
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_42

    .line 249
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3d
    move-exception v0

    .line 250
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 253
    .end local v0    # "e":Ljava/io/IOException;
    :cond_41
    nop

    .line 254
    :goto_42
    return-void
.end method

.method public setAnimatedBackground(Ljava/io/File;)V
    .registers 2
    .param p1, "animatedBackground"    # Ljava/io/File;

    .line 437
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 438
    return-void
.end method

.method public setAnimatedPkgName(Ljava/lang/String;)V
    .registers 2
    .param p1, "animatedPkgName"    # Ljava/lang/String;

    .line 429
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setCroppedBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "croppedBitmap"    # Landroid/graphics/Bitmap;

    .line 220
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mCroppedBitmap:Landroid/graphics/Bitmap;

    .line 221
    return-void
.end method

.method public setDlsSemColors(Landroid/app/SemWallpaperColors;)V
    .registers 2
    .param p1, "dlsSemColors"    # Landroid/app/SemWallpaperColors;

    .line 515
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    .line 516
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 196
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    .line 197
    return-void
.end method

.method public setIsCopied(Z)V
    .registers 2
    .param p1, "isCopied"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    .line 149
    return-void
.end method

.method public setIsDesktopWallpaper(Z)V
    .registers 2
    .param p1, "isDesktopWallpaper"    # Z

    .line 497
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsDesktopWallpaper:Z

    .line 498
    return-void
.end method

.method public setIsPreloaded(Z)V
    .registers 2
    .param p1, "isPreloaded"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 157
    return-void
.end method

.method public setLandscapeColors([Landroid/app/SemWallpaperColors;)V
    .registers 2
    .param p1, "landscapeColors"    # [Landroid/app/SemWallpaperColors;

    .line 539
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    .line 540
    return-void
.end method

.method public setLastCallingPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "lastCallingPackage"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setMotionBackground(Ljava/io/File;)V
    .registers 2
    .param p1, "motionBackground"    # Ljava/io/File;

    .line 419
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 420
    return-void
.end method

.method public setMotionPkgName(Ljava/lang/String;)V
    .registers 2
    .param p1, "motionPkgName"    # Ljava/lang/String;

    .line 411
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 164
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mOrientation:I

    .line 165
    return-void
.end method

.method public setPrimarySemColors(Landroid/app/SemWallpaperColors;)V
    .registers 2
    .param p1, "primarySemColors"    # Landroid/app/SemWallpaperColors;

    .line 507
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 508
    return-void
.end method

.method public setSmartCropOriginalRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "smartCropOriginalRect"    # Landroid/graphics/Rect;

    .line 523
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    .line 524
    return-void
.end method

.method public setSmartCropRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "smartCropRect"    # Landroid/graphics/Rect;

    .line 531
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    .line 532
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 212
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setVideoColor(Ljava/lang/String;)V
    .registers 2
    .param p1, "videoColor"    # Ljava/lang/String;

    .line 471
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoColor:Ljava/lang/String;

    .line 472
    return-void
.end method

.method public setVideoDefaultHasBeenUsed(Z)V
    .registers 2
    .param p1, "videoDefaultHasBeenUsed"    # Z

    .line 487
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    .line 488
    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "videoFileName"    # Ljava/lang/String;

    .line 479
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public setVideoFilePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "videoFilePath"    # Ljava/lang/String;

    .line 455
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public setVideoFirstFrameFile(Ljava/io/File;)V
    .registers 2
    .param p1, "videoFirstFrameFile"    # Ljava/io/File;

    .line 447
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 448
    return-void
.end method

.method public setVideoPkgName(Ljava/lang/String;)V
    .registers 2
    .param p1, "videoPkgName"    # Ljava/lang/String;

    .line 463
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "callingPkgName"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "pkgName"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->addWallpaperHistoryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public setWhich(I)V
    .registers 2
    .param p1, "which"    # I

    .line 172
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 173
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 188
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    .line 189
    return-void
.end method

.method public setWpType(I)V
    .registers 2
    .param p1, "wpType"    # I

    .line 180
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_5
    const-string v1, "\n    mIsCopied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "\n    mIsPreloaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "\n    mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "\n    mWhich=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "\n    mWpType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "\n    mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "\n    mWallpaperHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v1, :cond_5d

    .line 113
    const-string v1, "\n    mMotionPkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_5d
    const-string v1, "\n    mAnimatedPkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_VIDEO_WALLPAPER:Z

    if-eqz v1, :cond_9d

    .line 119
    const-string v1, "\n    mVideoFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", mVideoPkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", mVideoColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ", mVideoFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", mVideoDefaultHasBeenUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    :cond_9d
    const-string v1, "\n    mPrimarySemColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "\n    mDlsSemColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "\n    mSmartCropOriginalRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", mSmartCropRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    if-eqz v1, :cond_dd

    .line 134
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_cd
    if-ge v3, v2, :cond_dd

    aget-object v4, v1, v3

    .line 135
    .local v4, "colors":Landroid/app/SemWallpaperColors;
    const-string v5, "\n    mLandscapeColors="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_d9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_d9} :catch_de

    .line 134
    nop

    .end local v4    # "colors":Landroid/app/SemWallpaperColors;
    add-int/lit8 v3, v3, 0x1

    goto :goto_cd

    .line 141
    :cond_dd
    goto :goto_e2

    .line 139
    :catch_de
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 142
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_e2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
