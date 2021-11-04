.class public Lcom/android/server/enterprise/utils/PackageDownloader;
.super Ljava/lang/Object;
.source "PackageDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageDownloader"

.field private static UNSPECIFIED:I

.field private static mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadQueueIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->DEBUG:Z

    .line 70
    new-instance v0, Lcom/android/server/enterprise/utils/PackageDownloader$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/PackageDownloader$1;-><init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "edm.intent.action.sec.CHECK_REENROLLMENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;

    .line 41
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;

    .line 41
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleNetworkState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;

    .line 41
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadComplete()V

    return-void
.end method

.method private cancelAllDownload()V
    .registers 11

    .line 341
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 342
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 343
    .local v0, "size":I
    if-lez v0, :cond_5d

    .line 344
    new-array v1, v0, [Ljava/lang/String;

    .line 345
    .local v1, "pkgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 347
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 348
    .local v3, "i":I
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 349
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 353
    :cond_30
    const-string v4, ""

    .line 354
    .local v4, "pkg":Ljava/lang/String;
    sget v5, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v5, v5

    .line 356
    .local v5, "id":J
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_36
    if-ge v7, v0, :cond_58

    .line 357
    aget-object v4, v1, v7

    .line 358
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 360
    sget v8, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v8, v8

    cmp-long v8, v5, v8

    if-eqz v8, :cond_50

    .line 361
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V

    .line 362
    :cond_50
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 364
    .end local v7    # "j":I
    :cond_58
    iget-object v7, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 367
    .end local v0    # "size":I
    .end local v1    # "pkgs":[Ljava/lang/String;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "id":J
    :cond_5d
    return-void
.end method

.method private checkPackage(Ljava/lang/String;)Z
    .registers 15
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 228
    .local v1, "real_pkg":Ljava/lang/String;
    const/4 v2, 0x1

    .line 229
    .local v2, "status":I
    const/4 v3, 0x0

    .line 230
    .local v3, "filename":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 231
    .local v4, "queueId":J
    iget-object v6, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v7, Landroid/app/DownloadManager$Query;

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v8, 0x1

    new-array v9, v8, [J

    const/4 v10, 0x0

    aput-wide v4, v9, v10

    invoke-virtual {v7, v9}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v6

    .line 233
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_63

    :try_start_27
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_63

    .line 234
    const-string/jumbo v7, "status"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move v2, v7

    .line 236
    const-string/jumbo v7, "local_uri"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, "downloadFileLocalUri":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_63

    .line 238
    new-instance v9, Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v9, "mFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11
    :try_end_5b
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_5b} :catch_60
    .catchall {:try_start_27 .. :try_end_5b} :catchall_5d

    move-object v3, v11

    goto :goto_63

    .line 298
    .end local v7    # "downloadFileLocalUri":Ljava/lang/String;
    .end local v9    # "mFile":Ljava/io/File;
    :catchall_5d
    move-exception v7

    goto/16 :goto_10e

    .line 295
    :catch_60
    move-exception v7

    goto/16 :goto_fd

    .line 243
    :cond_63
    :goto_63
    if-nez v3, :cond_6c

    .line 246
    nop

    .line 298
    if-eqz v6, :cond_6b

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_6b
    return v0

    .line 249
    :cond_6c
    :try_start_6c
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v7, "f":Ljava/io/File;
    const/4 v9, 0x0

    .line 251
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    iget-object v11, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v11, :cond_85

    .line 252
    iget-object v11, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    move-object v9, v10

    .line 253
    :cond_85
    if-eqz v9, :cond_8e

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_8e

    .line 254
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v1, v10

    .line 257
    :cond_8e
    if-nez v1, :cond_a2

    .line 258
    const/4 v0, 0x0

    .line 259
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_f7

    .line 260
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    const v10, 0x1040a6b

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    goto :goto_f7

    .line 262
    :cond_a2
    iget-object v10, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v10

    .line 263
    .local v10, "mConstrained":Lcom/android/server/enterprise/utils/ConstrainedState;
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, p1, v11}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v8, :cond_d7

    .line 265
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c8

    .line 266
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c8
    .catch Ljava/lang/SecurityException; {:try_start_6c .. :try_end_c8} :catch_60
    .catchall {:try_start_6c .. :try_end_c8} :catchall_5d

    .line 270
    :cond_c8
    if-ne v2, v12, :cond_f7

    if-eqz v3, :cond_f7

    .line 272
    :try_start_cc
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_d1
    .catch Ljava/lang/SecurityException; {:try_start_cc .. :try_end_cf} :catch_60
    .catchall {:try_start_cc .. :try_end_cf} :catchall_5d

    .line 273
    const/4 v0, 0x1

    .line 277
    :goto_d0
    goto :goto_f7

    .line 274
    :catch_d1
    move-exception v8

    .line 275
    .local v8, "e":Ljava/lang/Exception;
    :try_start_d2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    const/4 v0, 0x0

    .end local v8    # "e":Ljava/lang/Exception;
    goto :goto_d0

    .line 279
    :cond_d7
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, p1, v11}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v11

    if-ne v11, v8, :cond_f6

    .line 280
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_e5
    .catch Ljava/lang/SecurityException; {:try_start_d2 .. :try_end_e5} :catch_60
    .catchall {:try_start_d2 .. :try_end_e5} :catchall_5d

    if-eqz v8, :cond_f7

    .line 281
    if-ne v2, v12, :cond_f7

    if-eqz v3, :cond_f7

    .line 283
    :try_start_eb
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_f0
    .catch Ljava/lang/SecurityException; {:try_start_eb .. :try_end_ee} :catch_60
    .catchall {:try_start_eb .. :try_end_ee} :catchall_5d

    .line 284
    const/4 v0, 0x1

    .line 288
    :goto_ef
    goto :goto_f7

    .line 285
    :catch_f0
    move-exception v8

    .line 286
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_f1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f4
    .catch Ljava/lang/SecurityException; {:try_start_f1 .. :try_end_f4} :catch_60
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_5d

    .line 287
    const/4 v0, 0x0

    .end local v8    # "e":Ljava/lang/Exception;
    goto :goto_ef

    .line 292
    :cond_f6
    const/4 v0, 0x0

    .line 298
    .end local v7    # "f":Ljava/io/File;
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    .end local v10    # "mConstrained":Lcom/android/server/enterprise/utils/ConstrainedState;
    :cond_f7
    :goto_f7
    if-eqz v6, :cond_108

    .line 299
    :goto_f9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_108

    .line 296
    .local v7, "e":Ljava/lang/SecurityException;
    :goto_fd
    :try_start_fd
    const-string v8, "PackageDownloader"

    const-string v9, "failed to checkPackage"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_104
    .catchall {:try_start_fd .. :try_end_104} :catchall_5d

    .line 298
    nop

    .end local v7    # "e":Ljava/lang/SecurityException;
    if-eqz v6, :cond_108

    .line 299
    goto :goto_f9

    .line 302
    :cond_108
    :goto_108
    if-nez v0, :cond_10d

    .line 303
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V

    .line 305
    :cond_10d
    return v0

    .line 298
    :goto_10e
    if-eqz v6, :cond_113

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_113
    throw v7
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgUrl"    # Ljava/lang/String;

    .line 200
    if-eqz p1, :cond_4b

    if-eqz p2, :cond_4b

    .line 202
    :try_start_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 203
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    .line 204
    if-eqz v1, :cond_46

    if-eqz v0, :cond_46

    .line 205
    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 206
    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget v3, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_46

    .line 207
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 208
    .local v1, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->setDestinationToSystemCache()Landroid/app/DownloadManager$Request;

    .line 209
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 210
    .local v2, "queueId":J
    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_46} :catch_47

    .line 216
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "request":Landroid/app/DownloadManager$Request;
    .end local v2    # "queueId":J
    :cond_46
    goto :goto_4b

    .line 214
    :catch_47
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4b
    :goto_4b
    return-void
