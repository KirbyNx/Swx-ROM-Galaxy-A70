.class public Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    }
.end annotation


# static fields
.field static mPrivilegeApp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSession(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installerPackageName"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 82
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    .line 83
    .local v1, "installer":Landroid/content/pm/PackageInstaller;
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 84
    .local v2, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 85
    const/4 v3, 0x0

    .line 87
    .local v3, "sessionId":I
    :try_start_12
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_18

    move v3, v4

    .line 90
    goto :goto_2f

    .line 88
    :catch_18
    move-exception v4

    .line 89
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in session id created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BackupManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2f
    return v3
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z
    .registers 31
    .param p0, "instream"    # Ljava/io/InputStream;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deleteObserver"    # Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .param p5, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            "I)Z"
        }
    .end annotation

    .line 247
    .local p3, "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .local p4, "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    move-object/from16 v1, p5

    const/4 v2, 0x1

    .line 250
    .local v2, "okay":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing from backup: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BackupManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :try_start_1b
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V

    move-object v4, v0

    .line 255
    .local v4, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v5, v0

    .line 256
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v6, v0

    .line 258
    .local v6, "installer":Landroid/content/pm/PackageInstaller;
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v8, v0

    .line 259
    .local v8, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move-object/from16 v9, p6

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3c} :catch_370

    move v10, v0

    .line 262
    .local v10, "sessionId":I
    :try_start_3d
    invoke-virtual {v6, v10}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_354
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_370

    move-object v15, v0

    .line 263
    .local v15, "session":Landroid/content/pm/PackageInstaller$Session;
    const v13, 0x8000

    const/4 v14, 0x0

    :try_start_46
    iget-object v12, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_48
    .catch Ljava/io/InterruptedIOException; {:try_start_46 .. :try_end_48} :catch_131
    .catchall {:try_start_46 .. :try_end_48} :catchall_117

    const-wide/16 v16, 0x0

    move-object/from16 v19, v8

    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v19, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :try_start_4c
    iget-wide v7, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_4e
    .catch Ljava/io/InterruptedIOException; {:try_start_4c .. :try_end_4e} :catch_10b
    .catchall {:try_start_4c .. :try_end_4e} :catchall_f3

    move-object v11, v15

    move/from16 v20, v2

    move v2, v13

    .end local v2    # "okay":Z
    .local v20, "okay":Z
    move-wide/from16 v13, v16

    move-object/from16 v21, v15

    .end local v15    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v21, "session":Landroid/content/pm/PackageInstaller$Session;
    move-wide v15, v7

    :try_start_57
    invoke-virtual/range {v11 .. v16}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_5b
    .catch Ljava/io/InterruptedIOException; {:try_start_57 .. :try_end_5b} :catch_eb
    .catchall {:try_start_57 .. :try_end_5b} :catchall_d7

    move-object v7, v0

    .line 265
    .local v7, "apkStream":Ljava/io/OutputStream;
    :try_start_5c
    new-array v0, v2, [B

    .line 266
    .local v0, "buffer":[B
    iget-wide v11, v1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 267
    .local v11, "size":J
    :goto_60
    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-lez v8, :cond_a2

    .line 268
    array-length v8, v0
    :try_end_67
    .catchall {:try_start_5c .. :try_end_67} :catchall_b1

    int-to-long v13, v8

    cmp-long v8, v13, v11

    if-gez v8, :cond_78

    :try_start_6c
    array-length v8, v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6f

    int-to-long v13, v8

    goto :goto_79

    .line 263
    .end local v0    # "buffer":[B
    .end local v11    # "size":J
    :catchall_6f
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v9, p7

    move-object v2, v0

    move-object/from16 v17, v3

    goto :goto_b9

    .line 268
    .restart local v0    # "buffer":[B
    .restart local v11    # "size":J
    :cond_78
    move-wide v13, v11

    .line 269
    .local v13, "toRead":J
    :goto_79
    long-to-int v8, v13

    const/4 v2, 0x0

    move-object/from16 v15, p0

    :try_start_7d
    invoke-virtual {v15, v0, v2, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_a0

    .line 270
    .local v8, "didRead":I
    if-ltz v8, :cond_8c

    .line 271
    move-object/from16 v17, v3

    int-to-long v2, v8

    move-object/from16 v9, p7

    :try_start_88
    invoke-interface {v9, v2, v3}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_90

    .line 270
    :cond_8c
    move-object/from16 v9, p7

    move-object/from16 v17, v3

    .line 273
    :goto_90
    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_94
    .catchall {:try_start_88 .. :try_end_94} :catchall_9e

    .line 274
    int-to-long v2, v8

    sub-long/2addr v11, v2

    .line 275
    .end local v8    # "didRead":I
    .end local v13    # "toRead":J
    move-object/from16 v9, p6

    move-object/from16 v3, v17

    const v2, 0x8000

    goto :goto_60

    .line 263
    .end local v0    # "buffer":[B
    .end local v11    # "size":J
    :catchall_9e
    move-exception v0

    goto :goto_b8

    :catchall_a0
    move-exception v0

    goto :goto_b4

    .line 267
    .restart local v0    # "buffer":[B
    .restart local v11    # "size":J
    :cond_a2
    move-object/from16 v15, p0

    move-object/from16 v9, p7

    move-object/from16 v17, v3

    .line 276
    .end local v0    # "buffer":[B
    .end local v11    # "size":J
    if-eqz v7, :cond_ad

    :try_start_aa
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_ad
    .catch Ljava/io/InterruptedIOException; {:try_start_aa .. :try_end_ad} :catch_d4
    .catchall {:try_start_aa .. :try_end_ad} :catchall_c5

    .line 278
    .end local v7    # "apkStream":Ljava/io/OutputStream;
    :cond_ad
    move-object/from16 v3, v17

    goto/16 :goto_154

    .line 263
    .restart local v7    # "apkStream":Ljava/io/OutputStream;
    :catchall_b1
    move-exception v0

    move-object/from16 v15, p0

    :goto_b4
    move-object/from16 v9, p7

    move-object/from16 v17, v3

    :goto_b8
    move-object v2, v0

    :goto_b9
    if-eqz v7, :cond_c4

    :try_start_bb
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bf

    goto :goto_c4

    :catchall_bf
    move-exception v0

    move-object v3, v0

    :try_start_c1
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v10    # "sessionId":I
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v20    # "okay":Z
    .end local v21    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    :cond_c4
    :goto_c4
    throw v2
    :try_end_c5
    .catch Ljava/io/InterruptedIOException; {:try_start_c1 .. :try_end_c5} :catch_d4
    .catchall {:try_start_c1 .. :try_end_c5} :catchall_c5

    .line 262
    .end local v7    # "apkStream":Ljava/io/OutputStream;
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v10    # "sessionId":I
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v20    # "okay":Z
    .restart local v21    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    :catchall_c5
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v8, p4

    move/from16 v14, p8

    move-object v1, v0

    move-object/from16 v3, v17

    move-object/from16 v2, v21

    move-object/from16 v17, v4

    goto :goto_e7

    .line 276
    :catch_d4
    move-exception v0

    goto/16 :goto_13e

    .line 262
    :catchall_d7
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v9, p7

    move-object/from16 v13, p3

    move-object/from16 v8, p4

    move/from16 v14, p8

    move-object v1, v0

    move-object/from16 v17, v4

    move-object/from16 v2, v21

    :goto_e7
    move-object/from16 v4, p2

    goto/16 :goto_346

    .line 276
    :catch_eb
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v9, p7

    move-object/from16 v17, v3

    goto :goto_13e

    .line 262
    .end local v20    # "okay":Z
    .end local v21    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "okay":Z
    .restart local v15    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_f3
    move-exception v0

    move-object/from16 v9, p7

    move/from16 v20, v2

    move-object/from16 v21, v15

    move-object/from16 v15, p0

    move-object/from16 v13, p3

    move-object/from16 v8, p4

    move/from16 v14, p8

    move-object v1, v0

    move-object/from16 v17, v4

    move-object/from16 v2, v21

    move-object/from16 v4, p2

    .end local v2    # "okay":Z
    .end local v15    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v20    # "okay":Z
    .restart local v21    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto/16 :goto_346

    .line 276
    .end local v20    # "okay":Z
    .end local v21    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "okay":Z
    .restart local v15    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_10b
    move-exception v0

    move-object/from16 v9, p7

    move/from16 v20, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v15

    move-object/from16 v15, p0

    .end local v2    # "okay":Z
    .end local v15    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v20    # "okay":Z
    .restart local v21    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_13e

    .line 262
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v20    # "okay":Z
    .end local v21    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "okay":Z
    .local v8, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v15    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_117
    move-exception v0

    move-object/from16 v9, p7

    move/from16 v20, v2

    move-object/from16 v19, v8

    move-object/from16 v21, v15

    move-object/from16 v15, p0

    move-object/from16 v13, p3

    move-object/from16 v8, p4

    move/from16 v14, p8

    move-object v1, v0

    move-object/from16 v17, v4

    move-object/from16 v2, v21

    move-object/from16 v4, p2

    .end local v2    # "okay":Z
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v15    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v20    # "okay":Z
    .restart local v21    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto/16 :goto_346

    .line 276
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v20    # "okay":Z
    .end local v21    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "okay":Z
    .restart local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v15    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_131
    move-exception v0

    move-object/from16 v9, p7

    move/from16 v20, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v8

    move-object/from16 v21, v15

    move-object/from16 v15, p0

    .line 277
    .end local v2    # "okay":Z
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v15    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v0, "e":Ljava/io/InterruptedIOException;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v20    # "okay":Z
    .restart local v21    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_13e
    :try_start_13e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " InterruptedIOException in apkStream.close()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_14f
    .catchall {:try_start_13e .. :try_end_14f} :catchall_336

    move-object/from16 v3, v17

    :try_start_151
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :goto_154
    const-string v0, "Entering Session Commit"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v4}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0
    :try_end_15d
    .catchall {:try_start_151 .. :try_end_15d} :catchall_32a

    move-object/from16 v2, v21

    .end local v21    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_15f
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_162
    .catchall {:try_start_15f .. :try_end_162} :catchall_31d

    .line 284
    if-eqz v2, :cond_180

    :try_start_164
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_167} :catch_173
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_168

    goto :goto_180

    .line 367
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v10    # "sessionId":I
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_168
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v8, p4

    :goto_16f
    move/from16 v14, p8

    goto/16 :goto_36d

    .line 285
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v10    # "sessionId":I
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_173
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v8, p4

    move/from16 v14, p8

    move-object/from16 v17, v4

    move-object/from16 v4, p2

    goto/16 :goto_367

    .line 289
    :cond_180
    :goto_180
    nop

    .line 293
    :try_start_181
    invoke-virtual {v4}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v0

    move-object v2, v0

    .line 297
    .local v2, "result":Landroid/content/Intent;
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v7, 0x1

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_18d} :catch_168

    move v7, v0

    .line 300
    .local v7, "status":I
    if-eqz v7, :cond_1b5

    .line 304
    :try_start_190
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_192} :catch_1b0

    move-object/from16 v8, p4

    :try_start_194
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    if-eq v0, v3, :cond_1a6

    .line 305
    const/4 v0, 0x0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move/from16 v14, p8

    move v2, v0

    .end local v20    # "okay":Z
    .local v0, "okay":Z
    goto/16 :goto_312

    .line 304
    .end local v0    # "okay":Z
    .restart local v20    # "okay":Z
    :cond_1a6
    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move/from16 v14, p8

    move/from16 v2, v20

    goto/16 :goto_312

    .line 367
    .end local v2    # "result":Landroid/content/Intent;
    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "status":I
    .end local v10    # "sessionId":I
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_1b0
    move-exception v0

    move-object/from16 v8, p4

    goto/16 :goto_317

    .line 309
    .restart local v2    # "result":Landroid/content/Intent;
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v7    # "status":I
    .restart local v10    # "sessionId":I
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_1b5
    move-object/from16 v8, p4

    const/4 v11, 0x0

    .line 310
    .local v11, "uninstall":Z
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 312
    .local v12, "installedPackageName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Restore stream claimed to include apk for "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " but apk was really "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_1e5} :catch_316

    .line 317
    const/4 v0, 0x0

    .line 318
    .end local v20    # "okay":Z
    .restart local v0    # "okay":Z
    const/4 v11, 0x1

    move-object/from16 v13, p3

    move/from16 v14, p8

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move v2, v0

    goto/16 :goto_2f9

    .line 321
    .end local v0    # "okay":Z
    .restart local v20    # "okay":Z
    :cond_1f2
    :try_start_1f2
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_1f4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f2 .. :try_end_1f4} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_1f4} :catch_2cb

    const/high16 v13, 0x8000000

    move/from16 v14, p8

    :try_start_1f8
    invoke-virtual {v5, v0, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 323
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_200
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f8 .. :try_end_200} :catch_2c7
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_200} :catch_2c3

    const v16, 0x8000

    and-int v13, v13, v16

    if-nez v13, :cond_246

    :try_start_207
    sget-boolean v13, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    if-nez v13, :cond_246

    .line 325
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_210
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_207 .. :try_end_210} :catch_23d
    .catch Ljava/io/IOException; {:try_start_207 .. :try_end_210} :catch_236

    move-object/from16 v16, v2

    .end local v2    # "result":Landroid/content/Intent;
    .local v16, "result":Landroid/content/Intent;
    :try_start_212
    const-string v2, "Restore stream contains apk of package "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but it disallows backup/restore"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_228
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_212 .. :try_end_228} :catch_22f
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_228} :catch_236

    .line 328
    const/4 v2, 0x0

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    .end local v20    # "okay":Z
    .local v2, "okay":Z
    goto/16 :goto_2b8

    .line 350
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "okay":Z
    .restart local v20    # "okay":Z
    :catch_22f
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    goto/16 :goto_2dd

    .line 367
    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "status":I
    .end local v10    # "sessionId":I
    .end local v11    # "uninstall":Z
    .end local v12    # "installedPackageName":Ljava/lang/String;
    .end local v16    # "result":Landroid/content/Intent;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_236
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    goto/16 :goto_36d

    .line 350
    .local v2, "result":Landroid/content/Intent;
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v7    # "status":I
    .restart local v10    # "sessionId":I
    .restart local v11    # "uninstall":Z
    .restart local v12    # "installedPackageName":Ljava/lang/String;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_23d
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    .end local v2    # "result":Landroid/content/Intent;
    .restart local v16    # "result":Landroid/content/Intent;
    goto/16 :goto_2dd

    .line 323
    .end local v16    # "result":Landroid/content/Intent;
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "result":Landroid/content/Intent;
    :cond_246
    move-object/from16 v16, v2

    .line 331
    .end local v2    # "result":Landroid/content/Intent;
    .restart local v16    # "result":Landroid/content/Intent;
    :try_start_248
    iget-object v2, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_24a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_248 .. :try_end_24a} :catch_2bd
    .catch Ljava/io/IOException; {:try_start_248 .. :try_end_24a} :catch_2c3

    move-object/from16 v13, p3

    :try_start_24c
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;

    .line 332
    .local v2, "sigs":[Landroid/content/pm/Signature;
    const-class v17, Landroid/content/pm/PackageManagerInternal;

    invoke-static/range {v17 .. v17}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageManagerInternal;
    :try_end_25a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24c .. :try_end_25a} :catch_2bb
    .catch Ljava/io/IOException; {:try_start_24c .. :try_end_25a} :catch_314

    move-object/from16 v18, v17

    .line 334
    .local v18, "pmi":Landroid/content/pm/PackageManagerInternal;
    move-object/from16 v17, v4

    move-object/from16 v4, v18

    .end local v18    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v4, "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v17, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :try_start_260
    invoke-static {v2, v0, v4}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v18
    :try_end_264
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_260 .. :try_end_264} :catch_2b9
    .catch Ljava/io/IOException; {:try_start_260 .. :try_end_264} :catch_314

    move-object/from16 v21, v2

    .end local v2    # "sigs":[Landroid/content/pm/Signature;
    .local v21, "sigs":[Landroid/content/pm/Signature;
    const-string v2, "Installed app "

    if-eqz v18, :cond_29a

    .line 337
    move-object/from16 v18, v4

    .end local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v18    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :try_start_26c
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_297

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v4, :cond_297

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has restricted uid and no agent"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v2, 0x0

    .end local v20    # "okay":Z
    .local v2, "okay":Z
    goto :goto_2b8

    .line 354
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "okay":Z
    .end local v18    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v21    # "sigs":[Landroid/content/pm/Signature;
    .restart local v20    # "okay":Z
    :cond_297
    move/from16 v2, v20

    goto :goto_2b8

    .line 344
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v21    # "sigs":[Landroid/content/pm/Signature;
    :cond_29a
    move-object/from16 v18, v4

    .end local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v18    # "pmi":Landroid/content/pm/PackageManagerInternal;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signatures do not match restore manifest"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26c .. :try_end_2b5} :catch_2b9
    .catch Ljava/io/IOException; {:try_start_26c .. :try_end_2b5} :catch_314

    .line 346
    const/4 v2, 0x0

    .line 347
    .end local v20    # "okay":Z
    .restart local v2    # "okay":Z
    const/4 v4, 0x1

    move v11, v4

    .line 354
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v18    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v21    # "sigs":[Landroid/content/pm/Signature;
    :goto_2b8
    goto :goto_2f9

    .line 350
    .end local v2    # "okay":Z
    .restart local v20    # "okay":Z
    :catch_2b9
    move-exception v0

    goto :goto_2dd

    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v4, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :catch_2bb
    move-exception v0

    goto :goto_2c0

    :catch_2bd
    move-exception v0

    move-object/from16 v13, p3

    :goto_2c0
    move-object/from16 v17, v4

    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    goto :goto_2dd

    .line 367
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "status":I
    .end local v10    # "sessionId":I
    .end local v11    # "uninstall":Z
    .end local v12    # "installedPackageName":Ljava/lang/String;
    .end local v16    # "result":Landroid/content/Intent;
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_2c3
    move-exception v0

    move-object/from16 v13, p3

    goto :goto_2d0

    .line 350
    .local v2, "result":Landroid/content/Intent;
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v7    # "status":I
    .restart local v10    # "sessionId":I
    .restart local v11    # "uninstall":Z
    .restart local v12    # "installedPackageName":Ljava/lang/String;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_2c7
    move-exception v0

    move-object/from16 v13, p3

    goto :goto_2d9

    .line 367
    .end local v2    # "result":Landroid/content/Intent;
    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "status":I
    .end local v10    # "sessionId":I
    .end local v11    # "uninstall":Z
    .end local v12    # "installedPackageName":Ljava/lang/String;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_2cb
    move-exception v0

    move-object/from16 v13, p3

    move/from16 v14, p8

    :goto_2d0
    move-object/from16 v4, p2

    goto/16 :goto_36d

    .line 350
    .restart local v2    # "result":Landroid/content/Intent;
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v7    # "status":I
    .restart local v10    # "sessionId":I
    .restart local v11    # "uninstall":Z
    .restart local v12    # "installedPackageName":Ljava/lang/String;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_2d4
    move-exception v0

    move-object/from16 v13, p3

    move/from16 v14, p8

    :goto_2d9
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .line 351
    .end local v2    # "result":Landroid/content/Intent;
    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16    # "result":Landroid/content/Intent;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :goto_2dd
    :try_start_2dd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install of package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " succeeded but now not found"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f8
    .catch Ljava/io/IOException; {:try_start_2dd .. :try_end_2f8} :catch_314

    .line 353
    const/4 v2, 0x0

    .line 359
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v20    # "okay":Z
    .local v2, "okay":Z
    :goto_2f9
    if-eqz v11, :cond_310

    .line 360
    :try_start_2fb
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V
    :try_end_2fe
    .catch Ljava/io/IOException; {:try_start_2fb .. :try_end_2fe} :catch_30b

    .line 361
    move-object/from16 v4, p2

    const/4 v1, 0x0

    :try_start_301
    invoke-virtual {v5, v12, v4, v1}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_307
    .catch Ljava/io/IOException; {:try_start_301 .. :try_end_307} :catch_308

    goto :goto_312

    .line 367
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "status":I
    .end local v10    # "sessionId":I
    .end local v11    # "uninstall":Z
    .end local v12    # "installedPackageName":Ljava/lang/String;
    .end local v16    # "result":Landroid/content/Intent;
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_308
    move-exception v0

    goto/16 :goto_37f

    :catch_30b
    move-exception v0

    move-object/from16 v4, p2

    goto/16 :goto_37f

    .line 359
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v7    # "status":I
    .restart local v10    # "sessionId":I
    .restart local v11    # "uninstall":Z
    .restart local v12    # "installedPackageName":Ljava/lang/String;
    .restart local v16    # "result":Landroid/content/Intent;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_310
    move-object/from16 v4, p2

    .line 370
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "status":I
    .end local v10    # "sessionId":I
    .end local v11    # "uninstall":Z
    .end local v12    # "installedPackageName":Ljava/lang/String;
    .end local v16    # "result":Landroid/content/Intent;
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :goto_312
    goto/16 :goto_394

    .line 367
    .end local v2    # "okay":Z
    .restart local v20    # "okay":Z
    :catch_314
    move-exception v0

    goto :goto_2d0

    :catch_316
    move-exception v0

    :goto_317
    move-object/from16 v4, p2

    move-object/from16 v13, p3

    goto/16 :goto_16f

    .line 262
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v10    # "sessionId":I
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catchall_31d
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v8, p4

    move/from16 v14, p8

    move-object/from16 v17, v4

    move-object/from16 v4, p2

    move-object v1, v0

    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    goto :goto_346

    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v21, "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_32a
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v8, p4

    move/from16 v14, p8

    move-object/from16 v17, v4

    move-object/from16 v2, v21

    goto :goto_343

    :catchall_336
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v8, p4

    move/from16 v14, p8

    move-object/from16 v3, v17

    move-object/from16 v2, v21

    move-object/from16 v17, v4

    :goto_343
    move-object/from16 v4, p2

    move-object v1, v0

    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v21    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :goto_346
    if-eqz v2, :cond_351

    :try_start_348
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_34b
    .catchall {:try_start_348 .. :try_end_34b} :catchall_34c

    goto :goto_351

    :catchall_34c
    move-exception v0

    move-object v7, v0

    :try_start_34e
    invoke-virtual {v1, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v10    # "sessionId":I
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v20    # "okay":Z
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    :cond_351
    :goto_351
    throw v1
    :try_end_352
    .catch Ljava/lang/Exception; {:try_start_34e .. :try_end_352} :catch_352
    .catch Ljava/io/IOException; {:try_start_34e .. :try_end_352} :catch_36c

    .line 285
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v10    # "sessionId":I
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v20    # "okay":Z
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    :catch_352
    move-exception v0

    goto :goto_367

    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v20    # "okay":Z
    .local v2, "okay":Z
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_354
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v13, p3

    move-object/from16 v9, p7

    move/from16 v14, p8

    move/from16 v20, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v8

    move-object/from16 v4, p2

    move-object/from16 v8, p4

    .line 286
    .end local v2    # "okay":Z
    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v8    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v0, "t":Ljava/lang/Exception;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v20    # "okay":Z
    :goto_367
    :try_start_367
    invoke-virtual {v6, v10}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 288
    nop

    .end local v20    # "okay":Z
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    throw v0
    :try_end_36c
    .catch Ljava/io/IOException; {:try_start_367 .. :try_end_36c} :catch_36c

    .line 367
    .end local v0    # "t":Ljava/lang/Exception;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v10    # "sessionId":I
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v20    # "okay":Z
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    :catch_36c
    move-exception v0

    :goto_36d
    move/from16 v2, v20

    goto :goto_37f

    .end local v20    # "okay":Z
    .restart local v2    # "okay":Z
    :catch_370
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    move/from16 v14, p8

    move/from16 v20, v2

    .line 368
    .local v0, "e":Ljava/io/IOException;
    :goto_37f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to transcribe restored apk for install"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v2, 0x0

    .line 372
    .end local v0    # "e":Ljava/io/IOException;
    :goto_394
    return v2
.end method

.method public static installApkSplitSupport(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;II)Z
    .registers 29
    .param p0, "instream"    # Ljava/io/InputStream;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deleteObserver"    # Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .param p5, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
    .param p8, "userId"    # I
    .param p9, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            "II)Z"
        }
    .end annotation

    .line 136
    .local p3, "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .local p4, "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    move-object/from16 v1, p5

    move/from16 v2, p9

    const/4 v3, 0x1

    .line 139
    .local v3, "okay":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing from backup: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BackupManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_1d
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V

    move-object v5, v0

    .line 144
    .local v5, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v6, v0

    .line 145
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2d} :catch_223

    move-object v7, v0

    .line 147
    .local v7, "installer":Landroid/content/pm/PackageInstaller;
    :try_start_2e
    invoke-virtual {v7, v2}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_20d
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_32} :catch_223

    move-object v8, v0

    .line 148
    .local v8, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_33
    const-string v0, "Entering Session Commit"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v5}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_1f1

    .line 150
    if-eqz v8, :cond_5f

    :try_start_41
    invoke-virtual {v8}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_50
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_5f

    .line 230
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_45
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    move-object/from16 v10, p4

    :goto_4c
    move/from16 v14, p8

    goto/16 :goto_22e

    .line 150
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    :catch_50
    move-exception v0

    move-object/from16 v15, p3

    move-object/from16 v10, p4

    move/from16 v14, p8

    move/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v5, p2

    goto/16 :goto_21a

    .line 153
    :cond_5f
    :goto_5f
    nop

    .line 157
    :try_start_60
    invoke-virtual {v5}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v0

    move-object v8, v0

    .line 161
    .local v8, "result":Landroid/content/Intent;
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6c} :catch_223

    move v9, v0

    .line 163
    .local v9, "status":I
    if-eqz v9, :cond_96

    .line 167
    :try_start_6f
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_71} :catch_8e

    move-object/from16 v10, p4

    :try_start_73
    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_79} :catch_8c

    if-eq v0, v4, :cond_84

    .line 168
    const/4 v3, 0x0

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    move/from16 v14, p8

    goto/16 :goto_1e5

    .line 167
    :cond_84
    move-object/from16 v5, p2

    move-object/from16 v15, p3

    move/from16 v14, p8

    goto/16 :goto_1e5

    .line 230
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "result":Landroid/content/Intent;
    .end local v9    # "status":I
    :catch_8c
    move-exception v0

    goto :goto_91

    :catch_8e
    move-exception v0

    move-object/from16 v10, p4

    :goto_91
    move-object/from16 v5, p2

    move-object/from16 v15, p3

    goto :goto_4c

    .line 172
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "result":Landroid/content/Intent;
    .restart local v9    # "status":I
    :cond_96
    move-object/from16 v10, p4

    const/4 v11, 0x0

    .line 173
    .local v11, "uninstall":Z
    :try_start_99
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 175
    .local v12, "installedPackageName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a6} :catch_1eb

    if-nez v0, :cond_d1

    .line 176
    :try_start_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Restore stream claimed to include apk for "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " but apk was really "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_c6} :catch_8c

    .line 180
    const/4 v0, 0x0

    .line 181
    .end local v3    # "okay":Z
    .local v0, "okay":Z
    const/4 v11, 0x1

    move-object/from16 v15, p3

    move/from16 v14, p8

    move v3, v0

    move-object/from16 v17, v5

    goto/16 :goto_1ce

    .line 184
    .end local v0    # "okay":Z
    .restart local v3    # "okay":Z
    :cond_d1
    :try_start_d1
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_d3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d1 .. :try_end_d3} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d3} :catch_19e

    const/high16 v13, 0x8000000

    move/from16 v14, p8

    :try_start_d7
    invoke-virtual {v6, v0, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 186
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_df
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d7 .. :try_end_df} :catch_19a
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_df} :catch_196

    const v15, 0x8000

    and-int/2addr v13, v15

    if-nez v13, :cond_11b

    :try_start_e5
    sget-boolean v13, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    if-nez v13, :cond_11b

    .line 188
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restore stream contains apk of package "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " but it disallows backup/restore"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e5 .. :try_end_104} :catch_112
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_104} :catch_10b

    .line 191
    const/4 v3, 0x0

    move-object/from16 v15, p3

    move-object/from16 v17, v5

    goto/16 :goto_18d

    .line 230
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "result":Landroid/content/Intent;
    .end local v9    # "status":I
    .end local v11    # "uninstall":Z
    .end local v12    # "installedPackageName":Ljava/lang/String;
    :catch_10b
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    goto/16 :goto_22e

    .line 213
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "result":Landroid/content/Intent;
    .restart local v9    # "status":I
    .restart local v11    # "uninstall":Z
    .restart local v12    # "installedPackageName":Ljava/lang/String;
    :catch_112
    move-exception v0

    move-object/from16 v15, p3

    move/from16 v16, v3

    move-object/from16 v17, v5

    goto/16 :goto_1b2

    .line 194
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_11b
    :try_start_11b
    iget-object v13, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_11d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11b .. :try_end_11d} :catch_19a
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_11d} :catch_196

    move-object/from16 v15, p3

    :try_start_11f
    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/pm/Signature;

    .line 195
    .local v13, "sigs":[Landroid/content/pm/Signature;
    const-class v16, Landroid/content/pm/PackageManagerInternal;

    invoke-static/range {v16 .. v16}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageManagerInternal;
    :try_end_12d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11f .. :try_end_12d} :catch_194
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_12d} :catch_192

    move-object/from16 v17, v16

    .line 197
    .local v17, "pmi":Landroid/content/pm/PackageManagerInternal;
    move/from16 v16, v3

    move-object/from16 v3, v17

    .end local v17    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v3, "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v16, "okay":Z
    :try_start_133
    invoke-static {v13, v0, v3}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v17
    :try_end_137
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_133 .. :try_end_137} :catch_18e
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_137} :catch_1e7

    move-object/from16 v18, v3

    .end local v3    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v18, "pmi":Landroid/content/pm/PackageManagerInternal;
    const-string v3, "Installed app "

    if-eqz v17, :cond_16f

    .line 200
    move-object/from16 v17, v5

    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v17, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :try_start_13f
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-eqz v5, :cond_16a

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v5, :cond_16a

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has restricted uid and no agent"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v3, 0x0

    .end local v16    # "okay":Z
    .local v3, "okay":Z
    goto :goto_18d

    .line 217
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "okay":Z
    .end local v13    # "sigs":[Landroid/content/pm/Signature;
    .end local v18    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v16    # "okay":Z
    :cond_16a
    move/from16 v3, v16

    goto :goto_18d

    .line 213
    :catch_16d
    move-exception v0

    goto :goto_1b2

    .line 207
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v13    # "sigs":[Landroid/content/pm/Signature;
    .restart local v18    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_16f
    move-object/from16 v17, v5

    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signatures do not match restore manifest"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13f .. :try_end_18a} :catch_16d
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_18a} :catch_1e7

    .line 209
    const/4 v3, 0x0

    .line 210
    .end local v16    # "okay":Z
    .restart local v3    # "okay":Z
    const/4 v5, 0x1

    move v11, v5

    .line 217
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v13    # "sigs":[Landroid/content/pm/Signature;
    .end local v18    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :goto_18d
    goto :goto_1ce

    .line 213
    .end local v3    # "okay":Z
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v16    # "okay":Z
    :catch_18e
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    goto :goto_1b2

    .line 230
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "result":Landroid/content/Intent;
    .end local v9    # "status":I
    .end local v11    # "uninstall":Z
    .end local v12    # "installedPackageName":Ljava/lang/String;
    .end local v16    # "okay":Z
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v3    # "okay":Z
    :catch_192
    move-exception v0

    goto :goto_1a3

    .line 213
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "result":Landroid/content/Intent;
    .restart local v9    # "status":I
    .restart local v11    # "uninstall":Z
    .restart local v12    # "installedPackageName":Ljava/lang/String;
    :catch_194
    move-exception v0

    goto :goto_1ae

    .line 230
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "result":Landroid/content/Intent;
    .end local v9    # "status":I
    .end local v11    # "uninstall":Z
    .end local v12    # "installedPackageName":Ljava/lang/String;
    :catch_196
    move-exception v0

    move-object/from16 v15, p3

    goto :goto_1a3

    .line 213
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "result":Landroid/content/Intent;
    .restart local v9    # "status":I
    .restart local v11    # "uninstall":Z
    .restart local v12    # "installedPackageName":Ljava/lang/String;
    :catch_19a
    move-exception v0

    move-object/from16 v15, p3

    goto :goto_1ae

    .line 230
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "result":Landroid/content/Intent;
    .end local v9    # "status":I
    .end local v11    # "uninstall":Z
    .end local v12    # "installedPackageName":Ljava/lang/String;
    :catch_19e
    move-exception v0

    move-object/from16 v15, p3

    move/from16 v14, p8

    :goto_1a3
    move/from16 v16, v3

    move-object/from16 v5, p2

    goto/16 :goto_22e

    .line 213
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "result":Landroid/content/Intent;
    .restart local v9    # "status":I
    .restart local v11    # "uninstall":Z
    .restart local v12    # "installedPackageName":Ljava/lang/String;
    :catch_1a9
    move-exception v0

    move-object/from16 v15, p3

    move/from16 v14, p8

    :goto_1ae
    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 214
    .end local v3    # "okay":Z
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16    # "okay":Z
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :goto_1b2
    :try_start_1b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Install of package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " succeeded but now not found"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1cd} :catch_1e7

    .line 216
    const/4 v3, 0x0

    .line 222
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "okay":Z
    .restart local v3    # "okay":Z
    :goto_1ce
    if-eqz v11, :cond_1e3

    .line 223
    :try_start_1d0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V
    :try_end_1d3
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1d3} :catch_1df

    .line 224
    const/4 v0, 0x0

    move-object/from16 v5, p2

    :try_start_1d6
    invoke-virtual {v6, v12, v5, v0}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1dc} :catch_1dd

    goto :goto_1e5

    .line 230
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "result":Landroid/content/Intent;
    .end local v9    # "status":I
    .end local v11    # "uninstall":Z
    .end local v12    # "installedPackageName":Ljava/lang/String;
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :catch_1dd
    move-exception v0

    goto :goto_22e

    :catch_1df
    move-exception v0

    move-object/from16 v5, p2

    goto :goto_22e

    .line 222
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "result":Landroid/content/Intent;
    .restart local v9    # "status":I
    .restart local v11    # "uninstall":Z
    .restart local v12    # "installedPackageName":Ljava/lang/String;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :cond_1e3
    move-object/from16 v5, p2

    .line 233
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "result":Landroid/content/Intent;
    .end local v9    # "status":I
    .end local v11    # "uninstall":Z
    .end local v12    # "installedPackageName":Ljava/lang/String;
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :goto_1e5
    goto/16 :goto_243

    .line 230
    .end local v3    # "okay":Z
    .restart local v16    # "okay":Z
    :catch_1e7
    move-exception v0

    move-object/from16 v5, p2

    goto :goto_220

    .end local v16    # "okay":Z
    .restart local v3    # "okay":Z
    :catch_1eb
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    goto :goto_22a

    .line 147
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .local v8, "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1f1
    move-exception v0

    move-object/from16 v15, p3

    move-object/from16 v10, p4

    move/from16 v14, p8

    move/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v5, p2

    move-object v3, v0

    .end local v3    # "okay":Z
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v16    # "okay":Z
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    if-eqz v8, :cond_20a

    :try_start_201
    invoke-virtual {v8}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_204
    .catchall {:try_start_201 .. :try_end_204} :catchall_205

    goto :goto_20a

    :catchall_205
    move-exception v0

    move-object v9, v0

    :try_start_207
    invoke-virtual {v3, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v16    # "okay":Z
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    .end local p9    # "sessionId":I
    :cond_20a
    :goto_20a
    throw v3
    :try_end_20b
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_20b} :catch_20b
    .catch Ljava/io/IOException; {:try_start_207 .. :try_end_20b} :catch_21f

    .line 150
    .end local v8    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v16    # "okay":Z
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    .restart local p9    # "sessionId":I
    :catch_20b
    move-exception v0

    goto :goto_21a

    .end local v16    # "okay":Z
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v3    # "okay":Z
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :catch_20d
    move-exception v0

    move-object/from16 v15, p3

    move-object/from16 v10, p4

    move/from16 v14, p8

    move/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v5, p2

    .line 151
    .end local v3    # "okay":Z
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v0, "t":Ljava/lang/Exception;
    .restart local v16    # "okay":Z
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :goto_21a
    :try_start_21a
    invoke-virtual {v7, v2}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 152
    nop

    .end local v16    # "okay":Z
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    .end local p9    # "sessionId":I
    throw v0
    :try_end_21f
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_21f} :catch_21f

    .line 230
    .end local v0    # "t":Ljava/lang/Exception;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v16    # "okay":Z
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    .restart local p9    # "sessionId":I
    :catch_21f
    move-exception v0

    :goto_220
    move/from16 v3, v16

    goto :goto_22e

    .end local v16    # "okay":Z
    .restart local v3    # "okay":Z
    :catch_223
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    move-object/from16 v10, p4

    :goto_22a
    move/from16 v14, p8

    move/from16 v16, v3

    .line 231
    .local v0, "e":Ljava/io/IOException;
    :goto_22e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to transcribe restored apk for install"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v3, 0x0

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    :goto_243
    return v3
