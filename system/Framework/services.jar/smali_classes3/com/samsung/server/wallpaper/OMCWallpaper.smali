.class public Lcom/samsung/server/wallpaper/OMCWallpaper;
.super Ljava/lang/Object;
.source "OMCWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_OMC_WALLPAPER_UPDATED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OMCWallpaper"

.field private static final UPDATE_OMC_WALLPAPER:Ljava/lang/String; = "com.samsung.intent.action.RSCUPDATE_START"


# instance fields
.field private final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mOMCWallpaperUpdatedReceiver:Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;

.field private final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .param p3, "service"    # Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/samsung/server/wallpaper/OMCWallpaper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/OMCWallpaper$1;-><init>(Lcom/samsung/server/wallpaper/OMCWallpaper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mHandler:Landroid/os/Handler;

    .line 61
    const-string v0, "OMCWallpaper"

    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 65
    iput-object p3, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/server/wallpaper/OMCWallpaper;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 47
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-object v0
.end method

.method private saveTSSActivation(Ljava/lang/String;)V
    .registers 7
    .param p1, "activate"    # Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveTSSActivation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OMCWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/wallpaper_status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "file":Ljava/io/File;
    :try_start_32
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    .line 192
    goto :goto_3a

    .line 190
    :catch_36
    move-exception v3

    .line 191
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3a
    :try_start_3a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 196
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 197
    const-string v3, "save done"

    invoke-static {v1, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4e} :catch_5a
    .catchall {:try_start_3a .. :try_end_4e} :catchall_58

    .line 202
    nop

    .line 203
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 207
    :cond_52
    :goto_52
    goto :goto_64

    .line 205
    :catch_53
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 208
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_64

    .line 201
    :catchall_58
    move-exception v1

    goto :goto_65

    .line 198
    :catch_5a
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_58

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_52

    .line 203
    :try_start_60
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_53

    goto :goto_52

    .line 209
    :goto_64
    return-void

    .line 202
    :goto_65
    if-eqz v0, :cond_70

    .line 203
    :try_start_67
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_70

    .line 205
    :catch_6b
    move-exception v3

    .line 206
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_71

    .line 207
    .end local v3    # "e":Ljava/io/IOException;
    :cond_70
    :goto_70
    nop

    .line 208
    :goto_71
    throw v1
.end method

.method private saveTSSActivationSettings(Ljava/lang/String;)V
    .registers 6
    .param p1, "activate"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 213
    .local v0, "isOperatorLockWallpaper":Z
    if-eqz v0, :cond_2b

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 215
    iget-object v1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "tss_activated"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    :cond_2b
    return-void
.end method


# virtual methods
.method public checkTSSActivation(Z)V
    .registers 8
    .param p1, "needToUpdate"    # Z

    .line 154
    const-string v0, "OMCWallpaper"

    const-string v1, "checkTSSActivation"

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/wallpaper_status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "file":Ljava/io/File;
    const-string v2, "false"

    .line 158
    .local v2, "oldActivate":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 160
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_34

    move-object v2, v3

    .line 163
    goto :goto_36

    .line 161
    :catch_34
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 165
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_36
    :goto_36
    const-string v3, "mdc.singlesku.activated"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "newActivate":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTSSActivation, old= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 168
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->handleOMCWallpaperUpdated()V

    .line 169
    invoke-direct {p0, v3}, Lcom/samsung/server/wallpaper/OMCWallpaper;->saveTSSActivation(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, v3}, Lcom/samsung/server/wallpaper/OMCWallpaper;->saveTSSActivationSettings(Ljava/lang/String;)V

    goto :goto_86

    .line 174
    :cond_6a
    const-string v0, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 175
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "tss_activated"

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, "value":I
    if-eqz p1, :cond_86

    if-ne v0, v5, :cond_86

    .line 177
    invoke-direct {p0, v2}, Lcom/samsung/server/wallpaper/OMCWallpaper;->saveTSSActivationSettings(Ljava/lang/String;)V

    .line 180
    .end local v0    # "value":I
    :cond_86
    :goto_86
    return-void
.end method

.method public getOperatorWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "which"    # I

    .line 106
    const-string v0, "OMCWallpaper"

    const-string v1, "getOperatorWallpaperBitmap()"

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 110
    .local v2, "inputStream":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getDefaultWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 111
    .local v3, "defaultWallpaper":Ljava/io/File;
    const/4 v4, 0x0

    if-nez v3, :cond_13

    .line 112
    return-object v4

    .line 115
    :cond_13
    :try_start_13
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_1a

    move-object v2, v5

    .line 118
    goto :goto_20

    .line 116
    :catch_1a
    move-exception v5

    .line 117
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "getDefaultWallpaperFile error:"

    invoke-static {v0, v6, v5}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v5    # "e":Ljava/io/IOException;
    :goto_20
    if-nez v2, :cond_23

    .line 121
    return-object v4

    .line 125
    :cond_23
    :try_start_23
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_27} :catch_33
    .catchall {:try_start_23 .. :try_end_27} :catchall_31

    move-object v1, v0

    .line 130
    :try_start_28
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 133
    :goto_2b
    goto :goto_3d

    .line 131
    :catch_2c
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3d

    .line 129
    :catchall_31
    move-exception v0

    goto :goto_3e

    .line 126
    :catch_33
    move-exception v4

    .line 127
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    :try_start_34
    const-string v5, "Can\'t decode stream"

    invoke-static {v0, v5, v4}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_31

    .line 130
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_39
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_2c

    goto :goto_2b

    .line 135
    :goto_3d
    return-object v1

    .line 130
    :goto_3e
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 133
    goto :goto_46

    .line 131
    :catch_42
    move-exception v4

    .line 132
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    .end local v4    # "e":Ljava/io/IOException;
    :goto_46
    throw v0
.end method

.method public needToUpdateOMCWallpaper(Ljava/io/File;)Z
    .registers 8
    .param p1, "userFile"    # Ljava/io/File;

    .line 139
    const/4 v0, 0x0

    const-string v1, "OMCWallpaper"

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1b

    .line 140
    const-string v2, "user wallpaper is being used"

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v0

    .line 144
    :cond_1b
    iget-object v2, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 145
    .local v2, "omcFile":Ljava/io/File;
    if-eqz v2, :cond_2d

    .line 146
    return v4

    .line 148
    :cond_2d
    const-string v3, "no omc wallpaper"

    invoke-static {v1, v3}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v0
.end method

.method public registerOMCWallpaperUpdatedReceiver()V
    .registers 4

    .line 90
    const-string v0, "OMCWallpaper"

    const-string v1, "registerOMCWallpaperUpdatedReceiver"

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.RSCUPDATE_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    new-instance v1, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;-><init>(Lcom/samsung/server/wallpaper/OMCWallpaper;Lcom/samsung/server/wallpaper/OMCWallpaper$1;)V

    iput-object v1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mOMCWallpaperUpdatedReceiver:Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;

    .line 95
    iget-object v2, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method public updateOmcWallpaper(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OMCWallpaperUpdatedReceiver : onReceive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OMCWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "com.samsung.intent.action.RSCUPDATE_START"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 83
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 84
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    :cond_2c
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    :cond_31
    return-void
.end method
