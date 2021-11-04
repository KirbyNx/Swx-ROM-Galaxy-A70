.class public final Lcom/android/server/policy/PermissionPolicyService;
.super Lcom/android/server/SystemService;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PermissionPolicyService$Internal;,
        Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final USER_SENSITIVE_UPDATE_DELAY_MS:J = 0x2710L


# instance fields
.field private mAppOpPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private final mIsPackageSyncsScheduled:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIsStarted:Landroid/util/SparseBooleanArray;

.field private final mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

.field private final mLock:Ljava/lang/Object;

.field private mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    const-class v0, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    .line 114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    .line 121
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    .line 129
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/PermissionPolicyService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # I

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .line 93
    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;

    .line 93
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 93
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/PermissionPolicyService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # I

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/PermissionPolicyService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"    # I

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUidAsync(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 93
    invoke-static {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 93
    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService;

    .line 93
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    return-object v0
.end method

.method private static getSwitchOp(Ljava/lang/String;)I
    .registers 3
    .param p0, "permission"    # Ljava/lang/String;

    .line 302
    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 303
    .local v0, "op":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 304
    return v1

    .line 307
    :cond_8
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    return v1
.end method

.method private static getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 447
    return-object p0

    .line 450
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_14} :catch_15

    return-object v0

    .line 451
    :catch_15
    move-exception v0

    .line 452
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create context for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    const/4 v1, 0x0

    return-object v1
.end method

.method private grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 399
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 400
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 401
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 402
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 403
    .local v1, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->isPermissionUpgradeNeeded(I)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 405
    sget-object v2, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultPermsWereGrantedSinceBoot("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 414
    .local v2, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    new-instance v3, Landroid/permission/PermissionControllerManager;

    .line 416
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    .line 417
    invoke-static {}, Lcom/android/server/pm/PmThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 418
    .local v3, "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    nop

    .line 419
    invoke-static {}, Lcom/android/server/pm/PmThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$enZnky8NIhd5B9lAhmYeFn1Y6mk;

    invoke-direct {v5, v2, p1}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$enZnky8NIhd5B9lAhmYeFn1Y6mk;-><init>(Lcom/android/internal/infra/AndroidFuture;I)V

    .line 418
    invoke-virtual {v3, v4, v5}, Landroid/permission/PermissionControllerManager;->grantOrUpgradeDefaultRuntimePermissions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 432
    :try_start_58
    invoke-virtual {v2}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5b} :catch_71
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_58 .. :try_end_5b} :catch_71

    .line 435
    nop

    .line 437
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/policy/-$$Lambda$jaDybyCEM2y6SS96P5BBES0UITE;

    invoke-direct {v5, v3}, Lcom/android/server/policy/-$$Lambda$jaDybyCEM2y6SS96P5BBES0UITE;-><init>(Landroid/permission/PermissionControllerManager;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->updateRuntimePermissionsFingerprint(I)V

    goto :goto_78

    .line 433
    :catch_71
    move-exception v4

    .line 434
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 442
    .end local v2    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .end local v3    # "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_78
    :goto_78
    return-void
.end method

.method private isStarted(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 356
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 358
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static synthetic lambda$RYery4oeHNcS8uZ6BgM2MtZIvKw(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$V2gOjn4rTBH_rbxagOz-eOTvNfc(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$grantOrUpgradeDefaultRuntimePermissionsIfNeeded$0(Lcom/android/internal/infra/AndroidFuture;ILjava/lang/Boolean;)V
    .registers 5
    .param p0, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .param p1, "userId"    # I
    .param p2, "successful"    # Ljava/lang/Boolean;

    .line 420
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_29

    .line 425
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error granting/upgrading runtime permissions for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 430
    .end local v0    # "message":Ljava/lang/String;
    :goto_29
    return-void
.end method

.method static synthetic lambda$synchronizePermissionsAndAppOpsForUser$1(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3
    .param p0, "synchronizer"    # Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 507
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$vRo3eblf_94ockkD9_pc4n6dU_Q(Lcom/android/server/policy/PermissionPolicyService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    return-void
.end method

.method private resetAppOpPermissionsIfNotRequestedForUid(I)V
    .registers 26
    .param p1, "uid"    # I

    .line 525
    move-object/from16 v1, p0

    move/from16 v8, p1

    iget-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 526
    :try_start_7
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 527
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f3

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 530
    .local v9, "context":Landroid/content/Context;
    nop

    .line 531
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 530
    invoke-static {v9, v0}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 532
    .local v10, "userPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 533
    .local v11, "packageNames":[Ljava/lang/String;
    if-eqz v11, :cond_f0

    array-length v0, v11

    if-nez v0, :cond_2b

    move-object/from16 v16, v9

    goto/16 :goto_f2

    .line 537
    :cond_2b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v0

    .line 538
    .local v12, "requestedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v11

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v2, :cond_52

    aget-object v4, v11, v3

    .line 541
    .local v4, "packageName":Ljava/lang/String;
    const/16 v0, 0x1000

    :try_start_39
    invoke-virtual {v10, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_3d} :catch_4b

    .line 544
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 545
    if-eqz v0, :cond_4f

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v5, :cond_45

    .line 546
    goto :goto_4f

    .line 548
    :cond_45
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v12, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_4f

    .line 542
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_4b
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 543
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 538
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4f
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 551
    :cond_52
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 552
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    const-class v2, Landroid/app/AppOpsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/app/AppOpsManagerInternal;

    .line 554
    .local v14, "appOpsManagerInternal":Landroid/app/AppOpsManagerInternal;
    iget-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    .line 555
    .local v15, "appOpPermissionsSize":I
    const/4 v2, 0x0

    move v7, v2

    .local v7, "i":I
    :goto_6b
    if-ge v7, v15, :cond_ef

    .line 556
    iget-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 558
    .local v6, "appOpPermission":Ljava/lang/String;
    invoke-virtual {v12, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_df

    .line 559
    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v5

    .line 560
    .local v5, "appOpCode":I
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    .line 561
    .local v4, "defaultAppOpMode":I
    array-length v3, v11

    const/4 v2, 0x0

    :goto_86
    if-ge v2, v3, :cond_d2

    aget-object v13, v11, v2

    .line 562
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v16, v9

    .end local v9    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    invoke-virtual {v0, v5, v8, v13}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v9

    .line 564
    .local v9, "appOpMode":I
    if-eq v9, v4, :cond_b3

    .line 565
    move-object/from16 v17, v0

    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .local v17, "appOpsManager":Landroid/app/AppOpsManager;
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-virtual {v14, v5, v8, v4, v0}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 567
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    move/from16 v18, v2

    move-object v2, v14

    move/from16 v19, v3

    move v3, v5

    move/from16 v20, v4

    .end local v4    # "defaultAppOpMode":I
    .local v20, "defaultAppOpMode":I
    move/from16 v4, p1

    move/from16 v21, v5

    .end local v5    # "appOpCode":I
    .local v21, "appOpCode":I
    move-object v5, v13

    move-object/from16 v22, v6

    .end local v6    # "appOpPermission":Ljava/lang/String;
    .local v22, "appOpPermission":Ljava/lang/String;
    move/from16 v6, v20

    move/from16 v23, v7

    .end local v7    # "i":I
    .local v23, "i":I
    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManagerInternal;->setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    goto :goto_c1

    .line 564
    .end local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v20    # "defaultAppOpMode":I
    .end local v21    # "appOpCode":I
    .end local v22    # "appOpPermission":Ljava/lang/String;
    .end local v23    # "i":I
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v4    # "defaultAppOpMode":I
    .restart local v5    # "appOpCode":I
    .restart local v6    # "appOpPermission":Ljava/lang/String;
    .restart local v7    # "i":I
    :cond_b3
    move-object/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    .line 561
    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v4    # "defaultAppOpMode":I
    .end local v5    # "appOpCode":I
    .end local v6    # "appOpPermission":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "appOpMode":I
    .end local v13    # "packageName":Ljava/lang/String;
    .restart local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v20    # "defaultAppOpMode":I
    .restart local v21    # "appOpCode":I
    .restart local v22    # "appOpPermission":Ljava/lang/String;
    .restart local v23    # "i":I
    :goto_c1
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v9, v16

    move-object/from16 v0, v17

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, v22

    move/from16 v7, v23

    goto :goto_86

    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v20    # "defaultAppOpMode":I
    .end local v21    # "appOpCode":I
    .end local v22    # "appOpPermission":Ljava/lang/String;
    .end local v23    # "i":I
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v4    # "defaultAppOpMode":I
    .restart local v5    # "appOpCode":I
    .restart local v6    # "appOpPermission":Ljava/lang/String;
    .restart local v7    # "i":I
    .local v9, "context":Landroid/content/Context;
    :cond_d2
    move-object/from16 v17, v0

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v16, v9

    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v4    # "defaultAppOpMode":I
    .end local v5    # "appOpCode":I
    .end local v6    # "appOpPermission":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "context":Landroid/content/Context;
    .restart local v16    # "context":Landroid/content/Context;
    .restart local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v20    # "defaultAppOpMode":I
    .restart local v21    # "appOpCode":I
    .restart local v22    # "appOpPermission":Ljava/lang/String;
    .restart local v23    # "i":I
    goto :goto_e7

    .line 558
    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v20    # "defaultAppOpMode":I
    .end local v21    # "appOpCode":I
    .end local v22    # "appOpPermission":Ljava/lang/String;
    .end local v23    # "i":I
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v6    # "appOpPermission":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v9    # "context":Landroid/content/Context;
    :cond_df
    move-object/from16 v17, v0

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v16, v9

    .line 555
    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v6    # "appOpPermission":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "context":Landroid/content/Context;
    .restart local v16    # "context":Landroid/content/Context;
    .restart local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v23    # "i":I
    :goto_e7
    add-int/lit8 v7, v23, 0x1

    move-object/from16 v9, v16

    move-object/from16 v0, v17

    .end local v23    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_6b

    .line 573
    .end local v7    # "i":I
    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v9    # "context":Landroid/content/Context;
    :cond_ef
    return-void

    .line 533
    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v12    # "requestedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "appOpsManagerInternal":Landroid/app/AppOpsManagerInternal;
    .end local v15    # "appOpPermissionsSize":I
    :cond_f0
    move-object/from16 v16, v9

    .line 534
    .end local v9    # "context":Landroid/content/Context;
    .restart local v16    # "context":Landroid/content/Context;
    :goto_f2
    return-void

    .line 527
    .end local v10    # "userPackageManager":Landroid/content/pm/PackageManager;
    .end local v11    # "packageNames":[Ljava/lang/String;
    .end local v16    # "context":Landroid/content/Context;
    :catchall_f3
    move-exception v0

    :try_start_f4
    monitor-exit v2
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw v0
.end method

.method private resetAppOpPermissionsIfNotRequestedForUidAsync(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 512
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 513
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_d
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 515
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsUidSyncScheduled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 516
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$vRo3eblf_94ockkD9_pc4n6dU_Q;->INSTANCE:Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$vRo3eblf_94ockkD9_pc4n6dU_Q;

    .line 518
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 516
    invoke-static {v2, p0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 520
    :cond_2c
    monitor-exit v0

    goto :goto_31

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_2e

    throw v1

    .line 522
    :cond_31
    :goto_31
    return-void
.end method

.method private synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changedUserId"    # I

    .line 312
    invoke-direct {p0, p2}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 313
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_9
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 316
    invoke-static {}, Lcom/android/server/pm/PmThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;->INSTANCE:Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;

    .line 319
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 316
    invoke-static {v2, p0, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 332
    :cond_2b
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_2d

    throw v1

    .line 334
    :cond_30
    :goto_30
    return-void
.end method

.method private synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 463
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 465
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_5a

    .line 473
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 475
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 477
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_24

    .line 478
    return-void

    .line 480
    :cond_24
    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 481
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V

    .line 482
    .local v3, "synchroniser":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 483
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "sharedPkgNames":[Ljava/lang/String;
    array-length v5, v4

    :goto_41
    if-ge v2, v5, :cond_56

    aget-object v6, v4, v2

    .line 487
    .local v6, "sharedPkgName":Ljava/lang/String;
    nop

    .line 488
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 489
    .local v7, "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v7, :cond_53

    .line 490
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 486
    .end local v6    # "sharedPkgName":Ljava/lang/String;
    .end local v7    # "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 493
    :cond_56
    # invokes: Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->syncPackages()V
    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->access$700(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 494
    return-void

    .line 465
    .end local v0    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "synchroniser":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    .end local v4    # "sharedPkgNames":[Ljava/lang/String;
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private synchronizePermissionsAndAppOpsForUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 502
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 504
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 505
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V

    .line 506
    .local v1, "synchronizer":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    new-instance v2, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$i87nwVknDNR-kxbgdgQq3zYShyg;

    invoke-direct {v2, v1}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$i87nwVknDNR-kxbgdgQq3zYShyg;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 508
    # invokes: Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->syncPackages()V
    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->access$700(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 509
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 340
    const/16 v0, 0x226

    if-ne p1, v0, :cond_22

    .line 341
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 344
    .local v0, "um":Landroid/os/UserManagerInternal;
    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_22

    aget v4, v1, v3

    .line 345
    .local v4, "userId":I
    invoke-virtual {v0, v4}, Landroid/os/UserManagerInternal;->isUserRunning(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 346
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser(I)V

    .line 344
    .end local v4    # "userId":I
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 350
    .end local v0    # "um":Landroid/os/UserManagerInternal;
    :cond_22
    return-void
.end method

.method public onStart()V
    .registers 19

    .line 134
    move-object/from16 v1, p0

    const-string v2, "Cannot set up app-ops listener"

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 136
    .local v3, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 138
    .local v4, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    nop

    .line 139
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    .line 141
    .local v5, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$1;

    invoke-direct {v0, v1}, Lcom/android/server/policy/PermissionPolicyService$1;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    .line 168
    new-instance v0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;

    invoke-direct {v0, v1}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    .line 171
    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$2;

    invoke-direct {v0, v1}, Lcom/android/server/policy/PermissionPolicyService$2;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    iput-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 179
    nop

    .line 180
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtection(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 183
    .local v7, "dangerousPerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    const/4 v8, -0x1

    const/4 v9, 0x0

    :try_start_40
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 184
    .local v0, "numDangerousPerms":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_45
    if-ge v10, v0, :cond_78

    .line 185
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PermissionInfo;

    .line 187
    .local v11, "perm":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v12

    if-eqz v12, :cond_5e

    .line 188
    iget-object v12, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v12

    iget-object v13, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, v12, v9, v13}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 190
    :cond_5e
    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v12

    if-eqz v12, :cond_75

    .line 191
    iget-object v12, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 192
    invoke-static {v9, v9, v9, v9, v12}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v12

    .line 194
    .local v12, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    invoke-virtual {v12}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getExtraAppOpCode()I

    move-result v13

    .line 195
    .local v13, "extraAppOp":I
    if-eq v13, v8, :cond_75

    .line 196
    iget-object v14, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, v13, v9, v14}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_75} :catch_79

    .line 184
    .end local v11    # "perm":Landroid/content/pm/PermissionInfo;
    .end local v12    # "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .end local v13    # "extraAppOp":I
    :cond_75
    add-int/lit8 v10, v10, 0x1

    goto :goto_45

    .line 202
    .end local v0    # "numDangerousPerms":I
    .end local v10    # "i":I
    :cond_78
    goto :goto_7f

    .line 200
    :catch_79
    move-exception v0

    .line 201
    .local v0, "doesNotHappen":Landroid/os/RemoteException;
    sget-object v10, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v0    # "doesNotHappen":Landroid/os/RemoteException;
    :goto_7f
    const/16 v0, 0x40

    .line 205
    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtectionFlags(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 207
    .local v10, "appOpPermissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    .line 208
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 209
    .local v11, "appOpPermissionInfosSize":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_92
    if-ge v12, v11, :cond_101

    .line 210
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/PermissionInfo;

    .line 212
    .local v13, "appOpPermissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v0, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, 0x1277d93c

    const/4 v9, 0x2

    if-eq v14, v15, :cond_c6

    const v15, 0x50b27c6d

    if-eq v14, v15, :cond_bc

    const v15, 0x69eee241

    if-eq v14, v15, :cond_b2

    :cond_b1
    goto :goto_d0

    :cond_b2
    const-string v14, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    move v0, v9

    goto :goto_d1

    :cond_bc
    const-string v14, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    const/4 v0, 0x0

    goto :goto_d1

    :cond_c6
    const-string v14, "android.permission.MANAGE_IPSEC_TUNNELS"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    move v0, v6

    goto :goto_d1

    :goto_d0
    move v0, v8

    :goto_d1
    if-eqz v0, :cond_fb

    if-eq v0, v6, :cond_fb

    if-eq v0, v9, :cond_f9

    .line 222
    iget-object v0, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v9

    .line 224
    .local v9, "appOpCode":I
    if-eq v9, v8, :cond_f7

    .line 225
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpPermissions:Ljava/util/List;

    iget-object v14, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :try_start_e6
    iget-object v0, v1, Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_e8} :catch_ef

    const/4 v14, 0x0

    :try_start_e9
    invoke-interface {v5, v9, v14, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_ec} :catch_ed

    .line 230
    goto :goto_fd

    .line 228
    :catch_ed
    move-exception v0

    goto :goto_f1

    :catch_ef
    move-exception v0

    const/4 v14, 0x0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    :goto_f1
    sget-object v15, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v15, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fd

    .line 224
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f7
    const/4 v14, 0x0

    goto :goto_fd

    .line 220
    .end local v9    # "appOpCode":I
    :cond_f9
    const/4 v14, 0x0

    goto :goto_fd

    .line 212
    :cond_fb
    const/4 v14, 0x0

    .line 215
    nop

    .line 209
    .end local v13    # "appOpPermissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_fd
    add-int/lit8 v12, v12, 0x1

    move-object v9, v14

    goto :goto_92

    .line 235
    .end local v12    # "i":I
    :cond_101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Lcom/android/server/policy/PermissionPolicyService$3;

    invoke-direct {v13, v1, v3}, Lcom/android/server/policy/PermissionPolicyService$3;-><init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/pm/PackageManagerInternal;)V

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v15, v0

    invoke-virtual/range {v12 .. v17}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 290
    return-void
.end method

.method public onStartUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 365
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 366
    return-void

    .line 369
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V

    .line 373
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_d
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 375
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 376
    .local v1, "callback":Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1f

    .line 379
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePermissionsAndAppOpsForUser(I)V

    .line 382
    if-eqz v1, :cond_1e

    .line 383
    invoke-interface {v1, p1}, Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;->onInitialized(I)V

    .line 385
    :cond_1e
    return-void

    .line 376
    .end local v1    # "callback":Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public onStopUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 391
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 393
    monitor-exit v0

    .line 394
    return-void

    .line 393
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
