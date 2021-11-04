.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageWatchdog:Lcom/android/server/PackageWatchdog;

.field private final mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/PackageWatchdog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "watchdog"    # Lcom/android/server/PackageWatchdog;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 110
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 115
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 125
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 130
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 131
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 132
    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 133
    return-void
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 780
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 781
    return-object v1

    .line 784
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-nez v0, :cond_17

    .line 785
    return-object v1

    .line 788
    :cond_17
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 789
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 790
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 791
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 792
    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 793
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_3a

    move v1, v2

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 795
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v1

    if-nez v1, :cond_71

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_48

    goto :goto_71

    .line 798
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 799
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 800
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 802
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 803
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 804
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_75

    .line 796
    :cond_71
    :goto_71
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 797
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 807
    :cond_75
    :goto_75
    return-object v0
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .registers 31
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "timeMillis"    # J
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I

    .line 696
    move-object/from16 v10, p1

    if-eqz v10, :cond_7

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move-object v3, v0

    .line 697
    .local v3, "name":Ljava/lang/String;
    if-eqz v10, :cond_f

    iget v0, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    move v4, v0

    goto :goto_11

    :cond_f
    move/from16 v4, p8

    .line 698
    .local v4, "pid":I
    :goto_11
    if-eqz v10, :cond_19

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v9, v0

    goto :goto_1b

    :cond_19
    move/from16 v9, p9

    .line 700
    .local v9, "uid":I
    :goto_1b
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v15, p2

    iget-object v14, v15, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    new-instance v20, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/-$$Lambda$AppErrors$Ziph9zXnTzhEV6frMYJe_IEvvfY;-><init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v13, v3

    move-object v0, v14

    move v14, v4

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, v0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/wm/ActivityTaskManagerInternal;->handleAppCrashInActivityController(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private killAppImmediateLocked(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reasonCode"    # I
    .param p3, "subReason"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "killReason"    # Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setCrashing(Z)V

    .line 361
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 362
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 363
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 364
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_24

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_24

    .line 365
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 367
    const/4 v0, 0x1

    invoke-virtual {p1, p5, p2, p3, v0}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 369
    :cond_24
    return-void
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 727
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setCrashing(Z)V

    .line 728
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 730
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->startAppProblemLocked()V

    .line 731
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 732
    const-string v3, "force-crash"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    return v0
.end method

.method private stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1001
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 1002
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 1004
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1005
    return-void
.end method


# virtual methods
.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 295
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 296
    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 438
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 439
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 441
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 443
    .local v2, "origId":J
    :try_start_c
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 445
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 446
    nop

    .line 447
    return-void

    .line 445
    :catchall_14
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 446
    throw v4
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .registers 60
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 451
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 452
    .local v9, "timeMillis":J
    iget-object v15, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 453
    .local v15, "shortMsg":Ljava/lang/String;
    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 454
    .local v0, "longMsg":Ljava/lang/String;
    iget-object v7, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 455
    .local v7, "stackTrace":Ljava/lang/String;
    if-eqz v15, :cond_2d

    if-eqz v0, :cond_2d

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_35

    .line 457
    :cond_2d
    if-eqz v15, :cond_33

    .line 458
    move-object v0, v15

    move-object/from16 v16, v0

    goto :goto_35

    .line 457
    :cond_33
    move-object/from16 v16, v0

    .line 462
    .end local v0    # "longMsg":Ljava/lang/String;
    .local v16, "longMsg":Ljava/lang/String;
    :goto_35
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    const/4 v8, 0x3

    if-eqz v0, :cond_4f

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_4f

    if-eqz v12, :cond_4f

    .line 464
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0x22b

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/am/ActivityManagerService;->sendAppStateMsg(ILjava/lang/String;II)V

    .line 473
    :cond_4f
    if-nez v12, :cond_5f

    .line 474
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne v0, v14, :cond_5b

    .line 476
    const-string/jumbo v0, "system_server"

    .local v0, "processName":Ljava/lang/String;
    goto :goto_61

    .line 478
    .end local v0    # "processName":Ljava/lang/String;
    :cond_5b
    const-string/jumbo v0, "unknown"

    .restart local v0    # "processName":Ljava/lang/String;
    goto :goto_61

    .line 481
    .end local v0    # "processName":Ljava/lang/String;
    :cond_5f
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 483
    .restart local v0    # "processName":Ljava/lang/String;
    :goto_61
    const/4 v6, 0x0

    if-nez v12, :cond_67

    move/from16 v32, v6

    goto :goto_6b

    :cond_67
    iget v1, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v32, v1

    .line 484
    .local v32, "userId":I
    :goto_6b
    const/16 v25, 0x3

    const/16 v26, 0x5

    const/16 v27, 0x0

    .line 485
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "crashed due to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 484
    const-string v29, "AppErrors"

    const-string v31, ""

    invoke-static/range {v25 .. v32}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 489
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    iget-object v3, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v20, "crash"

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    move/from16 v19, v32

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 494
    .end local v0    # "processName":Ljava/lang/String;
    .end local v32    # "userId":I
    const/4 v0, 0x5

    if-eqz v12, :cond_eb

    .line 495
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v2, "com.android.systemui:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d2

    .line 496
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 500
    :cond_d2
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    if-eqz v13, :cond_e4

    iget-object v2, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 501
    const-string v3, "Native crash"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 502
    move v2, v0

    goto :goto_e5

    .line 503
    :cond_e4
    const/4 v2, 0x4

    :goto_e5
    nop

    .line 500
    const-string v3, "crash"

    invoke-virtual {v1, v12, v2, v6, v3}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 508
    :cond_eb
    if-eqz v12, :cond_f6

    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    move-result v1

    goto :goto_f7

    :cond_f6
    move v1, v6

    :goto_f7
    move v5, v1

    .line 511
    .local v5, "relaunchReason":I
    new-instance v1, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v1}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object v4, v1

    .line 513
    .local v4, "result":Lcom/android/server/am/AppErrorResult;
    iget-object v3, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_101
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 514
    iget-object v1, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    const-string v2, "Native crash"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_10c
    .catchall {:try_start_101 .. :try_end_10c} :catchall_3ce

    if-nez v1, :cond_146

    .line 515
    :try_start_10e
    new-instance v1, Landroid/os/BugreportParams;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroid/os/BugreportParams;-><init>(I)V

    .line 516
    .local v1, "sys_error":Landroid/os/BugreportParams;
    new-instance v2, Landroid/os/BugreportParams;

    const/16 v6, 0xc

    invoke-direct {v2, v6}, Landroid/os/BugreportParams;-><init>(I)V

    .line 518
    .local v2, "app_error":Landroid/os/BugreportParams;
    if-nez v12, :cond_12d

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v6, v14, :cond_12d

    .line 519
    const-string/jumbo v6, "system_server"

    iget-object v8, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v8}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_146

    .line 521
    :cond_12d
    if-nez v12, :cond_131

    const/4 v6, 0x0

    goto :goto_135

    :cond_131
    iget-object v6, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_135
    iget-object v8, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v8}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_13a
    .catchall {:try_start_10e .. :try_end_13a} :catchall_13b

    goto :goto_146

    .line 605
    .end local v1    # "sys_error":Landroid/os/BugreportParams;
    .end local v2    # "app_error":Landroid/os/BugreportParams;
    :catchall_13b
    move-exception v0

    move-object/from16 v19, v3

    move v14, v5

    move-object/from16 v17, v7

    move-wide v2, v9

    move-object v1, v13

    move-object v13, v4

    goto/16 :goto_3d7

    .line 529
    :cond_146
    :goto_146
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    move-object/from16 v3, p2

    move-object v8, v4

    .end local v4    # "result":Lcom/android/server/am/AppErrorResult;
    .local v8, "result":Lcom/android/server/am/AppErrorResult;
    move-object v4, v15

    move v6, v5

    .end local v5    # "relaunchReason":I
    .local v6, "relaunchReason":I
    move-object/from16 v5, v16

    move v14, v6

    const/4 v13, 0x0

    .end local v6    # "relaunchReason":I
    .local v14, "relaunchReason":I
    move-object v6, v7

    move-object/from16 v17, v7

    move-object v13, v8

    .end local v7    # "stackTrace":Ljava/lang/String;
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .local v13, "result":Lcom/android/server/am/AppErrorResult;
    .local v17, "stackTrace":Ljava/lang/String;
    move-wide v7, v9

    move-wide/from16 v33, v9

    .end local v9    # "timeMillis":J
    .local v33, "timeMillis":J
    move/from16 v9, p3

    move/from16 v10, p4

    :try_start_160
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v1
    :try_end_164
    .catchall {:try_start_160 .. :try_end_164} :catchall_3c8

    if-eqz v1, :cond_172

    .line 531
    :try_start_166
    monitor-exit v19
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_16b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 605
    :catchall_16b
    move-exception v0

    move-object/from16 v1, p2

    move-wide/from16 v2, v33

    goto/16 :goto_3d7

    .line 536
    :cond_172
    const/4 v7, 0x2

    if-ne v14, v7, :cond_17a

    .line 537
    :try_start_175
    monitor-exit v19
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_16b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 544
    :cond_17a
    if-eqz v12, :cond_187

    :try_start_17c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v1

    if-eqz v1, :cond_187

    .line 545
    monitor-exit v19
    :try_end_183
    .catchall {:try_start_17c .. :try_end_183} :catchall_16b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 549
    :cond_187
    if-eqz v12, :cond_194

    .line 550
    :try_start_189
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V

    .line 554
    :cond_194
    if-eqz v12, :cond_223

    iget v1, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_223

    .line 556
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crash : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.sdhms.action.CRASH_ANR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.sdhms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string/jumbo v2, "pkgName"

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string/jumbo v2, "userId"

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    const-string/jumbo v2, "uid"

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    const-string/jumbo v2, "type"

    const-string v3, "crash"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-string v3, "com.samsung.permission.WRITE_SDHMS_DATA"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v45

    const/16 v46, -0x1

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    sget v50, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v51, 0x3e8

    .line 565
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v52

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v53

    const/16 v54, -0x1

    .line 563
    move-object/from16 v35, v2

    move-object/from16 v39, v1

    invoke-virtual/range {v35 .. v54}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 572
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_223
    if-eqz v12, :cond_242

    .line 574
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 575
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_242

    .line 576
    new-instance v2, Landroid/content/Intent;

    const-string v3, "appbooster.ACTION_ERROR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.appbooster"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    iget-object v3, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_242
    .catchall {:try_start_189 .. :try_end_242} :catchall_16b

    .line 583
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_242
    :try_start_242
    new-instance v1, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v1}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    move-object v8, v1

    .line 584
    .local v8, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iput-object v13, v8, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 585
    iput-object v12, v8, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 589
    if-eqz v12, :cond_3bf

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_264

    move-object/from16 v1, p2

    move-wide/from16 v2, v33

    goto/16 :goto_3c3

    .line 599
    :cond_264
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 600
    .local v1, "msg":Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v1, Landroid/os/Message;->what:I

    .line 602
    iget v2, v8, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    move v10, v2

    .line 603
    .local v10, "taskId":I
    iput-object v8, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 604
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 605
    nop

    .end local v1    # "msg":Landroid/os/Message;
    .end local v8    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    monitor-exit v19
    :try_end_279
    .catchall {:try_start_242 .. :try_end_279} :catchall_3c8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 607
    invoke-virtual {v13}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v1

    .line 609
    .local v1, "res":I
    const/4 v8, 0x0

    .line 610
    .local v8, "appErrorIntent":Landroid/content/Intent;
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v3, 0x13c

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 611
    const/4 v2, 0x6

    if-eq v1, v2, :cond_291

    const/4 v2, 0x7

    if-ne v1, v2, :cond_28f

    goto :goto_291

    :cond_28f
    move v6, v1

    goto :goto_293

    .line 612
    :cond_291
    :goto_291
    const/4 v1, 0x1

    move v6, v1

    .line 615
    .end local v1    # "res":I
    .local v6, "res":I
    :goto_293
    iget-object v5, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_296
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_299
    .catchall {:try_start_296 .. :try_end_299} :catchall_3b0

    .line 616
    if-ne v6, v0, :cond_2a9

    .line 617
    :try_start_29b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    :try_end_29e
    .catchall {:try_start_29b .. :try_end_29e} :catchall_29f

    goto :goto_2a9

    .line 661
    :catchall_29f
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v21, v5

    move v7, v6

    move-wide/from16 v2, v33

    goto/16 :goto_3b8

    .line 619
    :cond_2a9
    :goto_2a9
    const/4 v4, 0x3

    if-ne v6, v4, :cond_2f6

    .line 620
    :try_start_2ac
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/16 v19, 0x4

    const-string v20, "crash"
    :try_end_2b6
    .catchall {:try_start_2ac .. :try_end_2b6} :catchall_2ec

    move-object/from16 v2, p1

    move v4, v0

    move-object/from16 v21, v5

    move/from16 v5, v19

    move v7, v6

    .end local v6    # "res":I
    .local v7, "res":I
    move-object/from16 v6, v20

    :try_start_2c0
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    :try_end_2c3
    .catchall {:try_start_2c0 .. :try_end_2c3} :catchall_332

    .line 622
    const/4 v0, -0x1

    if-eq v10, v0, :cond_2f9

    .line 624
    :try_start_2c6
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 625
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 624
    invoke-virtual {v0, v10, v1}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_2d3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c6 .. :try_end_2d3} :catch_2d4
    .catchall {:try_start_2c6 .. :try_end_2d3} :catchall_332

    .line 630
    goto :goto_2f9

    .line 626
    :catch_2d4
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2d5
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not restart taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f9

    .line 661
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "res":I
    .restart local v6    # "res":I
    :catchall_2ec
    move-exception v0

    move-object/from16 v21, v5

    move v7, v6

    move-object/from16 v1, p2

    move-wide/from16 v2, v33

    .end local v6    # "res":I
    .restart local v7    # "res":I
    goto/16 :goto_3b8

    .line 619
    .end local v7    # "res":I
    .restart local v6    # "res":I
    :cond_2f6
    move-object/from16 v21, v5

    move v7, v6

    .line 633
    .end local v6    # "res":I
    .restart local v7    # "res":I
    :cond_2f9
    :goto_2f9
    if-ne v7, v9, :cond_339

    .line 634
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_2ff
    .catchall {:try_start_2d5 .. :try_end_2ff} :catchall_332

    move-wide/from16 v19, v0

    .line 637
    .local v19, "orig":J
    :try_start_301
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 638
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_328

    .line 639
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v6, "crash"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 641
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_328
    .catchall {:try_start_301 .. :try_end_328} :catchall_32c

    .line 644
    :cond_328
    :try_start_328
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    goto :goto_339

    .line 644
    :catchall_32c
    move-exception v0

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    nop

    .end local v7    # "res":I
    .end local v8    # "appErrorIntent":Landroid/content/Intent;
    .end local v10    # "taskId":I
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v14    # "relaunchReason":I
    .end local v15    # "shortMsg":Ljava/lang/String;
    .end local v16    # "longMsg":Ljava/lang/String;
    .end local v17    # "stackTrace":Ljava/lang/String;
    .end local v33    # "timeMillis":J
    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local p3    # "callingPid":I
    .end local p4    # "callingUid":I
    throw v0

    .line 661
    .end local v19    # "orig":J
    .restart local v7    # "res":I
    .restart local v8    # "appErrorIntent":Landroid/content/Intent;
    .restart local v10    # "taskId":I
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v14    # "relaunchReason":I
    .restart local v15    # "shortMsg":Ljava/lang/String;
    .restart local v16    # "longMsg":Ljava/lang/String;
    .restart local v17    # "stackTrace":Ljava/lang/String;
    .restart local v33    # "timeMillis":J
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local p3    # "callingPid":I
    .restart local p4    # "callingUid":I
    :catchall_332
    move-exception v0

    move-object/from16 v1, p2

    move-wide/from16 v2, v33

    goto/16 :goto_3b8

    .line 647
    :cond_339
    :goto_339
    const/16 v0, 0x8

    if-ne v7, v0, :cond_367

    .line 648
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 650
    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_367
    .catchall {:try_start_328 .. :try_end_367} :catchall_332

    .line 652
    :cond_367
    const/4 v1, 0x2

    if-ne v7, v1, :cond_374

    .line 653
    move-object/from16 v1, p2

    move-wide/from16 v2, v33

    .end local v33    # "timeMillis":J
    .local v2, "timeMillis":J
    :try_start_36e
    invoke-virtual {v11, v12, v2, v3, v1}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v0

    move-object v8, v0

    .end local v8    # "appErrorIntent":Landroid/content/Intent;
    .local v0, "appErrorIntent":Landroid/content/Intent;
    goto :goto_378

    .line 652
    .end local v0    # "appErrorIntent":Landroid/content/Intent;
    .end local v2    # "timeMillis":J
    .restart local v8    # "appErrorIntent":Landroid/content/Intent;
    .restart local v33    # "timeMillis":J
    :cond_374
    move-object/from16 v1, p2

    move-wide/from16 v2, v33

    .line 655
    .end local v33    # "timeMillis":J
    .restart local v2    # "timeMillis":J
    :goto_378
    if-eqz v12, :cond_394

    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_394

    const/4 v4, 0x3

    if-eq v7, v4, :cond_394

    .line 658
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 659
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 658
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 661
    :cond_394
    monitor-exit v21
    :try_end_395
    .catchall {:try_start_36e .. :try_end_395} :catchall_3bd

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 663
    if-eqz v8, :cond_3af

    .line 665
    :try_start_39a
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3a6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_39a .. :try_end_3a6} :catch_3a7

    .line 668
    goto :goto_3af

    .line 666
    :catch_3a7
    move-exception v0

    .line 667
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "ActivityManager"

    const-string v5, "bug report receiver dissappeared"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3af
    :goto_3af
    return-void

    .line 661
    .end local v2    # "timeMillis":J
    .end local v7    # "res":I
    .restart local v6    # "res":I
    .restart local v33    # "timeMillis":J
    :catchall_3b0
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v21, v5

    move v7, v6

    move-wide/from16 v2, v33

    .end local v6    # "res":I
    .end local v33    # "timeMillis":J
    .restart local v2    # "timeMillis":J
    .restart local v7    # "res":I
    :goto_3b8
    :try_start_3b8
    monitor-exit v21
    :try_end_3b9
    .catchall {:try_start_3b8 .. :try_end_3b9} :catchall_3bd

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3bd
    move-exception v0

    goto :goto_3b8

    .line 589
    .end local v2    # "timeMillis":J
    .end local v7    # "res":I
    .end local v10    # "taskId":I
    .local v8, "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v33    # "timeMillis":J
    :cond_3bf
    move-object/from16 v1, p2

    move-wide/from16 v2, v33

    .line 590
    .end local v33    # "timeMillis":J
    .restart local v2    # "timeMillis":J
    :goto_3c3
    :try_start_3c3
    monitor-exit v19
    :try_end_3c4
    .catchall {:try_start_3c3 .. :try_end_3c4} :catchall_3dc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 605
    .end local v2    # "timeMillis":J
    .end local v8    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v33    # "timeMillis":J
    :catchall_3c8
    move-exception v0

    move-object/from16 v1, p2

    move-wide/from16 v2, v33

    .end local v33    # "timeMillis":J
    .restart local v2    # "timeMillis":J
    goto :goto_3d7

    .end local v2    # "timeMillis":J
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v14    # "relaunchReason":I
    .end local v17    # "stackTrace":Ljava/lang/String;
    .restart local v4    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v5    # "relaunchReason":I
    .local v7, "stackTrace":Ljava/lang/String;
    .restart local v9    # "timeMillis":J
    :catchall_3ce
    move-exception v0

    move-object/from16 v19, v3

    move v14, v5

    move-object/from16 v17, v7

    move-wide v2, v9

    move-object v1, v13

    move-object v13, v4

    .end local v4    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v5    # "relaunchReason":I
    .end local v7    # "stackTrace":Ljava/lang/String;
    .end local v9    # "timeMillis":J
    .restart local v2    # "timeMillis":J
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v14    # "relaunchReason":I
    .restart local v17    # "stackTrace":Ljava/lang/String;
    :goto_3d7
    :try_start_3d7
    monitor-exit v19
    :try_end_3d8
    .catchall {:try_start_3d7 .. :try_end_3d8} :catchall_3dc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3dc
    move-exception v0

    goto :goto_3d7
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 767
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 768
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-nez v0, :cond_8

    .line 769
    const/4 v1, 0x0

    return-object v1

    .line 771
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 773
    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 774
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 775
    return-object v1
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .registers 31
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 137
    return-void

    .line 140
    :cond_1f
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 141
    .local v3, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 142
    .local v5, "now":J
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 144
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    if-nez v7, :cond_107

    .line 145
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 146
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 147
    .local v8, "procCount":I
    const/4 v9, 0x0

    .local v9, "ip":I
    :goto_50
    if-ge v9, v8, :cond_ff

    .line 148
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 149
    .local v10, "ctoken":J
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Ljava/lang/String;

    .line 150
    .local v14, "pname":Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 151
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    move-wide/from16 v19, v5

    .end local v5    # "now":J
    .local v19, "now":J
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 153
    .local v5, "uidCount":I
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 154
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6e
    if-ge v6, v5, :cond_e3

    .line 155
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 156
    .local v12, "puid":I
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v13

    invoke-virtual {v13, v14, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 157
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_a0

    if-eqz v13, :cond_96

    move/from16 v16, v5

    .end local v5    # "uidCount":I
    .local v16, "uidCount":I
    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a2

    .line 158
    move-wide/from16 v24, v3

    move-object v5, v7

    move/from16 v21, v8

    move-object/from16 v22, v14

    goto :goto_d2

    .line 157
    .end local v16    # "uidCount":I
    .restart local v5    # "uidCount":I
    :cond_96
    move/from16 v16, v5

    .end local v5    # "uidCount":I
    .restart local v16    # "uidCount":I
    move-wide/from16 v24, v3

    move-object v5, v7

    move/from16 v21, v8

    move-object/from16 v22, v14

    goto :goto_d2

    .end local v16    # "uidCount":I
    .restart local v5    # "uidCount":I
    :cond_a0
    move/from16 v16, v5

    .line 160
    .end local v5    # "uidCount":I
    .restart local v16    # "uidCount":I
    :cond_a2
    move-object v5, v7

    move/from16 v21, v8

    move-object/from16 v23, v13

    move-object/from16 v22, v14

    const-wide v7, 0x20b00000002L

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "pname":Ljava/lang/String;
    .local v5, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v21, "procCount":I
    .local v22, "pname":Ljava/lang/String;
    .local v23, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 161
    .local v13, "etoken":J
    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 162
    nop

    .line 163
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 162
    move-wide/from16 v24, v3

    const-wide v3, 0x10300000002L

    .end local v3    # "token":J
    .local v24, "token":J
    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 164
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 154
    .end local v12    # "puid":I
    .end local v13    # "etoken":J
    .end local v23    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_d2
    add-int/lit8 v6, v6, 0x1

    move-object v7, v5

    move/from16 v5, v16

    move/from16 v8, v21

    move-object/from16 v14, v22

    move-wide/from16 v3, v24

    const-wide v12, 0x10900000001L

    goto :goto_6e

    .end local v16    # "uidCount":I
    .end local v21    # "procCount":I
    .end local v22    # "pname":Ljava/lang/String;
    .end local v24    # "token":J
    .restart local v3    # "token":J
    .local v5, "uidCount":I
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "procCount":I
    .restart local v14    # "pname":Ljava/lang/String;
    :cond_e3
    move-wide/from16 v24, v3

    move/from16 v16, v5

    move-object v5, v7

    move/from16 v21, v8

    move-object/from16 v22, v14

    .line 166
    .end local v3    # "token":J
    .end local v6    # "i":I
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .end local v14    # "pname":Ljava/lang/String;
    .local v5, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v16    # "uidCount":I
    .restart local v21    # "procCount":I
    .restart local v22    # "pname":Ljava/lang/String;
    .restart local v24    # "token":J
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 147
    .end local v10    # "ctoken":J
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v16    # "uidCount":I
    .end local v22    # "pname":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v5, v19

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    goto/16 :goto_50

    .end local v19    # "now":J
    .end local v21    # "procCount":I
    .end local v24    # "token":J
    .restart local v3    # "token":J
    .local v5, "now":J
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "procCount":I
    :cond_ff
    move-wide/from16 v24, v3

    move-wide/from16 v19, v5

    move-object v5, v7

    move/from16 v21, v8

    .end local v3    # "token":J
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .local v5, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v19    # "now":J
    .restart local v21    # "procCount":I
    .restart local v24    # "token":J
    goto :goto_10b

    .line 144
    .end local v9    # "ip":I
    .end local v19    # "now":J
    .end local v21    # "procCount":I
    .end local v24    # "token":J
    .restart local v3    # "token":J
    .local v5, "now":J
    :cond_107
    move-wide/from16 v24, v3

    move-wide/from16 v19, v5

    .line 171
    .end local v3    # "token":J
    .end local v5    # "now":J
    .restart local v19    # "now":J
    .restart local v24    # "token":J
    :goto_10b
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1da

    .line 172
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 173
    .local v3, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 174
    .local v4, "processCount":I
    const/4 v5, 0x0

    .local v5, "ip":I
    :goto_122
    if-ge v5, v4, :cond_1d9

    .line 175
    const-wide v6, 0x20b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 176
    .local v6, "btoken":J
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 177
    .local v8, "pname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 178
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 180
    .local v10, "uidCount":I
    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 181
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_146
    if-ge v13, v10, :cond_1cb

    .line 182
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 183
    .local v14, "puid":I
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v15

    invoke-virtual {v15, v8, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 184
    .local v15, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_170

    if-eqz v15, :cond_16a

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 185
    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_170

    .line 186
    move-object v12, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    goto :goto_1bb

    .line 184
    :cond_16a
    move-object v12, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    goto :goto_1bb

    .line 188
    :cond_170
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 189
    .local v11, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    move-object v12, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    const-wide v2, 0x20b00000002L

    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v12, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v16, "pname":Ljava/lang/String;
    .local v17, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 190
    .local v8, "etoken":J
    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 191
    iget-wide v2, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move/from16 v18, v14

    move-object/from16 v23, v15

    const-wide v14, 0x10300000002L

    .end local v14    # "puid":I
    .end local v15    # "r":Lcom/android/server/am/ProcessRecord;
    .local v18, "puid":I
    .restart local v23    # "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 192
    const-wide v2, 0x10900000003L

    iget-object v14, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 193
    const-wide v2, 0x10900000004L

    iget-object v14, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 194
    const-wide v2, 0x10900000005L

    iget-object v14, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 195
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 181
    .end local v8    # "etoken":J
    .end local v11    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v18    # "puid":I
    .end local v23    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_1bb
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p4

    move-object v3, v12

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    const-wide v11, 0x10900000001L

    goto/16 :goto_146

    .end local v12    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v16    # "pname":Ljava/lang/String;
    .end local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v8, "pname":Ljava/lang/String;
    .restart local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_1cb
    move-object v12, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    .line 197
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v13    # "i":I
    .restart local v12    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v16    # "pname":Ljava/lang/String;
    .restart local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 174
    .end local v6    # "btoken":J
    .end local v10    # "uidCount":I
    .end local v16    # "pname":Ljava/lang/String;
    .end local v17    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p4

    goto/16 :goto_122

    .end local v12    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    :cond_1d9
    move-object v12, v3

    .line 201
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v4    # "processCount":I
    .end local v5    # "ip":I
    :cond_1da
    move-wide/from16 v2, v24

    .end local v24    # "token":J
    .local v2, "token":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 202
    return-void
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    const-string v4, " uid "

    if-nez v3, :cond_ad

    .line 206
    const/4 v3, 0x0

    .line 207
    .local v3, "printed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 208
    .local v5, "now":J
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 209
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 210
    .local v8, "processCount":I
    const/4 v9, 0x0

    move v10, v9

    move v9, v3

    move/from16 v3, p3

    .end local p3    # "needSep":Z
    .local v3, "needSep":Z
    .local v9, "printed":Z
    .local v10, "ip":I
    :goto_28
    if-ge v10, v8, :cond_a8

    .line 211
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 212
    .local v11, "pname":Ljava/lang/String;
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 213
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 214
    .local v13, "uidCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3b
    if-ge v14, v13, :cond_a1

    .line 215
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 216
    .local v15, "puid":I
    move-object/from16 v16, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v16, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v7

    invoke-virtual {v7, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 217
    .local v7, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_61

    if-eqz v7, :cond_5e

    move/from16 v17, v8

    .end local v8    # "processCount":I
    .local v17, "processCount":I
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 218
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_63

    .line 219
    goto :goto_9a

    .line 217
    .end local v17    # "processCount":I
    .restart local v8    # "processCount":I
    :cond_5e
    move/from16 v17, v8

    .end local v8    # "processCount":I
    .restart local v17    # "processCount":I
    goto :goto_9a

    .end local v17    # "processCount":I
    .restart local v8    # "processCount":I
    :cond_61
    move/from16 v17, v8

    .line 221
    .end local v8    # "processCount":I
    .restart local v17    # "processCount":I
    :cond_63
    if-nez v9, :cond_71

    .line 222
    if-eqz v3, :cond_6a

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 223
    :cond_6a
    const/4 v3, 0x1

    .line 224
    const-string v8, "  Time since processes crashed:"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const/4 v9, 0x1

    .line 227
    :cond_71
    const-string v8, "    Process "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 229
    const-string v8, ": last crashed "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 p3, v7

    .end local v7    # "r":Lcom/android/server/am/ProcessRecord;
    .local p3, "r":Lcom/android/server/am/ProcessRecord;
    sub-long v7, v5, v18

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 231
    const-string v7, " ago"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    .end local v15    # "puid":I
    .end local p3    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_9a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v17

    goto :goto_3b

    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "processCount":I
    :cond_a1
    move-object/from16 v16, v7

    move/from16 v17, v8

    .line 210
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v17    # "processCount":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "processCount":I
    :cond_a8
    move-object/from16 v16, v7

    move/from16 v17, v8

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v17    # "processCount":I
    goto :goto_af

    .line 205
    .end local v3    # "needSep":Z
    .end local v5    # "now":J
    .end local v9    # "printed":Z
    .end local v10    # "ip":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .local p3, "needSep":Z
    :cond_ad
    move/from16 v3, p3

    .line 236
    .end local p3    # "needSep":Z
    .restart local v3    # "needSep":Z
    :goto_af
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1b8

    .line 237
    const/4 v5, 0x0

    .line 238
    .local v5, "printed":Z
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 239
    .local v6, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 240
    .local v7, "processCount":I
    const/4 v8, 0x0

    .local v8, "ip":I
    :goto_c7
    if-ge v8, v7, :cond_1b8

    .line 241
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 242
    .local v9, "pname":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 243
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 244
    .local v11, "uidCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_da
    if-ge v12, v11, :cond_1ae

    .line 245
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 246
    .local v13, "puid":I
    iget-object v14, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService;->getProcessNames()Lcom/android/internal/app/ProcessMap;

    move-result-object v14

    invoke-virtual {v14, v9, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 247
    .local v14, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_fc

    if-eqz v14, :cond_f8

    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 248
    invoke-virtual {v15, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_fc

    .line 244
    .end local v13    # "puid":I
    .end local v14    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_f8
    move-object/from16 v16, v4

    goto/16 :goto_1a4

    .line 251
    .restart local v13    # "puid":I
    .restart local v14    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_fc
    if-nez v5, :cond_10a

    .line 252
    if-eqz v3, :cond_103

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 253
    :cond_103
    const/4 v3, 0x1

    .line 254
    const-string v15, "  Bad processes:"

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    const/4 v5, 0x1

    .line 257
    :cond_10a
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 258
    .local v15, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    const-string v0, "    Bad process "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 260
    const-string v0, ": crashed at time "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 p3, v3

    .end local v3    # "needSep":Z
    .restart local p3    # "needSep":Z
    iget-wide v2, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 261
    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v0, :cond_138

    .line 262
    const-string v0, "      Short msg: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    :cond_138
    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v0, :cond_146

    .line 265
    const-string v0, "      Long msg: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    :cond_146
    iget-object v0, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v0, :cond_19c

    .line 268
    const-string v0, "      Stack:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "lastPos":I
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_151
    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v16, v4

    const-string v4, "        "

    if-ge v2, v3, :cond_17f

    .line 271
    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v17, v5

    .end local v5    # "printed":Z
    .local v17, "printed":Z
    const/16 v5, 0xa

    if-ne v3, v5, :cond_178

    .line 272
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v0, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 275
    add-int/lit8 v0, v2, 0x1

    .line 270
    :cond_178
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v16

    move/from16 v5, v17

    goto :goto_151

    .end local v17    # "printed":Z
    .restart local v5    # "printed":Z
    :cond_17f
    move/from16 v17, v5

    .line 278
    .end local v2    # "pos":I
    .end local v5    # "printed":Z
    .restart local v17    # "printed":Z
    iget-object v2, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1a0

    .line 279
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget-object v2, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1a0

    .line 267
    .end local v0    # "lastPos":I
    .end local v17    # "printed":Z
    .restart local v5    # "printed":Z
    :cond_19c
    move-object/from16 v16, v4

    move/from16 v17, v5

    .line 244
    .end local v5    # "printed":Z
    .end local v13    # "puid":I
    .end local v14    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .restart local v17    # "printed":Z
    :cond_1a0
    :goto_1a0
    move/from16 v3, p3

    move/from16 v5, v17

    .end local v17    # "printed":Z
    .end local p3    # "needSep":Z
    .restart local v3    # "needSep":Z
    .restart local v5    # "printed":Z
    :goto_1a4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v4, v16

    goto/16 :goto_da

    :cond_1ae
    move-object/from16 v16, v4

    .line 240
    .end local v9    # "pname":Ljava/lang/String;
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v11    # "uidCount":I
    .end local v12    # "i":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    goto/16 :goto_c7

    .line 287
    .end local v5    # "printed":Z
    .end local v6    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v7    # "processCount":I
    .end local v8    # "ip":I
    :cond_1b8
    return v3
.end method

.method generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .line 751
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 753
    .local v0, "report":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 754
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 755
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 756
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 757
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 758
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 759
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 760
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 762
    return-object v0
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 29
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 812
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 813
    .local v9, "now":J
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    const/4 v11, 0x0

    invoke-static {v1, v2, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_1c

    move v1, v12

    goto :goto_1d

    :cond_1c
    move v1, v11

    :goto_1d
    move v13, v1

    .line 816
    .local v13, "showBackground":Z
    nop

    .line 817
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_28

    move v1, v12

    goto :goto_29

    :cond_28
    move v1, v11

    :goto_29
    move v14, v1

    .line 821
    .local v14, "procIsBoundForeground":Z
    const/4 v1, 0x0

    .line 823
    .local v1, "tryAgain":Z
    iget-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v2, :cond_4f

    .line 824
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 825
    .local v2, "crashTime":Ljava/lang/Long;
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object v15, v2

    move-object/from16 v16, v3

    .local v3, "crashTimePersistent":Ljava/lang/Long;
    goto :goto_54

    .line 827
    .end local v2    # "crashTime":Ljava/lang/Long;
    .end local v3    # "crashTimePersistent":Ljava/lang/Long;
    :cond_4f
    const/4 v2, 0x0

    move-object v3, v2

    .restart local v3    # "crashTimePersistent":Ljava/lang/Long;
    move-object v15, v2

    move-object/from16 v16, v3

    .line 831
    .end local v3    # "crashTimePersistent":Ljava/lang/Long;
    .local v15, "crashTime":Ljava/lang/Long;
    .local v16, "crashTimePersistent":Ljava/lang/Long;
    :goto_54
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v2

    sub-int/2addr v2, v12

    move/from16 v17, v1

    .end local v1    # "tryAgain":Z
    .local v2, "i":I
    .local v17, "tryAgain":Z
    :goto_5b
    const-wide/32 v3, 0xea60

    if-ltz v2, :cond_8c

    .line 834
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v1

    .line 836
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v5, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v5, v3

    cmp-long v3, v9, v5

    if-lez v3, :cond_6e

    .line 837
    iput v12, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_73

    .line 839
    :cond_6e
    iget v3, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v3, v12

    iput v3, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 843
    :goto_73
    iget v3, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v3, v3

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_89

    iget-boolean v3, v1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v3, :cond_86

    if-eqz v14, :cond_89

    .line 845
    :cond_86
    const/4 v3, 0x1

    move/from16 v17, v3

    .line 831
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_89
    add-int/lit8 v2, v2, -0x1

    goto :goto_5b

    .line 849
    .end local v2    # "i":I
    :cond_8c
    if-eqz v15, :cond_184

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, v3

    cmp-long v1, v9, v1

    if-gez v1, :cond_184

    .line 852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has crashed too many times: killing!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/16 v1, 0x7550

    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 855
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v3, v2, v12

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 854
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 856
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 857
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_173

    .line 862
    const/16 v1, 0x753f

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 864
    iget-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_136

    .line 867
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v3, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v1, v3

    move v11, v2

    move-object v12, v3

    move-wide v2, v9

    move/from16 v18, v14

    move-object v14, v4

    .end local v14    # "procIsBoundForeground":Z
    .local v18, "procIsBoundForeground":Z
    move-object/from16 v4, p3

    move-object/from16 v19, v15

    move-object v15, v5

    .end local v15    # "crashTime":Ljava/lang/Long;
    .local v19, "crashTime":Ljava/lang/Long;
    move-object/from16 v5, p4

    move-wide/from16 v20, v9

    move v9, v6

    .end local v9    # "now":J
    .local v20, "now":J
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v14, v11, v12}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 869
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_13d

    .line 864
    .end local v18    # "procIsBoundForeground":Z
    .end local v19    # "crashTime":Ljava/lang/Long;
    .end local v20    # "now":J
    .restart local v9    # "now":J
    .restart local v14    # "procIsBoundForeground":Z
    .restart local v15    # "crashTime":Ljava/lang/Long;
    :cond_136
    move-wide/from16 v20, v9

    move/from16 v18, v14

    move-object/from16 v19, v15

    move v9, v6

    .line 871
    .end local v9    # "now":J
    .end local v14    # "procIsBoundForeground":Z
    .end local v15    # "crashTime":Ljava/lang/Long;
    .restart local v18    # "procIsBoundForeground":Z
    .restart local v19    # "crashTime":Ljava/lang/Long;
    .restart local v20    # "now":J
    :goto_13d
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->bad:Z

    .line 872
    iput-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 874
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz v1, :cond_159

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v1

    if-eqz v1, :cond_159

    .line 877
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v2, 0x22b

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/android/server/am/ActivityManagerService;->sendAppStateMsg(ILjava/lang/String;II)V

    .line 885
    :cond_159
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v5, 0x4

    const-string v6, "crash"

    move-object/from16 v2, p1

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 887
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 888
    if-nez v13, :cond_17a

    .line 889
    return v2

    .line 857
    .end local v18    # "procIsBoundForeground":Z
    .end local v19    # "crashTime":Ljava/lang/Long;
    .end local v20    # "now":J
    .restart local v9    # "now":J
    .restart local v14    # "procIsBoundForeground":Z
    .restart local v15    # "crashTime":Ljava/lang/Long;
    :cond_173
    move-wide/from16 v20, v9

    move v2, v11

    move/from16 v18, v14

    move-object/from16 v19, v15

    .line 892
    .end local v9    # "now":J
    .end local v14    # "procIsBoundForeground":Z
    .end local v15    # "crashTime":Ljava/lang/Long;
    .restart local v18    # "procIsBoundForeground":Z
    .restart local v19    # "crashTime":Ljava/lang/Long;
    .restart local v20    # "now":J
    :cond_17a
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    move-object/from16 v5, p2

    goto :goto_1ac

    .line 849
    .end local v18    # "procIsBoundForeground":Z
    .end local v19    # "crashTime":Ljava/lang/Long;
    .end local v20    # "now":J
    .restart local v9    # "now":J
    .restart local v14    # "procIsBoundForeground":Z
    .restart local v15    # "crashTime":Ljava/lang/Long;
    :cond_184
    move-wide/from16 v20, v9

    move/from16 v18, v14

    move-object/from16 v19, v15

    .line 894
    .end local v9    # "now":J
    .end local v14    # "procIsBoundForeground":Z
    .end local v15    # "crashTime":Ljava/lang/Long;
    .restart local v18    # "procIsBoundForeground":Z
    .restart local v19    # "crashTime":Ljava/lang/Long;
    .restart local v20    # "now":J
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 895
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 894
    move-object/from16 v5, p2

    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I

    move-result v1

    .line 896
    .local v1, "affectedTaskId":I
    if-eqz v8, :cond_19c

    .line 897
    iput v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 899
    :cond_19c
    if-eqz v8, :cond_1ac

    if-eqz v16, :cond_1ac

    .line 900
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v9, v3

    cmp-long v2, v20, v9

    if-gez v2, :cond_1ac

    .line 901
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .line 905
    .end local v1    # "affectedTaskId":I
    :cond_1ac
    :goto_1ac
    if-eqz v8, :cond_1b3

    if-eqz v17, :cond_1b3

    .line 906
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 913
    :cond_1b3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 914
    .local v1, "proc":Lcom/android/server/wm/WindowProcessController;
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 915
    .local v2, "homeProc":Lcom/android/server/wm/WindowProcessController;
    if-ne v1, v2, :cond_1d6

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v3

    if-eqz v3, :cond_1d6

    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_1d6

    .line 917
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->clearPackagePreferredForHomeActivities()V

    .line 920
    :cond_1d6
    iget-boolean v3, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v3, :cond_1f8

    .line 923
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v4, v6, v9}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 924
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v4, v6, v9}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 927
    :cond_1f8
    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    if-eqz v3, :cond_205

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 928
    :cond_205
    const/4 v3, 0x1

    return v3
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 1008
    const/4 v0, 0x0

    .line 1009
    .local v0, "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1010
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 1011
    .local v2, "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    iget-object v3, v2, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1012
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v3, :cond_1c

    .line 1013
    const-string v4, "ActivityManager"

    const-string/jumbo v5, "handleShowAnrUi: proc is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_a6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1016
    :cond_1c
    :try_start_1c
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v4

    if-nez v4, :cond_27

    .line 1017
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    .line 1019
    :cond_27
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getDialogController()Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->hasAnrDialogs()Z

    move-result v4

    const/16 v5, 0x13d

    if-eqz v4, :cond_54

    .line 1020
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App already has anr dialog: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1023
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_1c .. :try_end_50} :catchall_a6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1026
    :cond_54
    :try_start_54
    new-instance v4, Landroid/os/BugreportParams;

    const/16 v6, 0xe

    invoke-direct {v4, v6}, Landroid/os/BugreportParams;-><init>(I)V

    .line 1027
    .local v4, "app_anr":Landroid/os/BugreportParams;
    if-nez v3, :cond_5f

    const/4 v6, 0x0

    goto :goto_63

    :cond_5f
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_63
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v7}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;Landroid/content/Context;)V

    .line 1029
    iget-object v6, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "anr_show_background"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_78

    const/4 v8, 0x1

    :cond_78
    move v6, v8

    .line 1031
    .local v6, "showBackground":Z
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v7

    if-nez v7, :cond_92

    if-eqz v6, :cond_86

    goto :goto_92

    .line 1034
    :cond_86
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    invoke-static {v7, v5, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1037
    iget-object v5, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_99

    .line 1032
    :cond_92
    :goto_92
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getDialogController()Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 1039
    .end local v2    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "app_anr":Landroid/os/BugreportParams;
    .end local v6    # "showBackground":Z
    :goto_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_54 .. :try_end_9a} :catchall_a6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1041
    if-eqz v0, :cond_a5

    .line 1042
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 1045
    :cond_a5
    return-void

    .line 1039
    :catchall_a6
    move-exception v2

    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .registers 23
    .param p1, "msg"    # Landroid/os/Message;

    .line 932
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    .line 933
    .local v3, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1b

    move v0, v4

    goto :goto_1c

    :cond_1b
    move v0, v5

    :goto_1c
    move v6, v0

    .line 937
    .local v6, "showBackground":Z
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 938
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 939
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v8, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 940
    .local v8, "res":Lcom/android/server/am/AppErrorResult;
    if-nez v0, :cond_36

    .line 941
    const-string v4, "ActivityManager"

    const-string/jumbo v5, "handleShowAppErrorUi: proc is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    monitor-exit v7
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_16d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 944
    :cond_36
    :try_start_36
    iget v9, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 945
    .local v9, "userId":I
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getDialogController()Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->hasCrashDialogs()Z

    move-result v10

    if-eqz v10, :cond_64

    .line 946
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App already has crash dialog: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    if-eqz v8, :cond_5f

    .line 948
    sget v4, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v8, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 950
    :cond_5f
    monitor-exit v7
    :try_end_60
    .catchall {:try_start_36 .. :try_end_60} :catchall_16d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 952
    :cond_64
    :try_start_64
    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/16 v11, 0x2710

    if-lt v10, v11, :cond_76

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v10, v11, :cond_76

    move v10, v4

    goto :goto_77

    :cond_76
    move v10, v5

    .line 955
    .local v10, "isBackground":Z
    :goto_77
    iget-object v11, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v11}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v11

    array-length v12, v11

    move v13, v5

    :goto_81
    if-ge v13, v12, :cond_8e

    aget v14, v11, v13

    .line 956
    .local v14, "profileId":I
    if-eq v9, v14, :cond_89

    move v15, v4

    goto :goto_8a

    :cond_89
    move v15, v5

    :goto_8a
    and-int/2addr v10, v15

    .line 955
    .end local v14    # "profileId":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_81

    .line 958
    :cond_8e
    if-eqz v10, :cond_b9

    if-nez v6, :cond_b9

    .line 959
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping crash dialog of "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": background"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    if-eqz v8, :cond_b4

    .line 961
    sget v4, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v8, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 963
    :cond_b4
    monitor-exit v7
    :try_end_b5
    .catchall {:try_start_64 .. :try_end_b5} :catchall_16d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 965
    :cond_b9
    const/4 v11, 0x0

    .line 966
    .local v11, "crashShowErrorTime":Ljava/lang/Long;
    :try_start_ba
    iget-boolean v12, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v12, :cond_cd

    .line 967
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v14, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move-object v11, v12

    .line 970
    :cond_cd
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 971
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "show_first_crash_dialog"

    .line 970
    invoke-static {v12, v13, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_de

    move v12, v4

    goto :goto_df

    :cond_de
    move v12, v5

    .line 973
    .local v12, "showFirstCrash":Z
    :goto_df
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 974
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "show_first_crash_dialog_dev_option"

    iget-object v15, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 977
    invoke-virtual {v15}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v15

    .line 973
    invoke-static {v13, v14, v5, v15}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_f8

    move v13, v4

    goto :goto_f9

    :cond_f8
    move v13, v5

    .line 978
    .local v13, "showFirstCrashDevOption":Z
    :goto_f9
    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v14, :cond_10b

    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 979
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10b

    move v14, v4

    goto :goto_10c

    :cond_10b
    move v14, v5

    .line 980
    .local v14, "crashSilenced":Z
    :goto_10c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 981
    .local v15, "now":J
    if-eqz v11, :cond_121

    .line 982
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/32 v19, 0xea60

    add-long v17, v17, v19

    cmp-long v17, v15, v17

    if-gez v17, :cond_121

    move v5, v4

    goto :goto_122

    :cond_121
    nop

    :goto_122
    move v4, v5

    .line 983
    .local v4, "shouldThottle":Z
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v5

    if-nez v5, :cond_133

    if-eqz v6, :cond_130

    goto :goto_133

    :cond_130
    move-object/from16 v17, v0

    goto :goto_161

    :cond_133
    :goto_133
    if-nez v14, :cond_15f

    if-nez v4, :cond_15f

    if-nez v12, :cond_13f

    if-nez v13, :cond_13f

    iget-boolean v5, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v5, :cond_130

    .line 986
    :cond_13f
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getDialogController()Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 987
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_15c

    .line 988
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v17, v0

    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v17, "proc":Lcom/android/server/am/ProcessRecord;
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v1, v2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_168

    .line 987
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_15c
    move-object/from16 v17, v0

    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    goto :goto_168

    .line 983
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_15f
    move-object/from16 v17, v0

    .line 993
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :goto_161
    if-eqz v8, :cond_168

    .line 994
    sget v0, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v8, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 997
    .end local v4    # "shouldThottle":Z
    .end local v8    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v10    # "isBackground":Z
    .end local v11    # "crashShowErrorTime":Ljava/lang/Long;
    .end local v12    # "showFirstCrash":Z
    .end local v13    # "showFirstCrashDevOption":Z
    .end local v14    # "crashSilenced":Z
    .end local v15    # "now":J
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_168
    :goto_168
    monitor-exit v7
    :try_end_169
    .catchall {:try_start_ba .. :try_end_169} :catchall_16d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 998
    return-void

    .line 997
    .end local v9    # "userId":I
    :catchall_16d
    move-exception v0

    :try_start_16e
    monitor-exit v7
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 291
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 343
    nop

    .line 344
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDialogController()Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    move-result-object v0

    .line 346
    .local v0, "controller":Lcom/android/server/am/ProcessRecord$ErrorDialogController;
    const/4 v1, 0x6

    .line 347
    .local v1, "reasonCode":I
    const/4 v2, 0x0

    .line 348
    .local v2, "subReason":I
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->hasDebugWaitingDialog()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 349
    const/16 v1, 0xd

    .line 350
    const/4 v2, 0x1

    .line 353
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearAllErrorDialogs()V

    .line 354
    const-string/jumbo v7, "user-terminated"

    const-string/jumbo v8, "user request after error"

    move-object v3, p0

    move-object v4, p1

    move v5, v1

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/AppErrors;->killAppImmediateLocked(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public synthetic lambda$handleAppCrashInActivityController$1$AppErrors(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 21
    .param p1, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "shortMsg"    # Ljava/lang/String;
    .param p6, "longMsg"    # Ljava/lang/String;
    .param p7, "stackTrace"    # Ljava/lang/String;
    .param p8, "uid"    # I

    .line 702
    move-object v0, p2

    move v7, p3

    move-object/from16 v8, p4

    const-string/jumbo v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_47

    move-object v9, p1

    iget-object v1, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 703
    const-string v3, "Native crash"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip killing native crashed app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") during testing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, p0

    move/from16 v10, p8

    goto :goto_99

    .line 702
    :cond_47
    move-object v9, p1

    .line 707
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-killing crashed app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at watcher\'s request"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    if-eqz v8, :cond_82

    .line 709
    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 710
    const/4 v1, 0x4

    const/4 v2, 0x1

    const-string v3, "crash"

    invoke-virtual {v8, v3, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    move-object v11, p0

    move/from16 v10, p8

    goto :goto_99

    .line 709
    :cond_7e
    move-object v11, p0

    move/from16 v10, p8

    goto :goto_99

    .line 714
    :cond_82
    invoke-static {p3}, Landroid/os/Process;->killProcess(I)V

    .line 715
    move/from16 v10, p8

    invoke-static {v10, p3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 716
    move-object v11, p0

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "crash"

    move v2, p3

    move/from16 v3, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->noteAppKill(IIIILjava/lang/String;)V

    .line 722
    :goto_99
    return-void
.end method

.method public synthetic lambda$scheduleAppCrashLocked$0$AppErrors(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p1, "p"    # Lcom/android/server/am/ProcessRecord;

    .line 420
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 421
    const/16 v3, 0xd

    const/16 v4, 0xe

    const-string/jumbo v5, "forced"

    const-string/jumbo v6, "killed for invalid state"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->killAppImmediateLocked(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 424
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 425
    return-void

    .line 424
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method loadAppsNotReportingCrashesFromConfigLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "appsNotReportingCrashesConfig"    # Ljava/lang/String;

    .line 333
    if-eqz p1, :cond_15

    .line 334
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_15

    .line 336
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 337
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 340
    .end local v0    # "split":[Ljava/lang/String;
    :cond_15
    return-void
.end method

.method notifyVrAppError(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 674
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_65

    .line 675
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isCanShowErrorOnVrRunning()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 676
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-nez v0, :cond_21

    .line 677
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.hmt.vrsvc"

    const-string v2, "com.samsung.android.hmt.vrsvc.AppErrorReportActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 679
    :cond_21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 680
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-eqz v0, :cond_35

    .line 681
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getGearVrManagerInternal()Lcom/samsung/android/vr/GearVrManagerInternal;

    move-result-object v1

    .line 682
    .local v1, "gearVrManagerInternal":Lcom/samsung/android/vr/GearVrManagerInternal;
    invoke-virtual {v1, v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyVrAppError(Landroid/app/ApplicationErrorReport;)V

    .line 683
    .end local v1    # "gearVrManagerInternal":Lcom/samsung/android/vr/GearVrManagerInternal;
    goto :goto_65

    .line 684
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application error report is null isCrashing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isNotResponding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  forceCrashReport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v0    # "report":Landroid/app/ApplicationErrorReport;
    :cond_65
    :goto_65
    return-void
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 299
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 300
    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .registers 11
    .param p1, "resetEntireUser"    # Z
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 303
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 304
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "ip":I
    :goto_c
    if-ltz v1, :cond_51

    .line 305
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 306
    .local v2, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1a
    if-ltz v3, :cond_45

    .line 307
    const/4 v4, 0x0

    .line 308
    .local v4, "remove":Z
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 309
    .local v5, "entUid":I
    if-nez p1, :cond_36

    .line 310
    const/4 v6, -0x1

    if-ne p3, v6, :cond_2e

    .line 311
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, p2, :cond_3d

    .line 312
    const/4 v4, 0x1

    goto :goto_3d

    .line 315
    :cond_2e
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    if-ne v5, v6, :cond_3d

    .line 316
    const/4 v4, 0x1

    goto :goto_3d

    .line 319
    :cond_36
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p3, :cond_3d

    .line 320
    const/4 v4, 0x1

    .line 322
    :cond_3d
    :goto_3d
    if-eqz v4, :cond_42

    .line 323
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 306
    .end local v4    # "remove":Z
    .end local v5    # "entUid":I
    :cond_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 326
    .end local v3    # "i":I
    :cond_45
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_4e

    .line 327
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 304
    .end local v2    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 330
    .end local v1    # "ip":I
    :cond_51
    return-void
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;Z)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "force"    # Z

    .line 382
    const/4 v0, 0x0

    .line 388
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 389
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 390
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 391
    .local v3, "p":Lcom/android/server/am/ProcessRecord;
    if-ltz p1, :cond_20

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_20

    .line 392
    goto :goto_35

    .line 394
    :cond_20
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p2, :cond_26

    .line 395
    move-object v0, v3

    .line 396
    goto :goto_38

    .line 398
    :cond_26
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4, p3}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    if-ltz p4, :cond_34

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_35

    .line 400
    :cond_34
    move-object v0, v3

    .line 389
    .end local v3    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 403
    .end local v2    # "i":I
    :cond_38
    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_7f

    .line 405
    if-nez v0, :cond_6a

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crashApplication: nothing for uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " initialPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void

    .line 413
    :cond_6a
    invoke-virtual {v0, p5}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    .line 414
    if-eqz p6, :cond_7e

    .line 417
    move-object v1, v0

    .line 418
    .local v1, "p":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/-$$Lambda$AppErrors$1aFX_-j-MSc0clpKk9XdlBZz9lU;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/-$$Lambda$AppErrors$1aFX_-j-MSc0clpKk9XdlBZz9lU;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_7e
    return-void

    .line 403
    :catchall_7f
    move-exception v2

    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v2
.end method