.end method

.method public static setPrivilegeApp(Z)V
    .registers 1
    .param p0, "privilegeApp"    # Z

    .line 76
    sput-boolean p0, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    .line 77
    return-void
.end method

.method public static writeSession(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p3, "installerPackageName"    # Ljava/lang/String;
    .param p4, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
    .param p5, "sessionId"    # I

    .line 96
    move-object/from16 v1, p2

    const-string v2, "BackupManagerService"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 97
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v4

    .line 99
    .local v4, "installer":Landroid/content/pm/PackageInstaller;
    const/4 v5, 0x1

    .line 101
    .local v5, "okay":Z
    move/from16 v6, p5

    :try_start_f
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_a4

    move-object v13, v0

    .line 102
    .local v13, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_14
    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-wide/16 v9, 0x0

    iget-wide v11, v1, Lcom/android/server/backup/FileMetadata;->size:J

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/InterruptedIOException; {:try_start_14 .. :try_end_1f} :catch_77
    .catchall {:try_start_14 .. :try_end_1f} :catchall_72

    move-object v7, v0

    .line 104
    .local v7, "apkStream":Ljava/io/OutputStream;
    const v0, 0x8000

    :try_start_23
    new-array v0, v0, [B

    .line 105
    .local v0, "buffer":[B
    iget-wide v8, v1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 106
    .local v8, "size":J
    :goto_27
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_53

    .line 107
    array-length v10, v0

    int-to-long v10, v10

    cmp-long v10, v10, v8

    if-gez v10, :cond_36

    array-length v10, v0

    int-to-long v10, v10

    goto :goto_37

    :cond_36
    move-wide v10, v8

    .line 108
    .local v10, "toRead":J
    :goto_37
    long-to-int v12, v10

    const/4 v14, 0x0

    move-object/from16 v15, p1

    invoke-virtual {v15, v0, v14, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_60

    .line 109
    .local v12, "didRead":I
    if-ltz v12, :cond_48

    .line 110
    int-to-long v14, v12

    move-object/from16 v1, p4

    :try_start_44
    invoke-interface {v1, v14, v15}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_4a

    .line 109
    :cond_48
    move-object/from16 v1, p4

    .line 112
    :goto_4a
    const/4 v14, 0x0

    invoke-virtual {v7, v0, v14, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 113
    int-to-long v14, v12

    sub-long/2addr v8, v14

    .line 114
    .end local v10    # "toRead":J
    .end local v12    # "didRead":I
    move-object/from16 v1, p2

    goto :goto_27

    .line 115
    :cond_53
    move-object/from16 v1, p4

    invoke-virtual {v13, v7}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_5e

    .line 116
    .end local v0    # "buffer":[B
    .end local v8    # "size":J
    if-eqz v7, :cond_5d

    :try_start_5a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/InterruptedIOException; {:try_start_5a .. :try_end_5d} :catch_70
    .catchall {:try_start_5a .. :try_end_5d} :catchall_94

    .line 118
    .end local v7    # "apkStream":Ljava/io/OutputStream;
    :cond_5d
    goto :goto_8e

    .line 102
    .restart local v7    # "apkStream":Ljava/io/OutputStream;
    :catchall_5e
    move-exception v0

    goto :goto_63

    :catchall_60
    move-exception v0

    move-object/from16 v1, p4

    :goto_63
    move-object v8, v0

    if-eqz v7, :cond_6f

    :try_start_66
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6f

    :catchall_6a
    move-exception v0

    move-object v9, v0

    :try_start_6c
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v5    # "okay":Z
    .end local v13    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "instream":Ljava/io/InputStream;
    .end local p2    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p3    # "installerPackageName":Ljava/lang/String;
    .end local p4    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p5    # "sessionId":I
    :cond_6f
    :goto_6f
    throw v8
    :try_end_70
    .catch Ljava/io/InterruptedIOException; {:try_start_6c .. :try_end_70} :catch_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_94

    .line 116
    .end local v7    # "apkStream":Ljava/io/OutputStream;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v4    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v5    # "okay":Z
    .restart local v13    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "instream":Ljava/io/InputStream;
    .restart local p2    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p3    # "installerPackageName":Ljava/lang/String;
    .restart local p4    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p5    # "sessionId":I
    :catch_70
    move-exception v0

    goto :goto_7a

    .line 101
    :catchall_72
    move-exception v0

    move-object/from16 v1, p4

    :goto_75
    move-object v7, v0

    goto :goto_96

    .line 116
    :catch_77
    move-exception v0

    move-object/from16 v1, p4

    .line 117
    .local v0, "e":Ljava/io/InterruptedIOException;
    :goto_7a
    :try_start_7a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " InterruptedIOException in apkStream.close()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_7a .. :try_end_8e} :catchall_94

    .line 119
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :goto_8e
    if-eqz v13, :cond_93

    :try_start_90
    invoke-virtual {v13}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_a2

    .line 124
    .end local v13    # "session":Landroid/content/pm/PackageInstaller$Session;
    :cond_93
    goto :goto_bf

    .line 101
    .restart local v13    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_94
    move-exception v0

    goto :goto_75

    :goto_96
    if-eqz v13, :cond_a1

    :try_start_98
    invoke-virtual {v13}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_a1

    :catchall_9c
    move-exception v0

    move-object v8, v0

    :try_start_9e
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v5    # "okay":Z
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "instream":Ljava/io/InputStream;
    .end local p2    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p3    # "installerPackageName":Ljava/lang/String;
    .end local p4    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p5    # "sessionId":I
    :cond_a1
    :goto_a1
    throw v7
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a2} :catch_a2

    .line 120
    .end local v13    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v4    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v5    # "okay":Z
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "instream":Ljava/io/InputStream;
    .restart local p2    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p3    # "installerPackageName":Ljava/lang/String;
    .restart local p4    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p5    # "sessionId":I
    :catch_a2
    move-exception v0

    goto :goto_a7

    :catch_a4
    move-exception v0

    move-object/from16 v1, p4

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    :goto_a7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Exception in writeSession "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const/4 v5, 0x0

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_bf
    return v5
.end method
