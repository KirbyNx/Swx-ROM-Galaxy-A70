.class public Lcom/android/server/enterprise/device/DeviceStorageUtil;
.super Ljava/lang/Object;
.source "DeviceStorageUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceStorageUtil"

.field private static mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;


# instance fields
.field final ERROR:I

.field private final SIZE_INVALID:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->ERROR:I

    .line 203
    iput v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->SIZE_INVALID:I

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 75
    return-void
.end method

.method private externalSdCardAvailable()Z
    .registers 3

    .line 228
    sget-object v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardState()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "externalSdCardState":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 230
    const/4 v1, 0x0

    return v1

    .line 232
    :cond_a
    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private getExternalSdCardDirectory()Ljava/io/File;
    .registers 3

    .line 220
    sget-object v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "externalSdCardPath":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 222
    const/4 v1, 0x0

    return-object v1

    .line 224
    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getInternalSdCardDirectory()Ljava/io/File;
    .registers 3

    .line 236
    sget-object v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "internalSdCardPath":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 238
    const/4 v1, 0x0

    return-object v1

    .line 240
    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .registers 5
    .param p1, "size"    # J

    .line 206
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_8
    const/4 v0, 0x0

    .line 211
    .local v0, "sizeStr":Ljava/lang/String;
    :try_start_9
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_11

    move-object v0, v1

    .line 215
    goto :goto_16

    .line 212
    :catch_11
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 214
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_16
    return-object v0
.end method


# virtual methods
.method public getAvailableExternalMemorySize()J
    .registers 9

    .line 141
    const-wide/16 v0, -0x1

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 142
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v2

    .line 143
    .local v2, "path":Ljava/io/File;
    if-nez v2, :cond_f

    .line 144
    return-wide v0

    .line 146
    :cond_f
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 147
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    .line 148
    .local v4, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_26

    int-to-long v0, v0

    .line 149
    .local v0, "availableBlocks":J
    mul-long v6, v0, v4

    return-wide v6

    .line 153
    .end local v0    # "availableBlocks":J
    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "stat":Landroid/os/StatFs;
    .end local v4    # "blockSize":J
    :cond_25
    goto :goto_2a

    .line 151
    :catch_26
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2a
    return-wide v0
.end method

.method public getAvailableExternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .line 193
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableInternalMemorySize()J
    .registers 13

    .line 78
    const-wide/16 v0, 0x0

    .line 84
    .local v0, "size":J
    const-wide/16 v2, -0x1

    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 85
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 86
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    .line 87
    .local v6, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    .line 88
    .local v8, "availableBlocks":J
    mul-long v0, v8, v6

    .line 91
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v10

    move-object v4, v10

    .line 92
    if-nez v4, :cond_25

    .line 93
    return-wide v2

    .line 95
    :cond_25
    new-instance v10, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    .line 96
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v6, v10

    .line 97
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_3d

    int-to-long v2, v2

    .line 98
    .end local v8    # "availableBlocks":J
    .local v2, "availableBlocks":J
    mul-long v8, v2, v6

    add-long/2addr v0, v8

    .line 101
    return-wide v0

    .line 102
    .end local v2    # "availableBlocks":J
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "stat":Landroid/os/StatFs;
    .end local v6    # "blockSize":J
    :catch_3d
    move-exception v4

    .line 103
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    .end local v4    # "e":Ljava/lang/Exception;
    return-wide v2
.end method

.method public getAvailableInternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .line 179
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalExternalMemorySize()J
    .registers 9

    .line 159
    const-wide/16 v0, -0x1

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 160
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v2

    .line 161
    .local v2, "path":Ljava/io/File;
    if-nez v2, :cond_f

    .line 162
    return-wide v0

    .line 164
    :cond_f
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    .line 166
    .local v4, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_26

    int-to-long v0, v0

    .line 167
    .local v0, "totalBlocks":J
    mul-long v6, v0, v4

    return-wide v6

    .line 171
    .end local v0    # "totalBlocks":J
    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "stat":Landroid/os/StatFs;
    .end local v4    # "blockSize":J
    :cond_25
    goto :goto_2a

    .line 169
    :catch_26
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2a
    return-wide v0
.end method

.method public getTotalExternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .line 200
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalInternalMemorySize()J
    .registers 13

    .line 109
    const-wide/16 v0, 0x0

    .line 115
    .local v0, "size":J
    const-wide/16 v2, -0x1

    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 116
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 117
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    .line 118
    .local v6, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v8, v8

    .line 119
    .local v8, "totalBlocks":J
    mul-long v0, v8, v6

    .line 122
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v10

    move-object v4, v10

    .line 123
    if-nez v4, :cond_25

    .line 124
    return-wide v2

    .line 126
    :cond_25
    new-instance v10, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    .line 127
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v6, v10

    .line 128
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_3d

    int-to-long v2, v2

    .line 129
    .end local v8    # "totalBlocks":J
    .local v2, "totalBlocks":J
    mul-long v8, v2, v6

    add-long/2addr v0, v8

    .line 132
    return-wide v0

    .line 133
    .end local v2    # "totalBlocks":J
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "stat":Landroid/os/StatFs;
    .end local v6    # "blockSize":J
    :catch_3d
    move-exception v4

    .line 134
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    .end local v4    # "e":Ljava/lang/Exception;
    return-wide v2
.end method

.method public getTotalInternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .line 186
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
