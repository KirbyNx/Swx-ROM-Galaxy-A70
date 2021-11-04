.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
.super Ljava/lang/Object;
.source "NetworkAnalyticsDataDelivery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:NetworkAnalyticsDataDelivery"

.field private static appset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field private static pms:Lcom/android/server/pm/PackageManagerService;


# instance fields
.field private dataEntry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private registeredDataRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/DataDeliveryHelper;",
            ">;"
        }
    .end annotation
.end field

.field private startTimer:J

.field private syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 138
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 150
    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    .line 154
    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    .line 206
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageManager()Lcom/android/server/pm/PackageManagerService;

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    .line 210
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    .line 144
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    .line 158
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    .line 160
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    .line 164
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    .line 166
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 132
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 132
    iget-wide v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .param p1, "x1"    # J

    .line 132
    iput-wide p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    return-wide p1
.end method

.method private static checkIfProcessIsDaemon(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "processName"    # Ljava/lang/String;

    .line 659
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 665
    .local v0, "output":Ljava/lang/StringBuffer;
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "which "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 667
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 669
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 671
    .local v2, "reader":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 673
    .local v3, "line":Ljava/lang/String;
    :goto_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_3d

    .line 675
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_32

    .line 679
    :cond_3d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_41

    .line 685
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    goto :goto_45

    .line 681
    .end local v1    # "p":Ljava/lang/Process;
    :catch_41
    move-exception v1

    .line 683
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 687
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "response":Ljava/lang/String;
    return-object v1
.end method

.method private static checkSingleUidAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p0, "uid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    move/from16 v8, p0

    move-object/from16 v9, p1

    .line 699
    const/4 v10, 0x0

    :try_start_5
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_a

    .line 701
    return-object v10

    .line 703
    :cond_a
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_db

    .line 705
    .local v0, "packageNames":[Ljava/lang/String;
    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    if-nez v0, :cond_32

    .line 707
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the packages for uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for processName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-object v10

    .line 713
    :cond_32
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_da

    .line 717
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHashFromCacheBasedOnUid(I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 719
    .local v11, "cacheHash":Ljava/lang/String;
    if-eqz v11, :cond_3e

    .line 721
    return-object v11

    .line 725
    :cond_3e
    const/4 v2, 0x0

    aget-object v3, v0, v2

    move-object v12, v3

    .line 727
    .local v12, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, v12, v2, v4}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object v13, v2

    .line 729
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v13, :cond_da

    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_da

    .line 731
    new-instance v2, Ljava/io/File;

    iget-object v3, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    .line 733
    .local v14, "apkFile":Ljava/io/File;
    nop

    .line 735
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_88

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the file location for the process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-object v10

    .line 743
    :cond_88
    invoke-static {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    .line 745
    .local v15, "hash":Ljava/lang/String;
    if-eqz v15, :cond_da

    .line 747
    iget-object v1, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v1, :cond_d9

    .line 749
    const/16 v16, 0x0

    .line 751
    .local v16, "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    iget-object v1, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_c0

    .line 753
    new-instance v17, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget-object v4, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v1, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v3, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object/from16 v1, v17

    move/from16 v2, p0

    move-object v3, v12

    move-object v6, v15

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, v17

    .end local v16    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    .local v1, "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    goto :goto_d5

    .line 759
    .end local v1    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    .restart local v16    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    :cond_c0
    new-instance v17, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget-object v4, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object/from16 v1, v17

    move/from16 v2, p0

    move-object v3, v12

    move-object v6, v15

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, v17

    .line 763
    .end local v16    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    .restart local v1    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    :goto_d5
    nop

    .line 765
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_d9} :catch_db

    .line 771
    .end local v1    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    :cond_d9
    return-object v15

    .line 785
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v11    # "cacheHash":Ljava/lang/String;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "apkFile":Ljava/io/File;
    .end local v15    # "hash":Ljava/lang/String;
    :cond_da
    goto :goto_df

    .line 781
    :catch_db
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 787
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_df
    return-object v10
.end method

.method protected static clearHashCacheEntire()V
    .registers 4

    .line 549
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    .line 551
    :try_start_3
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_23

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearHashCacheEntire Called : cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_23
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 555
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_48

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataDelivery hash cache entire deletion : cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_48
    monitor-exit v0

    .line 559
    return-void

    .line 557
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private static compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 21
    .param p0, "uid"    # I
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appProcessName"    # Ljava/lang/String;
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    move/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 1055
    const/4 v13, 0x0

    if-eqz v9, :cond_ee

    if-eqz v10, :cond_ee

    if-eqz v11, :cond_ee

    if-eqz v12, :cond_ee

    .line 1057
    :try_start_13
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_e9

    const-string v1, "for uid "

    const-string v2, "for package "

    const-string/jumbo v3, "unable to find the file location for the process:"

    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const/16 v5, 0xf

    if-le v0, v5, :cond_92

    .line 1059
    :try_start_24
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 1061
    :cond_39
    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_ee

    .line 1063
    new-instance v0, Ljava/io/File;

    iget-object v6, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v0, "apkFile":Ljava/io/File;
    nop

    .line 1067
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6a

    .line 1069
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-object v13

    .line 1075
    :cond_6a
    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 1077
    .local v14, "hash":Ljava/lang/String;
    if-eqz v14, :cond_91

    .line 1079
    new-instance v15, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object v1, v15

    move/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v6, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v15

    .line 1081
    .local v1, "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    nop

    .line 1083
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V

    .line 1087
    return-object v14

    .line 1093
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    .end local v14    # "hash":Ljava/lang/String;
    :cond_91
    goto :goto_ee

    .line 1099
    :cond_92
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 1101
    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_ee

    .line 1103
    new-instance v0, Ljava/io/File;

    iget-object v5, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1105
    .restart local v0    # "apkFile":Ljava/io/File;
    nop

    .line 1107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c9

    .line 1109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-object v13

    .line 1115
    :cond_c9
    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 1117
    .restart local v14    # "hash":Ljava/lang/String;
    if-eqz v14, :cond_ee

    .line 1119
    new-instance v15, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object v1, v15

    move/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p3

    move-object v6, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v15

    .line 1121
    .restart local v1    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    nop

    .line 1123
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_e8} :catch_e9

    .line 1127
    return-object v14

    .line 1141
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    .end local v14    # "hash":Ljava/lang/String;
    :catch_e9
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ef

    .line 1145
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_ee
    :goto_ee
    nop

    .line 1147
    :goto_ef
    return-object v13
.end method

.method private getAugmentedData(Lcom/android/server/enterprise/nap/DataDeliveryHelper;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .param p1, "helper"    # Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/nap/DataDeliveryHelper;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1257
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1259
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2d

    if-nez p2, :cond_6

    goto :goto_2d

    .line 1267
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 1269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1271
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1273
    .local v2, "dataPoint":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->processData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1275
    .local v3, "dataToAdd":Ljava/lang/String;
    if-eqz v3, :cond_2b

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    .end local v2    # "dataPoint":Ljava/lang/String;
    .end local v3    # "dataToAdd":Ljava/lang/String;
    :cond_2b
    goto :goto_16

    .line 1281
    :cond_2c
    return-object v0

    .line 1261
    :cond_2d
    :goto_2d
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_39

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v2, "getAugmentedData: Helper or data is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_39
    return-object v0
.end method

.method private static getFileLocationFromProcessNameAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p0, "uid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    move/from16 v1, p0

    move-object/from16 v2, p1

    .line 797
    const/4 v3, 0x0

    :try_start_5
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_a

    .line 799
    return-object v3

    .line 801
    :cond_a
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "packageNames":[Ljava/lang/String;
    if-nez v0, :cond_13

    .line 805
    return-object v3

    .line 807
    :cond_13
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_16
    if-ge v6, v4, :cond_f2

    aget-object v7, v0, v6

    .line 811
    .local v7, "packageName":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v7, v5, v9}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 813
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_35

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v9, :cond_35

    if-eqz v2, :cond_35

    .line 815
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2, v7, v9, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v9

    .line 817
    .local v9, "hash":Ljava/lang/String;
    if-eqz v9, :cond_35

    .line 819
    return-object v9

    .line 829
    .end local v9    # "hash":Ljava/lang/String;
    :cond_35
    sget-object v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    const/4 v10, 0x4

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v9, v7, v10, v11}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 831
    .local v9, "packageInfoServices":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_62

    .line 833
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 835
    .local v10, "serviceInfo":[Landroid/content/pm/ServiceInfo;
    if-eqz v10, :cond_62

    .line 837
    array-length v11, v10

    move v12, v5

    :goto_48
    if-ge v12, v11, :cond_62

    aget-object v13, v10, v12

    .line 839
    .local v13, "service":Landroid/content/pm/ServiceInfo;
    if-eqz v13, :cond_5f

    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    if-eqz v14, :cond_5f

    if-eqz v2, :cond_5f

    if-eqz v8, :cond_5f

    .line 841
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2, v7, v14, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v14

    .line 843
    .local v14, "hash":Ljava/lang/String;
    if-eqz v14, :cond_5f

    .line 845
    return-object v14

    .line 837
    .end local v13    # "service":Landroid/content/pm/ServiceInfo;
    .end local v14    # "hash":Ljava/lang/String;
    :cond_5f
    add-int/lit8 v12, v12, 0x1

    goto :goto_48

    .line 861
    .end local v10    # "serviceInfo":[Landroid/content/pm/ServiceInfo;
    :cond_62
    sget-object v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    const/16 v11, 0x8

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v10, v7, v11, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 863
    .local v10, "packageInfoProviders":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_90

    .line 865
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 867
    .local v11, "providerInfo":[Landroid/content/pm/ProviderInfo;
    if-eqz v11, :cond_90

    .line 869
    array-length v12, v11

    move v13, v5

    :goto_76
    if-ge v13, v12, :cond_90

    aget-object v14, v11, v13

    .line 871
    .local v14, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v14, :cond_8d

    iget-object v15, v14, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    if-eqz v15, :cond_8d

    if-eqz v2, :cond_8d

    if-eqz v8, :cond_8d

    .line 873
    iget-object v15, v14, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2, v7, v15, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v15

    .line 875
    .local v15, "hash":Ljava/lang/String;
    if-eqz v15, :cond_8d

    .line 877
    return-object v15

    .line 869
    .end local v14    # "provider":Landroid/content/pm/ProviderInfo;
    .end local v15    # "hash":Ljava/lang/String;
    :cond_8d
    add-int/lit8 v13, v13, 0x1

    goto :goto_76

    .line 893
    .end local v11    # "providerInfo":[Landroid/content/pm/ProviderInfo;
    :cond_90
    sget-object v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    const/4 v12, 0x2

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v11, v7, v12, v13}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 895
    .local v11, "packageInfoReceivers":Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_be

    .line 897
    iget-object v12, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 899
    .local v12, "receiverInfo":[Landroid/content/pm/ActivityInfo;
    if-eqz v12, :cond_be

    .line 901
    array-length v13, v12

    move v14, v5

    :goto_a3
    if-ge v14, v13, :cond_be

    aget-object v15, v12, v14

    .line 903
    .local v15, "receiver":Landroid/content/pm/ActivityInfo;
    if-eqz v15, :cond_ba

    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-eqz v5, :cond_ba

    if-eqz v2, :cond_ba

    if-eqz v8, :cond_ba

    .line 905
    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2, v7, v5, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    .line 907
    .local v5, "hash":Ljava/lang/String;
    if-eqz v5, :cond_ba

    .line 909
    return-object v5

    .line 901
    .end local v5    # "hash":Ljava/lang/String;
    .end local v15    # "receiver":Landroid/content/pm/ActivityInfo;
    :cond_ba
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_a3

    .line 925
    .end local v12    # "receiverInfo":[Landroid/content/pm/ActivityInfo;
    :cond_be
    sget-object v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v5, v7, v13, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 927
    .local v5, "packageInfoActivities":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_ec

    .line 929
    iget-object v12, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 931
    .local v12, "activityInfo":[Landroid/content/pm/ActivityInfo;
    if-eqz v12, :cond_ec

    .line 933
    array-length v13, v12

    const/4 v14, 0x0

    :goto_d1
    if-ge v14, v13, :cond_ec

    aget-object v15, v12, v14

    .line 935
    .local v15, "activity":Landroid/content/pm/ActivityInfo;
    if-eqz v15, :cond_e8

    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-eqz v3, :cond_e8

    if-eqz v2, :cond_e8

    if-eqz v8, :cond_e8

    .line 937
    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2, v7, v3, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e5} :catch_f3

    .line 939
    .local v3, "hash":Ljava/lang/String;
    if-eqz v3, :cond_e8

    .line 941
    return-object v3

    .line 933
    .end local v3    # "hash":Ljava/lang/String;
    .end local v15    # "activity":Landroid/content/pm/ActivityInfo;
    :cond_e8
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_d1

    .line 807
    .end local v5    # "packageInfoActivities":Landroid/content/pm/PackageInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "packageInfoServices":Landroid/content/pm/PackageInfo;
    .end local v10    # "packageInfoProviders":Landroid/content/pm/PackageInfo;
    .end local v11    # "packageInfoReceivers":Landroid/content/pm/PackageInfo;
    .end local v12    # "activityInfo":[Landroid/content/pm/ActivityInfo;
    :cond_ec
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_16

    .line 959
    .end local v0    # "packageNames":[Ljava/lang/String;
    :cond_f2
    goto :goto_f7

    .line 955
    :catch_f3
    move-exception v0

    .line 957
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 961
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f7
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getHash(Ljava/io/File;)Ljava/lang/String;
    .registers 14
    .param p0, "file"    # Ljava/io/File;

    .line 1157
    const-string v0, "close FileInputStream: IOException"

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const/4 v2, 0x0

    .line 1159
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 1163
    .local v3, "hexString":Ljava/lang/StringBuffer;
    :try_start_6
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 1165
    .local v4, "md":Ljava/security/MessageDigest;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 1167
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 1169
    .local v5, "dataBytes":[B
    const/4 v6, 0x0

    .line 1171
    .local v6, "nread":I
    :goto_17
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v6, v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq v7, v8, :cond_24

    .line 1173
    invoke-virtual {v4, v5, v9, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_17

    .line 1177
    :cond_24
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 1179
    .local v7, "mdbytes":[B
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v8

    .line 1181
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2f
    array-length v10, v7

    if-ge v8, v10, :cond_4b

    .line 1183
    const-string v10, "%02X"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aget-byte v12, v7, v8

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_48} :catch_77
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_48} :catch_6a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_48} :catch_57
    .catchall {:try_start_6 .. :try_end_48} :catchall_55

    .line 1181
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 1203
    .end local v5    # "dataBytes":[B
    .end local v6    # "nread":I
    .end local v7    # "mdbytes":[B
    .end local v8    # "i":I
    :cond_4b
    nop

    .line 1205
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 1213
    goto :goto_84

    .line 1209
    :catch_50
    move-exception v5

    .line 1211
    .local v5, "ioe2":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1215
    .end local v5    # "ioe2":Ljava/io/IOException;
    goto :goto_84

    .line 1201
    .end local v4    # "md":Ljava/security/MessageDigest;
    :catchall_55
    move-exception v4

    goto :goto_8d

    .line 1195
    :catch_57
    move-exception v4

    .line 1197
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_58
    const-string/jumbo v5, "getHash: IOException"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_55

    .line 1203
    .end local v4    # "ioe":Ljava/io/IOException;
    if-eqz v2, :cond_69

    .line 1205
    :try_start_60
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_69

    .line 1209
    :catch_64
    move-exception v4

    .line 1211
    .local v4, "ioe2":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1215
    .end local v4    # "ioe2":Ljava/io/IOException;
    goto :goto_84

    .line 1213
    :cond_69
    :goto_69
    goto :goto_84

    .line 1191
    :catch_6a
    move-exception v4

    .line 1193
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_6b
    const-string/jumbo v5, "getHash: FileNotFoundException"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_55

    .line 1203
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_69

    .line 1205
    :try_start_73
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_64

    goto :goto_69

    .line 1187
    :catch_77
    move-exception v4

    .line 1189
    .local v4, "nsae":Ljava/security/NoSuchAlgorithmException;
    :try_start_78
    const-string/jumbo v5, "getHash: NoSuchAlgorithmException"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_55

    .line 1203
    .end local v4    # "nsae":Ljava/security/NoSuchAlgorithmException;
    if-eqz v2, :cond_69

    .line 1205
    :try_start_80
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_64

    goto :goto_69

    .line 1217
    :goto_84
    if-nez v3, :cond_88

    .line 1219
    const/4 v0, 0x0

    return-object v0

    .line 1221
    :cond_88
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1203
    :goto_8d
    if-eqz v2, :cond_98

    .line 1205
    :try_start_8f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_98

    .line 1209
    :catch_93
    move-exception v5

    .line 1211
    .restart local v5    # "ioe2":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_99

    .line 1213
    .end local v5    # "ioe2":Ljava/io/IOException;
    :cond_98
    :goto_98
    nop

    .line 1215
    :goto_99
    throw v4
.end method

.method private static getHashFromCache(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "uid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    .line 425
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    .line 427
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 429
    .local v1, "appsetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 431
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 433
    .local v2, "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v3, p0, :cond_2d

    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 435
    :cond_29
    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 439
    .end local v2    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    :cond_2d
    goto :goto_9

    .line 441
    .end local v1    # "appsetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;>;"
    :cond_2e
    monitor-exit v0

    .line 443
    const/4 v0, 0x0

    return-object v0

    .line 441
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private static getHashFromCacheBasedOnUid(I)Ljava/lang/String;
    .registers 5
    .param p0, "uid"    # I

    .line 451
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    .line 453
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 455
    .local v1, "appsetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 457
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 459
    .local v2, "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v3, p0, :cond_1d

    .line 461
    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 465
    .end local v2    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    :cond_1d
    goto :goto_9

    .line 467
    .end local v1    # "appsetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;>;"
    :cond_1e
    monitor-exit v0

    .line 469
    const/4 v0, 0x0

    return-object v0

    .line 467
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public static getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .registers 1

    .line 226
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    if-nez v0, :cond_b

    .line 228
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-direct {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 230
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    return-object v0
.end method

.method public static getPackageHash(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "uid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    .line 569
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHashFromCache(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "cacheHash":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 573
    return-object v1

    .line 581
    :cond_8
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->checkIfProcessIsDaemon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "daemonLocation":Ljava/lang/String;
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 585
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    .local v3, "daemonFile":Ljava/io/File;
    nop

    .line 589
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 591
    return-object v0

    .line 595
    :cond_2a
    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "hash":Ljava/lang/String;
    if-eqz v4, :cond_31

    .line 599
    return-object v4

    .line 605
    .end local v3    # "daemonFile":Ljava/io/File;
    .end local v4    # "hash":Ljava/lang/String;
    :cond_31
    goto :goto_47

    .line 609
    :cond_32
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->checkSingleUidAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, "hash":Ljava/lang/String;
    if-eqz v3, :cond_39

    .line 613
    return-object v3

    .line 619
    :cond_39
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getFileLocationFromProcessNameAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, "hashShared":Ljava/lang/String;
    if-eqz v4, :cond_40

    .line 623
    return-object v4

    .line 629
    :cond_40
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageNameFromPathAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_44} :catch_48

    .line 631
    .local v5, "hashSharedExe":Ljava/lang/String;
    if-eqz v5, :cond_47

    .line 633
    return-object v5

    .line 649
    .end local v1    # "cacheHash":Ljava/lang/String;
    .end local v2    # "daemonLocation":Ljava/lang/String;
    .end local v3    # "hash":Ljava/lang/String;
    .end local v4    # "hashShared":Ljava/lang/String;
    .end local v5    # "hashSharedExe":Ljava/lang/String;
    :cond_47
    :goto_47
    goto :goto_51

    .line 645
    :catch_48
    move-exception v1

    .line 647
    .local v1, "nnfe":Ljava/lang/Exception;
    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v3, "getPackageHash: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    .end local v1    # "nnfe":Ljava/lang/Exception;
    :goto_51
    return-object v0
.end method

.method private static getPackageManager()Lcom/android/server/pm/PackageManagerService;
    .registers 1

    .line 1229
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_f

    .line 1231
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    .line 1235
    :cond_f
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private static getPackageNameFromPathAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "uid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    .line 971
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    if-nez v1, :cond_6

    .line 973
    return-object v0

    .line 975
    :cond_6
    const/4 v1, 0x0

    .line 977
    .local v1, "retrievedPackageName":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 979
    .local v2, "processNameArray":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x4

    if-lt v3, v4, :cond_a3

    .line 981
    const/4 v3, 0x2

    aget-object v5, v2, v3

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_21

    .line 983
    aget-object v3, v2, v6

    move-object v1, v3

    goto :goto_43

    .line 985
    :cond_21
    array-length v5, v2

    const/4 v7, 0x5

    if-lt v5, v7, :cond_43

    aget-object v3, v2, v3

    const-string/jumbo v5, "user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v5, v2, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 987
    aget-object v3, v2, v4

    move-object v1, v3

    .line 991
    :cond_43
    :goto_43
    if-eqz v1, :cond_a3

    .line 993
    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 995
    .local v3, "packageNames":[Ljava/lang/String;
    if-nez v3, :cond_4e

    .line 997
    return-object v0

    .line 999
    :cond_4e
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_51
    if-ge v6, v4, :cond_a3

    aget-object v7, v3, v6

    .line 1001
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 1003
    sget-object v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v7, v5, v9}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1005
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_a0

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v9, :cond_a0

    .line 1007
    new-instance v9, Ljava/io/File;

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v9, "apkFile":Ljava/io/File;
    nop

    .line 1011
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_99

    .line 1013
    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to find the file location for the deamon path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-object v0

    .line 1019
    :cond_99
    invoke-static {v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9d} :catch_a4

    .line 1021
    .local v10, "hash":Ljava/lang/String;
    if-eqz v10, :cond_a0

    .line 1023
    return-object v10

    .line 999
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "apkFile":Ljava/io/File;
    .end local v10    # "hash":Ljava/lang/String;
    :cond_a0
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    .line 1043
    .end local v1    # "retrievedPackageName":Ljava/lang/String;
    .end local v2    # "processNameArray":[Ljava/lang/String;
    .end local v3    # "packageNames":[Ljava/lang/String;
    :cond_a3
    goto :goto_a8

    .line 1039
    :catch_a4
    move-exception v1

    .line 1041
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1045
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a8
    return-object v0
.end method

.method private static insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    .registers 5
    .param p0, "appInfoSet"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 477
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v1, "insertHashIntoCache Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    .line 481
    :try_start_f
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_53

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataDelivery hash cache insertion uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pacName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " procName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " trunProcName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hash:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_53
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 485
    monitor-exit v0

    .line 487
    return-void

    .line 485
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_f .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private isDataRecipientPresent(Ljava/lang/String;I)I
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "opUserId"    # I

    .line 1311
    const/4 v0, -0x1

    .line 1313
    .local v0, "returnValue":I
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v1

    .line 1315
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/DataDeliveryHelper;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 1317
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1319
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v3, :cond_3f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDataRecipientPresent: found recipient:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_3f
    move v0, v2

    .line 1323
    goto :goto_44

    .line 1315
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1329
    .end local v2    # "i":I
    :cond_44
    :goto_44
    return v0
.end method

.method private sendMessageToHandler(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "action"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1243
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    if-eqz v0, :cond_d

    .line 1245
    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1247
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1251
    .end local v0    # "msg":Landroid/os/Message;
    :cond_d
    return-void
.end method

.method protected static updateHashCache(ILjava/lang/String;)V
    .registers 8
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 493
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v1, "updateHashCache Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    .line 497
    :try_start_f
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 499
    .local v1, "appsetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 501
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 503
    .local v2, "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v3, p0, :cond_74

    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 505
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v3, :cond_71

    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataDelivery hash cache deletion uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pacName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " procName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " trunProcName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_71
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 511
    .end local v2    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    :cond_74
    goto :goto_15

    .line 513
    .end local v1    # "appsetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;>;"
    :cond_75
    monitor-exit v0

    .line 515
    return-void

    .line 513
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_f .. :try_end_79} :catchall_77

    throw v1
.end method

.method protected static updateHashCacheForUser(I)V
    .registers 7
    .param p0, "userId"    # I

    .line 521
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v1, "updateHashCacheForUser Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    .line 525
    :try_start_f
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 527
    .local v1, "appsetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 529
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 531
    .local v2, "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->userId:I

    if-ne v3, p0, :cond_6c

    .line 533
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v3, :cond_69

    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataDelivery hash cache user deletion uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pacName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " procName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " trunProcName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_69
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 539
    .end local v2    # "appInfoSet":Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    :cond_6c
    goto :goto_15

    .line 541
    .end local v1    # "appsetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;>;"
    :cond_6d
    monitor-exit v0

    .line 543
    return-void

    .line 541
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_f .. :try_end_71} :catchall_6f

    throw v1
.end method

.method private validateRecipientObject(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)Z
    .registers 4
    .param p1, "recipient"    # Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    .line 1289
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1291
    return v0

    .line 1293
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1295
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getServiceConnection()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_13

    .line 1301
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 1297
    :cond_13
    :goto_13
    return v0
.end method


# virtual methods
.method public accumulateData(Ljava/lang/String;)I
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 393
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 395
    return v1
.end method

.method public addNAPDataRecipient(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)V
    .registers 7
    .param p1, "recipient"    # Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    .line 238
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->validateRecipientObject(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_24

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding recipient failed for recipient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "identifier":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding recipient for data collection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_42
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_45
    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v3

    .line 250
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->isDataRecipientPresent(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_74

    .line 254
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v2, :cond_74

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "added recipient for data collection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_74
    monitor-exit v1

    .line 262
    return-void

    .line 260
    :catchall_76
    move-exception v2

    monitor-exit v1
    :try_end_78
    .catchall {:try_start_45 .. :try_end_78} :catchall_76

    throw v2
.end method

.method public deliverData(Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 328
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, -0x1

    if-eqz p1, :cond_90

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    goto/16 :goto_90

    .line 334
    :cond_b
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v2

    .line 338
    .local v2, "helperList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/DataDeliveryHelper;>;"
    if-eqz v2, :cond_80

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1b

    goto :goto_80

    .line 346
    :cond_1b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_8d

    .line 350
    .local v3, "helper":Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    :try_start_2b
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getServiceBinder()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v4

    .line 352
    .local v4, "serviceConnection":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, "profileName":Ljava/lang/String;
    if-nez v4, :cond_58

    .line 356
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v6, :cond_57

    const-string v6, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deliverData: service connection is null for entry:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_57
    goto :goto_1f

    .line 362
    :cond_58
    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getAugmentedData(Lcom/android/server/enterprise/nap/DataDeliveryHelper;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 364
    .local v6, "augmentedData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_69

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_65

    goto :goto_69

    .line 370
    :cond_65
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onDataAvailable(Ljava/lang/String;Ljava/util/List;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_68} :catch_73
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_68} :catch_6a
    .catchall {:try_start_2b .. :try_end_68} :catchall_8d

    .line 380
    .end local v4    # "serviceConnection":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v6    # "augmentedData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_7c

    .line 366
    .restart local v4    # "serviceConnection":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .restart local v5    # "profileName":Ljava/lang/String;
    .restart local v6    # "augmentedData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_69
    :goto_69
    goto :goto_1f

    .line 376
    .end local v4    # "serviceConnection":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v6    # "augmentedData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_6a
    move-exception v4

    .line 378
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6b
    const-string v5, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string v6, "deliverData: Exception "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c

    .line 372
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_73
    move-exception v4

    .line 374
    .local v4, "re":Landroid/os/RemoteException;
    const-string v5, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string v6, "deliverData: RemoteException "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    nop

    .line 382
    .end local v3    # "helper":Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_7c
    goto :goto_1f

    .line 383
    .end local v2    # "helperList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/DataDeliveryHelper;>;"
    :cond_7d
    monitor-exit v1

    .line 385
    const/4 v0, 0x0

    return v0

    .line 340
    .restart local v2    # "helperList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/DataDeliveryHelper;>;"
    :cond_80
    :goto_80
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v3, :cond_8b

    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string v4, "deliverData: No data delivery herlper entries."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_8b
    monitor-exit v1

    return v0

    .line 383
    .end local v2    # "helperList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/DataDeliveryHelper;>;"
    :catchall_8d
    move-exception v0

    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_6b .. :try_end_8f} :catchall_8d

    throw v0

    .line 330
    :cond_90
    :goto_90
    return v0
.end method

.method protected getRecipientList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/DataDeliveryHelper;",
            ">;"
        }
    .end annotation

    .line 1337
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1339
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    if-nez v1, :cond_e

    .line 1341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    .line 1343
    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 1345
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public initializeHandlerThread()V
    .registers 4

    .line 413
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataDeliveryHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    .line 415
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 417
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    .line 419
    return-void
.end method

.method public removeDataRecipientsForPackage(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 294
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/DataDeliveryHelper;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 300
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/nap/DataDeliveryHelper;>;"
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 302
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    .line 304
    .local v3, "dh":Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 306
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_57

    .line 308
    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "profileName":Ljava/lang/String;
    const-string v5, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeDataRecipientsForPackage: removing recipient for package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 318
    .end local v3    # "dh":Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    .end local v4    # "profileName":Ljava/lang/String;
    :cond_57
    goto :goto_b

    .line 320
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/DataDeliveryHelper;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/nap/DataDeliveryHelper;>;"
    :cond_58
    monitor-exit v0

    .line 322
    return-void

    .line 320
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public removeNAPDataRecipient(Ljava/lang/String;I)V
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "operationUserId"    # I

    .line 268
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->isDataRecipientPresent(Ljava/lang/String;I)I

    move-result v1

    .line 272
    .local v1, "position":I
    if-gez v1, :cond_b

    .line 274
    monitor-exit v0

    return-void

    .line 278
    :cond_b
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v2, :cond_2a

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeNAPDataRecipient: removing recipient for data collection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 286
    nop

    .end local v1    # "position":I
    monitor-exit v0

    .line 288
    return-void

    .line 286
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public terminateHandlerThread()V
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_7

    .line 405
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 407
    :cond_7
    return-void
.end method
