.class public Lcom/android/server/pm/PersonaPolicyHandler;
.super Landroid/content/pm/IPersonaPolicyHandler$Stub;
.source "PersonaPolicyHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxPolicyHandler"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Landroid/content/pm/IPersonaPolicyHandler$Stub;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyHandler;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/android/server/pm/PersonaPolicyHandler;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private getScaledImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 20
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    const/16 v0, 0x16

    .line 220
    .local v0, "mLockWidth":I
    const/16 v1, 0x19

    .line 221
    .local v1, "mLockHeight":I
    const/16 v2, 0x30

    .line 222
    .local v2, "mImageWidth":I
    const/16 v3, 0x30

    .line 224
    .local v3, "mImageHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 225
    .local v11, "imageWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 227
    .local v12, "imageHeight":I
    int-to-float v4, v0

    mul-float v4, v4, p2

    int-to-float v5, v2

    div-float/2addr v4, v5

    int-to-float v5, v11

    div-float v13, v4, v5

    .line 228
    .local v13, "scaleX":F
    int-to-float v4, v1

    mul-float v4, v4, p3

    int-to-float v5, v3

    div-float/2addr v4, v5

    int-to-float v5, v12

    div-float v14, v4, v5

    .line 230
    .local v14, "scaleY":F
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object v15, v4

    .line 231
    .local v15, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v15, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 232
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object/from16 v4, p1

    move v7, v11

    move v8, v12

    move-object v9, v15

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 234
    .local v4, "b":Landroid/graphics/Bitmap;
    return-object v4
.end method


# virtual methods
.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    const-string v0, "KnoxPolicyHandler"

    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationType(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v1

    .line 164
    .local v1, "typeObj":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    const/4 v2, 0x0

    .line 165
    .local v2, "inputStreamLock":Ljava/io/InputStream;
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 166
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "badge icon path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 169
    .end local v3    # "path":Ljava/lang/String;
    goto :goto_a9

    .line 171
    :cond_3c
    iget-object v3, p0, Lcom/android/server/pm/PersonaPolicyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    .line 173
    .local v3, "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v3, :cond_9c

    .line 175
    iget-object v4, p0, Lcom/android/server/pm/PersonaPolicyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 176
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 177
    .local v5, "ui":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_9b

    .line 178
    const-string v6, "KNOX"

    iget-object v7, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 179
    const-string/jumbo v6, "selecting the lock badge for KNOX container"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v6, p0, Lcom/android/server/pm/PersonaPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "security_home_icon_badge_KNOX.png"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    move-object v2, v6

    goto :goto_9b

    .line 181
    :cond_7d
    const-string v6, "KNOX II"

    iget-object v7, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 182
    const-string/jumbo v6, "selecting the lock badge for KNOX II container"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v6, p0, Lcom/android/server/pm/PersonaPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "security_home_icon_badge_KNOX_II.png"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    move-object v2, v6

    .line 186
    .end local v4    # "um":Landroid/os/UserManager;
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    :cond_9b
    :goto_9b
    goto :goto_a1

    .line 187
    :cond_9c
    const-string v4, "SemPersonaManager is null!!"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v3    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :goto_a1
    if-nez v2, :cond_a9

    .line 192
    const-string/jumbo v3, "this should have never happened. No lock image is added!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_a9
    :goto_a9
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 196
    .local v3, "lock":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/pm/PersonaPolicyHandler;->getScaledImage(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v3, v4

    .line 198
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 199
    .local v4, "copyIcon":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    .line 202
    .local v6, "x":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 203
    .local v7, "y":I
    int-to-float v8, v6

    int-to-float v9, v7

    const/4 v10, 0x0

    invoke-virtual {v5, v3, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 205
    if-eqz v2, :cond_e5

    .line 206
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e5} :catch_e6

    .line 208
    :cond_e5
    return-object v4

    .line 210
    .end local v1    # "typeObj":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v2    # "inputStreamLock":Ljava/io/InputStream;
    .end local v3    # "lock":Landroid/graphics/Bitmap;
    .end local v4    # "copyIcon":Landroid/graphics/Bitmap;
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "x":I
    .end local v7    # "y":I
    :catch_e6
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in writeLockOnImage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    return-object p1
.end method

.method public allowChangePolicy(Ljava/lang/String;)Z
    .registers 5
    .param p1, "policyName"    # Ljava/lang/String;

    .line 43
    const-string v0, "KnoxPolicyHandler"

    const-string v1, "allowChangePolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string/jumbo v1, "passwordLock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    .line 46
    const-string v1, "PASSWORD_LOCK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v2

    .line 49
    :cond_17
    const-string v1, "encryption"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 51
    const-string v1, "ENCRYPTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return v2

    .line 54
    :cond_25
    const-string/jumbo v1, "secureKeystore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 56
    const-string v1, "SECURE_KEYSTORE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return v2

    .line 59
    :cond_34
    const-string v1, "cameraMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 61
    const-string v1, "CAMERA_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v2

    .line 64
    :cond_42
    const-string v1, "customBadgeIcon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 66
    const-string v1, "CUSTOM_BADGEICON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v2

    .line 69
    :cond_50
    const-string v1, "disableSwitchWidget"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 71
    const-string v1, "DISABLE_SWITCHWIDGET"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v2

    .line 74
    :cond_5e
    const-string v1, "customPersonaIcon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 76
    const-string v1, "CUSTOM_PERSONAICON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v2

    .line 79
    :cond_6c
    const-string v1, "customColorIdentification"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 81
    const-string v1, "CUSTOM_COLORIDENTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v2

    .line 84
    :cond_7a
    const-string v1, "containerReset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 86
    const-string v1, "CONTAINER_RESET"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v2

    .line 89
    :cond_88
    const-string/jumbo v1, "shortcutCreation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 91
    const-string v1, "SHORTCUT_CREATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v2

    .line 94
    :cond_97
    const-string v1, "dlnaDataTransfer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 96
    const-string v1, "DLNA_DATATRANSFER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v2

    .line 99
    :cond_a5
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 101
    const-string v1, "PRINT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v2

    .line 104
    :cond_b4
    const-string/jumbo v1, "modifyTimeout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 106
    const-string v1, "MODIFY_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v2

    .line 109
    :cond_c3
    const-string v1, "allShare"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 111
    const-string v1, "ALLSHARE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v2

    .line 114
    :cond_d1
    const-string v1, "gearSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 116
    const-string v1, "GEAR_SUPPORT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v2

    .line 119
    :cond_df
    const-string/jumbo v1, "penWindow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 121
    const-string v1, "PENWINDOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v2

    .line 124
    :cond_ee
    const-string v1, "airCommand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 126
    const-string v1, "AIRCOMMAND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v2

    .line 129
    :cond_fc
    const-string/jumbo v1, "universalCallerId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 131
    const-string v1, "UNIVERSAL_CALLER_ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v2

    .line 134
    :cond_10b
    const-string/jumbo v1, "importFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 136
    const-string v1, "IMPORT_FILES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v2

    .line 139
    :cond_11a
    const-string v1, "exportFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 141
    const-string v1, "EXPORT_FILES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v2

    .line 144
    :cond_128
    const-string v1, "exportAndDeleteFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136

    .line 146
    const-string v1, "EXPORT_AND_DELETE_FILES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v2

    .line 149
    :cond_136
    const-string/jumbo v1, "switchNotif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 151
    const-string v1, "SWITCH_NOTIF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v2

    .line 155
    :cond_145
    const-string v1, "Default value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v2
.end method
