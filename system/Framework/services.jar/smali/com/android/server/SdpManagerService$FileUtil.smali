.class Lcom/android/server/SdpManagerService$FileUtil;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileUtil"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 4223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 8
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;

    .line 4245
    const/4 v0, 0x0

    .line 4247
    .local v0, "result":Z
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_37

    .line 4248
    .local v1, "in":Ljava/io/InputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_2d

    .line 4250
    .local v2, "out":Ljava/io/OutputStream;
    const/16 v3, 0x400

    :try_start_d
    new-array v3, v3, [B

    .line 4252
    .local v3, "buffer":[B
    :goto_f
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "length":I
    if-lez v4, :cond_1b

    .line 4253
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_23

    goto :goto_f

    .line 4255
    :cond_1b
    const/4 v0, 0x1

    .line 4256
    .end local v3    # "buffer":[B
    .end local v5    # "length":I
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2d

    .end local v2    # "out":Ljava/io/OutputStream;
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_37

    .line 4258
    .end local v1    # "in":Ljava/io/InputStream;
    goto :goto_3b

    .line 4247
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_23
    move-exception v3

    :try_start_24
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v4

    :try_start_29
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Z
    .end local v1    # "in":Ljava/io/InputStream;
    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dst":Ljava/io/File;
    :goto_2c
    throw v3
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v0    # "result":Z
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dst":Ljava/io/File;
    :catchall_2d
    move-exception v2

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v3

    :try_start_33
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Z
    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dst":Ljava/io/File;
    :goto_36
    throw v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_37

    .line 4256
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "result":Z
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dst":Ljava/io/File;
    :catch_37
    move-exception v1

    .line 4257
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4259
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3b
    return v0
.end method

.method static exists(Ljava/io/File;)Z
    .registers 2
    .param p0, "f"    # Ljava/io/File;

    .line 4241
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static exists(Ljava/lang/String;)Z
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 4235
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    .line 4236
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4237
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$FileUtil;->exists(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method static getEncUserDir(I)Ljava/io/File;
    .registers 5
    .param p0, "userId"    # I

    .line 4230
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "enc_user"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4231
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4230
    return-object v0
.end method

.method static getUserSystemDir(I)Ljava/io/File;
    .registers 5
    .param p0, "userId"    # I

    .line 4225
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4226
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4225
    return-object v0
.end method
