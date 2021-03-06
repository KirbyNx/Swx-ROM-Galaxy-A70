.class Lcom/android/server/notification/NotificationManagerService$RoleObserver;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoleObserver"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mNonBlockableDefaultApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private final mRm:Landroid/app/role/RoleManager;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/role/RoleManager;Landroid/content/pm/IPackageManager;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "roleManager"    # Landroid/app/role/RoleManager;
    .param p3, "pkgMgr"    # Landroid/content/pm/IPackageManager;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .line 11451
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11452
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 11453
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mPm:Landroid/content/pm/IPackageManager;

    .line 11454
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 11455
    return-void
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 11542
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mPm:Landroid/content/pm/IPackageManager;

    const/high16 v1, 0x20000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 11543
    :catch_9
    move-exception v0

    .line 11544
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "role manager has bad default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11546
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public init()V
    .registers 12

    .line 11458
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$9100(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 11459
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    .line 11460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_95

    .line 11461
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 11462
    .local v2, "userToApprovedList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    sget-object v4, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11463
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_91

    .line 11464
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 11465
    .local v4, "userId":Ljava/lang/Integer;
    new-instance v5, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    sget-object v7, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    aget-object v7, v7, v1

    .line 11466
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 11465
    invoke-virtual {v6, v7, v8}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 11467
    .local v5, "approvedForUserId":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 11468
    .local v6, "approvedAppUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 11469
    .local v8, "pkg":Ljava/lang/String;
    new-instance v9, Landroid/util/Pair;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v8, v10}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->getUidForPackage(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 11470
    .end local v8    # "pkg":Ljava/lang/String;
    goto :goto_5e

    .line 11471
    :cond_7f
    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11472
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v6}, Lcom/android/server/notification/PreferencesHelper;->updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 11463
    .end local v4    # "userId":Ljava/lang/Integer;
    .end local v5    # "approvedForUserId":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "approvedAppUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 11460
    .end local v2    # "userToApprovedList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "j":I
    :cond_91
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    .line 11476
    .end local v1    # "i":I
    :cond_95
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, p0, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 11477
    return-void
.end method

.method public isApprovedPackageForRoleForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "role"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 11481
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 13
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 11494
    const/4 v0, 0x0

    .line 11495
    .local v0, "relevantChange":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_16

    .line 11496
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 11497
    const/4 v0, 0x1

    .line 11498
    goto :goto_16

    .line 11495
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11502
    .end local v1    # "i":I
    :cond_16
    :goto_16
    if-nez v0, :cond_19

    .line 11503
    return-void

    .line 11506
    :cond_19
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    invoke-virtual {v2, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 11509
    .local v1, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 11510
    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 11511
    .local v2, "prevApprovedForRole":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    nop

    .line 11512
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 11514
    .local v3, "previouslyApproved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 11515
    .local v4, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 11517
    .local v5, "toAdd":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_53
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 11518
    .local v7, "previous":Ljava/lang/String;
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_68

    .line 11519
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 11521
    .end local v7    # "previous":Ljava/lang/String;
    :cond_68
    goto :goto_53

    .line 11522
    :cond_69
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 11523
    .local v7, "nowApproved":Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_93

    .line 11524
    new-instance v8, Landroid/util/Pair;

    .line 11525
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-direct {p0, v7, v9}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->getUidForPackage(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11524
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 11527
    .end local v7    # "nowApproved":Ljava/lang/String;
    :cond_93
    goto :goto_6d

    .line 11530
    :cond_94
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11531
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11534
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/notification/PreferencesHelper;->updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 11538
    return-void
.end method
