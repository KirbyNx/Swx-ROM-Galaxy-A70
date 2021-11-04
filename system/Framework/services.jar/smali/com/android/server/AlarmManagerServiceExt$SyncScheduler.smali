.class public Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    }
.end annotation


# static fields
.field private static final MAX_LIST_SIZE:J = 0x1388L

.field private static final SYNC_COPRIME_VALUE:J = 0xea60L

.field private static final SYNC_MAX_VALUE:J = 0x1b77400L

.field private static final SYNC_MIN_VALUE:J = 0x493e0L

.field private static final SYNC_WATCH_VALUE:J = 0x186a0L


# instance fields
.field private ENABLE_FORCED_ADJUSTMENT:Z

.field private WHITELIST_PLUS_AUTO_ADD:Z

.field private boot_filter:Landroid/content/IntentFilter;

.field private filter:Landroid/content/IntentFilter;

.field private filter2:Landroid/content/IntentFilter;

.field private gIntervalGcd:Ljava/math/BigInteger;

.field private isGalaxyViewUSBConnected:Z

.field private isUSBConnected:Z

.field private final mAccountsPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;"
        }
    .end annotation
.end field

.field private final mAmsLock:Ljava/lang/Object;

.field private final mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

.field private final mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

.field private final mBlacklistPackagesFromConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mChnAppsBundling:Z

.field private mChnSolDeactivateInScreenOn:Z

.field private mChnSolDeactivateInUSB:Z

.field private mChnSolEnable:Z

.field private final mContext:Landroid/content/Context;

.field private final mCscPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDeltaFromTriggers:J

.field private mDefaultIntervalInChn:J

.field private mEmailPid:I

.field private mEmailUid:I

.field private final mExtraWhiteListPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiver2:Landroid/content/BroadcastReceiver;

.field private mLockExt:Ljava/lang/Object;

.field private mLockFgAct:Ljava/lang/Object;

.field private final mLockSuspiciousTagSet:Ljava/lang/Object;

.field private final mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

.field private final mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

.field private final mLockUserApps:Ljava/lang/Object;

.field private mMultiUserMgr:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

.field private mNextSlotInChn:J

.field private mPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

.field private final mPermanentWhitelistPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSCPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;

.field private mScreenOffTime:J

.field mSuspiciousTagSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSuspiciousTagSetFromApi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSuspiciousTagSetFromSCPM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTestFileObserver:Landroid/os/FileObserver;

.field mUserAppTagSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pm:Landroid/content/pm/PackageManager;

.field preloadedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statOpCount:J

.field private statOpTime:D

.field private statOpTimeMax:D

.field private statOpTimeMaxUid:J

.field private ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

