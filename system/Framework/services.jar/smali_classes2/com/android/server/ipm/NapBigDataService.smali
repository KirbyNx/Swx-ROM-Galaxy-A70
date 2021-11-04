.class public Lcom/android/server/ipm/NapBigDataService;
.super Landroid/app/job/JobService;
.source "NapBigDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/NapBigDataService$BigDataRunnable;
    }
.end annotation


# static fields
.field private static final MAPREFS:Ljava/lang/String; = "/data/system/bigdata-pkgaccuracy"

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-NapBigDataService"

.field private static mContext:Landroid/content/Context;

.field private static mPkgAccuracyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static sBigDataService:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 456
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ipm/NapBigDataService;->mContext:Landroid/content/Context;

    .line 457
    sput-object v0, Lcom/android/server/ipm/NapBigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    .line 459
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/ipm/NapBigDataService;

    .line 461
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ipm/NapBigDataService;->sBigDataService:Landroid/content/ComponentName;

    .line 459
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 451
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .line 451
    sget-object v0, Lcom/android/server/ipm/NapBigDataService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPkgAccuracyMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 493
    sget-object v0, Lcom/android/server/ipm/NapBigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static initPkgAccuracyMap()V
    .registers 5

    .line 502
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/bigdata-pkgaccuracy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 504
    const/4 v2, 0x0

    .line 505
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 507
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_f
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 508
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v1

    .line 509
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    sput-object v1, Lcom/android/server/ipm/NapBigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_2e
    .catchall {:try_start_f .. :try_end_23} :catchall_2c

    .line 514
    nop

    .line 515
    :try_start_24
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 517
    nop

    .line 518
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_38

    goto :goto_44

    .line 513
    :catchall_2c
    move-exception v1

    goto :goto_46

    .line 510
    :catch_2e
    move-exception v1

    .line 511
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2c

    .line 514
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_3a

    .line 515
    :try_start_34
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_3a

    .line 520
    :catch_38
    move-exception v1

    goto :goto_40

    .line 517
    :cond_3a
    :goto_3a
    if-eqz v2, :cond_44

    .line 518
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3f} :catch_38

    goto :goto_44

    .line 521
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_40
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 523
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_45

    .line 522
    :cond_44
    :goto_44
    nop

    .line 524
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    :goto_45
    goto :goto_62

    .line 514
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :goto_46
    if-eqz v3, :cond_4e

    .line 515
    :try_start_48
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_4e

    .line 520
    :catch_4c
    move-exception v4

    goto :goto_54

    .line 517
    :cond_4e
    :goto_4e
    if-eqz v2, :cond_58

    .line 518
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_53} :catch_4c

    goto :goto_58

    .line 521
    .local v4, "e":Ljava/lang/Exception;
    :goto_54
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59

    .line 522
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_58
    :goto_58
    nop

    .line 523
    :goto_59
    throw v1

    .line 525
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    :cond_5a
    const-string v1, "PkgPredictorService-NapBigDataService"

    const-string/jumbo v2, "pkgAccuracyMap file not exists"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_62
    return-void
.end method

.method public static savePkgAccuracyMap()V
    .registers 4

    .line 531
    sget-object v0, Lcom/android/server/ipm/NapBigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 532
    const-string v0, "PkgPredictorService-NapBigDataService"

    const-string v1, "Save error: mPkgAccuracyMap == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void

    .line 535
    :cond_c
    const/4 v0, 0x0

    .line 536
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 538
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_e
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/system/bigdata-pkgaccuracy"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 539
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 540
    sget-object v2, Lcom/android/server/ipm/NapBigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 541
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_34
    .catchall {:try_start_e .. :try_end_24} :catchall_32

    .line 546
    nop

    .line 547
    :try_start_25
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 549
    nop

    .line 550
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 554
    :cond_2c
    :goto_2c
    goto :goto_43

    .line 552
    :catch_2d
    move-exception v2

    .line 553
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 555
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_43

    .line 545
    :catchall_32
    move-exception v2

    goto :goto_44

    .line 542
    :catch_34
    move-exception v2

    .line 543
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_35
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_32

    .line 546
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3d

    .line 547
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 549
    :cond_3d
    if-eqz v0, :cond_2c

    .line 550
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_42} :catch_2d

    goto :goto_2c

    .line 556
    :goto_43
    return-void

    .line 546
    :goto_44
    if-eqz v1, :cond_4c

    .line 547
    :try_start_46
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_4c

    .line 552
    :catch_4a
    move-exception v3

    goto :goto_52

    .line 549
    :cond_4c
    :goto_4c
    if-eqz v0, :cond_56

    .line 550
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_51} :catch_4a

    goto :goto_56

    .line 553
    .local v3, "e":Ljava/lang/Exception;
    :goto_52
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_57

    .line 554
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_56
    :goto_56
    nop

    .line 555
    :goto_57
    throw v2
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 572
    sput-object p0, Lcom/android/server/ipm/NapBigDataService;->mContext:Landroid/content/Context;

    .line 573
    invoke-static {}, Lcom/android/server/ipm/NapBigDataService;->initPkgAccuracyMap()V

    .line 575
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 576
    .local v0, "scheduler":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/ipm/NapBigDataService;->sBigDataService:Landroid/content/ComponentName;

    const/16 v3, 0x2582

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 577
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 579
    const-wide/32 v3, 0xf731400

    const-wide/32 v5, 0x5265c00

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 581
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 583
    .local v1, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 584
    sget-boolean v2, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v2, :cond_3d

    const-string v2, "PkgPredictorService-NapBigDataService"

    const-string/jumbo v3, "schedule send bigData job..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_3d
    return-void
.end method

.method public static updatePkgAccuracyMap(Ljava/util/HashMap;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 497
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    sput-object p0, Lcom/android/server/ipm/NapBigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    .line 498
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 561
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ipm/NapBigDataService$BigDataRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ipm/NapBigDataService$BigDataRunnable;-><init>(Lcom/android/server/ipm/NapBigDataService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 562
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 568
    const/4 v0, 0x0

    return v0
.end method
