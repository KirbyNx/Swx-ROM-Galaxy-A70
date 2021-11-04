.class public Lcom/android/server/ipm/MultiUserPkgManager;
.super Ljava/lang/Object;
.source "MultiUserPkgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;,
        Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;,
        Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    }
.end annotation


# static fields
.field private static final MH_DELETE_PACKAGES_AS_USER_MSG:I = 0x65

.field private static final MH_INSERT_PACKAGES_AS_USER_MSG:I = 0x66

.field private static final MH_PACKAGE_STATUS_CHANGED_MSG:I = 0x64

.field public static final SECURE_FOLDER_SETUP_COMPLETE:Ljava/lang/String; = "com.samsung.knox.securefolder.SETUP_COMPLETE"

.field private static final sIntance:Lcom/android/server/ipm/MultiUserPkgManager;


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDualAppPkgIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mDualAppReceiverRegistered:Z

.field private mDualAppUserId:I

.field private mInstalledPkgMapName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledPkgMapUid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMainHandler:Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;

.field private mPackageChangedObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mSecureFolderPkgIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureFolderReceiverRegistered:Z

.field private mSecureFolderUserId:I

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserTriggerReceiver:Landroid/content/BroadcastReceiver;

.field private mWorkspacePkgIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWorkspaceReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-direct {v0}, Lcom/android/server/ipm/MultiUserPkgManager;-><init>()V

    sput-object v0, Lcom/android/server/ipm/MultiUserPkgManager;->sIntance:Lcom/android/server/ipm/MultiUserPkgManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "PkgPredictorService-MultiUserPkgManager"

    iput-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    .line 35
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    iput-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mReceiverRegistered:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderReceiverRegistered:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppReceiverRegistered:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mWorkspaceReceiverRegistered:Z

    .line 245
    new-instance v0, Lcom/android/server/ipm/MultiUserPkgManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/MultiUserPkgManager$1;-><init>(Lcom/android/server/ipm/MultiUserPkgManager;)V

    iput-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mUserTriggerReceiver:Landroid/content/BroadcastReceiver;

    .line 345
    new-instance v0, Lcom/android/server/ipm/MultiUserPkgManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/MultiUserPkgManager$2;-><init>(Lcom/android/server/ipm/MultiUserPkgManager;)V

    iput-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 487
    new-instance v0, Lcom/android/server/ipm/MultiUserPkgManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/MultiUserPkgManager$3;-><init>(Lcom/android/server/ipm/MultiUserPkgManager;)V

    iput-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 504
    new-instance v0, Lcom/android/server/ipm/MultiUserPkgManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/MultiUserPkgManager$4;-><init>(Lcom/android/server/ipm/MultiUserPkgManager;)V

    iput-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    new-instance v0, Lcom/android/server/ipm/MultiUserPkgManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/MultiUserPkgManager$5;-><init>(Lcom/android/server/ipm/MultiUserPkgManager;)V

    iput-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    new-instance v0, Lcom/android/server/ipm/MultiUserPkgManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/MultiUserPkgManager$6;-><init>(Lcom/android/server/ipm/MultiUserPkgManager;)V

    iput-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mWorkspacePkgIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ipm/MultiUserPkgManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/MultiUserPkgManager;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ipm/MultiUserPkgManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/MultiUserPkgManager;

    .line 33
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ipm/MultiUserPkgManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/MultiUserPkgManager;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/ipm/MultiUserPkgManager;->doInsertPkgAsUserToMemory(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ipm/MultiUserPkgManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/MultiUserPkgManager;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/ipm/MultiUserPkgManager;->doDelPkgAsUserFromMemory(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ipm/MultiUserPkgManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/MultiUserPkgManager;

    .line 33
    iget v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/ipm/MultiUserPkgManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/MultiUserPkgManager;
    .param p1, "x1"    # I

    .line 33
    iput p1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/ipm/MultiUserPkgManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/MultiUserPkgManager;

    .line 33
    iget v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppUserId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/ipm/MultiUserPkgManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/MultiUserPkgManager;
    .param p1, "x1"    # I

    .line 33
    iput p1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppUserId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/ipm/MultiUserPkgManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/MultiUserPkgManager;

    .line 33
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/ipm/MultiUserPkgManager;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/MultiUserPkgManager;
    .param p1, "x1"    # Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/ipm/MultiUserPkgManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/MultiUserPkgManager;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/ipm/MultiUserPkgManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private doDelPkgAsUserFromMemory(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 632
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    if-eqz v0, :cond_81

    .line 633
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDelPkgAsUserFromMemory for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    monitor-enter v0

    .line 635
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 636
    .local v1, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_27
    if-eqz v1, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 637
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 638
    .local v2, "item":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_42

    .line 639
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 641
    .end local v2    # "item":I
    :cond_42
    goto :goto_27

    .line 643
    :cond_43
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapName:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 644
    .local v2, "lists":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    :goto_49
    if-eqz v2, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 645
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 646
    .local v3, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget v4, v3, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    if-ne v4, p1, :cond_5e

    .line 647
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 649
    .end local v3    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_5e
    goto :goto_49

    .line 650
    .end local v1    # "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "lists":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    :cond_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_1d .. :try_end_60} :catchall_7e

    .line 651
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPackageChangedObservers:Ljava/util/List;

    monitor-enter v1

    .line 652
    :try_start_63
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPackageChangedObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;

    .line 653
    .local v2, "observer":Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;
    invoke-interface {v2, p1}, Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;->userRemove(I)V

    .line 654
    .end local v2    # "observer":Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;
    goto :goto_69

    .line 655
    :cond_79
    monitor-exit v1

    goto :goto_81

    :catchall_7b
    move-exception v0

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_7b

    throw v0

    .line 650
    :catchall_7e
    move-exception v1

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v1

    .line 657
    :cond_81
    :goto_81
    return-void
.end method

.method private doInsertPkgAsUserToMemory(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 594
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 595
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInsertPkgAsUserToMemory for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_1a
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 598
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 605
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 606
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_42

    goto :goto_43

    :cond_42
    move v8, v1

    :goto_43
    invoke-direct {v4, p1, v5, v6, v8}, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;-><init>(IILjava/lang/String;Z)V

    .line 611
    .local v4, "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget-object v5, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    monitor-enter v5

    .line 612
    :try_start_49
    iget-object v6, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    iget v7, v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_67

    .line 613
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v6, "mAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    iget-object v7, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    iget v8, v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .end local v6    # "mAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    :cond_67
    iget-object v6, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    iget v7, v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8c

    .line 617
    iget-object v6, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    iget v7, v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_8c
    iget-object v6, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapName:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_99

    .line 620
    iget-object v6, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapName:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_99
    monitor-exit v5

    .line 623
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    goto :goto_29

    .line 622
    .restart local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :catchall_9b
    move-exception v1

    monitor-exit v5
    :try_end_9d
    .catchall {:try_start_49 .. :try_end_9d} :catchall_9b

    throw v1

    .line 624
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_9e
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPackageChangedObservers:Ljava/util/List;

    monitor-enter v1

    .line 625
    :try_start_a1
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPackageChangedObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;

    .line 626
    .local v3, "observer":Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;
    invoke-interface {v3, p1}, Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;->userAdd(I)V

    .line 627
    .end local v3    # "observer":Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;
    goto :goto_a7

    .line 628
    :cond_b7
    monitor-exit v1

    .line 629
    return-void

    .line 628
    :catchall_b9
    move-exception v2

    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_a1 .. :try_end_bb} :catchall_b9

    throw v2
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 366
    :catch_e
    move-exception v0

    .line 369
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method public static getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;
    .registers 1

    .line 149
    sget-object v0, Lcom/android/server/ipm/MultiUserPkgManager;->sIntance:Lcom/android/server/ipm/MultiUserPkgManager;

    return-object v0
.end method


# virtual methods
.method public assembleRegister()V
    .registers 4

    .line 153
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mReceiverRegistered:Z

    if-eqz v0, :cond_5

    .line 154
    return-void

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v1, " assemble register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/android/server/ipm/MultiUserPkgManager;->registerDefaultPkgReceiver()V

    .line 159
    invoke-virtual {p0}, Lcom/android/server/ipm/MultiUserPkgManager;->registerUserTriggerReceiver()V

    .line 164
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I

    .line 165
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " secu folder mSecureFolderUserId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I

    const/16 v1, 0x96

    if-lt v0, v1, :cond_44

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_44

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/server/ipm/MultiUserPkgManager;->registerSecureFolderReceiver(I)V

    .line 169
    iget v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/MultiUserPkgManager;->sendInsPkgAsUserMsgToMainHandler(I)V

    .line 173
    :cond_44
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v0

    iput v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppUserId:I

    .line 174
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " there is a dual id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppUserId:I

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_74

    const/16 v1, 0x63

    if-gt v0, v1, :cond_74

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/server/ipm/MultiUserPkgManager;->registerDualAppReceiver(I)V

    .line 179
    iget v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/MultiUserPkgManager;->sendInsPkgAsUserMsgToMainHandler(I)V

    .line 181
    :cond_74
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/MultiUserPkgManager;->sendInsPkgAsUserMsgToMainHandler(I)V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mReceiverRegistered:Z

    .line 183
    return-void
.end method

.method public assembleUnregister()V
    .registers 3

    .line 186
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mReceiverRegistered:Z

    if-nez v0, :cond_5

    .line 187
    return-void

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mUserTriggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/ipm/MultiUserPkgManager;->unregisterSecureFolderReceiver()V

    .line 192
    invoke-virtual {p0}, Lcom/android/server/ipm/MultiUserPkgManager;->unregisterDualAppReceiver()V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/ipm/MultiUserPkgManager;->unregisterWorkspaceReceiver()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mReceiverRegistered:Z

    .line 195
    return-void
.end method

.method public checkInstalledApp(Ljava/lang/String;II)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 228
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    monitor-enter v0

    .line 229
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 230
    .local v2, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget v3, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    if-ne v3, p2, :cond_28

    iget-object v3, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget v3, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    if-ne v3, p3, :cond_28

    .line 231
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 232
    .end local v2    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_28
    goto :goto_9

    .line 233
    :cond_29
    monitor-exit v0

    .line 234
    const/4 v0, 0x0

    return v0

    .line 233
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public checkInstalledAppByName(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 218
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    monitor-enter v0

    .line 219
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 220
    .local v2, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget v3, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    if-ne v3, p2, :cond_24

    iget-object v3, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 221
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 222
    .end local v2    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_24
    goto :goto_9

    .line 223
    :cond_25
    monitor-exit v0

    .line 224
    const/4 v0, 0x0

    return v0

    .line 223
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    monitor-enter v1

    .line 749
    :try_start_4
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 750
    .local v2, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 751
    .local v4, "uid":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 752
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 753
    .local v7, "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    nop

    .end local v7    # "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    add-int/lit8 v0, v0, 0x1

    .line 755
    goto :goto_26

    .line 756
    .end local v4    # "uid":Ljava/lang/Integer;
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    :cond_4e
    goto :goto_e

    .line 757
    :cond_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " apps installed in this device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    const/4 v0, 0x0

    .line 759
    iget-object v3, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapName:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 760
    .local v4, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    add-int/lit8 v0, v0, 0x1

    .line 761
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    .end local v4    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    goto :goto_6f

    .line 763
    :cond_96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " apps installed in this device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    .end local v2    # "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-exit v1

    .line 765
    return-void

    .line 764
    :catchall_b1
    move-exception v2

    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_4 .. :try_end_b3} :catchall_b1

    throw v2
.end method

.method public getInstalledApps()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;",
            ">;>;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    monitor-exit v0

    return-object v1

    .line 200
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getInstalledAppsByUseId(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    monitor-enter v1

    .line 206
    :try_start_8
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapName:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 207
    .local v2, "lists":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    :goto_e
    if-eqz v2, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 208
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 209
    .local v3, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget v4, v3, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    if-ne v4, p1, :cond_23

    .line 210
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v3    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_23
    goto :goto_e

    .line 213
    .end local v2    # "lists":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    :cond_24
    monitor-exit v1

    .line 214
    return-object v0

    .line 213
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public init(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handlerThread"    # Landroid/os/HandlerThread;

    .line 140
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v1, " init "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-object p1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapName:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPackageChangedObservers:Ljava/util/List;

    .line 145
    new-instance v0, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;-><init>(Lcom/android/server/ipm/MultiUserPkgManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mMainHandler:Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;

    .line 146
    return-void
.end method

.method public onPackageStatusChange(Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "isReInstall"    # Z
    .param p4, "userId"    # I
    .param p5, "uid"    # I

    .line 661
    if-eqz p1, :cond_1aa

    if-nez p2, :cond_6

    goto/16 :goto_1aa

    .line 664
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    if-eqz v0, :cond_39

    .line 665
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " onPackageStatusChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_39
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_110

    .line 671
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 674
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_48
    invoke-virtual {v0, p1, v1, p4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 675
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 676
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_55

    move v1, v5

    :cond_55
    invoke-direct {v3, p4, p5, p1, v1}, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;-><init>(IILjava/lang/String;Z)V

    move-object v1, v3

    .line 677
    .local v1, "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget-object v3, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48 .. :try_end_5c} :catch_104

    .line 678
    :try_start_5c
    iget-object v4, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 679
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v4, "mAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    iget-object v5, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    iget v6, v1, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    nop

    .end local v4    # "mAppInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    goto :goto_94

    .line 682
    :cond_7c
    iget-object v4, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mInstalledPkgMapUid contain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :goto_94
    iget-object v4, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ba

    .line 685
    iget-object v4, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    .line 687
    :cond_ba
    iget-object v4, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mInstalledPkgMapUid contain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :goto_d4
    iget-object v4, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapName:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e1

    .line 691
    iget-object v4, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapName:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_e1
    monitor-exit v3
    :try_end_e2
    .catchall {:try_start_5c .. :try_end_e2} :catchall_101

    .line 695
    :try_start_e2
    iget-object v3, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPackageChangedObservers:Ljava/util/List;

    monitor-enter v3
    :try_end_e5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e2 .. :try_end_e5} :catch_104

    .line 696
    :try_start_e5
    iget-object v4, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPackageChangedObservers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_eb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;

    .line 697
    .local v5, "observer":Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;
    invoke-interface {v5, v1}, Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;->packageAdd(Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;)V

    .end local v5    # "observer":Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;
    goto :goto_eb

    .line 698
    :cond_fb
    monitor-exit v3

    .line 702
    .end local v1    # "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    goto/16 :goto_1a8

    .line 698
    .restart local v1    # "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :catchall_fe
    move-exception v4

    monitor-exit v3
    :try_end_100
    .catchall {:try_start_e5 .. :try_end_100} :catchall_fe

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Lcom/android/server/ipm/MultiUserPkgManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "action":Ljava/lang/String;
    .end local p3    # "isReInstall":Z
    .end local p4    # "userId":I
    .end local p5    # "uid":I
    :try_start_100
    throw v4
    :try_end_101
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_100 .. :try_end_101} :catch_104

    .line 693
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Lcom/android/server/ipm/MultiUserPkgManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "action":Ljava/lang/String;
    .restart local p3    # "isReInstall":Z
    .restart local p4    # "userId":I
    .restart local p5    # "uid":I
    :catchall_101
    move-exception v4

    :try_start_102
    monitor-exit v3
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Lcom/android/server/ipm/MultiUserPkgManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "action":Ljava/lang/String;
    .end local p3    # "isReInstall":Z
    .end local p4    # "userId":I
    .end local p5    # "uid":I
    :try_start_103
    throw v4
    :try_end_104
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_103 .. :try_end_104} :catch_104

    .line 699
    .end local v1    # "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Lcom/android/server/ipm/MultiUserPkgManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "action":Ljava/lang/String;
    .restart local p3    # "isReInstall":Z
    .restart local p4    # "userId":I
    .restart local p5    # "uid":I
    :catch_104
    move-exception v1

    .line 701
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a8

    .line 703
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_110
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 704
    new-instance v0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    invoke-direct {v0, p4, p5, p1, v1}, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;-><init>(IILjava/lang/String;Z)V

    .line 705
    .local v0, "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    monitor-enter v1

    .line 706
    :try_start_120
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_179

    .line 707
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 708
    .local v2, "list":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    :goto_13c
    if-eqz v2, :cond_15e

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 709
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 710
    .local v3, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget v4, v3, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    if-ne p4, v4, :cond_15d

    iget-object v4, v3, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15d

    iget v4, v3, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    if-ne p5, v4, :cond_15d

    .line 712
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    .line 714
    .end local v3    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_15d
    goto :goto_13c

    .line 715
    :cond_15e
    iget-object v3, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_179

    .line 716
    iget-object v3, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapUid:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .end local v2    # "list":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    :cond_179
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapName:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 720
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mInstalledPkgMapName:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 722
    :cond_186
    monitor-exit v1
    :try_end_187
    .catchall {:try_start_120 .. :try_end_187} :catchall_1a5

    .line 723
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPackageChangedObservers:Ljava/util/List;

    monitor-enter v2

    .line 724
    :try_start_18a
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPackageChangedObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_190
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;

    .line 725
    .local v3, "observer":Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;
    invoke-interface {v3, v0}, Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;->packageRemove(Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;)V

    .end local v3    # "observer":Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;
    goto :goto_190

    .line 726
    :cond_1a0
    monitor-exit v2

    goto :goto_1a9

    :catchall_1a2
    move-exception v1

    monitor-exit v2
    :try_end_1a4
    .catchall {:try_start_18a .. :try_end_1a4} :catchall_1a2

    throw v1

    .line 722
    :catchall_1a5
    move-exception v2

    :try_start_1a6
    monitor-exit v1
    :try_end_1a7
    .catchall {:try_start_1a6 .. :try_end_1a7} :catchall_1a5

    throw v2

    .line 703
    .end local v0    # "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_1a8
    :goto_1a8
    nop

    .line 728
    :goto_1a9
    return-void

    .line 662
    :cond_1aa
    :goto_1aa
    return-void
.end method

.method registerDefaultPkgReceiver()V
    .registers 4

    .line 374
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 375
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v1, " registerDefaultPkgReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 378
    .local v0, "pkgFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    return-void
.end method

.method registerDualAppReceiver(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 434
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppReceiverRegistered:Z

    if-eqz v0, :cond_5

    .line 435
    return-void

    .line 436
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 437
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v1, " registerDualAppReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 440
    .local v0, "pkgFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 445
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppReceiverRegistered:Z

    .line 446
    return-void
.end method

.method public registerPackageObserver(Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;)V
    .registers 4
    .param p1, "observer"    # Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;

    .line 741
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPackageChangedObservers:Ljava/util/List;

    monitor-enter v0

    .line 742
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mPackageChangedObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    monitor-exit v0

    .line 744
    return-void

    .line 743
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method registerSecureFolderReceiver(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 405
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderReceiverRegistered:Z

    if-eqz v0, :cond_5

    .line 406
    return-void

    .line 407
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 408
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v1, " registerSecureFolderReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 411
    .local v0, "pkgFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    const-string v1, "com.sec.knox.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 417
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderReceiverRegistered:Z

    .line 418
    return-void
.end method

.method registerUserSwitchReceiver()V
    .registers 4

    .line 396
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 397
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v1, " registerUserSwitchReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 400
    .local v0, "multiUserFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    return-void
.end method

.method registerUserTriggerReceiver()V
    .registers 4

    .line 386
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 387
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v1, " registerUserTriggerReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v0, "userFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v1, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mUserTriggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    return-void
.end method

.method registerWorkspaceReceiver(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 460
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mWorkspaceReceiverRegistered:Z

    if-eqz v0, :cond_5

    .line 461
    return-void

    .line 462
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 463
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v1, " registerWorkspaceReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 466
    .local v0, "pkgFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mWorkspacePkgIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 471
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mWorkspaceReceiverRegistered:Z

    .line 472
    return-void
.end method

.method sendDelPkgAsUserMsgToMainHandler(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 584
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mMainHandler:Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 586
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 587
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 590
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mMainHandler:Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 591
    return-void
.end method

.method sendInsPkgAsUserMsgToMainHandler(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 559
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mMainHandler:Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 561
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 562
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 565
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mMainHandler:Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 566
    return-void
.end method

.method sendPkgStatusChangedMsgToMainHandler(Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "isReInstall"    # Z
    .param p4, "user"    # I
    .param p5, "uid"    # I

    .line 570
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 572
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string/jumbo v1, "isReInstall"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 575
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mMainHandler:Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 579
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 580
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mMainHandler:Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager$LocalMainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 581
    return-void
.end method

.method unregisterDualAppReceiver()V
    .registers 4

    .line 449
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppReceiverRegistered:Z

    if-nez v0, :cond_5

    .line 450
    return-void

    .line 452
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppReceiverRegistered:Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_f} :catch_10

    .line 456
    goto :goto_18

    .line 454
    :catch_10
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException occurred in unregisterDualAppReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_18
    return-void
.end method

.method unregisterSecureFolderReceiver()V
    .registers 4

    .line 421
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderReceiverRegistered:Z

    if-nez v0, :cond_5

    .line 422
    return-void

    .line 423
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 424
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v1, " unregisterSecureFolderReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderReceiverRegistered:Z
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_1a} :catch_1b

    .line 430
    goto :goto_23

    .line 428
    :catch_1b
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException occurred in unregisterSecureFolderReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_23
    return-void
.end method

.method unregisterWorkspaceReceiver()V
    .registers 4

    .line 475
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mWorkspaceReceiverRegistered:Z

    if-nez v0, :cond_5

    .line 476
    return-void

    .line 477
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 478
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v1, " unregisterWorkspaceReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mWorkspacePkgIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ipm/MultiUserPkgManager;->mWorkspaceReceiverRegistered:Z
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_1a} :catch_1b

    .line 484
    goto :goto_23

    .line 482
    :catch_1b
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException occurred in unregisterWorkspaceReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_23
    return-void
.end method
