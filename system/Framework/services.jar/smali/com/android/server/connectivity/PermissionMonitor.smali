.class public Lcom/android/server/connectivity/PermissionMonitor;
.super Ljava/lang/Object;
.source "PermissionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final NETWORK:Ljava/lang/Boolean;

.field protected static final SYSTEM:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "PermissionMonitor"

.field private static final VERSION_Q:I = 0x1d


# instance fields
.field private final mAllApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetd:Landroid/net/INetd;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVpnUidRanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    .line 84
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/INetd;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netd"    # Landroid/net/INetd;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    .line 727
    new-instance v0, Lcom/android/server/connectivity/PermissionMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PermissionMonitor$1;-><init>(Lcom/android/server/connectivity/PermissionMonitor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mExtPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 150
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    .line 151
    iput-object p2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "extPackageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mExtPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PermissionMonitor;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;

    .line 80
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([Ljava/lang/String;[I)I
    .registers 3
    .param p0, "x0"    # [Ljava/lang/String;
    .param p1, "x1"    # [I

    .line 80
    invoke-static {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->getNetdPermissionMask([Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 80
    invoke-static {p0}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/PermissionMonitor;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->getPermissionsForUid(I)I

    move-result v0

    return v0
.end method

.method private static getNetdPermissionMask([Ljava/lang/String;[I)I
    .registers 6
    .param p0, "requestedPermissions"    # [Ljava/lang/String;
    .param p1, "requestedPermissionsFlags"    # [I

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "permissions":I
    if-eqz p0, :cond_32

    if-nez p1, :cond_6

    goto :goto_32

    .line 470
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_31

    .line 471
    aget-object v2, p0, v1

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    aget v2, p1, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1c

    .line 473
    or-int/lit8 v0, v0, 0x4

    .line 475
    :cond_1c
    aget-object v2, p0, v1

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    aget v2, p1, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2e

    .line 477
    or-int/lit8 v0, v0, 0x8

    .line 470
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 480
    .end local v1    # "i":I
    :cond_31
    return v0

    .line 469
    :cond_32
    :goto_32
    return v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x401000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    .line 487
    .local v0, "app":Landroid/content/pm/PackageInfo;
    return-object v0

    .line 488
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :catch_a
    move-exception v0

    .line 489
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPermissionsForUid(I)I
    .registers 10
    .param p1, "uid"    # I

    .line 751
    const/4 v0, 0x0

    .line 754
    .local v0, "permission":I
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_28

    array-length v2, v1

    if-lez v2, :cond_28

    .line 756
    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_29

    aget-object v4, v1, v3

    .line 757
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 758
    .local v5, "app":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_25

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_25

    .line 759
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    invoke-static {v6, v7}, Lcom/android/server/connectivity/PermissionMonitor;->getNetdPermissionMask([Ljava/lang/String;[I)I

    move-result v6

    or-int/2addr v0, v6

    .line 756
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "app":Landroid/content/pm/PackageInfo;
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 765
    :cond_28
    const/4 v0, -0x1

    .line 767
    :cond_29
    return v0
.end method

.method private intersectUids(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 548
    .local p1, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .local p2, "appIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 549
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    .line 550
    .local v2, "range":Landroid/net/UidRange;
    invoke-virtual {v2}, Landroid/net/UidRange;->getStartUser()I

    move-result v3

    .local v3, "userId":I
    :goto_19
    invoke-virtual {v2}, Landroid/net/UidRange;->getEndUser()I

    move-result v4

    if-gt v3, v4, :cond_48

    .line 551
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 552
    .local v5, "appId":I
    invoke-static {v3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 553
    .local v6, "uid":I
    invoke-virtual {v2, v6}, Landroid/net/UidRange;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 554
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v5    # "appId":I
    .end local v6    # "uid":I
    :cond_44
    goto :goto_23

    .line 550
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 558
    .end local v2    # "range":Landroid/net/UidRange;
    .end local v3    # "userId":I
    :cond_48
    goto :goto_9

    .line 559
    :cond_49
    return-object v0
.end method

.method static isVendorApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 234
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 714
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 719
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 723
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    return-void
.end method

.method private removeBypassingUids(Ljava/util/Set;I)V
    .registers 4
    .param p2, "vpnAppUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 572
    .local p1, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 573
    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$PermissionMonitor$h-GPsXXwaQ-Mfu5-dqCp_VIYNOM;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/-$$Lambda$PermissionMonitor$h-GPsXXwaQ-Mfu5-dqCp_VIYNOM;-><init>(Lcom/android/server/connectivity/PermissionMonitor;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 574
    return-void
.end method

.method private toIntArray(Ljava/util/Collection;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 290
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 291
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 292
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 293
    .local v3, "item":Ljava/lang/Integer;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    .line 294
    .end local v3    # "item":Ljava/lang/Integer;
    move v1, v4

    goto :goto_b

    .line 295
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_21
    return-object v0
.end method

.method private update(Ljava/util/Set;Ljava/util/Map;Z)V
    .registers 12
    .param p3, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 299
    .local p1, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, "network":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v1, "system":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 302
    .local v3, "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object v4, v1

    goto :goto_2d

    :cond_2c
    move-object v4, v0

    .line 303
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_2d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 304
    .local v6, "user":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .end local v6    # "user":I
    goto :goto_31

    .line 306
    .end local v3    # "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_57
    goto :goto_12

    .line 308
    :cond_58
    if-eqz p3, :cond_6f

    .line 309
    :try_start_5a
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const/4 v3, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V

    .line 310
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const/4 v3, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V

    goto :goto_81

    .line 312
    :cond_6f
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/net/INetd;->networkClearPermissionForUser([I)V

    .line 313
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/net/INetd;->networkClearPermissionForUser([I)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_81} :catch_82

    .line 317
    :goto_81
    goto :goto_97

    .line 315
    :catch_82
    move-exception v2

    .line 316
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when updating permissions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 318
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_97
    return-void
.end method

.method private updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p3, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 588
    .local p2, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 589
    return-void

    .line 592
    :cond_7
    const-string v0, "Exception when updating permissions: "

    if-eqz p3, :cond_15

    .line 593
    :try_start_b
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V

    goto :goto_2e

    .line 595
    :cond_15
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V
    :try_end_1e
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_1e} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_1f

    goto :goto_2e

    .line 603
    :catch_1f
    move-exception v1

    .line 604
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 597
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_24
    move-exception v1

    .line 600
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v3, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq v2, v3, :cond_2e

    .line 601
    invoke-static {v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 605
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2e
    :goto_2e
    nop

    .line 606
    :goto_2f
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 702
    const-string v0, "Interface filtering rules:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 704
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 705
    .local v1, "vpn":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/net/UidRange;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UIDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 708
    .end local v1    # "vpn":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/net/UidRange;>;>;"
    goto :goto_12

    .line 709
    :cond_5a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 710
    return-void
.end method

.method protected getDeviceFirstSdkInt()I
    .registers 2

    .line 239
    sget v0, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    return v0
.end method

.method public getVpnUidRanges(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .line 254
    const-string v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "permission"    # Ljava/lang/String;

    .line 244
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-nez v0, :cond_a

    goto :goto_23

    .line 247
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 248
    .local v0, "index":I
    if-ltz v0, :cond_22

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    array-length v2, v2

    if-lt v0, v2, :cond_18

    goto :goto_22

    .line 249
    :cond_18
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 248
    :cond_22
    :goto_22
    return v1

    .line 245
    .end local v0    # "index":I
    :cond_23
    :goto_23
    return v1
.end method

.method hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .registers 6
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .line 261
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 264
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    const/16 v3, 0x1d

    if-ne v0, v2, :cond_16

    invoke-virtual {p0}, Lcom/android/server/connectivity/PermissionMonitor;->getDeviceFirstSdkInt()I

    move-result v0

    if-ge v0, v3, :cond_16

    .line 265
    return v1

    .line 268
    :cond_16
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v3, :cond_25

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 269
    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->isVendorApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 270
    return v1

    .line 274
    :cond_25
    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 275
    const-string v0, "android.permission.NETWORK_STACK"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 276
    const-string v0, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v1, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    nop

    .line 274
    :goto_41
    return v1
.end method

.method public declared-synchronized hasUseBackgroundNetworksPermission(I)Z
    .registers 4
    .param p1, "uid"    # I

    monitor-enter p0

    .line 286
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return v0

    .line 286
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    .end local p1    # "uid":I
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 7
    .param p1, "currentPermission"    # Ljava/lang/Boolean;
    .param p2, "name"    # Ljava/lang/String;

    .line 360
    sget-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_5

    .line 361
    return-object p1

    .line 364
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 365
    .local v0, "app":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    .line 366
    .local v1, "isNetwork":Z
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    .line 367
    .local v2, "hasRestrictedPermission":Z
    if-nez v1, :cond_19

    if-eqz v2, :cond_1e

    .line 368
    :cond_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1d} :catch_1f

    move-object p1, v3

    .line 373
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v1    # "isNetwork":Z
    .end local v2    # "hasRestrictedPermission":Z
    :cond_1e
    goto :goto_34

    .line 370
    :catch_1f
    move-exception v0

    .line 372
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameNotFoundException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 374
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_34
    return-object p1
.end method

.method public synthetic lambda$removeBypassingUids$0$PermissionMonitor(Ljava/lang/Integer;)Z
    .registers 5
    .param p1, "uid"    # Ljava/lang/Integer;

    .line 573
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public declared-synchronized onPackageAdded(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    monitor-enter p0

    .line 388
    :try_start_1
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 389
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 390
    .local v1, "permission":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3c

    .line 391
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v2, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    .line 401
    .end local v2    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_3c
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 402
    .local v4, "vpn":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/net/UidRange;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-static {v5, p2}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 403
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 404
    .local v5, "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    const/4 v6, -0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    .line 406
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, v5, v3}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 408
    .end local v4    # "vpn":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/net/UidRange;>;>;"
    .end local v5    # "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_77
    goto :goto_46

    .line 409
    :cond_78
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catchall {:try_start_1 .. :try_end_81} :catchall_83

    .line 410
    monitor-exit p0

    return-void

    .line 387
    .end local v0    # "appId":I
    .end local v1    # "permission":Ljava/lang/Boolean;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    :catchall_83
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPackageRemoved(I)V
    .registers 10
    .param p1, "uid"    # I

    monitor-enter p0

    .line 423
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 424
    .local v1, "vpn":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/net/UidRange;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, p1}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 425
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 426
    .local v3, "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 427
    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    .line 428
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 430
    .end local v1    # "vpn":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/net/UidRange;>;>;"
    .end local v3    # "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_3d
    goto :goto_b

    .line 432
    :cond_3e
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_53

    .line 433
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 436
    :cond_53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v0, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 438
    .local v1, "permission":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_78

    array-length v4, v3

    if-lez v4, :cond_78

    .line 440
    array-length v4, v3

    move v5, v2

    :goto_66
    if-ge v5, v4, :cond_78

    aget-object v6, v3, v5

    .line 441
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p0, v1, v6}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    move-object v1, v7

    .line 442
    sget-object v7, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_bc

    if-ne v1, v7, :cond_75

    .line 446
    monitor-exit p0

    return-void

    .line 440
    .end local v6    # "name":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 451
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_78
    :try_start_78
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 452
    .local v4, "appId":I
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_86
    .catchall {:try_start_78 .. :try_end_86} :catchall_bc

    if-ne v1, v5, :cond_8a

    .line 454
    monitor-exit p0

    return-void

    .line 455
    .restart local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_8a
    if-eqz v1, :cond_a3

    .line 456
    :try_start_8c
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v2, v0, v5}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    goto :goto_ba

    .line 460
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_a3
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-direct {p0, v5, v0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_ba
    .catchall {:try_start_8c .. :try_end_ba} :catchall_bc

    .line 464
    :goto_ba
    monitor-exit p0

    return-void

    .line 422
    .end local v0    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v1    # "permission":Ljava/lang/Boolean;
    .end local v3    # "packages":[Ljava/lang/String;
    .end local v4    # "appId":I
    .end local p1    # "uid":I
    :catchall_bc
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUserAdded(I)V
    .registers 5
    .param p1, "user"    # I

    monitor-enter p0

    .line 328
    if-gez p1, :cond_19

    .line 329
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user in onUserAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_36

    .line 330
    monitor-exit p0

    return-void

    .line 332
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 335
    .local v0, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_36

    .line 337
    monitor-exit p0

    return-void

    .line 327
    .end local v0    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p1    # "user":I
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUserRemoved(I)V
    .registers 5
    .param p1, "user"    # I

    monitor-enter p0

    .line 347
    if-gez p1, :cond_19

    .line 348
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user in onUserRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_36

    .line 349
    monitor-exit p0

    return-void

    .line 351
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 353
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 354
    .local v0, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_36

    .line 356
    monitor-exit p0

    return-void

    .line 346
    .end local v0    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p1    # "user":I
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onVpnUidRangesAdded(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p3, "vpnAppUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;I)V"
        }
    .end annotation

    .local p2, "rangesToAdd":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-enter p0

    .line 506
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->intersectUids(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 507
    .local v0, "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0, p3}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    .line 508
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 509
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 510
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2c

    .line 512
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_22
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 514
    :goto_2c
    monitor-exit p0

    return-void

    .line 505
    .end local v0    # "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "rangesToAdd":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local p3    # "vpnAppUid":I
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onVpnUidRangesRemoved(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p3, "vpnAppUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;I)V"
        }
    .end annotation

    .local p2, "rangesToRemove":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-enter p0

    .line 527
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->intersectUids(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 528
    .local v0, "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0, p3}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    .line 529
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 530
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 531
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-nez v1, :cond_2f

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to remove unknown vpn uid Range iface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_3f

    .line 533
    monitor-exit p0

    return-void

    .line 535
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_2f
    :try_start_2f
    invoke-interface {v1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 536
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_3d

    .line 537
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_3f

    .line 539
    :cond_3d
    monitor-exit p0

    return-void

    .line 526
    .end local v0    # "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "rangesToRemove":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local p3    # "vpnAppUid":I
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method sendPackagePermissionsForUid(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "permissions"    # I

    .line 619
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 620
    .local v0, "netdPermissionsAppIds":Landroid/util/SparseIntArray;
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 621
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V

    .line 622
    return-void
.end method

.method sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V
    .registers 14
    .param p1, "netdPermissionsAppIds"    # Landroid/util/SparseIntArray;

    .line 635
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const-string v1, "PermissionMonitor"

    if-nez v0, :cond_c

    .line 636
    const-string v0, "Failed to get the netd service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void

    .line 639
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v0, "allPermissionAppIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v2, "internetPermissionAppIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v3, "updateStatsPermissionAppIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v4, "noPermissionAppIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v5, "uninstalledAppIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_26
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    const/16 v8, 0xc

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, -0x1

    if-ge v6, v7, :cond_a0

    .line 645
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 646
    .local v7, "permissions":I
    if-eq v7, v11, :cond_71

    if-eqz v7, :cond_65

    if-eq v7, v10, :cond_59

    if-eq v7, v9, :cond_4d

    if-eq v7, v8, :cond_41

    goto :goto_7c

    .line 648
    :cond_41
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    goto :goto_9d

    .line 654
    :cond_4d
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    goto :goto_9d

    .line 651
    :cond_59
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    goto :goto_9d

    .line 657
    :cond_65
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    goto :goto_9d

    .line 660
    :cond_71
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    :goto_7c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown permission type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "for uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 662
    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .end local v7    # "permissions":I
    :goto_9d
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 668
    .end local v6    # "i":I
    :cond_a0
    :try_start_a0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_af

    .line 669
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 671
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v7

    .line 669
    invoke-interface {v6, v8, v7}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 673
    :cond_af
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_be

    .line 674
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 675
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v7

    .line 674
    invoke-interface {v6, v10, v7}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 677
    :cond_be
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_cd

    .line 678
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 679
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v7

    .line 678
    invoke-interface {v6, v9, v7}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 681
    :cond_cd
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_dd

    .line 682
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const/4 v7, 0x0

    .line 683
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v8

    .line 682
    invoke-interface {v6, v7, v8}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 685
    :cond_dd
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_ec

    .line 686
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 687
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v7

    .line 686
    invoke-interface {v6, v11, v7}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_ec} :catch_ed

    .line 691
    :cond_ec
    goto :goto_102

    .line 689
    :catch_ed
    move-exception v6

    .line 690
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pass appId list of special permission failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_102
    return-void
.end method

.method public declared-synchronized startMonitoring()V
    .registers 13

    monitor-enter p0

    .line 163
    :try_start_1
    const-string v0, "Monitoring"

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    .line 165
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 166
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    if-eqz v0, :cond_1a

    .line 167
    new-instance v1, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;-><init>(Lcom/android/server/connectivity/PermissionMonitor;Lcom/android/server/connectivity/PermissionMonitor$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    goto :goto_1f

    .line 169
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_1a
    const-string v1, "failed to get the PackageManagerInternal service"

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 171
    :goto_1f
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const v2, 0x401000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v1, :cond_31

    .line 174
    const-string v2, "No apps"

    invoke-static {v2}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_13f

    .line 175
    monitor-exit p0

    return-void

    .line 178
    :cond_31
    :try_start_31
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 180
    .local v2, "netdPermsUids":Landroid/util/SparseIntArray;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 181
    .local v4, "app":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_4f

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_50

    :cond_4f
    const/4 v5, -0x1

    .line 182
    .local v5, "uid":I
    :goto_50
    if-gez v5, :cond_53

    .line 183
    goto :goto_3a

    .line 185
    :cond_53
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    .line 188
    .local v6, "isNetwork":Z
    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    .line 190
    .local v7, "hasRestrictedPermission":Z
    if-nez v6, :cond_6c

    if-eqz v7, :cond_93

    .line 191
    :cond_6c
    iget-object v8, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 194
    .local v8, "permission":Ljava/lang/Boolean;
    if-eqz v8, :cond_82

    sget-object v9, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_93

    .line 195
    :cond_82
    iget-object v9, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v8    # "permission":Ljava/lang/Boolean;
    :cond_93
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    invoke-static {v8, v9}, Lcom/android/server/connectivity/PermissionMonitor;->getNetdPermissionMask([Ljava/lang/String;[I)I

    move-result v8

    .line 202
    .local v8, "otherNetdPerms":I
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    or-int/2addr v9, v8

    invoke-virtual {v2, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    .end local v4    # "app":Landroid/content/pm/PackageInfo;
    .end local v5    # "uid":I
    .end local v6    # "isNetwork":Z
    .end local v7    # "hasRestrictedPermission":Z
    .end local v8    # "otherNetdPerms":I
    goto :goto_3a

    .line 205
    :cond_a4
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 206
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_ca

    .line 207
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ca

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 208
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    nop

    .end local v6    # "user":Landroid/content/pm/UserInfo;
    goto :goto_b1

    .line 213
    :cond_ca
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v5

    .line 214
    .local v5, "systemPermission":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_10b

    .line 215
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 216
    .local v7, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 217
    .local v8, "uid":I
    const/4 v9, 0x0

    .line 219
    .local v9, "netdPermission":I
    if-eqz v7, :cond_100

    .line 220
    const-string v10, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_f2

    .line 221
    const/16 v10, 0x8

    goto :goto_f3

    :cond_f2
    move v10, v11

    :goto_f3
    or-int/2addr v9, v10

    .line 222
    const-string v10, "android.permission.INTERNET"

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fe

    .line 223
    const/4 v11, 0x4

    goto :goto_ff

    :cond_fe
    nop

    :goto_ff
    or-int/2addr v9, v11

    .line 225
    :cond_100
    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    or-int/2addr v10, v9

    invoke-virtual {v2, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 214
    .end local v7    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "uid":I
    .end local v9    # "netdPermission":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_d3

    .line 227
    .end local v6    # "i":I
    :cond_10b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Users: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Apps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    .line 228
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-direct {p0, v6, v7, v4}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V
    :try_end_13d
    .catchall {:try_start_31 .. :try_end_13d} :catchall_13f

    .line 230
    monitor-exit p0

    return-void

    .line 162
    .end local v0    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "netdPermsUids":Landroid/util/SparseIntArray;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "systemPermission":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :catchall_13f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
