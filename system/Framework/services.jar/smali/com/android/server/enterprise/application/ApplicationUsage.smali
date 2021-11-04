.class public Lcom/android/server/enterprise/application/ApplicationUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;,
        Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;,
        Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationUsage"

.field private static appBackGroundStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;",
            ">;"
        }
    .end annotation
.end field

.field private static appForeGroundStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;",
            ">;"
        }
    .end annotation
.end field

.field private static mStatsLock:Ljava/lang/Object;

.field private static volatile mUsageHandler:Landroid/os/Handler;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    .line 88
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    .line 89
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_2b

    .line 90
    monitor-enter p0

    .line 91
    :try_start_a
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    move-object v0, v1

    .line 92
    if-nez v0, :cond_26

    .line 93
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MDMAppUsageHandlerThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 95
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage;Landroid/os/Looper;)V

    sput-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    .line 98
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_26
    monitor-exit p0

    goto :goto_2b

    :catchall_28
    move-exception v1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_28

    throw v1

    .line 100
    :cond_2b
    :goto_2b
    return-void
.end method

.method private calculateAvgPerMonth(ILjava/lang/String;I)I
    .registers 16
    .param p1, "launchCount"    # I
    .param p2, "packName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "avg":I
    if-eqz p1, :cond_56

    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, "totalMonth":I
    const/4 v2, 0x0

    .line 569
    .local v2, "installedMonth":I
    const/4 v3, 0x0

    .line 570
    .local v3, "installedYear":I
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 571
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "packStr":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object p2, v4, v5

    .line 574
    .end local v4    # "packStr":[Ljava/lang/String;
    :cond_15
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAppInstallTimeInMiliSec(Ljava/lang/String;I)J

    move-result-wide v4

    .line 575
    .local v4, "installedTime":J
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getFatatoryDataResetTime()J

    move-result-wide v6

    .line 576
    .local v6, "resetTime":J
    cmp-long v8, v4, v6

    if-gez v8, :cond_22

    .line 577
    move-wide v4, v6

    .line 578
    :cond_22
    const-wide/16 v8, -0x1

    cmp-long v8, v8, v4

    if-eqz v8, :cond_30

    .line 579
    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/application/ApplicationUsage;->getMonth(J)I

    move-result v2

    .line 580
    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/application/ApplicationUsage;->getYear(J)I

    move-result v3

    .line 582
    :cond_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/enterprise/application/ApplicationUsage;->getYear(J)I

    move-result v8

    .line 583
    .local v8, "currentYear":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/application/ApplicationUsage;->getMonth(J)I

    move-result v9

    .line 584
    .local v9, "currentMonth":I
    if-eqz v2, :cond_50

    if-eqz v3, :cond_50

    .line 585
    if-le v8, v3, :cond_4b

    .line 586
    sub-int v10, v8, v3

    .line 587
    .local v10, "yearDiff":I
    mul-int/lit8 v11, v10, 0xc

    add-int/2addr v1, v11

    .line 589
    .end local v10    # "yearDiff":I
    :cond_4b
    if-le v9, v2, :cond_50

    .line 590
    sub-int v10, v9, v2

    .line 591
    .local v10, "monthDiff":I
    add-int/2addr v1, v10

    .line 594
    .end local v10    # "monthDiff":I
    :cond_50
    if-eqz v1, :cond_55

    .line 595
    div-int v0, p1, v1

    goto :goto_56

    .line 597
    :cond_55
    move v0, p1

    .line 599
    .end local v1    # "totalMonth":I
    .end local v2    # "installedMonth":I
    .end local v3    # "installedYear":I
    .end local v4    # "installedTime":J
    .end local v6    # "resetTime":J
    .end local v8    # "currentYear":I
    .end local v9    # "currentMonth":I
    :cond_56
    :goto_56
    return v0
.end method

