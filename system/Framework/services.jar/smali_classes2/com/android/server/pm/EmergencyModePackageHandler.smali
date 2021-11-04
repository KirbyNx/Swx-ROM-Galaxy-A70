.class Lcom/android/server/pm/EmergencyModePackageHandler;
.super Ljava/lang/Object;
.source "EmergencyModePackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;,
        Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field static final EM_CANCEL_SENDING_BROADCAST:I = 0x5

.field static final EM_CHECK_TIMEOUT_OF_BROADCAST:I = 0x3

.field static final EM_MAKE_PENDING_BROADCAST:I = 0x1

.field static final EM_SEND_FINISHING_INTENT:I = 0x4

.field static final EM_SEND_PENDING_BROADCAST:I = 0x2

.field static final TAG:Ljava/lang/String; = "EMPkgHandler"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

.field final mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

.field final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field final mSettings:Lcom/android/server/pm/Settings;

.field mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/EmergencyModePackageHandler;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/ProtectedPackages;Landroid/os/Looper;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/android/server/pm/Settings;
    .param p3, "pkgMgrSvc"    # Lcom/android/server/pm/PackageManagerService;
    .param p4, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p6, "protectedPackages"    # Lcom/android/server/pm/ProtectedPackages;
    .param p7, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/Settings;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Lcom/android/server/pm/ProtectedPackages;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 67
    .local p5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    new-instance v0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-direct {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    .line 68
    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mSettings:Lcom/android/server/pm/Settings;

    .line 70
    iput-object p3, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    .line 71
    iput-object p5, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPackages:Landroid/util/ArrayMap;

    .line 72
    iput-object p6, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 73
    new-instance v0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-direct {v0, p0, p7}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;-><init>(Lcom/android/server/pm/EmergencyModePackageHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    .line 74
    iput-object p4, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/EmergencyModePackageHandler;[Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I
    .registers 8
    .param p0, "x0"    # Lcom/android/server/pm/EmergencyModePackageHandler;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/util/ArrayList;
    .param p3, "x3"    # [I
    .param p4, "x4"    # [Z
    .param p5, "x5"    # [I
    .param p6, "x6"    # I

    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/EmergencyModePackageHandler;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/EmergencyModePackageHandler;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/pm/EmergencyModePackageHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/content/IIntentReceiver;
    .param p6, "x6"    # I

    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/EmergencyModePackageHandler;->sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    return-void
.end method

.method private handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I
    .registers 19
    .param p1, "packages"    # [Ljava/lang/String;
    .param p3, "uids"    # [I
    .param p4, "dontKillFlags"    # [Z
    .param p5, "newStateList"    # [I
    .param p6, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[I[Z[II)I"
        }
    .end annotation

    .line 556
    .local p2, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    move/from16 v1, p6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlePendingBroadcastsForBurst size["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EMPkgHandler"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v2, 0x0

    if-gtz v1, :cond_23

    .line 558
    return v2

    .line 561
    :cond_23
    const/4 v3, 0x0

    .line 562
    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_25
    iget-object v5, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v5}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->userIdCount()I

    move-result v5

    if-ge v4, v5, :cond_9e

    .line 563
    iget-object v5, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->userIdAt(I)I

    move-result v5

    .line 564
    .local v5, "packageUserId":I
    iget-object v6, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    .line 565
    invoke-virtual {v6, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->packagesForUserId(I)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 566
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 567
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    iget-object v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v7, v5}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->packagesNewStateForUserId(I)Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 569
    .local v7, "pkgNewState":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_47
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9b

    if-ge v3, v1, :cond_9b

    .line 570
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 571
    .local v8, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v9, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 572
    .local v9, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_9a

    .line 573
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, p1, v3

    .line 574
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    aput-object v10, p2, v3

    .line 575
    iget v10, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    aput v10, p3, v3

    .line 576
    aget-object v10, p1, v3

    invoke-virtual {v7, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 577
    .local v10, "newState":I
    aput v10, p5, v3

    .line 578
    const/4 v11, 0x1

    if-ne v10, v11, :cond_91

    .line 580
    aput-boolean v11, p4, v3

    goto :goto_98

    .line 581
    :cond_91
    if-nez v10, :cond_96

    .line 582
    aput-boolean v11, p4, v3

    goto :goto_98

    .line 594
    :cond_96
    aput-boolean v2, p4, v3

    .line 596
    :goto_98
    add-int/lit8 v3, v3, 0x1

    .line 598
    .end local v8    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v9    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "newState":I
    :cond_9a
    goto :goto_47

    .line 562
    .end local v5    # "packageUserId":I
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v7    # "pkgNewState":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 600
    .end local v4    # "n":I
    :cond_9e
    iget-object v2, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v2}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->clear()V

    .line 602
    return v3
.end method

.method private sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    .registers 27
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "killFlag"    # Z
    .param p4, "packageUid"    # I
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/IIntentReceiver;",
            "I)V"
        }
    .end annotation

    .line 449
    .local p3, "componentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 450
    .local v2, "userId":I
    iget-object v3, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v14, p1

    invoke-virtual {v3, v14, v2}, Lcom/android/server/pm/PackageManagerService;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3

    .line 451
    .local v3, "isInstantApp":Z
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_17

    sget-object v6, Lcom/android/server/pm/EmergencyModePackageHandler;->EMPTY_INT_ARRAY:[I

    goto :goto_1b

    :cond_17
    new-array v6, v4, [I

    aput v2, v6, v5

    :goto_1b
    move-object v15, v6

    .line 452
    .local v15, "userIds":[I
    if-eqz v3, :cond_23

    new-array v6, v4, [I

    aput v2, v6, v5

    goto :goto_25

    :cond_23
    sget-object v6, Lcom/android/server/pm/EmergencyModePackageHandler;->EMPTY_INT_ARRAY:[I

    :goto_25
    move-object v12, v6

    .line 453
    .local v12, "instantUserIds":[I
    new-instance v6, Landroid/os/Bundle;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(I)V

    move-object v13, v6

    .line 454
    .local v13, "extras":Landroid/os/Bundle;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "android.intent.extra.changed_component_name"

    invoke-virtual {v13, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v11, v6, [Ljava/lang/String;

    .line 456
    .local v11, "nameList":[Ljava/lang/String;
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 457
    const-string v6, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v13, v6, v11}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 458
    const-string v6, "android.intent.extra.DONT_KILL_APP"

    move/from16 v10, p2

    invoke-virtual {v13, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    const-string v6, "android.intent.extra.UID"

    move/from16 v9, p4

    invoke-virtual {v13, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    const-string v6, "EM_PKG_HADNLER_ID"

    move/from16 v8, p6

    invoke-virtual {v13, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    iget-object v6, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    const/high16 v16, 0x10000000

    const/16 v17, 0x0

    new-array v7, v4, [I

    .line 462
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    aput v4, v7, v5

    const/16 v18, 0x0

    .line 461
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    move-object v4, v6

    move-object/from16 v6, p1

    move-object/from16 v19, v7

    move-object v7, v13

    move/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, p5

    move-object/from16 v16, v11

    .end local v11    # "nameList":[Ljava/lang/String;
    .local v16, "nameList":[Ljava/lang/String;
    move-object/from16 v11, v19

    move-object/from16 v17, v13

    .end local v13    # "extras":Landroid/os/Bundle;
    .local v17, "extras":Landroid/os/Bundle;
    move-object/from16 v13, v18

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;)V

    .line 463
    return-void
.end method


# virtual methods
.method public cancelEMPHandlerSendPendingBroadcast()V
    .registers 3

    .line 615
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    if-eqz v0, :cond_1e

    .line 616
    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 618
    const-string v0, "EMPkgHandler"

    const-string v1, "cancelEMHandlerSendPendingBroadcast : Already done"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    .line 620
    return-void

    .line 623
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendEmptyMessage(I)Z

    .line 625
    :cond_1e
    return-void
.end method

.method getEMPackageHanderObj()Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    return-object v0
.end method

.method getPendingBroadcastsForBurst()Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    return-object v0
.end method

.method public getProgressionOfPackageChanged()I
    .registers 2

    .line 607
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    if-eqz v0, :cond_9

    .line 608
    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->getProgressionOfPackageChanged()I

    move-result v0

    return v0

    .line 610
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method isKnox(I)Z
    .registers 3
    .param p1, "userID"    # I

    .line 628
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    return v0
.end method

.method public setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V
    .registers 34
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "usePending"    # Z
    .param p5, "startNow"    # Z
    .param p6, "userId"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 467
    .local p1, "listPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    if-eqz p1, :cond_214

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_214

    .line 472
    :cond_12
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 473
    return-void

    .line 475
    :cond_1b
    if-nez p7, :cond_27

    .line 476
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .end local p7    # "callingPackage":Ljava/lang/String;
    .local v0, "callingPackage":Ljava/lang/String;
    goto :goto_29

    .line 475
    .end local v0    # "callingPackage":Ljava/lang/String;
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :cond_27
    move-object/from16 v12, p7

    .line 481
    .end local p7    # "callingPackage":Ljava/lang/String;
    .local v12, "callingPackage":Ljava/lang/String;
    :goto_29
    and-int/lit8 v0, p3, -0x2

    or-int/lit8 v13, v0, 0x4

    .line 482
    .end local p3    # "flags":I
    .local v13, "flags":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setApplicationEnabledSettingWithList usePending = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  Start now = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPkgHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v14, 0x0

    .line 484
    .local v14, "packages":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 485
    .local v15, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 486
    .local v16, "uids":[I
    const/16 v17, 0x0

    .line 487
    .local v17, "dontKillFlags":[Z
    const/16 v18, 0x0

    .line 488
    .local v18, "newStateList":[I
    const/16 v19, 0x0

    .line 489
    .local v19, "size":I
    const/16 v20, 0x0

    .line 490
    .local v20, "retSize":I
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v7

    .line 492
    .local v7, "userIds":[I
    array-length v6, v7

    const/4 v0, 0x0

    move v5, v0

    :goto_61
    if-ge v5, v6, :cond_164

    aget v4, v7, v5

    .line 494
    .local v4, "user":I
    invoke-virtual {v8, v4}, Lcom/android/server/pm/EmergencyModePackageHandler;->isKnox(I)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setApplicationEnabledSettingWithList- skip knox user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPkgHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 p3, v14

    goto/16 :goto_15a

    .line 498
    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setApplicationEnabledSettingWithList - user id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPkgHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_a7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_150

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 501
    .local v3, "appPackageName":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setApplicationEnabledSettingWithList- skip ProtectedPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPkgHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    goto :goto_a7

    .line 507
    :cond_d4
    :try_start_d4
    iget-object v1, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;
    :try_end_d6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d4 .. :try_end_d6} :catch_11b
    .catch Ljava/lang/SecurityException; {:try_start_d4 .. :try_end_d6} :catch_f2

    const/4 v0, 0x0

    move-object v2, v3

    move-object/from16 p3, v14

    move-object v14, v3

    .end local v3    # "appPackageName":Ljava/lang/String;
    .local v14, "appPackageName":Ljava/lang/String;
    .local p3, "packages":[Ljava/lang/String;
    move-object v3, v0

    move/from16 v22, v4

    .end local v4    # "user":I
    .local v22, "user":I
    move/from16 v4, p2

    move/from16 v23, v5

    move v5, v13

    move/from16 v24, v6

    move/from16 v6, v22

    move-object/from16 v25, v7

    .end local v7    # "userIds":[I
    .local v25, "userIds":[I
    move-object v7, v12

    :try_start_ea
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettingEMPkgHndlr(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ea .. :try_end_ed} :catch_f0
    .catch Ljava/lang/SecurityException; {:try_start_ea .. :try_end_ed} :catch_ee

    goto :goto_143

    .line 511
    :catch_ee
    move-exception v0

    goto :goto_fe

    .line 508
    :catch_f0
    move-exception v0

    goto :goto_127

    .line 511
    .end local v22    # "user":I
    .end local v25    # "userIds":[I
    .end local p3    # "packages":[Ljava/lang/String;
    .restart local v3    # "appPackageName":Ljava/lang/String;
    .restart local v4    # "user":I
    .restart local v7    # "userIds":[I
    .local v14, "packages":[Ljava/lang/String;
    :catch_f2
    move-exception v0

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 p3, v14

    move-object v14, v3

    .line 512
    .end local v3    # "appPackageName":Ljava/lang/String;
    .end local v4    # "user":I
    .end local v7    # "userIds":[I
    .local v0, "e":Ljava/lang/SecurityException;
    .local v14, "appPackageName":Ljava/lang/String;
    .restart local v22    # "user":I
    .restart local v25    # "userIds":[I
    .restart local p3    # "packages":[Ljava/lang/String;
    :goto_fe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " changing not allowed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPkgHandler"

    invoke-static {v2, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_144

    .line 508
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v22    # "user":I
    .end local v25    # "userIds":[I
    .end local p3    # "packages":[Ljava/lang/String;
    .restart local v3    # "appPackageName":Ljava/lang/String;
    .restart local v4    # "user":I
    .restart local v7    # "userIds":[I
    .local v14, "packages":[Ljava/lang/String;
    :catch_11b
    move-exception v0

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 p3, v14

    move-object v14, v3

    .line 509
    .end local v3    # "appPackageName":Ljava/lang/String;
    .end local v4    # "user":I
    .end local v7    # "userIds":[I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .local v14, "appPackageName":Ljava/lang/String;
    .restart local v22    # "user":I
    .restart local v25    # "userIds":[I
    .restart local p3    # "packages":[Ljava/lang/String;
    :goto_127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is illegal package. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPkgHandler"

    invoke-static {v2, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 514
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_143
    nop

    .line 515
    .end local v14    # "appPackageName":Ljava/lang/String;
    :goto_144
    move-object/from16 v14, p3

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v6, v24

    move-object/from16 v7, v25

    goto/16 :goto_a7

    .line 499
    .end local v22    # "user":I
    .end local v25    # "userIds":[I
    .end local p3    # "packages":[Ljava/lang/String;
    .restart local v4    # "user":I
    .restart local v7    # "userIds":[I
    .local v14, "packages":[Ljava/lang/String;
    :cond_150
    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 p3, v14

    .line 492
    .end local v4    # "user":I
    .end local v7    # "userIds":[I
    .end local v14    # "packages":[Ljava/lang/String;
    .restart local v25    # "userIds":[I
    .restart local p3    # "packages":[Ljava/lang/String;
    :goto_15a
    add-int/lit8 v5, v23, 0x1

    move-object/from16 v14, p3

    move/from16 v6, v24

    move-object/from16 v7, v25

    goto/16 :goto_61

    .line 518
    .end local v25    # "userIds":[I
    .end local p3    # "packages":[Ljava/lang/String;
    .restart local v7    # "userIds":[I
    .restart local v14    # "packages":[Ljava/lang/String;
    :cond_164
    move-object/from16 v25, v7

    move-object/from16 p3, v14

    .end local v7    # "userIds":[I
    .end local v14    # "packages":[Ljava/lang/String;
    .restart local v25    # "userIds":[I
    .restart local p3    # "packages":[Ljava/lang/String;
    const-string v0, "EMPkgHandler"

    const-string/jumbo v1, "setApplicationEnabledSettingWithList"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v14, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 521
    :try_start_173
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 523
    if-eqz v9, :cond_195

    .line 524
    if-eqz v10, :cond_1ee

    .line 525
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1ee

    .line 526
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 527
    .local v0, "msg":Landroid/os/Message;
    iput v11, v0, Landroid/os/Message;->arg1:I

    .line 528
    iget-object v1, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 529
    nop

    .end local v0    # "msg":Landroid/os/Message;
    goto/16 :goto_1ee

    .line 532
    :cond_195
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    if-eqz v0, :cond_1ee

    .line 533
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->size()I

    move-result v0
    :try_end_19f
    .catchall {:try_start_173 .. :try_end_19f} :catchall_20d

    move v7, v0

    .line 534
    .end local v19    # "size":I
    .local v7, "size":I
    if-gtz v7, :cond_1ab

    .line 535
    :try_start_1a2
    monitor-exit v14
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_1a4

    return-void

    .line 545
    :catchall_1a4
    move-exception v0

    move-object/from16 v2, p3

    move/from16 v19, v7

    goto/16 :goto_210

    .line 537
    :cond_1ab
    :try_start_1ab
    new-array v2, v7, [Ljava/lang/String;
    :try_end_1ad
    .catchall {:try_start_1ab .. :try_end_1ad} :catchall_1e8

    .line 538
    .end local p3    # "packages":[Ljava/lang/String;
    .local v2, "packages":[Ljava/lang/String;
    :try_start_1ad
    new-array v3, v7, [Ljava/util/ArrayList;
    :try_end_1af
    .catchall {:try_start_1ad .. :try_end_1af} :catchall_1e4

    .line 539
    .end local v15    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1af
    new-array v4, v7, [I
    :try_end_1b1
    .catchall {:try_start_1af .. :try_end_1b1} :catchall_1df

    .line 540
    .end local v16    # "uids":[I
    .local v4, "uids":[I
    :try_start_1b1
    new-array v5, v7, [Z
    :try_end_1b3
    .catchall {:try_start_1b1 .. :try_end_1b3} :catchall_1d8

    .line 541
    .end local v17    # "dontKillFlags":[Z
    .local v5, "dontKillFlags":[Z
    :try_start_1b3
    new-array v6, v7, [I
    :try_end_1b5
    .catchall {:try_start_1b3 .. :try_end_1b5} :catchall_1cf

    .line 542
    .end local v18    # "newStateList":[I
    .local v6, "newStateList":[I
    move-object/from16 v1, p0

    move/from16 v19, v7

    .end local v7    # "size":I
    .restart local v19    # "size":I
    :try_start_1b9
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/EmergencyModePackageHandler;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v0
    :try_end_1bd
    .catchall {:try_start_1b9 .. :try_end_1bd} :catchall_1c6

    move v1, v0

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v20    # "retSize":I
    .local v0, "retSize":I
    goto :goto_1f2

    .line 545
    .end local v0    # "retSize":I
    .restart local v20    # "retSize":I
    :catchall_1c6
    move-exception v0

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_210

    .end local v6    # "newStateList":[I
    .end local v19    # "size":I
    .restart local v7    # "size":I
    .restart local v18    # "newStateList":[I
    :catchall_1cf
    move-exception v0

    move/from16 v19, v7

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v7    # "size":I
    .restart local v19    # "size":I
    goto :goto_210

    .end local v5    # "dontKillFlags":[Z
    .end local v19    # "size":I
    .restart local v7    # "size":I
    .restart local v17    # "dontKillFlags":[Z
    :catchall_1d8
    move-exception v0

    move/from16 v19, v7

    move-object v15, v3

    move-object/from16 v16, v4

    .end local v7    # "size":I
    .restart local v19    # "size":I
    goto :goto_210

    .end local v4    # "uids":[I
    .end local v19    # "size":I
    .restart local v7    # "size":I
    .restart local v16    # "uids":[I
    :catchall_1df
    move-exception v0

    move/from16 v19, v7

    move-object v15, v3

    .end local v7    # "size":I
    .restart local v19    # "size":I
    goto :goto_210

    .end local v3    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "size":I
    .restart local v7    # "size":I
    .restart local v15    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1e4
    move-exception v0

    move/from16 v19, v7

    .end local v7    # "size":I
    .restart local v19    # "size":I
    goto :goto_210

    .end local v2    # "packages":[Ljava/lang/String;
    .end local v19    # "size":I
    .restart local v7    # "size":I
    .restart local p3    # "packages":[Ljava/lang/String;
    :catchall_1e8
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v2, p3

    .end local v7    # "size":I
    .restart local v19    # "size":I
    goto :goto_210

    :cond_1ee
    :goto_1ee
    move-object/from16 v2, p3

    move/from16 v1, v20

    .end local v20    # "retSize":I
    .end local p3    # "packages":[Ljava/lang/String;
    .local v1, "retSize":I
    .restart local v2    # "packages":[Ljava/lang/String;
    :goto_1f2
    :try_start_1f2
    monitor-exit v14
    :try_end_1f3
    .catchall {:try_start_1f2 .. :try_end_1f3} :catchall_209

    .line 547
    if-nez v9, :cond_208

    .line 549
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f6
    if-ge v0, v1, :cond_208

    .line 550
    iget-object v3, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    aget-object v4, v2, v0

    aget-boolean v5, v17, v0

    aget-object v6, v15, v0

    aget v7, v16, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcastEMPkgHndlr(Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f6

    .line 553
    .end local v0    # "i":I
    :cond_208
    return-void

    .line 545
    :catchall_209
    move-exception v0

    move/from16 v20, v1

    goto :goto_210

    .end local v1    # "retSize":I
    .end local v2    # "packages":[Ljava/lang/String;
    .restart local v20    # "retSize":I
    .restart local p3    # "packages":[Ljava/lang/String;
    :catchall_20d
    move-exception v0

    move-object/from16 v2, p3

    .end local p3    # "packages":[Ljava/lang/String;
    .restart local v2    # "packages":[Ljava/lang/String;
    :goto_210
    :try_start_210
    monitor-exit v14
    :try_end_211
    .catchall {:try_start_210 .. :try_end_211} :catchall_212

    throw v0

    :catchall_212
    move-exception v0

    goto :goto_210

    .line 468
    .end local v2    # "packages":[Ljava/lang/String;
    .end local v12    # "callingPackage":Ljava/lang/String;
    .end local v13    # "flags":I
    .end local v15    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "uids":[I
    .end local v17    # "dontKillFlags":[Z
    .end local v18    # "newStateList":[I
    .end local v19    # "size":I
    .end local v20    # "retSize":I
    .end local v25    # "userIds":[I
    .local p3, "flags":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :cond_214
    :goto_214
    const-string v0, "EMPkgHandler"

    const-string/jumbo v1, "list of PackageName is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void
.end method