.end method

.method private getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 221
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    sget-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/PackageDownloader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    .line 67
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    return-object v0
.end method

.method private handleDownloadComplete()V
    .registers 11

    .line 129
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    .line 130
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 132
    .local v0, "size":I
    if-lez v0, :cond_53

    .line 133
    new-array v1, v0, [Ljava/lang/String;

    .line 134
    .local v1, "pkgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 136
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 137
    .local v3, "i":I
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 142
    :cond_30
    const-string v4, ""

    .line 143
    .local v4, "pkg":Ljava/lang/String;
    sget v5, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v5, v5

    .line 145
    .local v5, "id":J
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_36
    if-ge v7, v0, :cond_53

    .line 146
    aget-object v4, v1, v7

    .line 147
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 148
    sget v8, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v8, v8

    cmp-long v8, v5, v8

    if-eqz v8, :cond_50

    .line 149
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/utils/PackageDownloader;->checkPackage(Ljava/lang/String;)Z

    .line 145
    :cond_50
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 153
    .end local v0    # "size":I
    .end local v1    # "pkgs":[Ljava/lang/String;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "id":J
    .end local v7    # "j":I
    :cond_53
    return-void
.end method

.method private handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgUrl"    # Ljava/lang/String;

    .line 103
    if-eqz p1, :cond_29

    .line 104
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->isNetworkConnectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_29

    .line 105
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 106
    :cond_1a
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    sget v1, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/utils/PackageDownloader;->download(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_29
    return-void
.end method

.method private handleNetworkState()V
    .registers 3

    .line 121
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->isNetworkConnectionAvailable()Z

    move-result v0

    if-nez v0, :cond_17

    .line 122
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    .line 123
    const v1, 0x1040a6a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    .line 124
    :cond_14
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->cancelAllDownload()V

    .line 126
    :cond_17
    return-void
.end method

.method private installPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 338
    return-void
.end method

.method private isApplicationInstalled(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 191
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 192
    .local v3, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 193
    return v1

    .line 190
    .end local v3    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 196
    .end local v2    # "i":I
    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method private isConnectionAvailable(I)Z
    .registers 6
    .param p1, "type"    # I

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 179
    .local v1, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_f

    .line 180
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 182
    :cond_f
    if-eqz v1, :cond_20

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 183
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 185
    :cond_20
    return v0
.end method

.method private isNetworkConnectionAvailable()Z
    .registers 6

    .line 156
    const/4 v0, 0x1

    .line 157
    .local v0, "result":Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->isConnectionAvailable(I)Z

    move-result v2

    .line 158
    .local v2, "isWifi":Z
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/PackageDownloader;->isConnectionAvailable(I)Z

    move-result v4

    .line 159
    .local v4, "isMobile":Z
    if-nez v2, :cond_11

    if-eqz v4, :cond_10

    goto :goto_11

    :cond_10
    move v1, v3

    :cond_11
    :goto_11
    move v0, v1

    .line 161
    if-nez v0, :cond_23

    .line 162
    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_23

    .line 163
    const v3, 0x1040a6c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    .line 172
    :cond_23
    return v0
.end method

.method private postDownload(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 373
    sget v0, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v0, v0

    .line 399
    .local v0, "id":J
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v2, :cond_49

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_49

    .line 400
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 401
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 403
    if-eqz p1, :cond_3b

    sget v2, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3b

    .line 404
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    .line 405
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    .line 409
    :cond_3b
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 411
    :cond_41
    const-string v2, "PackageDownloader"

    const-string/jumbo v3, "something\'s wrong...size is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_49
    :goto_49
    return-void
.end method