.method private filterUnInstalledApps([Lcom/samsung/android/knox/application/AppInfoLastUsage;II)[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .registers 11
    .param p1, "data"    # [Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .param p2, "count"    # I
    .param p3, "userId"    # I

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    const/4 v1, 0x0

    .line 606
    .local v1, "installedApps":I
    const-string v2, "application_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 608
    .local v2, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    const/4 v3, 0x1

    if-eqz p1, :cond_1f

    .line 609
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, p2, :cond_1f

    .line 610
    aget-object v5, p1, v4

    iget-object v5, v5, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v5

    if-ne v5, v3, :cond_1c

    .line 611
    add-int/lit8 v1, v1, 0x1

    .line 609
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 616
    .end local v4    # "i":I
    :cond_1f
    if-nez v1, :cond_22

    .line 617
    return-object v0

    .line 619
    :cond_22
    new-array v0, v1, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    .line 620
    nop

    .line 621
    const/4 v4, 0x0

    .restart local v4    # "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_27
    if-ge v4, p2, :cond_3c

    .line 622
    aget-object v6, p1, v4

    iget-object v6, v6, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v6

    if-ne v6, v3, :cond_39

    .line 623
    aget-object v6, p1, v4

    aput-object v6, v0, v5

    .line 624
    add-int/lit8 v5, v5, 0x1

    .line 621
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 628
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_3c
    return-object v0
.end method

.method private getAppInstallTimeInMiliSec(Ljava/lang/String;I)J
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 498
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    .line 499
    .local v0, "pm":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 501
    .local v1, "token":J
    const/16 v3, 0x80

    const-wide/16 v4, -0x1

    :try_start_e
    invoke-virtual {v0, p1, v3, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 502
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_20

    .line 503
    const-string v6, "ApplicationUsage"

    const-string v7, "ApplicationUsage::getAppInstallTimeInMiliSec @ fail to get application info"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_32
    .catchall {:try_start_e .. :try_end_1b} :catchall_30

    .line 504
    nop

    .line 514
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 504
    return-wide v4

    .line 506
    :cond_20
    :try_start_20
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 507
    .local v6, "appFile":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v4
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_32
    .catchall {:try_start_20 .. :try_end_2b} :catchall_30

    .line 509
    .local v4, "installedTime":J
    nop

    .line 514
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 509
    return-wide v4

    .line 514
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "installedTime":J
    .end local v6    # "appFile":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    :catchall_30
    move-exception v3

    goto :goto_3b

    .line 510
    :catch_32
    move-exception v3

    .line 511
    .local v3, "e":Ljava/lang/Exception;
    :try_start_33
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    .line 512
    nop

    .line 514
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    return-wide v4

    .line 514
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    throw v3
.end method

.method private getFatatoryDataResetTime()J
    .registers 7

    .line 531
    const-string v0, "factorydatareset"

    .line 532
    .local v0, "date":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs/LastResetDate.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .local v1, "resetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 535
    const/4 v2, 0x0

    .line 537
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_10
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 539
    :goto_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_2d
    .catchall {:try_start_10 .. :try_end_1f} :catchall_2b

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_24

    .line 540
    move-object v0, v4

    goto :goto_1b

    .line 545
    .end local v4    # "line":Ljava/lang/String;
    :cond_24
    nop

    .line 547
    :try_start_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    .line 550
    :goto_28
    goto :goto_3f

    .line 548
    :catch_29
    move-exception v3

    goto :goto_28

    .line 545
    :catchall_2b
    move-exception v3

    goto :goto_37

    .line 542
    :catch_2d
    move-exception v3

    .line 543
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2b

    .line 545
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3f

    .line 547
    :try_start_33
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_29

    goto :goto_28

    .line 545
    :goto_37
    if-eqz v2, :cond_3e

    .line 547
    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 550
    goto :goto_3e

    .line 548
    :catch_3d
    move-exception v4

    .line 552
    :cond_3e
    :goto_3e
    throw v3

    .line 554
    .end local v2    # "in":Ljava/io/BufferedReader;
    :cond_3f
    :goto_3f
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 555
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const-wide/16 v3, 0x0

    .line 557
    .local v3, "time_in_ms":J
    :try_start_48
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J
    :try_end_4f
    .catch Ljava/text/ParseException; {:try_start_48 .. :try_end_4f} :catch_50

    .line 560
    goto :goto_54

    .line 558
    :catch_50
    move-exception v5

    .line 559
    .local v5, "e":Ljava/text/ParseException;
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    .line 561
    .end local v5    # "e":Ljava/text/ParseException;
    :goto_54
    return-wide v3
.end method

.method private getMonth(J)I
    .registers 5
    .param p1, "timeInMilisec"    # J

    .line 519
    const-string v0, "GMT+0"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 520
    .local v0, "lCal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 521
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private getYear(J)I
    .registers 5
    .param p1, "timeInMiliSec"    # J

    .line 525
    const-string v0, "GMT+0"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 526
    .local v0, "lCal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 527
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private updateBackGroundUsageDetails()V
    .registers 17

    .line 305
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    move-object/from16 v6, p0

    iget-object v1, v6, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    .line 306
    .local v0, "appDb":Lcom/android/server/enterprise/application/ApplicationUsageDb;
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-eqz v1, :cond_75

    .line 307
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_75

    .line 308
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 309
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 310
    .local v8, "listPackageToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_23
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 311
    .local v14, "key":Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 313
    .local v15, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    iget-wide v1, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4d

    .line 314
    iget-wide v2, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    iget-wide v4, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    move-object v1, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z

    .line 317
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 319
    :cond_4d
    iget-wide v12, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 319
    move-object v10, v0

    move-object v11, v14

    move-object v3, v14

    move-object v4, v15

    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    .local v3, "key":Ljava/lang/String;
    .local v4, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    move-wide v14, v1

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z

    .line 322
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    :goto_5b
    goto :goto_23

    .line 324
    :cond_5c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_75

    .line 325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_63
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_75

    .line 326
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 331
    .end local v1    # "i":I
    .end local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "listPackageToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_75
    return-void
.end method

.method private updateForeGroundUsageData()V
    .registers 19

    .line 277
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    move-object/from16 v7, p0

    iget-object v1, v7, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, "appDb":Lcom/android/server/enterprise/application/ApplicationUsageDb;
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    if-eqz v1, :cond_79

    .line 279
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    .line 280
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 281
    .local v8, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 283
    .local v9, "listPackageToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_23
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 284
    .local v14, "key":Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 285
    .local v15, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    iget-wide v1, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4f

    .line 286
    iget v2, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iget-wide v3, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    iget-wide v5, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    move-object v1, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z

    .line 288
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 290
    :cond_4f
    iget v13, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iget-wide v1, v15, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 290
    move-object v11, v0

    move-object v12, v14

    move-object v3, v14

    move-object v4, v15

    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    .local v3, "key":Ljava/lang/String;
    .local v4, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    move-wide v14, v1

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z

    .line 293
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    :goto_5f
    goto :goto_23

    .line 295
    :cond_60
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_79

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_67
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_79

    .line 297
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 302
    .end local v1    # "i":I
    .end local v8    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "listPackageToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_79
    return-void
.end method

.method private updateNetworkUsage()V
    .registers 2

    .line 272
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 273
    .local v0, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateDataUsageDb()V

    .line 274
    return-void
.end method


# virtual methods
.method public _appLaunchCount(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    if-nez v1, :cond_9

    .line 164
    monitor-exit v0

    return-void

    .line 167
    :cond_9
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 168
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 169
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 170
    .local v1, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    iget v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 172
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 174
    .end local v1    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    goto :goto_41

    .line 175
    :cond_2a
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage$1;)V

    .line 176
    .restart local v1    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    iget v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 178
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v1    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    :goto_41
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public _appPauseTime(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 189
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 191
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 192
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 193
    .local v1, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 196
    .end local v1    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    :cond_19
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public _appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .registers 9
    .param p1, "lServiceInfo"    # Landroid/app/ActivityManager$RunningServiceInfo;

    .line 204
    if-eqz p1, :cond_72

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-nez v0, :cond_7

    goto :goto_72

    .line 210
    :cond_7
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v0, :cond_10

    iget v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v0, :cond_10

    .line 211
    return-void

    .line 216
    :cond_10
    iget v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_17

    .line 217
    return-void

    .line 219
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_3a
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 222
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 223
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 224
    .local v2, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    iget-wide v3, v2, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_59

    .line 225
    nop

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 227
    :cond_59
    iput-wide v5, v2, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 228
    .end local v2    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    goto :goto_6d

    .line 229
    :cond_5c
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage$1;)V

    .line 230
    .restart local v2    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 231
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v2    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    :goto_6d
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_6f
    move-exception v2

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_3a .. :try_end_71} :catchall_6f

    throw v2

    .line 205
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_72
    :goto_72
    return-void
.end method

.method public _appServiceStopTime(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 242
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-nez v1, :cond_9

    .line 244
    monitor-exit v0

    return-void

    .line 246
    :cond_9
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 247
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 248
    .local v1, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 250
    .end local v1    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    :cond_1f
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public _insertToAppControlDB()V
    .registers 4

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating Usage Statistics in DB @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationUsage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :try_start_1a
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_2b

    .line 261
    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateForeGroundUsageData()V

    .line 262
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateBackGroundUsageDetails()V

    .line 263
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateNetworkUsage()V

    .line 264
    monitor-exit v0

    .line 267
    goto :goto_2f

    .line 264
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    .end local p0    # "this":Lcom/android/server/enterprise/application/ApplicationUsage;
    :try_start_2a
    throw v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_2b

    .line 265
    .restart local p0    # "this":Lcom/android/server/enterprise/application/ApplicationUsage;
    :catch_2b
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Done Updating Usage Statistics in DB @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationUsage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method public appLaunchCount(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method public appPauseTime(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    return-void
.end method

.method public appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .registers 4
    .param p1, "lServiceInfo"    # Landroid/app/ActivityManager$RunningServiceInfo;

    .line 200
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 201
    return-void
.end method

.method public appServiceStopTime(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method

.method public deletePackageFromDb(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 480
    const-string v2, "ApplicationPolicy"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceCallingOrSelfPermissions(Ljava/util/List;Ljava/lang/String;)V

    .line 484
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllAppLastUsage(I)[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .registers 15
    .param p1, "userId"    # I

    .line 338
    const-string v0, ":"

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->_insertToAppControlDB()V

    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/application/AppInfoLastUsage;>;"
    const/4 v2, 0x0

    .line 341
    .local v2, "data":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    const/4 v3, 0x0

    .line 342
    .local v3, "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    const/4 v4, 0x0

    .line 345
    .local v4, "i":I
    :try_start_9
    new-instance v5, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppUsageData()Ljava/util/HashMap;

    move-result-object v5

    move-object v1, v5

    .line 346
    if-eqz v1, :cond_69

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_69

    .line 347
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 348
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v6, v6, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-object v2, v6

    .line 349
    const/4 v6, 0x0

    .line 350
    .local v6, "pkgUserId":I
    const/4 v7, 0x0

    .line 351
    .local v7, "keyString":[Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_69

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 352
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_4f

    .line 353
    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 354
    aget-object v10, v7, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v6, v10

    goto :goto_54

    .line 357
    :cond_4f
    new-array v10, v12, [Ljava/lang/String;

    move-object v7, v10

    .line 358
    aput-object v9, v7, v11

    .line 360
    :goto_54
    if-eq v6, p1, :cond_57

    .line 361
    goto :goto_2e

    .line 363
    :cond_57
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    aput-object v10, v2, v4

    .line 364
    aget-object v10, v2, v4

    aget-object v11, v7, v11

    iput-object v11, v10, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    .line 365
    nop

    .end local v9    # "key":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 366
    goto :goto_2e

    .line 368
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "pkgUserId":I
    .end local v7    # "keyString":[Ljava/lang/String;
    :cond_69
    if-eqz v2, :cond_70

    .line 369
    invoke-direct {p0, v2, v4, p1}, Lcom/android/server/enterprise/application/ApplicationUsage;->filterUnInstalledApps([Lcom/samsung/android/knox/application/AppInfoLastUsage;II)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-result-object v0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6f} :catch_72

    move-object v3, v0

    .line 373
    :cond_70
    nop

    .line 374
    return-object v3

    .line 370
    :catch_72
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    const/4 v5, 0x0

    return-object v5
.end method

.method public getAvgNoAppUsagePerMonth(I)[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .registers 22
    .param p1, "userId"    # I

    .line 378
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    .line 379
    .local v3, "data":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    const/4 v4, 0x0

    .line 380
    .local v4, "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    const/4 v5, 0x0

    .line 381
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 382
    .local v6, "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 383
    .local v7, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->_insertToAppControlDB()V

    .line 386
    :try_start_c
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_1b4

    .line 387
    :try_start_f
    const-string/jumbo v0, "getAvgNoUsagePerMonthOfApp=================="

    const-string v9, "called"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    .line 389
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 390
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v9
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_1ab

    .line 391
    .local v9, "size":I
    if-eqz v9, :cond_58

    .line 392
    :try_start_29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_58

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 393
    .local v11, "key":Ljava/lang/String;
    sget-object v12, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 394
    .local v12, "pus":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    iget v13, v12, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    if-eqz v13, :cond_52

    .line 395
    iget v13, v12, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    invoke-direct {v1, v13, v11, v2}, Lcom/android/server/enterprise/application/ApplicationUsage;->calculateAvgPerMonth(ILjava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_29 .. :try_end_52} :catchall_53

    .line 396
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "pus":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    :cond_52
    goto :goto_2d

    .line 466
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "size":I
    :catchall_53
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_1ae

    .line 398
    .restart local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "size":I
    :cond_58
    :try_start_58
    new-instance v10, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v11, v1, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getLaunchCountOfAllApplication()Ljava/util/HashMap;

    move-result-object v10

    move-object v6, v10

    .line 400
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_1ab

    if-nez v10, :cond_137

    .line 401
    if-eqz v6, :cond_c5

    .line 402
    :try_start_6c
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c5

    .line 403
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 404
    .local v10, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 405
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v5, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_af

    .line 406
    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 407
    .local v15, "count":I
    invoke-virtual {v5, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int v16, v15, v16

    .line 409
    .local v16, "totalCount":I
    if-eqz v16, :cond_ae

    .line 410
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .end local v15    # "count":I
    .end local v16    # "totalCount":I
    :cond_ae
    goto :goto_c4

    .line 412
    :cond_af
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_c4

    .line 413
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v5, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c4
    .catchall {:try_start_6c .. :try_end_c4} :catchall_53

    .line 415
    .end local v14    # "key":Ljava/lang/String;
    :cond_c4
    :goto_c4
    goto :goto_7a

    .line 418
    .end local v10    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c5
    :try_start_c5
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 419
    .restart local v10    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v11

    new-array v11, v11, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-object v3, v11

    .line 420
    const/4 v11, 0x0

    .line 421
    .local v11, "pkgUserId":I
    const/4 v13, 0x0

    .line 422
    .local v13, "keyString":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_131

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 423
    .local v15, "key":Ljava/lang/String;
    const-string v12, ":"

    invoke-virtual {v15, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_e8
    .catchall {:try_start_c5 .. :try_end_e8} :catchall_1ab

    if-eqz v12, :cond_fc

    .line 424
    :try_start_ea
    const-string v12, ":"

    invoke-virtual {v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 425
    .end local v13    # "keyString":[Ljava/lang/String;
    .local v12, "keyString":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v18, v12, v13

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_f7
    .catchall {:try_start_ea .. :try_end_f7} :catchall_53

    move v11, v13

    move-object/from16 v18, v0

    move-object v13, v12

    goto :goto_105

    .line 428
    .end local v12    # "keyString":[Ljava/lang/String;
    .restart local v13    # "keyString":[Ljava/lang/String;
    :cond_fc
    move-object/from16 v18, v0

    const/4 v12, 0x1

    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v18, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_ff
    new-array v0, v12, [Ljava/lang/String;

    .line 429
    .end local v13    # "keyString":[Ljava/lang/String;
    .local v0, "keyString":[Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v15, v0, v12

    move-object v13, v0

    .line 431
    .end local v0    # "keyString":[Ljava/lang/String;
    .restart local v13    # "keyString":[Ljava/lang/String;
    :goto_105
    if-eq v11, v2, :cond_10a

    .line 432
    move-object/from16 v0, v18

    goto :goto_d6

    .line 433
    :cond_10a
    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 434
    .local v0, "count":I
    new-instance v12, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    invoke-direct {v12}, Lcom/samsung/android/knox/application/AppInfoLastUsage;-><init>()V

    aput-object v12, v3, v7

    .line 435
    aget-object v12, v3, v7
    :try_end_11d
    .catchall {:try_start_ff .. :try_end_11d} :catchall_1ab

    move-object/from16 v19, v4

    const/16 v17, 0x0

    .end local v4    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .local v19, "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    :try_start_121
    aget-object v4, v13, v17

    iput-object v4, v12, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    .line 436
    aget-object v4, v3, v7

    iput v0, v4, Lcom/samsung/android/knox/application/AppInfoLastUsage;->launchCountPerMonth:I

    .line 437
    nop

    .end local v0    # "count":I
    .end local v15    # "key":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    .line 438
    move-object/from16 v0, v18

    move-object/from16 v4, v19

    goto :goto_d6

    .line 422
    .end local v18    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    :cond_131
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    .line 439
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .end local v10    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "pkgUserId":I
    .end local v13    # "keyString":[Ljava/lang/String;
    .restart local v18    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    goto/16 :goto_1a4

    .line 440
    .end local v18    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .restart local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    :cond_137
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .restart local v18    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    if-eqz v6, :cond_1a4

    .line 441
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a4

    .line 442
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 443
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-object v3, v4

    .line 444
    const/4 v4, 0x0

    .line 445
    .local v4, "pkgUserId":I
    const/4 v10, 0x0

    .line 446
    .local v10, "keyString":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_154
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 447
    .local v12, "key":Ljava/lang/String;
    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_179

    .line 448
    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 449
    const/4 v13, 0x1

    aget-object v14, v10, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v4, v13

    const/4 v13, 0x1

    goto :goto_180

    .line 452
    :cond_179
    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    move-object v10, v14

    .line 453
    const/4 v14, 0x0

    aput-object v12, v10, v14

    .line 455
    :goto_180
    if-eq v4, v2, :cond_183

    .line 456
    goto :goto_154

    .line 457
    :cond_183
    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 458
    .local v14, "count":I
    new-instance v15, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    invoke-direct {v15}, Lcom/samsung/android/knox/application/AppInfoLastUsage;-><init>()V

    aput-object v15, v3, v7

    .line 459
    aget-object v15, v3, v7

    const/16 v16, 0x0

    aget-object v13, v10, v16

    iput-object v13, v15, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    .line 460
    aget-object v13, v3, v7

    iput v14, v13, Lcom/samsung/android/knox/application/AppInfoLastUsage;->launchCountPerMonth:I

    .line 461
    nop

    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "count":I
    add-int/lit8 v7, v7, 0x1

    .line 462
    goto :goto_154

    .line 466
    .end local v0    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "pkgUserId":I
    .end local v9    # "size":I
    .end local v10    # "keyString":[Ljava/lang/String;
    .end local v18    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1a4
    :goto_1a4
    monitor-exit v8
    :try_end_1a5
    .catchall {:try_start_121 .. :try_end_1a5} :catchall_1b2

    .line 467
    :try_start_1a5
    invoke-direct {v1, v3, v7, v2}, Lcom/android/server/enterprise/application/ApplicationUsage;->filterUnInstalledApps([Lcom/samsung/android/knox/application/AppInfoLastUsage;II)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-result-object v0
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1a9} :catch_1b0

    .line 473
    .end local v19    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .local v0, "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    nop

    .line 474
    return-object v0

    .line 466
    .end local v0    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .local v4, "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    :catchall_1ab
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .restart local v19    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    :goto_1ae
    :try_start_1ae
    monitor-exit v8
    :try_end_1af
    .catchall {:try_start_1ae .. :try_end_1af} :catchall_1b2

    .end local v3    # "data":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    .end local v19    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .end local p0    # "this":Lcom/android/server/enterprise/application/ApplicationUsage;
    .end local p1    # "userId":I
    :try_start_1af
    throw v0
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1b0} :catch_1b0

    .line 469
    .restart local v3    # "data":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "i":I
    .restart local v19    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .restart local p0    # "this":Lcom/android/server/enterprise/application/ApplicationUsage;
    .restart local p1    # "userId":I
    :catch_1b0
    move-exception v0

    goto :goto_1b7

    .line 466
    :catchall_1b2
    move-exception v0

    goto :goto_1ae

    .line 469
    .end local v19    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .restart local v4    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    :catch_1b4
    move-exception v0

    move-object/from16 v19, v4

    .line 470
    .end local v4    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "data1":[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    :goto_1b7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v8, "ApplicationUsage::getAvgNoAppUsagePerMonth"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v4, 0x0

    return-object v4
.end method

.method public getLastUsageTime(Ljava/lang/String;)J
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 334
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public insertToAppControlDB()V
    .registers 3

    .line 254
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 255
    return-void
.end method