.field final synthetic this$0:Lcom/android/server/AlarmManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt;Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerServiceExt;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ams"    # Lcom/android/server/AlarmManagerService;
    .param p4, "lock"    # Ljava/lang/Object;

    .line 721
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    .line 519
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    .line 549
    const-wide/32 v1, 0x1b77400

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 553
    iput v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    .line 557
    iput v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    .line 567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    .line 575
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    .line 579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    .line 583
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-direct {v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    .line 584
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-direct {v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    .line 586
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    .line 591
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    .line 595
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    .line 596
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    .line 597
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    .line 598
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    .line 600
    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    .line 601
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    .line 602
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    .line 609
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    .line 613
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;

    .line 616
    iput-wide v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    .line 617
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    .line 618
    iput-wide v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    .line 619
    iput-wide v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    .line 620
    iput-wide v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mScreenOffTime:J

    .line 624
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    .line 625
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    .line 626
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    .line 633
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    .line 634
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    .line 636
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    .line 637
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    .line 639
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    .line 640
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 642
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    .line 645
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    .line 647
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    .line 648
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter:Landroid/content/IntentFilter;

    .line 649
    new-instance v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 669
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    .line 670
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter2:Landroid/content/IntentFilter;

    .line 671
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$2;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$2;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver2:Landroid/content/BroadcastReceiver;

    .line 686
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->boot_filter:Landroid/content/IntentFilter;

    .line 687
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBootIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 3640
    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mMultiUserMgr:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    .line 4128
    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    .line 722
    iput-object p2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    .line 723
    iput-object p4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;

    .line 725
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_108
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 727
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->clear()V

    .line 728
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->clear()V

    .line 729
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 734
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v2, "com.sec.spp.push"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v2, "com.sec.chaton"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v2, "com.facebook.katana"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v2, "com.twitter.android"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v2, "com.facebook.orca"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v2, "com.kakao.talk"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v2, "com.google.android.apps.plus"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v2, "com.mobilesrepublic.appygeek"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string/jumbo v2, "mnn.Android"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v2, "com.google.android.apps.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->loadAppSyncBlackList()V

    .line 750
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->loadAppSync3PlusBlackList()V

    .line 753
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_173
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 754
    .local v2, "theApp":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18c

    .line 755
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 757
    .end local v2    # "theApp":Ljava/lang/String;
    :cond_18c
    goto :goto_173

    .line 758
    :cond_18d
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_193
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 759
    .restart local v2    # "theApp":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ac

    .line 760
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 762
    .end local v2    # "theApp":Ljava/lang/String;
    :cond_1ac
    goto :goto_193

    .line 767
    :cond_1ad
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    const-string v2, "com.samsung.location"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 773
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1bf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 774
    .local v2, "pC":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    nop

    .end local v2    # "pC":Ljava/lang/String;
    goto :goto_1bf

    .line 776
    :cond_1d2
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1eb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 777
    .local v2, "pP":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    nop

    .end local v2    # "pP":Ljava/lang/String;
    goto :goto_1d8

    .line 779
    :cond_1eb
    const/4 v1, 0x0

    .local v1, "nm":I
    :goto_1ec
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21d

    .line 780
    const-string v2, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<TargetPackages> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    add-int/lit8 v1, v1, 0x1

    goto :goto_1ec

    .line 783
    .end local v1    # "nm":I
    :cond_21d
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt;->isAppSync3PlusTarget(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    .line 784
    const-string v1, "AlarmManagerEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mChnAppsBundling = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->boot_filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 787
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBootIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->boot_filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 789
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v1, :cond_2e1

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v1, :cond_2e1

    .line 790
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    if-eqz v1, :cond_26a

    .line 791
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 795
    :cond_26a
    sget-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->sIsGalaxyView:Z

    if-eqz v1, :cond_27e

    .line 796
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter2:Landroid/content/IntentFilter;

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver2:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter2:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 801
    :cond_27e
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;

    invoke-direct {v1, p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSCPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;

    .line 803
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    invoke-direct {v1, p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    .line 805
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    .line 809
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v2, "com.facebook.services"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v2, "com.facebook.katana"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v2, "com.facebook.orca"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 812
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v2, "com.facebook.pages.app"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 813
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v2, "com.facebook.appmanager"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 814
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v2, "com.facebook.system"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 815
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v2, "com.whatsapp"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 816
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v2, "com.instagram.android"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 817
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v2, "com.skype.raider"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v2, "com.microsoft.skydrive"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v2, "com.samsung.android.opencalendar"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 821
    :cond_2e1
    monitor-exit v0
    :try_end_2e2
    .catchall {:try_start_108 .. :try_end_2e2} :catchall_30f

    .line 827
    :try_start_2e2
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    :try_end_2e9
    .catch Ljava/net/SocketException; {:try_start_2e2 .. :try_end_2e9} :catch_2f9
    .catch Ljava/net/UnknownHostException; {:try_start_2e2 .. :try_end_2e9} :catch_2f4
    .catch Ljava/io/IOException; {:try_start_2e2 .. :try_end_2e9} :catch_2ef
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_2e9} :catch_2ea

    goto :goto_2fd

    .line 834
    :catch_2ea
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2fe

    .line 832
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2ef
    move-exception v0

    .line 833
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2fd

    .line 830
    :catch_2f4
    move-exception v0

    .line 831
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .end local v0    # "e":Ljava/net/UnknownHostException;
    goto :goto_2fd

    .line 828
    :catch_2f9
    move-exception v0

    .line 829
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 836
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_2fd
    nop

    .line 839
    :goto_2fe
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_307

    .line 840
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doTest()V

    .line 842
    :cond_307
    const-string v0, "AlarmManagerEXT"

    const-string v1, "SyncScheduler created "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return-void

    .line 821
    :catchall_30f
    move-exception v1

    :try_start_310
    monitor-exit v0
    :try_end_311
    .catchall {:try_start_310 .. :try_end_311} :catchall_30f

    throw v1
.end method

.method static synthetic access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # Z

    .line 507
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 507
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateRepeatingAlarmLocked(IJ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # Z

    .line 507
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # J

    .line 507
    iput-wide p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .line 507
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isTargetApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 507
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnorePackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 507
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 507
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getUserIdFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/os/FileObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/os/FileObserver;)Landroid/os/FileObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # Landroid/os/FileObserver;

    .line 507
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 507
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    .line 507
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mMultiUserMgr:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # Landroid/content/Context;

    .line 507
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateSuspiciousPolicy(Landroid/content/Context;)V

    return-void
.end method

.method private addCollection(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3913
    .local p1, "from":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "to":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_1a

    if-nez p2, :cond_5

    goto :goto_1a

    .line 3916
    :cond_5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3917
    .local v1, "pkg":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3918
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_19
    return-void

    .line 3914
    :cond_1a
    :goto_1a
    return-void
.end method

.method private addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3904
    .local p3, "to":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-nez p3, :cond_7

    goto :goto_10

    .line 3907
    :cond_7
    monitor-enter p1

    .line 3908
    :try_start_8
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3909
    monitor-exit p1

    .line 3910
    return-void

    .line 3909
    :catchall_d
    move-exception v0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0

    .line 3905
    :cond_10
    :goto_10
    return-void
.end method

.method private addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V
    .registers 8
    .param p1, "alarmExt"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1956
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1957
    .local v0, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_c

    .line 1958
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 1964
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1965
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1966
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1970
    .local v2, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    iget-object v4, p1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1971
    .end local v2    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_29
    goto :goto_10

    .line 1972
    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_38

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_38
    :goto_38
    return-void
.end method

.method private adjustAlarmForChinaApplication(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJ)Z
    .registers 21
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "aExt"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p3, "TIME_SKEW"    # J
    .param p5, "distanceToAlarmOriginal"    # J

    .line 1303
    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p2

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v2, 0x1b77400

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f8

    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_1f

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mScreenOffTime:J

    cmp-long v0, v0, v11

    if-nez v0, :cond_1f

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_f8

    .line 1305
    :cond_1f
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_a2

    .line 1306
    const-string v0, "AlarmManagerEXT"

    const-string v1, "XXX:: Control China Apps on"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1308
    .local v1, "time":Landroid/text/format/Time;
    iget-wide v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v4, v13, :cond_3a

    move-wide v4, v11

    goto :goto_3c

    :cond_3a
    move-wide/from16 v4, p3

    :goto_3c
    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1309
    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    .line 1310
    .local v2, "timeStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mChn_setTime T:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    iget-object v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_6a

    iget-object v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    goto :goto_74

    :cond_6a
    iget-object v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    if-eqz v6, :cond_71

    iget-object v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    goto :goto_74

    :cond_71
    const-string/jumbo v6, "null"

    :goto_74
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", INT:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1313
    .local v3, "report":Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    .end local v1    # "time":Landroid/text/format/Time;
    .end local v2    # "timeStr":Ljava/lang/String;
    .end local v3    # "report":Ljava/lang/String;
    :cond_a2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isSuspiciousAlarm()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 1318
    sget-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    iget-object v1, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->packageName:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->containsPackageAsUser(Lcom/android/server/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_b9

    .line 1319
    return v13

    .line 1323
    :cond_b9
    iget-wide v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    iget-wide v4, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    move-object v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmForFixedPeriodicWakeups(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJJ)V

    .line 1325
    iget-wide v0, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1326
    iget-wide v0, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1327
    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_d6

    const-wide/16 v0, 0x1

    goto :goto_d7

    :cond_d6
    move-wide v0, v11

    :goto_d7
    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 1328
    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v0, v2

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1329
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 1330
    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 1332
    :cond_ea
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1334
    iget-wide v0, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_f7

    .line 1335
    iget-wide v0, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1338
    :cond_f7
    return v13

    .line 1340
    :cond_f8
    const/4 v0, 0x0

    return v0
.end method

.method private adjustAlarmForFixedPeriodicWakeups(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJJ)V
    .registers 26
    .param p1, "a"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "nextTriggerSlot"    # J
    .param p4, "intervalUnit"    # J
    .param p6, "timeSkew"    # J

    .line 1351
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 1352
    .local v2, "nextTrigValue":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1353
    .local v4, "nowElapsed":J
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v6

    const-string v7, "AlarmManagerEXT"

    if-eqz v6, :cond_34

    .line 1354
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 1355
    .local v6, "time":Landroid/text/format/Time;
    add-long v8, v2, p6

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1356
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FPW_initialSlot 1= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    .end local v6    # "time":Landroid/text/format/Time;
    :cond_34
    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-nez v6, :cond_4a

    .line 1360
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr v10, v12

    double-to-int v6, v10

    .line 1361
    .local v6, "randomStartTime":I
    add-long v10, v4, p4

    int-to-long v12, v6

    add-long/2addr v10, v12

    .line 1362
    .end local v2    # "nextTrigValue":J
    .end local v6    # "randomStartTime":I
    .local v10, "nextTrigValue":J
    goto :goto_53

    .line 1364
    .end local v10    # "nextTrigValue":J
    .restart local v2    # "nextTrigValue":J
    :cond_4a
    move-wide v10, v2

    .line 1366
    .local v10, "prevNextSlot":J
    :goto_4b
    cmp-long v6, v2, v4

    if-gez v6, :cond_52

    .line 1367
    add-long v2, v2, p4

    goto :goto_4b

    .line 1366
    :cond_52
    move-wide v10, v2

    .line 1370
    .end local v2    # "nextTrigValue":J
    .local v10, "nextTrigValue":J
    :goto_53
    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    .line 1376
    const-wide/16 v2, 0x0

    .line 1377
    .local v2, "extraDistance":J
    iget-wide v12, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    cmp-long v6, v12, v10

    if-lez v6, :cond_75

    .line 1378
    iget-wide v14, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v14, v10

    div-long v14, v14, p4

    .line 1379
    .local v14, "extraCount":J
    iget-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    mul-long v16, v14, p4

    add-long v16, v10, v16

    sub-long v8, v8, v16

    .line 1380
    .local v8, "deltaFromNextslots":J
    iget-wide v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    cmp-long v6, v8, v12

    if-lez v6, :cond_73

    const-wide/16 v12, 0x1

    add-long/2addr v14, v12

    .line 1381
    :cond_73
    mul-long v2, v14, p4

    .line 1383
    .end local v8    # "deltaFromNextslots":J
    .end local v14    # "extraCount":J
    :cond_75
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 1384
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 1385
    .local v6, "time":Landroid/text/format/Time;
    add-long v8, v10, p6

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1386
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FPW_changedSlot 2= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", gIntervalGcd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", numberOfSlot= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v12, v2, p4

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    .end local v6    # "time":Landroid/text/format/Time;
    :cond_b5
    add-long v8, v10, v2

    iput-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    .line 1392
    iget-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget v6, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v12, 0x1

    if-gt v6, v12, :cond_c3

    move-wide/from16 v12, p6

    goto :goto_c5

    :cond_c3
    const-wide/16 v12, 0x0

    :goto_c5
    add-long/2addr v8, v12

    iput-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    .line 1393
    iget-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iput-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    .line 1398
    iget-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v12, 0x0

    cmp-long v6, v8, v12

    if-lez v6, :cond_ed

    .line 1399
    iget-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-wide v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    cmp-long v6, v8, v12

    if-lez v6, :cond_e9

    .line 1400
    iget-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-wide v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    sub-long/2addr v8, v12

    div-long v8, v8, p4

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    mul-long v8, v8, p4

    goto :goto_eb

    :cond_e9
    move-wide/from16 v8, p4

    :goto_eb
    iput-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1403
    :cond_ed
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v6

    if-eqz v6, :cond_15b

    .line 1404
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 1405
    .restart local v6    # "time":Landroid/text/format/Time;
    iget-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    add-long v8, v8, p6

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1406
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--->>> T:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    iget-object v12, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    if-eqz v12, :cond_126

    iget-object v12, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    goto :goto_130

    :cond_126
    iget-object v12, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    if-eqz v12, :cond_12d

    iget-object v12, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    goto :goto_130

    :cond_12d
    const-string/jumbo v12, "null"

    :goto_130
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", INT:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1406
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    .end local v6    # "time":Landroid/text/format/Time;
    :cond_15b
    return-void
.end method

.method private adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V
    .registers 41
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "inputDistance"    # J
    .param p4, "includeItself"    # Z

    .line 1633
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v9, 0x1

    if-gt v0, v9, :cond_b

    move v0, v9

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move v10, v0

    .line 1634
    .local v10, "isRtc":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1635
    .local v11, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 1636
    .local v13, "nowElapsed":J
    sub-long v15, v11, v13

    .line 1637
    .local v15, "TIME_SKEW":J
    const-wide/16 v17, 0x0

    if-eqz v10, :cond_1d

    move-wide v0, v15

    goto :goto_1f

    :cond_1d
    move-wide/from16 v0, v17

    :goto_1f
    move-wide/from16 v19, v0

    .line 1638
    .local v19, "skewToRtc":J
    const-wide v21, 0x7fffffffffffffffL

    .line 1639
    .local v21, "nextAlarmWhen":J
    const-wide v23, 0x7fffffffffffffffL

    .line 1640
    .local v23, "nextAlarmWhenElapsed":J
    move-wide/from16 v25, p2

    .line 1641
    .local v25, "distance":J
    const/16 v27, 0x0

    .line 1642
    .local v27, "isFlexibleRepeatingAlarm":Z
    const-wide/16 v28, 0x0

    .line 1643
    .local v28, "count":J
    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    const-wide/16 v2, 0x3e8

    add-long v30, v0, v2

    .line 1644
    .local v30, "curAlarmWhen":J
    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v0, v17

    if-lez v0, :cond_43

    .line 1645
    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iget-wide v2, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    sub-long/2addr v0, v2

    goto :goto_45

    :cond_43
    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    :goto_45
    move-wide/from16 v32, v0

    .line 1646
    .local v32, "curAlarmWindow":J
    const/16 v34, 0x0

    .line 1648
    .local v34, "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    cmp-long v0, v25, v17

    if-eqz v0, :cond_1e4

    iget-object v0, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v17

    if-nez v0, :cond_59

    goto/16 :goto_1e4

    .line 1652
    :cond_59
    iget-boolean v0, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    if-nez v0, :cond_6e

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iget-object v2, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    rem-long/2addr v0, v2

    cmp-long v0, v0, v17

    if-nez v0, :cond_6b

    goto :goto_6e

    :cond_6b
    move-object/from16 v0, v34

    goto :goto_ab

    .line 1654
    :cond_6e
    :goto_6e
    iget-object v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    iget-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-object/from16 v0, p0

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-result-object v0

    .line 1655
    .end local v34    # "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .local v0, "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    if-eqz v0, :cond_ab

    .line 1659
    iget-wide v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v3, v9, :cond_86

    move-wide v3, v15

    goto :goto_88

    :cond_86
    move-wide/from16 v3, v17

    :goto_88
    sub-long v21, v1, v3

    .line 1661
    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 1662
    .local v1, "bigTemp":Ljava/math/BigInteger;
    iget-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1663
    .local v2, "bigGcd":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    const-wide/32 v34, 0x493e0

    rem-long v3, v3, v34

    cmp-long v3, v3, v17

    if-nez v3, :cond_ab

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v25

    .line 1670
    .end local v1    # "bigTemp":Ljava/math/BigInteger;
    .end local v2    # "bigGcd":Ljava/math/BigInteger;
    :cond_ab
    :goto_ab
    cmp-long v1, v25, v17

    if-eqz v1, :cond_bd

    iget-object v1, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    rem-long v1, v25, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_bd

    iput-boolean v9, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 1675
    :cond_bd
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v21, v1

    const-string v2, "AlarmManagerEXT"

    if-eqz v1, :cond_1c8

    .line 1679
    add-long v21, v21, v19

    .line 1685
    iget-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v1, v3, v17

    if-lez v1, :cond_dc

    add-long v3, v13, v19

    sub-long v3, v30, v3

    iget-wide v8, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_dc

    .line 1687
    const/16 v27, 0x1

    .line 1693
    :cond_dc
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1200()Z

    move-result v3

    if-eqz v3, :cond_f3

    iget-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v8, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_f0

    iget-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v3, v3, v17

    if-lez v3, :cond_f3

    .line 1695
    :cond_f0
    const/4 v3, 0x1

    move/from16 v27, v3

    .line 1702
    :cond_f3
    cmp-long v3, v21, v30

    const-wide/16 v4, 0x1

    if-gtz v3, :cond_12c

    .line 1706
    iget-boolean v1, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    if-eqz v1, :cond_10f

    iget-object v1, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    rem-long v8, p2, v8

    cmp-long v1, v8, v17

    if-eqz v1, :cond_10f

    .line 1707
    iget-object v1, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v25

    .line 1708
    :cond_10f
    sub-long v8, v30, v21

    div-long v8, v8, v25

    .line 1709
    .end local v28    # "count":J
    .local v8, "count":J
    if-eqz v27, :cond_123

    .line 1713
    :goto_115
    add-long v17, v8, v4

    mul-long v17, v17, v25

    add-long v17, v21, v17

    add-long v28, v30, v32

    cmp-long v1, v17, v28

    if-gtz v1, :cond_123

    add-long/2addr v8, v4

    goto :goto_115

    .line 1715
    :cond_123
    mul-long v3, v25, v8

    add-long v3, v21, v3

    iput-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v3, v25

    goto :goto_18f

    .line 1722
    .end local v8    # "count":J
    .restart local v28    # "count":J
    :cond_12c
    cmp-long v3, v25, v17

    if-eqz v3, :cond_134

    .line 1723
    sub-long v8, v21, v30

    div-long v28, v8, v25

    .line 1728
    :cond_134
    sub-long v8, v30, v25

    add-long v34, v13, v19

    cmp-long v3, v8, v34

    if-gez v3, :cond_183

    add-long v8, v28, v4

    mul-long v8, v8, v25

    sub-long v8, v21, v8

    add-long v34, v13, v19

    cmp-long v3, v8, v34

    if-gez v3, :cond_183

    iget-wide v8, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v3, v8, v17

    if-gtz v3, :cond_183

    iget v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    iget v8, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    if-ne v3, v8, :cond_161

    const-wide/16 v8, 0x2

    div-long v8, v25, v8

    sub-long v8, v30, v8

    add-long v17, v13, v19

    cmp-long v3, v8, v17

    if-gtz v3, :cond_161

    goto :goto_183

    .line 1750
    :cond_161
    if-eqz v27, :cond_17b

    .line 1754
    :goto_163
    mul-long v8, v25, v28

    sub-long v8, v21, v8

    add-long v17, v30, v32

    cmp-long v1, v8, v17

    if-ltz v1, :cond_170

    add-long v28, v28, v4

    goto :goto_163

    .line 1755
    :cond_170
    mul-long v3, v25, v28

    sub-long v3, v21, v3

    iput-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v3, v25

    move-wide/from16 v8, v28

    goto :goto_18f

    .line 1758
    :cond_17b
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move-wide/from16 v3, v25

    move-wide/from16 v8, v28

    goto :goto_18f

    .line 1739
    :cond_183
    :goto_183
    add-long v28, v28, v4

    .line 1740
    mul-long v3, v25, v28

    sub-long v3, v21, v3

    iput-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v3, v25

    move-wide/from16 v8, v28

    .line 1762
    .end local v25    # "distance":J
    .end local v28    # "count":J
    .local v3, "distance":J
    .restart local v8    # "count":J
    :goto_18f
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1c3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " next: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", unit: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", C: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", WL:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_1c3
    move-wide/from16 v25, v3

    move-wide/from16 v28, v8

    goto :goto_1e3

    .line 1765
    .end local v3    # "distance":J
    .end local v8    # "count":J
    .restart local v25    # "distance":J
    .restart local v28    # "count":J
    :cond_1c8
    const-string v3, " next == MAX_VALUE"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-wide v2, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v2, v2, v17

    if-lez v2, :cond_1e3

    iget-wide v2, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-object v4, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1771
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    rem-long/2addr v2, v4

    cmp-long v2, v2, v17

    if-eqz v2, :cond_1e3

    .line 1772
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 1775
    :cond_1e3
    :goto_1e3
    return-void

    .line 1648
    .end local v0    # "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v34    # "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_1e4
    :goto_1e4
    return-void
.end method

.method private calculateGcdOfRepeatIntervals(JJ)J
    .registers 13
    .param p1, "interval_old"    # J
    .param p3, "interval_new"    # J

    .line 1584
    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 1585
    .local v0, "newRepeatInterval":Ljava/math/BigInteger;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 1586
    .local v1, "oldIntervalGcd":Ljava/math/BigInteger;
    move-object v2, v1

    .line 1590
    .local v2, "newIntervalGcd":Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1595
    .local v3, "tempIntervalGcd":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_27

    .line 1600
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_27

    .line 1601
    move-object v2, v3

    .line 1604
    :cond_27
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private containsPackageAsUser(Lcom/android/server/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "setType"    # Lcom/android/server/AppSyncWrapper$SET_TYPE;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3866
    if-nez p2, :cond_4

    .line 3867
    const/4 v0, 0x0

    return v0

    .line 3869
    :cond_4
    const/4 v0, 0x0

    .line 3871
    .local v0, "ret":Z
    sget-object v1, Lcom/android/server/AlarmManagerServiceExt$1;->$SwitchMap$com$android$server$AppSyncWrapper$SET_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/AppSyncWrapper$SET_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    .line 3879
    return v0

    .line 3875
    :cond_14
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 3873
    :cond_1d
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "lock"    # Ljava/lang/Object;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .line 3883
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    if-nez p3, :cond_8

    goto :goto_24

    .line 3886
    :cond_8
    invoke-direct {p0, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3887
    .local v1, "tagAsUser":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-direct {p0, p3, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3888
    .local v2, "tagAsALL":Ljava/lang/String;
    monitor-enter p1

    .line 3889
    :try_start_12
    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    :cond_1f
    monitor-exit p1

    return v0

    .line 3890
    :catchall_21
    move-exception v0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw v0

    .line 3884
    .end local v1    # "tagAsUser":Ljava/lang/String;
    .end local v2    # "tagAsALL":Ljava/lang/String;
    :cond_24
    :goto_24
    return v0
.end method

.method private doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p5, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2324
    .local p4, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p3

    .line 2325
    :try_start_1
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2326
    .local v0, "iSuspSets":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   (AppSync) ---------< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2327
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2328
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   (AppSync) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c

    .line 2330
    :cond_40
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "   (AppSync) ---------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2331
    .end local v0    # "iSuspSets":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    monitor-exit p3

    .line 2332
    return-void

    .line 2331
    :catchall_4a
    move-exception v0

    monitor-exit p3
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method private doTest()V
    .registers 4

    .line 4131
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/app_sync_log_enable"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4132
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    .line 4133
    const-string v1, "AlarmManagerEXT"

    const-string v2, "No exist test interface file : /data/system/app_sync_log_enable"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4134
    return-void

    .line 4137
    :cond_15
    new-instance v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    .line 4138
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 4139
    return-void
.end method

.method private getPackageTag(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTarget(Lcom/android/server/AlarmManagerService$Alarm;)I
    .registers 5
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 1284
    sget-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->APPSYNC3P_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->containsPackageAsUser(Lcom/android/server/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1285
    const/4 v0, 0x0

    return v0

    .line 1288
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method private getUserIdFromTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 865
    const-string/jumbo v0, "unknown"

    if-nez p1, :cond_6

    .line 866
    return-object v0

    .line 868
    :cond_6
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "infos":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    .line 870
    return-object v0

    .line 872
    :cond_11
    const/4 v0, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method private isChinaControlAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 1273
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    if-nez v0, :cond_12

    .line 1274
    const/4 v0, 0x1

    return v0

    .line 1276
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private isIgnoreAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 1250
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    # invokes: Lcom/android/server/AlarmManagerServiceExt;->getInfoFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;
    invoke-static {v0, v2, v3}, Lcom/android/server/AlarmManagerServiceExt;->access$1100(Lcom/android/server/AlarmManagerServiceExt;Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 1251
    .local v0, "tIntent":Landroid/content/Intent;
    :goto_11
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1253
    .local v1, "pkgaction":Ljava/lang/String;
    :cond_17
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnorePackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    if-eqz v1, :cond_2e

    .line 1254
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action.time_tick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_30

    .line 1258
    :cond_2e
    const/4 v2, 0x0

    return v2

    .line 1255
    :cond_30
    :goto_30
    const/4 v2, 0x1

    return v2
.end method

.method private isIgnorePackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1234
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1235
    return v0

    .line 1237
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1238
    .local v1, "_pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    .line 1239
    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    const/4 v0, 0x1

    .line 1238
    :cond_19
    return v0
.end method

.method private isSystemApplication(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 847
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isTargetApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 851
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 852
    return v1

    .line 854
    :cond_a
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isSystemApplication(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 855
    return v1

    .line 857
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .registers 6
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .line 1946
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 1947
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    return v1

    .line 1946
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1949
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 6
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1936
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1e

    .line 1937
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v1

    .line 1936
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1939
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1929
    .local p1, "targetPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private queryAccounts()V
    .registers 10

    .line 2167
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 2168
    .local v0, "am":Landroid/accounts/AccountManager;
    if-nez v0, :cond_d

    return-void

    .line 2169
    :cond_d
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 2171
    .local v1, "ads":[Landroid/accounts/AuthenticatorDescription;
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    .line 2172
    :try_start_14
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2173
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_34

    aget-object v5, v1, v4

    .line 2174
    .local v5, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v7, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_31

    .line 2175
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v7, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2173
    .end local v5    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 2182
    :cond_34
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    if-eqz v3, :cond_b8

    .line 2183
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2184
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2185
    .local v4, "pC":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    nop

    .end local v4    # "pC":Ljava/lang/String;
    goto :goto_43

    .line 2190
    :cond_56
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2191
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 2192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2193
    .local v4, "pA":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 2194
    .end local v4    # "pA":Ljava/lang/String;
    :cond_73
    goto :goto_5c

    .line 2195
    :cond_74
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2196
    .local v5, "pA":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2197
    nop

    .end local v5    # "pA":Ljava/lang/String;
    goto :goto_7a

    .line 2198
    :cond_8d
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_93
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2199
    .local v5, "pT":Ljava/lang/String;
    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<TargetPackages> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    nop

    .end local v5    # "pT":Ljava/lang/String;
    goto :goto_93

    .line 2201
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b7
    goto :goto_e2

    .line 2203
    :cond_b8
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2204
    .restart local v4    # "pA":Ljava/lang/String;
    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<AccPackages> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    nop

    .end local v4    # "pA":Ljava/lang/String;
    goto :goto_be

    .line 2207
    :cond_e2
    :goto_e2
    monitor-exit v2

    .line 2208
    return-void

    .line 2207
    :catchall_e4
    move-exception v3

    monitor-exit v2
    :try_end_e6
    .catchall {:try_start_14 .. :try_end_e6} :catchall_e4

    throw v3
.end method

.method private recalculateGcdOfRepeatIntervalsLocked()V
    .registers 18

    .line 1611
    move-object/from16 v0, p0

    const-wide/32 v1, 0x1b77400

    .line 1612
    .local v1, "newIntervalGcd":J
    const/4 v3, 0x0

    .line 1613
    .local v3, "i":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1614
    .local v4, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 1615
    .local v6, "TIME_SKEW":J
    iget-object v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1616
    .local v9, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget v10, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v11, 0x1

    if-gt v10, v11, :cond_28

    goto :goto_29

    :cond_28
    const/4 v11, 0x0

    :goto_29
    move v10, v11

    .line 1617
    .local v10, "isRtc":Z
    iget-wide v11, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    const-wide/16 v13, 0x0

    if-eqz v10, :cond_32

    move-wide v15, v13

    goto :goto_33

    :cond_32
    move-wide v15, v6

    :goto_33
    add-long/2addr v11, v15

    .line 1618
    .local v11, "when":J
    cmp-long v15, v4, v11

    if-gez v15, :cond_48

    move-wide v15, v4

    .end local v4    # "nowRtc":J
    .local v15, "nowRtc":J
    iget-wide v4, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    cmp-long v4, v4, v13

    if-lez v4, :cond_49

    .line 1619
    iget-wide v4, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v1

    .line 1620
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 1618
    .end local v15    # "nowRtc":J
    .restart local v4    # "nowRtc":J
    :cond_48
    move-wide v15, v4

    .line 1622
    .end local v4    # "nowRtc":J
    .end local v9    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "isRtc":Z
    .end local v11    # "when":J
    .restart local v15    # "nowRtc":J
    :cond_49
    :goto_49
    move-wide v4, v15

    goto :goto_16

    .line 1623
    .end local v15    # "nowRtc":J
    .restart local v4    # "nowRtc":J
    :cond_4b
    move-wide v15, v4

    .end local v4    # "nowRtc":J
    .restart local v15    # "nowRtc":J
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1624
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v4

    if-eqz v4, :cond_78

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " GCD_NEW("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AlarmManagerEXT"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_78
    return-void
.end method

.method private removeLocked(Ljava/util/ArrayList;I)Z
    .registers 7
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;I)Z"
        }
    .end annotation

    .line 2146
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v0, 0x0

    .line 2147
    .local v0, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    return v0

    .line 2152
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2153
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2155
    .local v2, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p2, :cond_28

    .line 2156
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2157
    const/4 v0, 0x1

    .line 2159
    .end local v2    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_28
    goto :goto_c

    .line 2160
    :cond_29
    return v0
.end method

.method private removeLocked(Ljava/util/ArrayList;IZ)Z
    .registers 8
    .param p2, "uid"    # I
    .param p3, "dummy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;IZ)Z"
        }
    .end annotation

    .line 2128
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v0, 0x0

    .line 2129
    .local v0, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    return v0

    .line 2134
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2135
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2137
    .local v2, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    if-ne v3, p2, :cond_20

    .line 2138
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2139
    const/4 v0, 0x1

    .line 2141
    .end local v2    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_20
    goto :goto_c

    .line 2142
    :cond_21
    return v0
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/IAlarmListener;)Z
    .registers 7
    .param p2, "rec"    # Landroid/app/IAlarmListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/IAlarmListener;",
            ")Z"
        }
    .end annotation

    .line 2092
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v0, 0x0

    .line 2093
    .local v0, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    return v0

    .line 2098
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2099
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2101
    .local v2, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2102
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2103
    const/4 v0, 0x1

    .line 2105
    .end local v2    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_23
    goto :goto_c

    .line 2106
    :cond_24
    return v0
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .registers 7
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .line 2067
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v0, 0x0

    .line 2068
    .local v0, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    return v0

    .line 2073
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2074
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2075
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2076
    .local v2, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2077
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2078
    const/4 v0, 0x1

    .line 2080
    .end local v2    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_24
    goto :goto_c

    .line 2081
    :cond_25
    return v0
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 7
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2110
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v0, 0x0

    .line 2111
    .local v0, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    return v0

    .line 2116
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2117
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2119
    .local v2, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2120
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2121
    const/4 v0, 0x1

    .line 2123
    .end local v2    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_28
    goto :goto_c

    .line 2124
    :cond_29
    return v0
.end method

.method private removePackage(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3930
    .local p2, "from":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_f

    if-nez p2, :cond_5

    goto :goto_f

    .line 3933
    :cond_5
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3934
    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3935
    :cond_e
    return-void

    .line 3931
    :cond_f
    :goto_f
    return-void
.end method

.method private removePackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3921
    .local p3, "from":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-nez p3, :cond_7

    goto :goto_10

    .line 3924
    :cond_7
    monitor-enter p1

    .line 3925
    :try_start_8
    invoke-direct {p0, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removePackage(Ljava/lang/String;Ljava/util/Collection;)V

    .line 3926
    monitor-exit p1

    .line 3927
    return-void

    .line 3926
    :catchall_d
    move-exception v0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0

    .line 3922
    :cond_10
    :goto_10
    return-void
.end method

.method private swapPackage(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3894
    .local p2, "from":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "to":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    if-nez p3, :cond_7

    goto :goto_14

    .line 3897
    :cond_7
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3898
    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3900
    :cond_10
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3901
    return-void

    .line 3895
    :cond_14
    :goto_14
    return-void
.end method

.method private timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .registers 38
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "rec"    # Landroid/app/IAlarmListener;
    .param p3, "interval"    # J
    .param p5, "includeItself"    # Z

    .line 1783
    move-object/from16 v0, p0

    const-wide v1, 0x7fffffffffffffffL

    .line 1784
    .local v1, "nextAlarm":J
    const-wide v3, 0x7fffffffffffffffL

    .line 1785
    .local v3, "nextAlarmWithSameInterval":J
    const-wide v5, 0x7fffffffffffffffL

    .line 1786
    .local v5, "nextAlarmWithMultipleInterval":J
    const-wide v7, 0x7fffffffffffffffL

    .line 1787
    .local v7, "nextAlarmWithDividedInterval":J
    const/4 v9, 0x0

    .line 1788
    .local v9, "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v10, 0x0

    .line 1789
    .local v10, "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v11, 0x0

    .line 1790
    .local v11, "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v12, 0x0

    .line 1791
    .local v12, "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1792
    .local v13, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long v15, v13, v15

    .line 1793
    .local v15, "TIME_SKEW":J
    move-wide/from16 v17, v1

    .end local v1    # "nextAlarm":J
    .local v17, "nextAlarm":J
    iget-object v1, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-nez v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 1794
    .local v1, "isIntSameAsGcd":Z
    :goto_33
    const-wide/16 v19, 0x0

    .line 1796
    .local v19, "biggestGcd":J
    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_16e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v2

    move-object/from16 v2, v21

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1801
    .local v2, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    move-object/from16 v21, v9

    move-object/from16 v23, v10

    .end local v9    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .local v21, "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .local v23, "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const-wide/32 v24, 0x1b77400

    cmp-long v9, v9, v24

    if-gtz v9, :cond_156

    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const-wide/32 v24, 0x493e0

    cmp-long v9, v9, v24

    if-ltz v9, :cond_156

    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v24, v15

    .end local v15    # "TIME_SKEW":J
    .local v24, "TIME_SKEW":J
    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1802
    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    rem-long/2addr v9, v15

    const-wide/16 v15, 0x0

    cmp-long v9, v9, v15

    if-nez v9, :cond_14f

    iget-boolean v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v9, :cond_14f

    .line 1804
    if-nez p5, :cond_8b

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual {v2, v9, v10}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v26

    if-eqz v26, :cond_8f

    move-object/from16 v9, v21

    move-object/from16 v2, v22

    move-object/from16 v10, v23

    move-wide/from16 v15, v24

    goto :goto_3b

    :cond_8b
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1806
    :cond_8f
    iget v15, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v9, 0x1

    if-gt v15, v9, :cond_96

    move v15, v9

    goto :goto_97

    :cond_96
    const/4 v15, 0x0

    .line 1807
    .local v15, "isRtc":Z
    :goto_97
    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    if-eqz v15, :cond_9e

    const-wide/16 v28, 0x0

    goto :goto_a0

    :cond_9e
    move-wide/from16 v28, v24

    :goto_a0
    add-long v9, v9, v28

    .line 1811
    .local v9, "when":J
    move/from16 v16, v15

    .end local v15    # "isRtc":Z
    .local v16, "isRtc":Z
    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v28

    add-long v28, v9, v28

    cmp-long v15, v13, v28

    if-gez v15, :cond_148

    .line 1815
    if-eqz v1, :cond_c8

    .line 1816
    cmp-long v15, v9, v17

    if-gez v15, :cond_c0

    .line 1817
    move-wide/from16 v17, v9

    .line 1818
    move-object v15, v2

    move-wide/from16 v28, v13

    move-object v9, v15

    move-object/from16 v10, v23

    .end local v21    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .local v15, "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    goto/16 :goto_166

    .line 1816
    .end local v15    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v21    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_c0
    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-wide/from16 v28, v13

    goto/16 :goto_15e

    .line 1822
    :cond_c8
    invoke-static/range {p3 .. p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    .line 1823
    .local v15, "bigTemp":Ljava/math/BigInteger;
    move-wide/from16 v28, v13

    .end local v13    # "nowRtc":J
    .local v28, "nowRtc":J
    iget-wide v13, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v13

    .line 1827
    .local v13, "longGcd":J
    move-object/from16 v30, v11

    move-object/from16 v31, v12

    .end local v11    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v12    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .local v30, "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .local v31, "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-wide v11, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    cmp-long v11, v11, p3

    if-nez v11, :cond_f5

    .line 1828
    cmp-long v11, v9, v3

    if-gez v11, :cond_15e

    .line 1829
    move-wide v3, v9

    .line 1830
    move-object v11, v2

    move-object v10, v11

    move-object/from16 v9, v21

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    .end local v23    # "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .local v11, "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    goto/16 :goto_166

    .line 1836
    .end local v11    # "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v23    # "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_f5
    cmp-long v11, v13, p3

    if-nez v11, :cond_107

    .line 1837
    cmp-long v11, v9, v5

    if-gez v11, :cond_15e

    .line 1838
    move-wide v5, v9

    .line 1839
    move-object v11, v2

    move-object/from16 v9, v21

    move-object/from16 v10, v23

    move-object/from16 v12, v31

    .end local v30    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .local v11, "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    goto/16 :goto_166

    .line 1845
    .end local v11    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v30    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_107
    const-wide/16 v11, 0x0

    cmp-long v26, v13, v11

    if-eqz v26, :cond_136

    iget-object v11, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v11

    rem-long v11, v13, v11

    const-wide/16 v26, 0x0

    cmp-long v11, v11, v26

    if-nez v11, :cond_136

    cmp-long v11, v13, v19

    if-ltz v11, :cond_136

    .line 1848
    cmp-long v11, v13, v19

    if-nez v11, :cond_12b

    cmp-long v11, v9, v7

    if-gez v11, :cond_128

    goto :goto_12b

    :cond_128
    move-object/from16 v12, v31

    goto :goto_12d

    .line 1849
    :cond_12b
    :goto_12b
    move-wide v7, v9

    .line 1850
    move-object v12, v2

    .line 1852
    .end local v31    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v12    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :goto_12d
    move-wide/from16 v19, v13

    move-object/from16 v9, v21

    move-object/from16 v10, v23

    move-object/from16 v11, v30

    goto :goto_166

    .line 1858
    .end local v12    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v31    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_136
    cmp-long v11, v9, v17

    if-gez v11, :cond_15e

    .line 1859
    move-wide v11, v9

    .line 1860
    .end local v17    # "nextAlarm":J
    .local v11, "nextAlarm":J
    move-object/from16 v17, v2

    move-object/from16 v9, v17

    move-object/from16 v10, v23

    move-wide/from16 v17, v11

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    .end local v21    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .local v17, "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    goto :goto_166

    .line 1811
    .end local v15    # "bigTemp":Ljava/math/BigInteger;
    .end local v28    # "nowRtc":J
    .end local v30    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v31    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .local v11, "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v12    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .local v13, "nowRtc":J
    .local v17, "nextAlarm":J
    .restart local v21    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_148
    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-wide/from16 v28, v13

    .end local v11    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v12    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v13    # "nowRtc":J
    .restart local v28    # "nowRtc":J
    .restart local v30    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v31    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    goto :goto_15e

    .line 1802
    .end local v9    # "when":J
    .end local v16    # "isRtc":Z
    .end local v28    # "nowRtc":J
    .end local v30    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v31    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v11    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v12    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v13    # "nowRtc":J
    :cond_14f
    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-wide/from16 v28, v13

    .end local v11    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v12    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v13    # "nowRtc":J
    .restart local v28    # "nowRtc":J
    .restart local v30    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v31    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    goto :goto_15e

    .line 1801
    .end local v24    # "TIME_SKEW":J
    .end local v28    # "nowRtc":J
    .end local v30    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v31    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v11    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v12    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v13    # "nowRtc":J
    .local v15, "TIME_SKEW":J
    :cond_156
    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-wide/from16 v28, v13

    move-wide/from16 v24, v15

    .line 1866
    .end local v2    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v11    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v12    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v13    # "nowRtc":J
    .end local v15    # "TIME_SKEW":J
    .restart local v24    # "TIME_SKEW":J
    .restart local v28    # "nowRtc":J
    .restart local v30    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v31    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_15e
    :goto_15e
    move-object/from16 v9, v21

    move-object/from16 v10, v23

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    .end local v21    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v23    # "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v30    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v31    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .local v9, "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v10    # "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v11    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v12    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :goto_166
    move-object/from16 v2, v22

    move-wide/from16 v15, v24

    move-wide/from16 v13, v28

    goto/16 :goto_3b

    .line 1871
    .end local v24    # "TIME_SKEW":J
    .end local v28    # "nowRtc":J
    .restart local v13    # "nowRtc":J
    .restart local v15    # "TIME_SKEW":J
    :cond_16e
    move-object/from16 v21, v9

    move-object/from16 v23, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-wide/from16 v28, v13

    move-wide/from16 v24, v15

    .end local v9    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v11    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v12    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v13    # "nowRtc":J
    .end local v15    # "TIME_SKEW":J
    .restart local v21    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v23    # "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v24    # "TIME_SKEW":J
    .restart local v28    # "nowRtc":J
    .restart local v30    # "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v31    # "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    if-eqz v31, :cond_17f

    move-object/from16 v9, v31

    .end local v21    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v9    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    goto :goto_181

    .end local v9    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v21    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_17f
    move-object/from16 v9, v21

    .line 1875
    .end local v21    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v9    # "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :goto_181
    if-eqz v30, :cond_185

    move-object/from16 v9, v30

    .line 1879
    :cond_185
    if-eqz v23, :cond_189

    move-object/from16 v9, v23

    .line 1883
    :cond_189
    return-object v9
.end method

.method private updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 3
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 883
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 884
    return-void
.end method

.method private updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;Z)V
    .registers 12
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "forced"    # Z

    .line 887
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->ANDROID_P_OR_LATER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$900()Z

    move-result v0

    if-nez v0, :cond_7

    .line 888
    return-void

    .line 890
    :cond_7
    if-nez p2, :cond_12

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    .line 891
    return-void

    .line 894
    :cond_12
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 895
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 897
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 898
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 899
    .local v0, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 900
    .local v1, "TIME_SKEW":J
    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_38

    const-wide/16 v5, 0x0

    goto :goto_39

    :cond_38
    move-wide v5, v1

    :goto_39
    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 901
    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v3

    .line 903
    .local v3, "timeStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updated expectedWhen (T:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_a9

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->hashCode()I

    move-result v6

    goto :goto_b3

    :cond_a9
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v6}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_b3
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_cc

    .line 907
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v6, v6, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    # invokes: Lcom/android/server/AlarmManagerServiceExt;->getKidFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I
    invoke-static {v6, v7}, Lcom/android/server/AlarmManagerServiceExt;->access$000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I

    move-result v6

    goto :goto_d6

    .line 908
    :cond_cc
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v6}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 906
    :goto_d6
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 903
    const-string v5, "AlarmManagerEXT"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    .end local v0    # "time":Landroid/text/format/Time;
    .end local v1    # "TIME_SKEW":J
    .end local v3    # "timeStr":Ljava/lang/String;
    :cond_fc
    return-void
.end method

.method private updateRepeatingAlarmLocked(IJ)V
    .registers 33
    .param p1, "hashCode"    # I
    .param p2, "interval"    # J

    .line 1977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1981
    .local v2, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    move/from16 v4, p1

    if-ne v3, v4, :cond_90

    .line 1983
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    .line 1984
    move-wide/from16 v5, p2

    iput-wide v5, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1985
    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_2c

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    goto :goto_37

    .line 1986
    :cond_2c
    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v11, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v7

    :goto_37
    iput-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 1987
    new-instance v1, Lcom/android/server/AlarmManagerService$Alarm;

    move-object v9, v1

    iget v10, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    iget-wide v11, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v13, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->windowLength:J

    move-wide v15, v7

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    move-wide/from16 v17, v7

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v19, v7

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v21, v3

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    move-object/from16 v22, v3

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listenerTag:Ljava/lang/String;

    move-object/from16 v23, v3

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->workSource:Landroid/os/WorkSource;

    move-object/from16 v24, v3

    iget v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->flags:I

    move/from16 v25, v3

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v26, v3

    iget v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    move/from16 v27, v3

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->packageName:Ljava/lang/String;

    move-object/from16 v28, v3

    invoke-direct/range {v9 .. v28}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 1990
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v3

    if-eqz v3, :cond_8c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TA] Updating the alarm... "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "AlarmManagerEXT"

    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_8c
    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1992
    return-void

    .line 1981
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_90
    move-wide/from16 v5, p2

    .line 1994
    .end local v2    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    goto/16 :goto_8

    .line 1995
    :cond_94
    move/from16 v4, p1

    move-wide/from16 v5, p2

    return-void
.end method

.method private updateSuspiciousPolicy(Landroid/content/Context;)V
    .registers 10
    .param p1, "ctx"    # Landroid/content/Context;

    .line 3961
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    .line 3962
    .local v0, "helper":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->isSCPMAvailable()Z

    move-result v1

    const-wide/16 v2, 0x2710

    if-nez v1, :cond_2c

    .line 3963
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3964
    const-string v1, "AlarmManagerEXT"

    const-string v4, "SCPM is unavailable now"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    :cond_1a
    sput-wide v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    .line 3966
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    .line 3967
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3968
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_29

    .line 3969
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateSuspiciousTags()V

    .line 3970
    return-void

    .line 3968
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2

    .line 3973
    :cond_2c
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->getSuspiciousTimeLimitFromSCPM()J

    move-result-wide v4

    .line 3974
    .local v4, "time":J
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->getSuspiciousTagFromSCPM()Ljava/util/ArrayList;

    move-result-object v1

    .line 3976
    .local v1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_3b

    goto :goto_3c

    :cond_3b
    move-wide v2, v4

    :goto_3c
    sput-wide v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    .line 3977
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 3978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[POLICY] SUSPICIOUS THRESHOLD TIME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManagerEXT"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    :cond_5c
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v2

    .line 3981
    :try_start_5f
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 3982
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-direct {p0, v1, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 3983
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_6e

    .line 3984
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateSuspiciousTags()V

    .line 3985
    return-void

    .line 3983
    :catchall_6e
    move-exception v3

    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v3
.end method

.method private updateSuspiciousTags()V
    .registers 4

    .line 3939
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3940
    .local v0, "newSuspiciousTagSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    .line 3941
    :try_start_8
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3942
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_24

    .line 3943
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    monitor-enter v2

    .line 3944
    :try_start_11
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3945
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_21

    .line 3947
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    monitor-enter v1

    .line 3948
    :try_start_1a
    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    .line 3949
    monitor-exit v1

    .line 3950
    return-void

    .line 3949
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw v2

    .line 3945
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1

    .line 3942
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2
.end method


# virtual methods
.method public disableSuspiciousPackageControlAsUser(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3852
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3853
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removePackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    .line 3855
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    .line 3856
    :try_start_e
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3857
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_25

    .line 3859
    :cond_1e
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removePackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    .line 3861
    :goto_25
    monitor-exit v1

    .line 3862
    const/4 v1, 0x1

    return v1

    .line 3861
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2335
    move-object v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    .line 2336
    .local v9, "newAddedCount":I
    const-string v0, "  <AppSync3 Whitelist>"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2337
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2338
    iget-object v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 2339
    :try_start_12
    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2340
    .local v2, "pC":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   (AppSync) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2341
    .end local v2    # "pC":Ljava/lang/String;
    goto :goto_18

    .line 2342
    :cond_3c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "   (AppSync) ---------"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2343
    monitor-exit v1

    goto :goto_49

    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_12 .. :try_end_48} :catchall_46

    throw v0

    .line 2346
    :cond_49
    :goto_49
    iget-object v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    const-string v6, "AppSync3+ Packages"

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V

    .line 2347
    iget-object v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    const-string v6, "Suspicious Packages"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V

    .line 2348
    iget-object v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    const-string v6, "Suspicious Packages From API"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V

    .line 2349
    iget-object v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    const-string v6, "Suspicious Packages From SCPM"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V

    .line 2350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspicious Threshold Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "[millis]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2352
    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, 0x1

    if-eqz v0, :cond_9c

    .line 2353
    invoke-virtual {v0, v1, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->printWhitelist(ZLjava/io/PrintWriter;)V

    .line 2354
    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getWhitelistCount()I

    move-result v0

    add-int/2addr v9, v0

    .line 2356
    :cond_9c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  (AppSync) ### "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " added ###"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2357
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_ff

    .line 2358
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  (AppSync) Processing time (avg/max) : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v1, [Ljava/lang/Object;

    iget-wide v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "%.2f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "(UID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") [ms]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2362
    :cond_ff
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 2363
    iget-object v3, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v3

    .line 2364
    :try_start_108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v4, v10

    .line 2368
    .local v4, "TIME_SKEW":J
    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2369
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :goto_117
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_199

    .line 2370
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2371
    .local v6, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 2372
    .local v10, "time":Landroid/text/format/Time;
    iget-wide v11, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v13, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v13, v1, :cond_131

    const-wide/16 v13, 0x0

    goto :goto_132

    :cond_131
    move-wide v13, v4

    :goto_132
    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 2373
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    [AppSync] T:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", INT:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2374
    iget-boolean v12, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    if-eqz v12, :cond_187

    move v12, v1

    goto :goto_188

    :cond_187
    move v12, v2

    :goto_188
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2373
    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2375
    .end local v6    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "time":Landroid/text/format/Time;
    goto/16 :goto_117

    .line 2376
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v4    # "TIME_SKEW":J
    :cond_199
    monitor-exit v3
    :try_end_19a
    .catchall {:try_start_108 .. :try_end_19a} :catchall_1cb

    .line 2377
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GCD:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2378
    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1ce

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 2379
    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeUnusedAlarmRecord(JZLjava/io/PrintWriter;)V

    goto :goto_1ce

    .line 2376
    :catchall_1cb
    move-exception v0

    :try_start_1cc
    monitor-exit v3
    :try_end_1cd
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_1cb

    throw v0

    .line 2382
    :cond_1ce
    :goto_1ce
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_237

    .line 2383
    const-string v0, "  <AppSync3 Blacklist>"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2384
    iget-object v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 2385
    :try_start_1dc
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   (AppSync) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2386
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "   (AppSync) ---------"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2387
    monitor-exit v1
    :try_end_202
    .catchall {:try_start_1dc .. :try_end_202} :catchall_234

    .line 2388
    const-string v0, "  <AppSync3p Blacklist>"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2389
    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    .line 2390
    :try_start_20a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   (AppSync) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2391
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "   (AppSync) ---------"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2392
    monitor-exit v2

    goto :goto_237

    :catchall_231
    move-exception v0

    monitor-exit v2
    :try_end_233
    .catchall {:try_start_20a .. :try_end_233} :catchall_231

    throw v0

    .line 2387
    :catchall_234
    move-exception v0

    :try_start_235
    monitor-exit v1
    :try_end_236
    .catchall {:try_start_235 .. :try_end_236} :catchall_234

    throw v0

    .line 2394
    :cond_237
    :goto_237
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Fixed Wakeups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2395
    return-void
.end method

.method public doGarbageCollection(J)V
    .registers 24
    .param p1, "nowRtc"    # J

    .line 2267
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const/4 v4, 0x0

    .line 2268
    .local v4, "newAddedCount":I
    const-string v0, "AlarmManagerEXT"

    const-string v5, "<AppSync3 Whitelist>"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2270
    iget-object v5, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v5

    .line 2271
    :try_start_15
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2272
    .local v6, "pC":Ljava/lang/String;
    const-string v7, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(AppSync) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    nop

    .end local v6    # "pC":Ljava/lang/String;
    goto :goto_1b

    .line 2274
    :cond_3f
    const-string v0, "AlarmManagerEXT"

    const-string v6, "(AppSync) ---------"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    monitor-exit v5

    goto :goto_4b

    :catchall_48
    move-exception v0

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_15 .. :try_end_4a} :catchall_48

    throw v0

    .line 2277
    :cond_4b
    :goto_4b
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_5b

    .line 2278
    invoke-virtual {v0, v6, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->printWhitelist(ZLjava/io/PrintWriter;)V

    .line 2279
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getWhitelistCount()I

    move-result v0

    add-int/2addr v4, v0

    .line 2281
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(AppSync) ### "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " added ###"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "AlarmManagerEXT"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_bc

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(SyncScheduler) Processing time (avg/max) : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v7, [Ljava/lang/Object;

    iget-wide v9, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "%.2f"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, "(UID:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ") [ms]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "AlarmManagerEXT"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    :cond_bc
    iget-object v8, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v8

    .line 2288
    :try_start_bf
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 2292
    .local v9, "TIME_SKEW":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2293
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :goto_ce
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18f

    .line 2294
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2298
    .local v11, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget v12, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    rem-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_103

    .line 2299
    iget v12, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v12, v7, :cond_e6

    move v12, v7

    goto :goto_e7

    :cond_e6
    move v12, v6

    .line 2300
    .local v12, "isRtc":Z
    :goto_e7
    iget-wide v13, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    if-eqz v12, :cond_ee

    const-wide/16 v17, 0x0

    goto :goto_f0

    :cond_ee
    move-wide/from16 v17, v9

    :goto_f0
    add-long v13, v13, v17

    .line 2304
    .local v13, "when":J
    iget-wide v5, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v19, 0x3

    mul-long v5, v5, v19

    add-long/2addr v5, v13

    cmp-long v5, v5, v2

    if-gez v5, :cond_103

    .line 2305
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2306
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_ce

    .line 2309
    .end local v12    # "isRtc":Z
    .end local v13    # "when":J
    :cond_103
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v5

    if-eqz v5, :cond_18b

    .line 2311
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 2312
    .local v5, "time":Landroid/text/format/Time;
    iget-wide v12, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v6, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v6, v7, :cond_117

    const-wide/16 v15, 0x0

    goto :goto_118

    :cond_117
    move-wide v15, v9

    :goto_118
    add-long/2addr v12, v15

    invoke-virtual {v5, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 2313
    invoke-virtual {v5}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v6

    .line 2314
    .local v6, "timeStr":Ljava/lang/String;
    const-string v12, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[AppSync] T:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    if-eqz v14, :cond_145

    iget-object v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    goto :goto_14f

    :cond_145
    iget-object v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    if-eqz v14, :cond_14c

    iget-object v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    goto :goto_14f

    :cond_14c
    const-string/jumbo v14, "null"

    :goto_14f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", INT:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2315
    iget-boolean v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    if-eqz v14, :cond_17b

    move v14, v7

    goto :goto_17c

    :cond_17b
    const/4 v14, 0x0

    :goto_17c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2314
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    .end local v5    # "time":Landroid/text/format/Time;
    .end local v6    # "timeStr":Ljava/lang/String;
    .end local v11    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_18b
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_ce

    .line 2318
    :cond_18f
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v5

    if-eqz v5, :cond_1ad

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " GCD:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v9    # "TIME_SKEW":J
    :cond_1ad
    monitor-exit v8
    :try_end_1ae
    .catchall {:try_start_bf .. :try_end_1ae} :catchall_1b8

    .line 2320
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1b7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v6, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeUnusedAlarmRecord(JZLjava/io/PrintWriter;)V

    .line 2321
    :cond_1b7
    return-void

    .line 2319
    :catchall_1b8
    move-exception v0

    :try_start_1b9
    monitor-exit v8
    :try_end_1ba
    .catchall {:try_start_1b9 .. :try_end_1ba} :catchall_1b8

    throw v0
.end method

.method public enableSuspiciousPackageControlAsUser(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3837
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3838
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    .line 3840
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    .line 3841
    const/4 v1, 0x1

    return v1
.end method

.method public lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z
    .registers 14
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "rec"    # Landroid/app/IAlarmListener;
    .param p3, "triggerAtTime"    # J

    .line 1891
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    .line 1892
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1896
    .local v2, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5b

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    cmp-long v3, v3, p3

    if-eqz v3, :cond_36

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    sub-long/2addr v3, p3

    .line 1904
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v7, 0x1f4

    cmp-long v3, v3, v7

    if-gez v3, :cond_5b

    :cond_36
    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5b

    iget v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    iget v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    if-eq v3, v4, :cond_5b

    .line 1913
    const-string v1, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1916
    .end local v2    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_5b
    goto :goto_9

    .line 1917
    :cond_5c
    monitor-exit v0

    .line 1918
    const/4 v0, 0x0

    return v0

    .line 1917
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 2
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .line 2211
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->queryAccounts()V

    .line 2212
    return-void
.end method

.method public removeRepeatingAlarm(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .line 2054
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    .line 2059
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2060
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 2062
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    .line 2063
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;II)V

    .line 2064
    :cond_18
    return-void

    .line 2062
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public removeRepeatingAlarm(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "dummy"    # Z

    .line 2041
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    .line 2046
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2047
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 2049
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    .line 2050
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;II)V

    .line 2051
    :cond_18
    return-void

    .line 2049
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public removeRepeatingAlarm(Landroid/app/IAlarmListener;)V
    .registers 4
    .param p1, "rec"    # Landroid/app/IAlarmListener;

    .line 2016
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    .line 2021
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Landroid/app/IAlarmListener;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2022
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 2024
    :cond_e
    monitor-exit v0

    .line 2025
    return-void

    .line 2024
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public removeRepeatingAlarm(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 1998
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    .line 2003
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2004
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 2006
    :cond_e
    monitor-exit v0

    .line 2007
    return-void

    .line 2006
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public removeRepeatingAlarm(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2028
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    .line 2033
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2034
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 2036
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_18

    .line 2037
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_17

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;II)V

    .line 2038
    :cond_17
    return-void

    .line 2036
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
    .registers 51
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 925
    :try_start_4
    iget-object v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_7} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_24

    .line 926
    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnoreAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 927
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "AlarmManagerEXT"

    const-string/jumbo v2, "schedulingRepeatingAlarms exception appsync"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_1b
    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    monitor-exit v1

    return-wide v2

    .line 930
    :cond_1f
    monitor-exit v1

    goto :goto_2d

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    .end local p0    # "this":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .end local p1    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_23
    throw v0
    :try_end_24
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_23 .. :try_end_24} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_24} :catch_24

    .line 933
    .restart local p0    # "this":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .restart local p1    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :catch_24
    move-exception v0

    .line 934
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2e

    .line 931
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_29
    move-exception v0

    .line 932
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    .line 935
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :goto_2d
    nop

    .line 941
    :goto_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v10, v0

    .line 942
    .local v10, "sTime":D
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    invoke-direct {v0, v9, v1}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;-><init>(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService;)V

    move-object v12, v0

    .line 943
    .local v12, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-wide v13, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    .line 944
    .local v13, "returnValue":J
    const-wide/16 v15, -0x1

    .line 945
    .local v15, "intervalValue":J
    const-wide/16 v0, 0x0

    .line 946
    .local v0, "distRounded":J
    const-wide/16 v2, 0x0

    .line 947
    .local v2, "distanceToAlarm":J
    const-wide/16 v4, 0x0

    .line 948
    .local v4, "distanceToAlarmOriginal":J
    const-wide/16 v6, 0x0

    .line 949
    .local v6, "SYNC_TOLERANCE_VALUE":J
    move-wide/from16 v17, v0

    .end local v0    # "distRounded":J
    .local v17, "distRounded":J
    iget v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_55

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    goto :goto_59

    :cond_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 954
    .local v19, "now":J
    :goto_59
    move-wide/from16 v21, v2

    .end local v2    # "distanceToAlarm":J
    .local v21, "distanceToAlarm":J
    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v23, v10

    .end local v10    # "sTime":D
    .local v23, "sTime":D
    const-wide/16 v10, 0x0

    cmp-long v1, v1, v10

    if-nez v1, :cond_7b

    .line 955
    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v1, v1, v19

    .line 956
    .end local v21    # "distanceToAlarm":J
    .local v1, "distanceToAlarm":J
    cmp-long v3, v1, v10

    if-gez v3, :cond_74

    .line 957
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    .line 958
    const-wide/16 v21, -0x1

    mul-long v1, v1, v21

    .line 960
    :cond_74
    move-wide v3, v1

    move-wide/from16 v47, v1

    move-wide v0, v3

    move-wide/from16 v4, v47

    .end local v4    # "distanceToAlarmOriginal":J
    .local v3, "distanceToAlarmOriginal":J
    goto :goto_8e

    .line 966
    .end local v1    # "distanceToAlarm":J
    .end local v3    # "distanceToAlarmOriginal":J
    .restart local v4    # "distanceToAlarmOriginal":J
    .restart local v21    # "distanceToAlarm":J
    :cond_7b
    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    .line 967
    .end local v21    # "distanceToAlarm":J
    .restart local v1    # "distanceToAlarm":J
    move-wide/from16 v21, v1

    .end local v1    # "distanceToAlarm":J
    .restart local v21    # "distanceToAlarm":J
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    cmp-long v0, v0, v19

    if-gez v0, :cond_88

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    goto :goto_8c

    :cond_88
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v0, v0, v19

    :goto_8c
    move-wide/from16 v4, v21

    .line 970
    .end local v21    # "distanceToAlarm":J
    .local v0, "distanceToAlarmOriginal":J
    .local v4, "distanceToAlarm":J
    :goto_8e
    invoke-virtual {v12, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->checkSuspiciousAlarm(J)V

    .line 975
    const-wide/32 v21, 0x325aa0

    cmp-long v2, v4, v21

    if-ltz v2, :cond_9c

    .line 976
    const-wide/32 v21, 0xea60

    goto :goto_9e

    :cond_9c
    const-wide/16 v21, 0x2710

    :goto_9e
    move-wide/from16 v6, v21

    .line 977
    long-to-double v10, v4

    move-wide/from16 v25, v4

    .end local v4    # "distanceToAlarm":J
    .local v25, "distanceToAlarm":J
    long-to-double v3, v6

    div-double/2addr v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    mul-long v10, v3, v6

    .line 979
    .end local v17    # "distRounded":J
    .local v10, "distRounded":J
    long-to-double v3, v0

    move-wide/from16 v17, v0

    .end local v0    # "distanceToAlarmOriginal":J
    .local v17, "distanceToAlarmOriginal":J
    long-to-double v0, v6

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    mul-long v17, v0, v6

    .line 984
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_c0

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    .line 986
    :cond_c0
    iget-object v4, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v4

    .line 987
    :try_start_c3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v27

    sub-long v27, v0, v27

    .line 988
    .local v27, "TIME_SKEW":J
    iget-object v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->packageName:Ljava/lang/String;

    move-object v5, v0

    .line 994
    .local v5, "pkgName":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getTarget(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    move/from16 v29, v0

    .line 995
    .local v29, "mode":I
    if-eqz v29, :cond_4e9

    .line 1008
    # invokes: Lcom/android/server/AlarmManagerServiceExt;->isActiveAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/AlarmManagerServiceExt;->access$1000(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0
    :try_end_dc
    .catchall {:try_start_c3 .. :try_end_dc} :catchall_510

    if-nez v0, :cond_f4

    .line 1009
    :try_start_de
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_eb

    const-string v0, "AlarmManagerEXT"

    const-string v1, "Skip to sched alarm : The alarm gonna be controlled by ASB"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_eb
    monitor-exit v4
    :try_end_ec
    .catchall {:try_start_de .. :try_end_ec} :catchall_ed

    return-wide v13

    .line 1212
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v27    # "TIME_SKEW":J
    .end local v29    # "mode":I
    :catchall_ed
    move-exception v0

    move-object/from16 v38, v4

    :goto_f0
    move-wide/from16 v39, v6

    goto/16 :goto_517

    .line 1016
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v27    # "TIME_SKEW":J
    .restart local v29    # "mode":I
    :cond_f4
    :try_start_f4
    iget-object v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;
    :try_end_f6
    .catchall {:try_start_f4 .. :try_end_f6} :catchall_510

    if-nez v0, :cond_fc

    .line 1017
    :try_start_f8
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    monitor-exit v4
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_ed

    return-wide v0

    .line 1020
    :cond_fc
    :try_start_fc
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-direct {v8, v0, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    const-wide/32 v30, 0x186a0

    const-wide/32 v32, 0x1b77400

    const-wide/32 v34, 0x493e0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b2

    .line 1021
    const-wide/16 v36, 0x0

    .line 1025
    .local v36, "tempPeriodicity":J
    const-string v1, "com.android.email"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_116
    .catchall {:try_start_fc .. :try_end_116} :catchall_510

    if-nez v1, :cond_1ad

    :try_start_118
    const-string v1, "com.samsung.android.email.sync"

    .line 1026
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125

    move-object/from16 v38, v4

    const/4 v0, 0x1

    goto/16 :goto_1b0

    .line 1060
    :cond_125
    cmp-long v1, v10, v32

    if-gtz v1, :cond_1a1

    cmp-long v1, v10, v34

    if-ltz v1, :cond_1a1

    rem-long v1, v10, v30

    const-wide/16 v21, 0x0

    cmp-long v1, v1, v21

    if-nez v1, :cond_1a1

    .line 1065
    rem-long v1, v10, v34

    cmp-long v1, v1, v21

    if-nez v1, :cond_15d

    .line 1066
    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1067
    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v1, v1, v21

    if-lez v1, :cond_149

    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide v0, v1

    move-object/from16 v38, v4

    goto :goto_15a

    .line 1068
    :cond_149
    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v30, v1

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J
    :try_end_14f
    .catchall {:try_start_118 .. :try_end_14f} :catchall_ed

    move-object/from16 v38, v4

    :try_start_151
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v0, v3

    move-wide/from16 v3, v30

    invoke-static {v3, v4, v0, v1}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v0

    :goto_15a
    iput-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    goto :goto_15f

    .line 1065
    :cond_15d
    move-object/from16 v38, v4

    .line 1073
    :goto_15f
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_16b

    .line 1074
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0, v12, v10, v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v0

    move-wide/from16 v36, v0

    .line 1079
    :cond_16b
    const-wide/16 v0, 0x0

    cmp-long v3, v36, v0

    if-ltz v3, :cond_17d

    .line 1084
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_17d

    .line 1085
    iput-wide v10, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 1093
    :cond_17d
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v17, v0

    if-gez v0, :cond_197

    .line 1094
    const-wide/16 v36, 0x0

    .line 1095
    const-wide/16 v0, 0x0

    iput-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1096
    iput-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 1097
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z
    :try_end_18e
    .catchall {:try_start_151 .. :try_end_18e} :catchall_1bd

    move-object/from16 v43, v5

    move-wide/from16 v39, v6

    move-wide/from16 v44, v13

    move v7, v0

    goto/16 :goto_2a4

    .line 1093
    :cond_197
    const/4 v0, 0x1

    move-object/from16 v43, v5

    move-wide/from16 v39, v6

    move-wide/from16 v44, v13

    move v7, v0

    goto/16 :goto_2a4

    .line 1060
    :cond_1a1
    move-object/from16 v38, v4

    const/4 v0, 0x1

    .line 1103
    move-object/from16 v43, v5

    move-wide/from16 v39, v6

    move-wide/from16 v44, v13

    move v7, v0

    goto/16 :goto_2a4

    .line 1025
    :cond_1ad
    move-object/from16 v38, v4

    const/4 v0, 0x1

    .line 1027
    :goto_1b0
    :try_start_1b0
    iget v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    :try_end_1b2
    .catchall {:try_start_1b0 .. :try_end_1b2} :catchall_2af

    if-nez v1, :cond_1c0

    :try_start_1b4
    iget-object v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    iput v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    :try_end_1bc
    .catchall {:try_start_1b4 .. :try_end_1bc} :catchall_1bd

    goto :goto_1c0

    .line 1212
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v27    # "TIME_SKEW":J
    .end local v29    # "mode":I
    .end local v36    # "tempPeriodicity":J
    :catchall_1bd
    move-exception v0

    goto/16 :goto_f0

    .line 1028
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v27    # "TIME_SKEW":J
    .restart local v29    # "mode":I
    .restart local v36    # "tempPeriodicity":J
    :cond_1c0
    :goto_1c0
    :try_start_1c0
    iget v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    :try_end_1c2
    .catchall {:try_start_1c0 .. :try_end_1c2} :catchall_2af

    if-nez v1, :cond_1ca

    :try_start_1c4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    :try_end_1ca
    .catchall {:try_start_1c4 .. :try_end_1ca} :catchall_1bd

    .line 1029
    :cond_1ca
    :try_start_1ca
    iget-object v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    iget-object v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    # invokes: Lcom/android/server/AlarmManagerServiceExt;->getInfoFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;
    invoke-static {v1, v2, v3}, Lcom/android/server/AlarmManagerServiceExt;->access$1100(Lcom/android/server/AlarmManagerServiceExt;Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v1

    move-object v4, v1

    .line 1030
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_29a

    .line 1031
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v2, -0x2

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v30

    move-wide/from16 v39, v30

    .line 1032
    .local v39, "accountId":J
    const-string v1, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 1036
    .local v1, "mailAccountInfos":[J
    const-wide/16 v30, 0x2

    .line 1037
    .local v30, "ACCOUNT_INFO_UNIT_LENGTH":J
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v41
    :try_end_1ef
    .catchall {:try_start_1ca .. :try_end_1ef} :catchall_2af

    if-eqz v41, :cond_21b

    :try_start_1f1
    const-string v0, "AlarmManagerEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(Email) ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1fd
    .catchall {:try_start_1f1 .. :try_end_1fd} :catchall_214

    move-wide/from16 v44, v13

    move-wide/from16 v13, v39

    .end local v39    # "accountId":J
    .local v13, "accountId":J
    .local v44, "returnValue":J
    :try_start_201
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21f

    .line 1212
    .end local v1    # "mailAccountInfos":[J
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v27    # "TIME_SKEW":J
    .end local v29    # "mode":I
    .end local v30    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v36    # "tempPeriodicity":J
    .end local v44    # "returnValue":J
    .local v13, "returnValue":J
    :catchall_214
    move-exception v0

    move-wide/from16 v44, v13

    move-wide/from16 v39, v6

    .end local v13    # "returnValue":J
    .restart local v44    # "returnValue":J
    goto/16 :goto_517

    .line 1037
    .end local v44    # "returnValue":J
    .restart local v1    # "mailAccountInfos":[J
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v13    # "returnValue":J
    .restart local v27    # "TIME_SKEW":J
    .restart local v29    # "mode":I
    .restart local v30    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .restart local v36    # "tempPeriodicity":J
    .restart local v39    # "accountId":J
    :cond_21b
    move-wide/from16 v44, v13

    move-wide/from16 v13, v39

    .line 1041
    .end local v39    # "accountId":J
    .local v13, "accountId":J
    .restart local v44    # "returnValue":J
    :goto_21f
    const-wide/16 v2, -0x2

    cmp-long v0, v13, v2

    if-nez v0, :cond_257

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_257

    const-string v0, "com.android.email.intent.action.ACTION_RESET_IDLE"

    .line 1042
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_257

    .line 1044
    long-to-double v2, v10

    const-wide v39, 0x41124f8000000000L    # 300000.0

    div-double v2, v2, v39

    .line 1045
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long v2, v2, v34

    iput-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J
    :try_end_248
    .catchall {:try_start_201 .. :try_end_248} :catchall_250

    move-wide/from16 v36, v2

    move-object/from16 v43, v5

    move-wide/from16 v39, v6

    const/4 v7, 0x1

    .end local v36    # "tempPeriodicity":J
    .local v2, "tempPeriodicity":J
    goto :goto_2a3

    .line 1212
    .end local v1    # "mailAccountInfos":[J
    .end local v2    # "tempPeriodicity":J
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v13    # "accountId":J
    .end local v27    # "TIME_SKEW":J
    .end local v29    # "mode":I
    .end local v30    # "ACCOUNT_INFO_UNIT_LENGTH":J
    :catchall_250
    move-exception v0

    move-wide/from16 v39, v6

    move-wide/from16 v13, v44

    goto/16 :goto_517

    .line 1050
    .restart local v1    # "mailAccountInfos":[J
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v13    # "accountId":J
    .restart local v27    # "TIME_SKEW":J
    .restart local v29    # "mode":I
    .restart local v30    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .restart local v36    # "tempPeriodicity":J
    :cond_257
    const-wide/16 v2, -0x2

    cmp-long v0, v13, v2

    if-eqz v0, :cond_291

    if-eqz v1, :cond_291

    :try_start_25f
    array-length v0, v1

    int-to-long v2, v0

    const-wide/16 v39, 0x2

    rem-long v2, v2, v39

    const-wide/16 v21, 0x0

    cmp-long v0, v2, v21

    if-nez v0, :cond_291

    .line 1052
    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J
    :try_end_26d
    .catchall {:try_start_25f .. :try_end_26d} :catchall_28a

    move-object v0, v1

    move-wide/from16 v39, v6

    const/4 v7, 0x1

    .end local v1    # "mailAccountInfos":[J
    .end local v6    # "SYNC_TOLERANCE_VALUE":J
    .local v0, "mailAccountInfos":[J
    .local v39, "SYNC_TOLERANCE_VALUE":J
    move-object/from16 v1, p0

    move-wide/from16 v41, v2

    move-wide v2, v13

    move-object/from16 v46, v4

    move-object/from16 v43, v5

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pkgName":Ljava/lang/String;
    .local v43, "pkgName":Ljava/lang/String;
    .local v46, "intent":Landroid/content/Intent;
    move-wide/from16 v4, v41

    move-object v6, v0

    :try_start_27d
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1053
    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v36, v1

    .end local v36    # "tempPeriodicity":J
    .local v1, "tempPeriodicity":J
    goto :goto_2a3

    .line 1212
    .end local v0    # "mailAccountInfos":[J
    .end local v1    # "tempPeriodicity":J
    .end local v13    # "accountId":J
    .end local v27    # "TIME_SKEW":J
    .end local v29    # "mode":I
    .end local v30    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v39    # "SYNC_TOLERANCE_VALUE":J
    .end local v43    # "pkgName":Ljava/lang/String;
    .end local v46    # "intent":Landroid/content/Intent;
    .restart local v6    # "SYNC_TOLERANCE_VALUE":J
    :catchall_28a
    move-exception v0

    move-wide/from16 v39, v6

    move-wide/from16 v13, v44

    .end local v6    # "SYNC_TOLERANCE_VALUE":J
    .restart local v39    # "SYNC_TOLERANCE_VALUE":J
    goto/16 :goto_517

    .line 1050
    .end local v39    # "SYNC_TOLERANCE_VALUE":J
    .local v1, "mailAccountInfos":[J
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "SYNC_TOLERANCE_VALUE":J
    .restart local v13    # "accountId":J
    .restart local v27    # "TIME_SKEW":J
    .restart local v29    # "mode":I
    .restart local v30    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .restart local v36    # "tempPeriodicity":J
    :cond_291
    move-object v0, v1

    move-object/from16 v46, v4

    move-object/from16 v43, v5

    move-wide/from16 v39, v6

    const/4 v7, 0x1

    .end local v1    # "mailAccountInfos":[J
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "SYNC_TOLERANCE_VALUE":J
    .restart local v0    # "mailAccountInfos":[J
    .restart local v39    # "SYNC_TOLERANCE_VALUE":J
    .restart local v43    # "pkgName":Ljava/lang/String;
    .restart local v46    # "intent":Landroid/content/Intent;
    goto :goto_2a3

    .line 1030
    .end local v0    # "mailAccountInfos":[J
    .end local v30    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v39    # "SYNC_TOLERANCE_VALUE":J
    .end local v43    # "pkgName":Ljava/lang/String;
    .end local v44    # "returnValue":J
    .end local v46    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "SYNC_TOLERANCE_VALUE":J
    .local v13, "returnValue":J
    :cond_29a
    move-object/from16 v46, v4

    move-object/from16 v43, v5

    move-wide/from16 v39, v6

    move-wide/from16 v44, v13

    move v7, v0

    .line 1056
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "SYNC_TOLERANCE_VALUE":J
    .end local v13    # "returnValue":J
    .restart local v39    # "SYNC_TOLERANCE_VALUE":J
    .restart local v43    # "pkgName":Ljava/lang/String;
    .restart local v44    # "returnValue":J
    :goto_2a3
    nop

    .line 1103
    :goto_2a4
    const-wide/16 v0, 0x0

    cmp-long v2, v36, v0

    if-ltz v2, :cond_2ad

    .line 1104
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide v15, v0

    .line 1106
    .end local v36    # "tempPeriodicity":J
    :cond_2ad
    move-wide v1, v15

    goto :goto_2f5

    .line 1212
    .end local v27    # "TIME_SKEW":J
    .end local v29    # "mode":I
    .end local v39    # "SYNC_TOLERANCE_VALUE":J
    .end local v43    # "pkgName":Ljava/lang/String;
    .end local v44    # "returnValue":J
    .restart local v6    # "SYNC_TOLERANCE_VALUE":J
    .restart local v13    # "returnValue":J
    :catchall_2af
    move-exception v0

    goto/16 :goto_513

    .line 1108
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v27    # "TIME_SKEW":J
    .restart local v29    # "mode":I
    :cond_2b2
    move-object/from16 v38, v4

    move-object/from16 v43, v5

    move-wide/from16 v39, v6

    move-wide/from16 v44, v13

    move v7, v1

    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "SYNC_TOLERANCE_VALUE":J
    .end local v13    # "returnValue":J
    .restart local v39    # "SYNC_TOLERANCE_VALUE":J
    .restart local v43    # "pkgName":Ljava/lang/String;
    .restart local v44    # "returnValue":J
    cmp-long v0, v10, v32

    if-gtz v0, :cond_2f4

    cmp-long v0, v10, v34

    if-ltz v0, :cond_2f4

    rem-long v0, v10, v30

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f4

    .line 1111
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_2d6

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0, v12, v10, v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v0

    move-wide v15, v0

    .line 1112
    :cond_2d6
    const-wide/16 v0, 0x0

    cmp-long v2, v15, v0

    if-lez v2, :cond_2f4

    .line 1113
    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1114
    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_2e7

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    goto :goto_2f2

    .line 1115
    :cond_2e7
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v0

    :goto_2f2
    iput-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J
    :try_end_2f4
    .catchall {:try_start_27d .. :try_end_2f4} :catchall_50c

    .line 1119
    :cond_2f4
    move-wide v1, v15

    .end local v15    # "intervalValue":J
    .local v1, "intervalValue":J
    :goto_2f5
    :try_start_2f5
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0
    :try_end_2f9
    .catchall {:try_start_2f5 .. :try_end_2f9} :catchall_4e1

    if-eqz v0, :cond_327

    :try_start_2fb
    const-string v0, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TA] Periodicity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_327

    .line 1212
    .end local v27    # "TIME_SKEW":J
    .end local v29    # "mode":I
    .end local v43    # "pkgName":Ljava/lang/String;
    :catchall_321
    move-exception v0

    move-wide v15, v1

    move-wide/from16 v13, v44

    goto/16 :goto_517

    .line 1126
    .restart local v27    # "TIME_SKEW":J
    .restart local v29    # "mode":I
    .restart local v43    # "pkgName":Ljava/lang/String;
    :cond_327
    :goto_327
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    const/4 v3, 0x0

    if-nez v0, :cond_345

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v4, v34

    if-ltz v0, :cond_345

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v4, v32

    if-gtz v0, :cond_345

    .line 1132
    const-wide/16 v4, 0x0

    iput-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iput-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1136
    invoke-direct {v8, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    goto/16 :goto_46e

    .line 1141
    :cond_345
    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-lez v0, :cond_46e

    .line 1143
    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v4, v34

    if-ltz v0, :cond_38f

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v4, v32

    if-gtz v0, :cond_38f

    .line 1145
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1146
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    iget-wide v13, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    .line 1145
    invoke-direct {v8, v4, v5, v13, v14}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1154
    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v13

    rem-long/2addr v4, v13

    const-wide/16 v13, 0x0

    cmp-long v0, v4, v13

    if-nez v0, :cond_387

    .line 1155
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-direct {v8, v12, v4, v5, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 1156
    invoke-direct {v8, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    const-wide/16 v13, 0x0

    goto :goto_3b9

    .line 1164
    :cond_387
    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    invoke-direct {v8, v12, v4, v5, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    const-wide/16 v13, 0x0

    goto :goto_3b9

    .line 1170
    :cond_38f
    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v13, 0x0

    cmp-long v0, v4, v13

    if-nez v0, :cond_3b9

    .line 1175
    cmp-long v0, v1, v32

    if-gtz v0, :cond_3b9

    cmp-long v0, v1, v34

    if-ltz v0, :cond_3b9

    .line 1176
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1177
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    .line 1176
    invoke-direct {v8, v4, v5, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1178
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-direct {v8, v12, v4, v5, v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 1179
    invoke-direct {v8, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    .line 1182
    :cond_3b9
    :goto_3b9
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_3de

    iget-boolean v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v0, :cond_3de

    .line 1186
    nop

    .line 1187
    iget v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v0, v7, :cond_3cd

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v4, v4, v27

    goto :goto_3cf

    :cond_3cd
    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    :goto_3cf
    iput-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iput-wide v4, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1191
    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v13, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    add-long/2addr v4, v13

    iput-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    .line 1195
    iget-wide v4, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v4, v9, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1197
    :cond_3de
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_3e8

    .line 1198
    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iput-wide v4, v9, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 1200
    :cond_3e8
    invoke-direct {v8, v9, v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 1202
    const-string v0, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fd

    iget-wide v4, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v13, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v0, v4, v13

    if-nez v0, :cond_403

    :cond_3fd
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_46e

    .line 1203
    :cond_403
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1204
    .local v0, "time":Landroid/text/format/Time;
    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v6, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v6, v7, :cond_411

    const-wide/16 v21, 0x0

    goto :goto_413

    :cond_411
    move-wide/from16 v21, v27

    :goto_413
    add-long v4, v4, v21

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1205
    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v4

    .line 1206
    .local v4, "timeStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "---> T:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " ("

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", INT:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v5, "report":Ljava/lang/String;
    const-string v6, "AlarmManagerEXT"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46e
    .catchall {:try_start_2fb .. :try_end_46e} :catchall_321

    .line 1211
    .end local v0    # "time":Landroid/text/format/Time;
    .end local v4    # "timeStr":Ljava/lang/String;
    .end local v5    # "report":Ljava/lang/String;
    :cond_46e
    :goto_46e
    :try_start_46e
    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J
    :try_end_470
    .catchall {:try_start_46e .. :try_end_470} :catchall_4e1

    move-wide v13, v4

    .line 1212
    .end local v27    # "TIME_SKEW":J
    .end local v29    # "mode":I
    .end local v43    # "pkgName":Ljava/lang/String;
    .end local v44    # "returnValue":J
    .restart local v13    # "returnValue":J
    :try_start_471
    monitor-exit v38
    :try_end_472
    .catchall {:try_start_471 .. :try_end_472} :catchall_4db

    .line 1216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double v4, v4, v23

    .line 1217
    .local v4, "op_period":D
    move-wide v15, v4

    .end local v4    # "op_period":D
    .local v15, "op_period":D
    iget-wide v3, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    iget-wide v5, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    move-wide/from16 v21, v1

    .end local v1    # "intervalValue":J
    .local v21, "intervalValue":J
    long-to-double v0, v5

    mul-double/2addr v3, v0

    add-double/2addr v3, v15

    const-wide/16 v0, 0x1

    add-long/2addr v5, v0

    iput-wide v5, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    long-to-double v0, v5

    div-double/2addr v3, v0

    iput-wide v3, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    .line 1218
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    cmpl-double v0, v15, v0

    if-lez v0, :cond_49f

    .line 1219
    move-wide v4, v15

    .end local v15    # "op_period":D
    .restart local v4    # "op_period":D
    iput-wide v4, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    .line 1220
    iget-object v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    goto :goto_4a0

    .line 1218
    .end local v4    # "op_period":D
    .restart local v15    # "op_period":D
    :cond_49f
    move-wide v4, v15

    .line 1222
    .end local v15    # "op_period":D
    .restart local v4    # "op_period":D
    :goto_4a0
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4da

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (SyncScheduler) Processed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " (avg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v7, [Ljava/lang/Object;

    iget-wide v6, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    .line 1224
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const-string v2, "%.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") [ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1223
    const-string v1, "AlarmManagerEXT"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_4da
    return-wide v13

    .line 1212
    .end local v4    # "op_period":D
    .end local v21    # "intervalValue":J
    .restart local v1    # "intervalValue":J
    :catchall_4db
    move-exception v0

    move-wide/from16 v21, v1

    move-wide/from16 v15, v21

    .end local v1    # "intervalValue":J
    .restart local v21    # "intervalValue":J
    goto :goto_517

    .end local v13    # "returnValue":J
    .end local v21    # "intervalValue":J
    .restart local v1    # "intervalValue":J
    .restart local v44    # "returnValue":J
    :catchall_4e1
    move-exception v0

    move-wide/from16 v21, v1

    move-wide/from16 v15, v21

    move-wide/from16 v13, v44

    .end local v1    # "intervalValue":J
    .restart local v21    # "intervalValue":J
    goto :goto_517

    .line 997
    .end local v21    # "intervalValue":J
    .end local v39    # "SYNC_TOLERANCE_VALUE":J
    .end local v44    # "returnValue":J
    .local v5, "pkgName":Ljava/lang/String;
    .restart local v6    # "SYNC_TOLERANCE_VALUE":J
    .restart local v13    # "returnValue":J
    .local v15, "intervalValue":J
    .restart local v27    # "TIME_SKEW":J
    .restart local v29    # "mode":I
    :cond_4e9
    move-object/from16 v38, v4

    move-object/from16 v43, v5

    move-wide/from16 v39, v6

    move-wide/from16 v44, v13

    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "SYNC_TOLERANCE_VALUE":J
    .end local v13    # "returnValue":J
    .restart local v39    # "SYNC_TOLERANCE_VALUE":J
    .restart local v43    # "pkgName":Ljava/lang/String;
    .restart local v44    # "returnValue":J
    :try_start_4f1
    invoke-direct {v8, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isChinaControlAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    .line 998
    .local v0, "isChnControlEnabled":Z
    if-eqz v0, :cond_50a

    .line 999
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-wide/from16 v4, v27

    move-wide/from16 v6, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmForChinaApplication(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJ)Z

    move-result v1

    if-eqz v1, :cond_50a

    .line 1000
    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    monitor-exit v38

    return-wide v1

    .line 1003
    :cond_50a
    monitor-exit v38
    :try_end_50b
    .catchall {:try_start_4f1 .. :try_end_50b} :catchall_50c

    return-wide v44

    .line 1212
    .end local v0    # "isChnControlEnabled":Z
    .end local v27    # "TIME_SKEW":J
    .end local v29    # "mode":I
    .end local v43    # "pkgName":Ljava/lang/String;
    :catchall_50c
    move-exception v0

    move-wide/from16 v13, v44

    goto :goto_517

    .end local v39    # "SYNC_TOLERANCE_VALUE":J
    .end local v44    # "returnValue":J
    .restart local v6    # "SYNC_TOLERANCE_VALUE":J
    .restart local v13    # "returnValue":J
    :catchall_510
    move-exception v0

    move-object/from16 v38, v4

    :goto_513
    move-wide/from16 v39, v6

    move-wide/from16 v44, v13

    .end local v6    # "SYNC_TOLERANCE_VALUE":J
    .restart local v39    # "SYNC_TOLERANCE_VALUE":J
    :goto_517
    :try_start_517
    monitor-exit v38
    :try_end_518
    .catchall {:try_start_517 .. :try_end_518} :catchall_519

    throw v0

    :catchall_519
    move-exception v0

    goto :goto_517
.end method

.method public updateAlarmTriggerInfo(Lcom/android/server/AlarmManagerService$Alarm;IJ)V
    .registers 12
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "count"    # I
    .param p3, "nowRtc"    # J

    .line 2229
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    if-nez v0, :cond_9

    return-void

    .line 2231
    :cond_9
    const/4 v0, 0x0

    .line 2232
    .local v0, "isNotContained":Z
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2233
    return-void

    .line 2235
    :cond_f
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2236
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    .line 2237
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    monitor-enter v3
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_7b

    .line 2238
    :try_start_21
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    const/4 v0, 0x1

    .line 2239
    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_78

    .line 2240
    :try_start_2b
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    if-nez v3, :cond_3d

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v3, :cond_3d

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v3, :cond_3d

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    if-nez v3, :cond_3d

    if-eqz v0, :cond_76

    .line 2244
    :cond_3d
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2245
    .local v4, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 2246
    iput p2, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->count:I

    .line 2247
    iput-wide p3, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    .line 2251
    iget-boolean v3, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    if-eqz v3, :cond_67

    .line 2252
    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    .line 2253
    monitor-exit v2

    return-void

    .line 2257
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_66
    goto :goto_43

    .line 2261
    :cond_67
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, p2, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V

    .line 2263
    :cond_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_2b .. :try_end_77} :catchall_7b

    .line 2264
    return-void

    .line 2239
    :catchall_78
    move-exception v4

    :try_start_79
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    .end local v0    # "isNotContained":Z
    .end local v1    # "tag":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .end local p1    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local p2    # "count":I
    .end local p3    # "nowRtc":J
    :try_start_7a
    throw v4

    .line 2263
    .restart local v0    # "isNotContained":Z
    .restart local v1    # "tag":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .restart local p1    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local p2    # "count":I
    .restart local p3    # "nowRtc":J
    :catchall_7b
    move-exception v3

    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7b

    throw v3
.end method

.method public updateEmailSyncStatus(JJ[J)J
    .registers 12
    .param p1, "curAccountd"    # J
    .param p3, "alarmTriggerTime"    # J
    .param p5, "emailAccountInfos"    # [J

    .line 2215
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_c

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v0

    return-wide v0

    .line 2216
    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public updateExplicitRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 27
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 1421
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v11, 0x0

    .line 1426
    .local v11, "bRet":Z
    const/4 v1, 0x0

    :try_start_6
    iget-object v2, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_6 .. :try_end_9} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_9} :catch_24

    .line 1427
    :try_start_9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnoreAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1428
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "AlarmManagerEXT"

    const-string/jumbo v3, "updateExplicitRepeatingAlarms exception appsync"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_1d
    monitor-exit v2

    return v1

    .line 1431
    :cond_1f
    monitor-exit v2

    goto :goto_2d

    :catchall_21
    move-exception v0

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    .end local v11    # "bRet":Z
    .end local p0    # "this":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .end local p1    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_23
    throw v0
    :try_end_24
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_23 .. :try_end_24} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_24} :catch_24

    .line 1434
    .restart local v11    # "bRet":Z
    .restart local p0    # "this":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .restart local p1    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :catch_24
    move-exception v0

    .line 1435
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2e

    .line 1432
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_29
    move-exception v0

    .line 1433
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    .line 1436
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :goto_2d
    nop

    .line 1443
    :goto_2e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getTarget(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v12

    .line 1444
    .local v12, "mode":I
    const/4 v0, 0x1

    if-eqz v12, :cond_61

    if-eq v12, v0, :cond_3d

    move/from16 v24, v11

    move/from16 v23, v12

    goto/16 :goto_10a

    .line 1477
    :cond_3d
    # invokes: Lcom/android/server/AlarmManagerServiceExt;->isActiveAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/AlarmManagerServiceExt;->access$1000(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 1478
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "AlarmManagerEXT"

    const-string v1, "Skip to resched alarm : The alarm gonna be controlled by ASB"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_50
    return v11

    .line 1482
    :cond_51
    iget-object v2, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    .line 1483
    :try_start_54
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    move v11, v0

    .line 1484
    monitor-exit v2

    move/from16 v23, v12

    goto/16 :goto_10c

    :catchall_5e
    move-exception v0

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_5e

    throw v0

    .line 1446
    :cond_61
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isChinaControlAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v13

    .line 1448
    .local v13, "isChnControlEnabled":Z
    if-eqz v13, :cond_106

    iget-wide v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v4, 0x1b77400

    cmp-long v2, v2, v4

    if-gtz v2, :cond_106

    iget-wide v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1449
    sget-boolean v4, Lcom/android/server/AlarmManagerServiceExt;->COUNTRY_CODE_CHN:Z

    if-eqz v4, :cond_77

    goto :goto_79

    :cond_77
    const/16 v1, 0x2710

    :goto_79
    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gtz v1, :cond_8f

    iget-object v1, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    goto :goto_8f

    :cond_89
    move/from16 v24, v11

    move/from16 v23, v12

    goto/16 :goto_10a

    .line 1450
    :cond_8f
    :goto_8f
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v2, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    invoke-direct {v1, v10, v2}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;-><init>(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService;)V

    move-object v14, v1

    .line 1451
    .local v14, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1452
    .local v15, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 1453
    .local v17, "nowElapsed":J
    sub-long v19, v15, v17

    .line 1455
    .local v19, "TIME_SKEW":J
    iget-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v1, v17, v1

    iget-wide v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v1, v3

    const-wide/16 v7, 0x1

    add-long v21, v1, v7

    .line 1456
    .local v21, "count":J
    iget-wide v1, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v3, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    mul-long v3, v3, v21

    add-long/2addr v1, v3

    iput-wide v1, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    .line 1457
    iget v1, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v1, v0, :cond_c0

    iget-wide v1, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v1, v1, v19

    goto :goto_c2

    :cond_c0
    iget-wide v1, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    :goto_c2
    iput-wide v1, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    .line 1459
    iget-wide v3, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    iget-wide v5, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v24, v11

    move/from16 v23, v12

    move-wide v11, v7

    .end local v11    # "bRet":Z
    .end local v12    # "mode":I
    .local v23, "mode":I
    .local v24, "bRet":Z
    move-wide/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmForFixedPeriodicWakeups(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJJ)V

    .line 1461
    iget-wide v1, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_e1

    .line 1462
    iget-wide v1, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1464
    :cond_e1
    iget-wide v1, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v3, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    sub-long/2addr v1, v3

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1465
    iget-wide v1, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v3, v14, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    sub-long/2addr v1, v3

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1466
    iput-wide v11, v10, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 1467
    iget-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v1, v3

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1468
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_102

    .line 1469
    iget-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 1471
    :cond_102
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1472
    return v0

    .line 1448
    .end local v14    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v15    # "nowRtc":J
    .end local v17    # "nowElapsed":J
    .end local v19    # "TIME_SKEW":J
    .end local v21    # "count":J
    .end local v23    # "mode":I
    .end local v24    # "bRet":Z
    .restart local v11    # "bRet":Z
    .restart local v12    # "mode":I
    :cond_106
    move/from16 v24, v11

    move/from16 v23, v12

    .line 1488
    .end local v13    # "isChnControlEnabled":Z
    :goto_10a
    move/from16 v11, v24

    .end local v12    # "mode":I
    .restart local v23    # "mode":I
    :goto_10c
    return v11
.end method

.method public updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 26
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 1499
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1500
    .local v2, "bRet":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1501
    .local v3, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1502
    .local v5, "nowElapsed":J
    sub-long v7, v3, v5

    .line 1504
    .local v7, "TIME_SKEW":J
    iget-object v9, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_197

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1508
    .local v10, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v11, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v12, v1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-virtual {v10, v11, v12}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v11

    if-eqz v11, :cond_18f

    iget-wide v11, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_34

    .line 1510
    goto :goto_15

    .line 1512
    :cond_34
    iget-wide v11, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    cmp-long v9, v11, v13

    if-nez v9, :cond_3d

    .line 1513
    iget-wide v11, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    goto :goto_3f

    :cond_3d
    iget-wide v11, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1514
    .local v11, "tempRepeatInterval":J
    :goto_3f
    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v13, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iput-wide v13, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    .line 1515
    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v13, v5, v13

    move/from16 v17, v2

    move-wide/from16 v18, v3

    .end local v2    # "bRet":Z
    .end local v3    # "nowRtc":J
    .local v17, "bRet":Z
    .local v18, "nowRtc":J
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v13, v2

    const-wide/16 v2, 0x1

    add-long/2addr v13, v2

    .line 1516
    .local v13, "count":J
    iget-wide v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    mul-long v20, v13, v11

    add-long v2, v2, v20

    iput-wide v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    .line 1521
    iget-boolean v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    if-eqz v2, :cond_67

    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    const-wide/16 v15, 0x0

    cmp-long v3, v3, v15

    if-gtz v3, :cond_6c

    :cond_67
    iget-boolean v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    const/4 v2, 0x1

    if-ne v3, v2, :cond_18c

    .line 1522
    :cond_6c
    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1523
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    move-wide/from16 v20, v5

    .end local v5    # "nowElapsed":J
    .local v20, "nowElapsed":J
    iget-wide v5, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1522
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1524
    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-nez v3, :cond_9a

    .line 1525
    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v10, v2, v3, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    goto :goto_9f

    .line 1533
    :cond_9a
    iget-wide v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-direct {v0, v10, v2, v3, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 1539
    :goto_9f
    iget-boolean v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v2, :cond_ee

    .line 1540
    iput-boolean v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    .line 1541
    const/4 v3, 0x1

    .line 1546
    .end local v17    # "bRet":Z
    .local v3, "bRet":Z
    iget-wide v5, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iput-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1547
    :goto_aa
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v6, 0x1

    if-gt v2, v6, :cond_b4

    move-wide/from16 v22, v18

    goto :goto_b6

    :cond_b4
    move-wide/from16 v22, v20

    :goto_b6
    cmp-long v4, v4, v22

    if-lez v4, :cond_c0

    .line 1548
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v4, v11

    iput-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_aa

    .line 1554
    :cond_c0
    nop

    .line 1555
    iget v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v2, 0x1

    if-gt v4, v2, :cond_ca

    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long/2addr v4, v7

    goto :goto_cc

    :cond_ca
    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    :goto_cc
    iput-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    .line 1556
    nop

    .line 1557
    iget v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v2, 0x1

    if-gt v4, v2, :cond_d8

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v4, v7

    goto :goto_da

    :cond_d8
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    :goto_da
    iput-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1561
    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move v6, v3

    .end local v3    # "bRet":Z
    .local v6, "bRet":Z
    iget-wide v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    add-long/2addr v4, v2

    iput-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    .line 1562
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1563
    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move/from16 v17, v6

    .line 1565
    .end local v6    # "bRet":Z
    .restart local v17    # "bRet":Z
    :cond_ee
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 1566
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 1568
    :cond_f8
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 1569
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10e

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_114

    :cond_10e
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 1570
    :cond_114
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 1571
    .local v3, "time":Landroid/text/format/Time;
    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v2, 0x1

    if-gt v6, v2, :cond_123

    const-wide/16 v15, 0x0

    goto :goto_124

    :cond_123
    move-wide v15, v7

    :goto_124
    add-long/2addr v4, v15

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1572
    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    .line 1573
    .local v2, "timeStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->> T:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    iget-object v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_14f

    iget-object v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    goto :goto_159

    :cond_14f
    iget-object v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    if-eqz v6, :cond_156

    iget-object v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    goto :goto_159

    :cond_156
    const-string/jumbo v6, "null"

    :goto_159
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v2

    move-object v6, v3

    .end local v2    # "timeStr":Ljava/lang/String;
    .end local v3    # "time":Landroid/text/format/Time;
    .local v6, "time":Landroid/text/format/Time;
    .local v9, "timeStr":Ljava/lang/String;
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", INT:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") count:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1573
    const-string v3, "AlarmManagerEXT"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    .end local v6    # "time":Landroid/text/format/Time;
    .end local v9    # "timeStr":Ljava/lang/String;
    goto :goto_19d

    .line 1521
    .end local v20    # "nowElapsed":J
    .restart local v5    # "nowElapsed":J
    :cond_18c
    move-wide/from16 v20, v5

    .end local v5    # "nowElapsed":J
    .restart local v20    # "nowElapsed":J
    goto :goto_19d

    .line 1508
    .end local v11    # "tempRepeatInterval":J
    .end local v13    # "count":J
    .end local v17    # "bRet":Z
    .end local v18    # "nowRtc":J
    .end local v20    # "nowElapsed":J
    .local v2, "bRet":Z
    .local v3, "nowRtc":J
    .restart local v5    # "nowElapsed":J
    :cond_18f
    move/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    .end local v2    # "bRet":Z
    .end local v3    # "nowRtc":J
    .end local v5    # "nowElapsed":J
    .restart local v17    # "bRet":Z
    .restart local v18    # "nowRtc":J
    .restart local v20    # "nowElapsed":J
    goto/16 :goto_15

    .line 1504
    .end local v10    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v17    # "bRet":Z
    .end local v18    # "nowRtc":J
    .end local v20    # "nowElapsed":J
    .restart local v2    # "bRet":Z
    .restart local v3    # "nowRtc":J
    .restart local v5    # "nowElapsed":J
    :cond_197
    move/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    .line 1580
    .end local v2    # "bRet":Z
    .end local v3    # "nowRtc":J
    .end local v5    # "nowElapsed":J
    .restart local v17    # "bRet":Z
    .restart local v18    # "nowRtc":J
    .restart local v20    # "nowElapsed":J
    :cond_19d
    :goto_19d
    move/from16 v2, v17

    .end local v17    # "bRet":Z
    .restart local v2    # "bRet":Z
    return v2
.end method
