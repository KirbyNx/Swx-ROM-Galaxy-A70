.class public Lcom/android/server/pm/AppsFilter;
.super Ljava/lang/Object;
.source "AppsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AppsFilter$ToString;,
        Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;,
        Lcom/android/server/pm/AppsFilter$FeatureConfig;,
        Lcom/android/server/pm/AppsFilter$StateProvider;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ALL:Z = false

.field private static final DEBUG_LOGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "AppsFilter"


# instance fields
.field private final mCacheLock:Ljava/lang/Object;

.field private final mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

.field private final mForceQueryable:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mForceQueryableByDevicePackageNames:[Ljava/lang/String;

.field private final mImplicitlyQueryable:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

.field private mProtectedBroadcasts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueriesViaComponent:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueriesViaComponentRequireRecompute:Z

.field private final mQueriesViaPackage:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsSizeAtUpdateEntireShouldFilterCache:I

.field private volatile mShouldFilterCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

.field private final mSystemAppsQueryable:Z

.field private mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field private mUpdateTimeForEntireShouldFilterCache:J

.field private mUserCountAtUpdateEntireShouldFilterCache:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/AppsFilter$StateProvider;Lcom/android/server/pm/AppsFilter$FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V
    .registers 9
    .param p1, "stateProvider"    # Lcom/android/server/pm/AppsFilter$StateProvider;
    .param p2, "featureConfig"    # Lcom/android/server/pm/AppsFilter$FeatureConfig;
    .param p3, "forceQueryableWhitelist"    # [Ljava/lang/String;
    .param p4, "systemAppsQueryable"    # Z
    .param p5, "overlayProvider"    # Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    .line 103
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    .line 109
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 123
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    .line 139
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 142
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    .line 144
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/pm/AppsFilter;->mUpdateTimeForEntireShouldFilterCache:J

    .line 145
    iput v0, p0, Lcom/android/server/pm/AppsFilter;->mUserCountAtUpdateEntireShouldFilterCache:I

    .line 146
    iput v0, p0, Lcom/android/server/pm/AppsFilter;->mSettingsSizeAtUpdateEntireShouldFilterCache:I

    .line 165
    iput-object p2, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    .line 166
    iput-object p3, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 167
    iput-boolean p4, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    .line 168
    new-instance v0, Lcom/android/server/om/OverlayReferenceMapper;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p5}, Lcom/android/server/om/OverlayReferenceMapper;-><init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 170
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/AppsFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/pm/AppsFilter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/AppsFilter;
    .param p1, "x1"    # I

    .line 83
    iput p1, p0, Lcom/android/server/pm/AppsFilter;->mUserCountAtUpdateEntireShouldFilterCache:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/pm/AppsFilter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/AppsFilter;
    .param p1, "x1"    # I

    .line 83
    iput p1, p0, Lcom/android/server/pm/AppsFilter;->mSettingsSizeAtUpdateEntireShouldFilterCache:I

    return p1
.end method

.method private addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V
    .registers 12
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 565
    .local p2, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string v1, "android"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 567
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 570
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 571
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v2, v1}, Lcom/android/server/pm/AppsFilter;->isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 572
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 574
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_37
    goto :goto_18

    .line 577
    :cond_38
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 578
    .local v0, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_3d

    .line 580
    return-void

    .line 583
    :cond_3d
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4c

    .line 584
    iput-boolean v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 587
    :cond_4c
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 588
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_7e

    iget-boolean v1, p1, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    if-nez v1, :cond_7e

    .line 591
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_7c

    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    if-nez v1, :cond_7e

    .line 592
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isForceQueryable()Z

    move-result v1

    if-nez v1, :cond_7e

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 594
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 593
    invoke-static {v1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    goto :goto_7e

    :cond_7c
    move v1, v3

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v1, v2

    .line 595
    .local v1, "newIsForceQueryable":Z
    :goto_7f
    if-nez v1, :cond_8b

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    if-eqz v4, :cond_96

    .line 597
    invoke-static {v4, p1}, Lcom/android/server/pm/AppsFilter;->isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 598
    :cond_8b
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_96
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_9b
    if-ltz v4, :cond_15f

    .line 602
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 603
    .local v2, "existingSetting":Lcom/android/server/pm/PackageSetting;
    iget v5, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v6, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v5, v6, :cond_15b

    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v5, :cond_af

    .line 604
    goto/16 :goto_15b

    .line 606
    :cond_af
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 608
    .local v5, "existingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_e5

    .line 609
    iget-boolean v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v6, :cond_cc

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v5, v0, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 611
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 613
    :cond_cc
    invoke-static {v5, v0}, Lcom/android/server/pm/AppsFilter;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_d8

    .line 614
    invoke-static {v2, v0}, Lcom/android/server/pm/AppsFilter;->canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 615
    :cond_d8
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 619
    :cond_e5
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_125

    .line 620
    iget-boolean v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v6, :cond_10c

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v0, v5, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_10c

    .line 622
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 624
    :cond_10c
    invoke-static {v0, v5}, Lcom/android/server/pm/AppsFilter;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_118

    .line 625
    invoke-static {p1, v5}, Lcom/android/server/pm/AppsFilter;->canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_125

    .line 626
    :cond_118
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 630
    :cond_125
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_15b

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_15b

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 631
    invoke-static {v6, v7}, Lcom/android/server/pm/AppsFilter;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_141

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 632
    invoke-static {v6, v7}, Lcom/android/server/pm/AppsFilter;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_15b

    .line 633
    :cond_141
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 634
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 601
    .end local v2    # "existingSetting":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "existingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_15b
    :goto_15b
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_9b

    .line 638
    .end local v4    # "i":I
    :cond_15f
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 639
    .local v2, "existingSize":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 640
    .local v4, "existingPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_169
    if-ge v5, v2, :cond_17f

    .line 641
    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 642
    .local v6, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v7, :cond_17c

    .line 643
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .end local v6    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_17c
    add-int/lit8 v5, v5, 0x1

    goto :goto_169

    .line 646
    .end local v5    # "index":I
    :cond_17f
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/om/OverlayReferenceMapper;->addPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)V

    .line 647
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v5, p1, v3}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V

    .line 648
    return-void
.end method

.method private static canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 6
    .param p0, "querying"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 397
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 398
    .local v0, "installSource":Lcom/android/server/pm/InstallSource;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    .line 399
    return v2

    .line 401
    :cond_10
    iget-boolean v1, v0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-nez v1, :cond_21

    .line 402
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 403
    return v2

    .line 405
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method private static canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z
    .registers 7
    .param p0, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 375
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_27

    .line 376
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 377
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v2, p1, p2}, Lcom/android/server/pm/AppsFilter;->matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 378
    return v1

    .line 380
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_26
    goto :goto_13

    .line 382
    :cond_27
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 383
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/pm/AppsFilter;->matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 384
    return v1

    .line 386
    :cond_3c
    const/4 v0, 0x0

    return v0
.end method

.method private static canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 4
    .param p0, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 391
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 392
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 391
    :goto_1b
    return v0
.end method

.method private collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 8
    .param p2, "excludePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 827
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 828
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_36

    .line 829
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 830
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 831
    goto :goto_33

    .line 833
    :cond_24
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v3

    .line 834
    .local v3, "protectedBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_33

    .line 835
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 828
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "protectedBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 838
    .end local v1    # "i":I
    :cond_36
    return-object v0
.end method

.method public static create(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;)Lcom/android/server/pm/AppsFilter;
    .registers 13
    .param p0, "pms"    # Landroid/content/pm/PackageManagerInternal;
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;

    .line 340
    nop

    .line 341
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 342
    const v1, 0x1110091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 343
    .local v0, "forceSystemAppsQueryable":Z
    new-instance v1, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$1;)V

    .line 345
    .local v1, "featureConfig":Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;
    if-eqz v0, :cond_1d

    .line 347
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v8, v2

    .local v2, "forcedQueryablePackageNames":[Ljava/lang/String;
    goto :goto_3d

    .line 349
    .end local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    :cond_1d
    nop

    .line 350
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700b8

    .line 351
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 352
    .restart local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    array-length v4, v2

    if-ge v3, v4, :cond_3c

    .line 353
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 352
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_3c
    move-object v8, v2

    .line 356
    .end local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    .end local v3    # "i":I
    .local v8, "forcedQueryablePackageNames":[Ljava/lang/String;
    :goto_3d
    new-instance v9, Lcom/android/server/pm/-$$Lambda$AppsFilter$j5cCE_B_k1kV7DMXjxSek18KSPQ;

    .local v9, "stateProvider":Lcom/android/server/pm/AppsFilter$StateProvider;
    invoke-direct {v9, p1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$j5cCE_B_k1kV7DMXjxSek18KSPQ;-><init>(Lcom/android/server/pm/PackageManagerService$Injector;)V

    .line 362
    new-instance v10, Lcom/android/server/pm/AppsFilter;

    const/4 v7, 0x0

    move-object v2, v10

    move-object v3, v9

    move-object v4, v1

    move-object v5, v8

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppsFilter;-><init>(Lcom/android/server/pm/AppsFilter$StateProvider;Lcom/android/server/pm/AppsFilter$FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V

    .line 364
    .local v2, "appsFilter":Lcom/android/server/pm/AppsFilter;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->setAppsFilter(Lcom/android/server/pm/AppsFilter;)V

    .line 365
    return-object v2
.end method

.method private static dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "spacing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "TT;",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilter$ToString<",
            "TT;>;)V"
        }
    .end annotation

    .line 1365
    .local p1, "filteringId":Ljava/lang/Object;, "TT;"
    .local p2, "targetPkgSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p5, "toString":Lcom/android/server/pm/AppsFilter$ToString;, "Lcom/android/server/pm/AppsFilter$ToString<TT;>;"
    if-eqz p2, :cond_49

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_49

    if-eqz p1, :cond_10

    .line 1366
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1367
    :cond_10
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1369
    .local v1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_33

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1370
    :cond_33
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 1371
    if-nez p5, :cond_41

    move-object v3, v1

    goto :goto_45

    :cond_41
    invoke-interface {p5, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_45
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1373
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_48
    goto :goto_21

    .line 1375
    :cond_49
    return-void
.end method

.method private static dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V
    .registers 14
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "filteringId"    # Ljava/lang/Integer;
    .param p3, "spacing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilter$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1337
    .local p2, "queriesMap":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<Ljava/lang/Integer;>;"
    .local p4, "toString":Lcom/android/server/pm/AppsFilter$ToString;, "Lcom/android/server/pm/AppsFilter$ToString<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 1338
    invoke-virtual {p2, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1339
    .local v1, "callingId":Ljava/lang/Integer;
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1341
    const/4 v4, 0x0

    .line 1342
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 1343
    if-nez p4, :cond_26

    .line 1344
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_2b

    .line 1345
    :cond_26
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1341
    :goto_2b
    move-object v3, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    goto :goto_4f

    .line 1348
    :cond_32
    nop

    .line 1349
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 1350
    if-nez p4, :cond_43

    .line 1351
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_48

    .line 1352
    :cond_43
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1348
    :goto_48
    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1337
    .end local v1    # "callingId":Ljava/lang/Integer;
    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1356
    .end local v0    # "i":I
    :cond_52
    return-void
.end method

.method private static isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z
    .registers 3
    .param p0, "sysSigningDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 821
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 822
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 821
    :goto_13
    return v0
.end method

.method static synthetic lambda$create$0(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V
    .registers 5
    .param p0, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;
    .param p1, "command"    # Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;

    .line 357
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 358
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 359
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 358
    invoke-interface {p1, v1, v2}, Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;->currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V

    .line 360
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method static synthetic lambda$dumpQueries$11(Landroid/util/SparseArray;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 8
    .param p0, "cache"    # Landroid/util/SparseArray;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "input"    # Ljava/lang/Integer;

    .line 1291
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1292
    .local v0, "cachedValue":Ljava/lang/String;
    if-nez v0, :cond_57

    .line 1293
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1294
    .local v1, "packagesForUid":[Ljava/lang/String;
    const-string v2, "]"

    if-nez v1, :cond_2d

    .line 1295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unknown app id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    .line 1297
    :cond_2d
    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    const/4 v2, 0x0

    aget-object v2, v1, v2

    goto :goto_4f

    .line 1298
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4f
    move-object v0, v2

    .line 1300
    :goto_50
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1302
    .end local v1    # "packagesForUid":[Ljava/lang/String;
    :cond_57
    return-object v0
.end method

.method static synthetic lambda$updateEntireShouldFilterCacheAsync$4(Landroid/util/ArrayMap;Landroid/util/ArrayMap;[[Landroid/content/pm/UserInfo;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .registers 9
    .param p0, "packagesCache"    # Landroid/util/ArrayMap;
    .param p1, "settingsCopy"    # Landroid/util/ArrayMap;
    .param p2, "usersRef"    # [[Landroid/content/pm/UserInfo;
    .param p3, "settings"    # Landroid/util/ArrayMap;
    .param p4, "users"    # [Landroid/content/pm/UserInfo;

    .line 710
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 711
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 712
    const/4 v0, 0x0

    aput-object p4, p2, v0

    .line 715
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "max":I
    :goto_12
    if-ge v0, v1, :cond_28

    .line 716
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 717
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 719
    .end local v0    # "i":I
    .end local v1    # "max":I
    :cond_28
    return-void
.end method

.method static synthetic lambda$updateEntireShouldFilterCacheAsync$5(Landroid/util/ArrayMap;[ZLandroid/util/ArrayMap;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .registers 11
    .param p0, "settingsCopy"    # Landroid/util/ArrayMap;
    .param p1, "changed"    # [Z
    .param p2, "packagesCache"    # Landroid/util/ArrayMap;
    .param p3, "settings"    # Landroid/util/ArrayMap;
    .param p4, "users"    # [Landroid/content/pm/UserInfo;

    .line 725
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_f

    .line 726
    aput-boolean v3, p1, v2

    .line 727
    return-void

    .line 729
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "max":I
    :goto_14
    if-ge v0, v1, :cond_32

    .line 730
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    iget-object v4, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 731
    .local v4, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 732
    aput-boolean v3, p1, v2

    .line 733
    return-void

    .line 729
    .end local v4    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 736
    .end local v0    # "i":I
    .end local v1    # "max":I
    :cond_32
    return-void
.end method

.method private static log(Lcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .registers 5
    .param p0, "callingSetting"    # Lcom/android/server/pm/SettingBase;
    .param p1, "targetPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "description"    # Ljava/lang/String;

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    if-nez p0, :cond_11

    const-string/jumbo v1, "system"

    goto :goto_12

    :cond_11
    move-object v1, p0

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1280
    const-string v1, "AppsFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-void
.end method

.method private static matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z
    .registers 7
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/parsing/component/ParsedMainComponent;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 452
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/parsing/component/ParsedMainComponent;>;"
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1f

    .line 453
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 454
    .local v2, "component":Landroid/content/pm/parsing/component/ParsedMainComponent;
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isExported()Z

    move-result v3

    if-nez v3, :cond_15

    .line 455
    goto :goto_1c

    .line 457
    :cond_15
    invoke-static {p0, v2, p2}, Lcom/android/server/pm/AppsFilter;->matchesAnyFilter(Landroid/content/Intent;Landroid/content/pm/parsing/component/ParsedComponent;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 458
    return v1

    .line 452
    .end local v2    # "component":Landroid/content/pm/parsing/component/ParsedMainComponent;
    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 461
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesAnyFilter(Landroid/content/Intent;Landroid/content/pm/parsing/component/ParsedComponent;Ljava/util/Set;)Z
    .registers 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "component"    # Landroid/content/pm/parsing/component/ParsedComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/parsing/component/ParsedComponent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 466
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    .line 467
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1c

    .line 468
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 469
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0, v3, p2}, Lcom/android/server/pm/AppsFilter;->matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 470
    return v2

    .line 467
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 473
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method private static matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Ljava/util/Set;)Z
    .registers 12
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/IntentFilter;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 478
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    .line 478
    const-string v6, "AppsFilter"

    const/4 v7, 0x1

    move-object v0, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method private static matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 431
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 432
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    .line 431
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 433
    return v2

    .line 435
    :cond_e
    nop

    .line 436
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 435
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 437
    return v2

    .line 439
    :cond_1a
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 440
    return v2

    .line 442
    :cond_25
    nop

    .line 443
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 442
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 444
    return v2

    .line 446
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 9
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")Z"
        }
    .end annotation

    .line 410
    .local p0, "queriesAuthorities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "p":I
    :goto_a
    const/4 v2, 0x0

    if-ltz v0, :cond_45

    .line 411
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 412
    .local v3, "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->isExported()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 413
    goto :goto_42

    .line 415
    :cond_1e
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_25

    .line 416
    goto :goto_42

    .line 418
    :cond_25
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-direct {v4, v5, v6, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v4

    .line 420
    .local v2, "authorities":Ljava/util/StringTokenizer;
    :cond_31
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 421
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 422
    return v1

    .line 410
    .end local v2    # "authorities":Ljava/util/StringTokenizer;
    .end local v3    # "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    :cond_42
    :goto_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 426
    .end local v0    # "p":I
    :cond_45
    return v2
.end method

.method private static pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 9
    .param p0, "source"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "target"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1264
    const-wide/32 v0, 0x40000

    :try_start_3
    const-string/jumbo v2, "pkgInstruments"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1265
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1266
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v3

    .line 1267
    .local v3, "inst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedInstrumentation;>;"
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_17
    if-ltz v4, :cond_31

    .line 1268
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_36

    if-eqz v6, :cond_2e

    .line 1269
    nop

    .line 1274
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1269
    return v5

    .line 1267
    :cond_2e
    add-int/lit8 v4, v4, -0x1

    goto :goto_17

    .line 1272
    .end local v4    # "i":I
    :cond_31
    const/4 v4, 0x0

    .line 1274
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1272
    return v4

    .line 1274
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "inst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedInstrumentation;>;"
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1275
    throw v2
.end method

.method private recomputeComponentVisibility(Landroid/util/ArrayMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 846
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 847
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_63

    .line 848
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 849
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v2, :cond_60

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v2}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 850
    goto :goto_60

    .line 852
    :cond_20
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_26
    if-ltz v2, :cond_60

    .line 853
    if-ne v0, v2, :cond_2b

    .line 854
    goto :goto_5d

    .line 856
    :cond_2b
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 857
    .local v3, "otherSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v4, :cond_5d

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v5, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 858
    goto :goto_5d

    .line 860
    :cond_44
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 861
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v5, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v6, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 852
    .end local v3    # "otherSetting":Lcom/android/server/pm/PackageSetting;
    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    .line 847
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "j":I
    :cond_60
    :goto_60
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 865
    .end local v0    # "i":I
    :cond_63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 866
    return-void
.end method

.method private removeAppIdFromVisibilityCache(I)V
    .registers 6
    .param p1, "appId"    # I

    .line 652
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 653
    return-void

    .line 655
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_44

    .line 656
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 657
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 658
    goto :goto_41

    .line 660
    :cond_21
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 661
    .local v1, "targetSparseArray":Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_2f
    if-ltz v2, :cond_41

    .line 662
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p1, :cond_3e

    .line 663
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 661
    :cond_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 655
    .end local v1    # "targetSparseArray":Landroid/util/SparseBooleanArray;
    .end local v2    # "j":I
    :cond_41
    :goto_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 667
    .end local v0    # "i":I
    :cond_44
    return-void
.end method

.method private static requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1256
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z
    .registers 25
    .param p1, "callingUid"    # I
    .param p2, "callingSetting"    # Lcom/android/server/pm/SettingBase;
    .param p3, "targetPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "targetUserId"    # I

    .line 1062
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    const-wide/32 v6, 0x40000

    const-string/jumbo v0, "shouldFilterApplicationInternal"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1064
    :try_start_13
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isGloballyEnabled()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_24e

    move v8, v0

    .line 1065
    .local v8, "featureEnabled":Z
    const/4 v0, 0x0

    if-nez v8, :cond_22

    .line 1069
    nop

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1069
    return v0

    .line 1071
    :cond_22
    const/4 v9, 0x1

    if-nez v3, :cond_40

    .line 1072
    :try_start_25
    const-string v0, "AppsFilter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No setting found for non system uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_24e

    .line 1073
    nop

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1073
    return v9

    .line 1077
    :cond_40
    :try_start_40
    const-string v10, "callingSetting instanceof"

    invoke-static {v6, v7, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1078
    instance-of v10, v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v10, :cond_5e

    .line 1079
    move-object v10, v3

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    iget-object v10, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v10, :cond_55

    .line 1080
    move-object v10, v3

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 1081
    .local v10, "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v11, 0x0

    .local v11, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_64

    .line 1083
    .end local v10    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    :cond_55
    const/4 v10, 0x0

    .line 1084
    .restart local v10    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object v11, v3

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    iget-object v11, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v11, v11, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .restart local v11    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_64

    .line 1088
    .end local v10    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    :cond_5e
    const/4 v10, 0x0

    .line 1089
    .restart local v10    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object v11, v3

    check-cast v11, Lcom/android/server/pm/SharedUserSetting;

    iget-object v11, v11, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .line 1091
    .restart local v11    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    :goto_64
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1093
    if-eqz v10, :cond_7c

    .line 1094
    iget-object v12, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v12, :cond_9d

    iget-object v12, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    iget-object v13, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1095
    invoke-interface {v12, v13}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v12
    :try_end_75
    .catchall {:try_start_40 .. :try_end_75} :catchall_24e

    if-nez v12, :cond_9d

    .line 1099
    nop

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1099
    return v0

    .line 1102
    :cond_7c
    :try_start_7c
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v12

    sub-int/2addr v12, v9

    .local v12, "i":I
    :goto_81
    if-ltz v12, :cond_9d

    .line 1103
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    iget-object v13, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1104
    .local v13, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v13, :cond_9a

    iget-object v14, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v14, v13}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v14
    :try_end_93
    .catchall {:try_start_7c .. :try_end_93} :catchall_24e

    if-nez v14, :cond_9a

    .line 1108
    nop

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1108
    return v0

    .line 1102
    .end local v13    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_9a
    add-int/lit8 v12, v12, -0x1

    goto :goto_81

    .line 1115
    .end local v12    # "i":I
    :cond_9d
    :try_start_9d
    iget-object v12, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1116
    .local v12, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v12, :cond_b3

    .line 1117
    const/16 v13, 0x2000

    invoke-static {v4, v13, v5}, Lcom/android/server/pm/PackageManagerSamsungUtils;->installedOnSdcardAsUser(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v13
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_24e

    if-eqz v13, :cond_ae

    .line 1121
    nop

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1121
    return v0

    .line 1126
    :cond_ae
    nop

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1126
    return v9

    .line 1128
    :cond_b3
    :try_start_b3
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v13
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_24e

    if-eqz v13, :cond_be

    .line 1130
    nop

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1130
    return v0

    .line 1132
    :cond_be
    :try_start_be
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 1133
    .local v13, "targetName":Ljava/lang/String;
    const-string v14, "getAppId"

    invoke-static {v6, v7, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1135
    if-eqz v10, :cond_cc

    .line 1136
    iget v14, v10, Lcom/android/server/pm/PackageSetting;->appId:I

    .local v14, "callingAppId":I
    goto :goto_d4

    .line 1138
    .end local v14    # "callingAppId":I
    :cond_cc
    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    iget v14, v14, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 1140
    .restart local v14    # "callingAppId":I
    :goto_d4
    iget v15, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 1141
    .local v15, "targetAppId":I
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_d9
    .catchall {:try_start_be .. :try_end_d9} :catchall_24e

    .line 1142
    if-ne v14, v15, :cond_e0

    .line 1146
    nop

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1146
    return v0

    .line 1150
    :cond_e0
    :try_start_e0
    const-string/jumbo v9, "requestsQueryAllPackages"

    invoke-static {v6, v7, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1151
    if-eqz v10, :cond_fc

    .line 1152
    iget-object v9, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v9, :cond_125

    iget-object v9, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1153
    invoke-static {v9}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v9
    :try_end_f2
    .catchall {:try_start_e0 .. :try_end_f2} :catchall_245

    if-eqz v9, :cond_125

    .line 1154
    nop

    .line 1165
    :try_start_f5
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_24e

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1154
    return v0

    .line 1157
    :cond_fc
    :try_start_fc
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v9

    const/16 v16, 0x1

    add-int/lit8 v9, v9, -0x1

    .local v9, "i":I
    :goto_104
    if-ltz v9, :cond_125

    .line 1158
    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1159
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_121

    invoke-static {v0}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v17
    :try_end_116
    .catchall {:try_start_fc .. :try_end_116} :catchall_245

    if-eqz v17, :cond_121

    .line 1160
    nop

    .line 1165
    :try_start_119
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_24e

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1160
    const/4 v6, 0x0

    return v6

    .line 1157
    .end local v0    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_121
    add-int/lit8 v9, v9, -0x1

    const/4 v0, 0x0

    goto :goto_104

    .line 1165
    .end local v9    # "i":I
    :cond_125
    :try_start_125
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_24e

    .line 1166
    nop

    .line 1168
    :try_start_129
    const-string/jumbo v0, "mForceQueryable"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1169
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_139
    .catchall {:try_start_129 .. :try_end_139} :catchall_23c

    if-eqz v0, :cond_144

    .line 1173
    nop

    .line 1176
    :try_start_13c
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_13f
    .catchall {:try_start_13c .. :try_end_13f} :catchall_24e

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1173
    const/4 v0, 0x0

    return v0

    .line 1176
    :cond_144
    :try_start_144
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_147
    .catchall {:try_start_144 .. :try_end_147} :catchall_24e

    .line 1177
    nop

    .line 1179
    :try_start_148
    const-string/jumbo v0, "mQueriesViaPackage"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1180
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v14, v9}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0
    :try_end_158
    .catchall {:try_start_148 .. :try_end_158} :catchall_233

    if-eqz v0, :cond_163

    .line 1184
    nop

    .line 1187
    :try_start_15b
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_15e
    .catchall {:try_start_15b .. :try_end_15e} :catchall_24e

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1184
    const/4 v0, 0x0

    return v0

    .line 1187
    :cond_163
    :try_start_163
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_166
    .catchall {:try_start_163 .. :try_end_166} :catchall_24e

    .line 1188
    nop

    .line 1190
    :try_start_167
    const-string/jumbo v0, "mQueriesViaComponent"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1191
    iget-boolean v0, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-eqz v0, :cond_17b

    .line 1192
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v9, Lcom/android/server/pm/-$$Lambda$AppsFilter$gI461i-4CHD0N8PHOay2luorf0Y;

    invoke-direct {v9, v1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$gI461i-4CHD0N8PHOay2luorf0Y;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v0, v9}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 1196
    :cond_17b
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v14, v9}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0
    :try_end_185
    .catchall {:try_start_167 .. :try_end_185} :catchall_22a

    if-eqz v0, :cond_190

    .line 1200
    nop

    .line 1203
    :try_start_188
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_18b
    .catchall {:try_start_188 .. :try_end_18b} :catchall_24e

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1200
    const/4 v0, 0x0

    return v0

    .line 1203
    :cond_190
    :try_start_190
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_193
    .catchall {:try_start_190 .. :try_end_193} :catchall_24e

    .line 1204
    nop

    .line 1207
    :try_start_194
    const-string/jumbo v0, "mImplicitlyQueryable"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1208
    invoke-static {v5, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1209
    .local v0, "targetUid":I
    iget-object v9, v1, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v6
    :try_end_1a8
    .catchall {:try_start_194 .. :try_end_1a8} :catchall_221

    if-eqz v6, :cond_1b6

    .line 1213
    nop

    .line 1216
    const-wide/32 v6, 0x40000

    :try_start_1ae
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1b1
    .catchall {:try_start_1ae .. :try_end_1b1} :catchall_24e

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1213
    const/4 v6, 0x0

    return v6

    .line 1209
    :cond_1b6
    const-wide/32 v6, 0x40000

    .line 1216
    .end local v0    # "targetUid":I
    :try_start_1b9
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1bc
    .catchall {:try_start_1b9 .. :try_end_1bc} :catchall_24e

    .line 1217
    nop

    .line 1220
    :try_start_1bd
    const-string/jumbo v0, "mOverlayReferenceMapper"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1221
    if-eqz v11, :cond_1f5

    .line 1222
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1223
    .local v0, "size":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1ca
    if-ge v6, v0, :cond_1ef

    .line 1224
    invoke-virtual {v11, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 1225
    .local v7, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v9, v1, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    move/from16 v17, v0

    .end local v0    # "size":I
    .local v17, "size":I
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v9, v13, v0}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1dc
    .catchall {:try_start_1bd .. :try_end_1dc} :catchall_218

    if-eqz v0, :cond_1ea

    .line 1231
    nop

    .line 1243
    const-wide/32 v18, 0x40000

    :try_start_1e2
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1e5
    .catchall {:try_start_1e2 .. :try_end_1e5} :catchall_24e

    .line 1248
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1231
    const/4 v0, 0x0

    return v0

    .line 1223
    .end local v7    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_1ea
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v17

    goto :goto_1ca

    .end local v17    # "size":I
    .restart local v0    # "size":I
    :cond_1ef
    move/from16 v17, v0

    .line 1234
    .end local v0    # "size":I
    .end local v6    # "index":I
    const-wide/32 v6, 0x40000

    goto :goto_20e

    .line 1235
    :cond_1f5
    :try_start_1f5
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v6, v10, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v13, v6}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1fd
    .catchall {:try_start_1f5 .. :try_end_1fd} :catchall_218

    if-eqz v0, :cond_20b

    .line 1239
    nop

    .line 1243
    const-wide/32 v6, 0x40000

    :try_start_203
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_206
    .catchall {:try_start_203 .. :try_end_206} :catchall_24e

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1239
    const/4 v0, 0x0

    return v0

    .line 1235
    :cond_20b
    const-wide/32 v6, 0x40000

    .line 1243
    :goto_20e
    :try_start_20e
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_211
    .catchall {:try_start_20e .. :try_end_211} :catchall_24e

    .line 1244
    nop

    .line 1246
    nop

    .line 1248
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1246
    const/4 v0, 0x1

    return v0

    .line 1243
    :catchall_218
    move-exception v0

    const-wide/32 v6, 0x40000

    :try_start_21c
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1244
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1216
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_221
    move-exception v0

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1217
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1203
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_22a
    move-exception v0

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1204
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1187
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_233
    move-exception v0

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1188
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1176
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_23c
    move-exception v0

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1177
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1165
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_245
    move-exception v0

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1166
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0
    :try_end_24e
    .catchall {:try_start_21c .. :try_end_24e} :catchall_24e

    .line 1248
    .end local v8    # "featureEnabled":Z
    .end local v10    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    .end local v12    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v13    # "targetName":Ljava/lang/String;
    .end local v14    # "callingAppId":I
    .end local v15    # "targetAppId":I
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_24e
    move-exception v0

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1249
    throw v0
.end method

.method private updateEntireShouldFilterCache()V
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$AppsFilter$gacVR-wh9lCly1dH_EcFODiq3X8;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$AppsFilter$gacVR-wh9lCly1dH_EcFODiq3X8;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 684
    return-void
.end method

.method private updateEntireShouldFilterCacheAsync()V
    .registers 3

    .line 704
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$AppsFilter$Lek9QUd9qdTJycr-oVqaBc9pXBM;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$AppsFilter$Lek9QUd9qdTJycr-oVqaBc9pXBM;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 750
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 751
    return-void
.end method

.method private updateEntireShouldFilterCacheInner(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)Landroid/util/SparseArray;
    .registers 14
    .param p2, "users"    # [Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation

    .line 689
    .local p1, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 690
    .local v0, "startTime":J
    new-instance v2, Landroid/util/SparseArray;

    array-length v3, p2

    .line 691
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 692
    .local v2, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_15
    if-ltz v3, :cond_2a

    .line 693
    const/4 v6, 0x0

    .line 694
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 693
    move-object v4, p0

    move-object v5, v2

    move-object v8, p1

    move-object v9, p2

    move v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 692
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 696
    .end local v3    # "i":I
    :cond_2a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 697
    .local v3, "endTime":J
    sub-long v5, v3, v0

    iput-wide v5, p0, Lcom/android/server/pm/AppsFilter;->mUpdateTimeForEntireShouldFilterCache:J

    .line 698
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEntireShouldFilterCache took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/pm/AppsFilter;->mUpdateTimeForEntireShouldFilterCache:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms, cache size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 698
    const-string v6, "AppsFilter"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-object v2
.end method

.method private updateShouldFilterCacheForPackage(Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V
    .registers 24
    .param p2, "skipPackageName"    # Ljava/lang/String;
    .param p3, "subjectSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p5, "allUsers"    # [Landroid/content/pm/UserInfo;
    .param p6, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            "I)V"
        }
    .end annotation

    .line 785
    .local p1, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    .local p4, "allSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v6, p6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "i":I
    :goto_16
    if-ltz v5, :cond_a3

    .line 786
    move-object/from16 v7, p4

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 787
    .local v8, "otherSetting":Lcom/android/server/pm/PackageSetting;
    iget v9, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v10, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v9, v10, :cond_28

    .line 788
    goto/16 :goto_99

    .line 791
    :cond_28
    iget-object v9, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-eq v9, v2, :cond_99

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-ne v9, v2, :cond_31

    .line 792
    goto :goto_99

    .line 794
    :cond_31
    array-length v9, v4

    .line 795
    .local v9, "userCount":I
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v10

    mul-int/2addr v10, v9

    .line 796
    .local v10, "appxUidCount":I
    const/4 v11, 0x0

    .local v11, "su":I
    :goto_38
    if-ge v11, v9, :cond_99

    .line 797
    aget-object v12, v4, v11

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    .line 798
    .local v12, "subjectUser":I
    const/4 v13, 0x0

    .local v13, "ou":I
    :goto_3f
    if-ge v13, v9, :cond_90

    .line 799
    aget-object v14, v4, v13

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    .line 800
    .local v14, "otherUser":I
    iget v15, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v12, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    .line 801
    .local v15, "subjectUid":I
    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->contains(I)Z

    move-result v16

    if-nez v16, :cond_59

    .line 802
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2, v10}, Landroid/util/SparseBooleanArray;-><init>(I)V

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 804
    :cond_59
    iget v2, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v14, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 805
    .local v2, "otherUid":I
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v16

    if-nez v16, :cond_6d

    .line 806
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4, v10}, Landroid/util/SparseBooleanArray;-><init>(I)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 808
    :cond_6d
    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 809
    invoke-direct {v0, v15, v3, v8, v14}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v6

    .line 808
    invoke-virtual {v4, v2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 811
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 812
    invoke-direct {v0, v2, v8, v3, v12}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v6

    .line 811
    invoke-virtual {v4, v15, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 798
    .end local v2    # "otherUid":I
    .end local v14    # "otherUser":I
    .end local v15    # "subjectUid":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move/from16 v6, p6

    goto :goto_3f

    .line 796
    .end local v12    # "subjectUser":I
    .end local v13    # "ou":I
    :cond_90
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move/from16 v6, p6

    goto :goto_38

    .line 785
    .end local v8    # "otherSetting":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "userCount":I
    .end local v10    # "appxUidCount":I
    .end local v11    # "su":I
    :cond_99
    :goto_99
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move/from16 v6, p6

    goto/16 :goto_16

    :cond_a3
    move-object/from16 v7, p4

    .line 817
    .end local v5    # "i":I
    return-void
.end method

.method private updateShouldFilterCacheForPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 771
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 772
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v1, :cond_11

    .line 773
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$AppsFilter$ecnLvZs9G6S4Ax2wEJri_L1dWdI;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$ecnLvZs9G6S4Ax2wEJri_L1dWdI;-><init>(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 779
    :cond_11
    monitor-exit v0

    .line 780
    return-void

    .line 779
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public addPackage(Lcom/android/server/pm/PackageSetting;)V
    .registers 3
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 928
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AppsFilter;->addPackage(Lcom/android/server/pm/PackageSetting;Z)V

    .line 929
    return-void
.end method

.method public addPackage(Lcom/android/server/pm/PackageSetting;Z)V
    .registers 7
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "isReplace"    # Z

    .line 543
    const-wide/32 v0, 0x40000

    const-string v2, "filter.addPackage"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 545
    if-eqz p2, :cond_d

    .line 547
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilter;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 549
    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v3, Lcom/android/server/pm/-$$Lambda$AppsFilter$HOqfUphs3L1kfgV1VL1w7Jo-3PI;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$HOqfUphs3L1kfgV1VL1w7Jo-3PI;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/PackageSetting;)V

    invoke-interface {v2, v3}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1c

    .line 559
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 560
    nop

    .line 561
    return-void

    .line 559
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 560
    throw v2
.end method

.method public dumpQueries(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[I)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "filteringAppId"    # Ljava/lang/Integer;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "users"    # [I

    .line 1289
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1290
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v7, Lcom/android/server/pm/-$$Lambda$AppsFilter$QmTVJ0frTGRk1_SoXou6PkHGeCE;

    .local v7, "expandPackages":Lcom/android/server/pm/AppsFilter$ToString;, "Lcom/android/server/pm/AppsFilter$ToString<Ljava/lang/Integer;>;"
    invoke-direct {v7, v0, p2}, Lcom/android/server/pm/-$$Lambda$AppsFilter$QmTVJ0frTGRk1_SoXou6PkHGeCE;-><init>(Landroid/util/SparseArray;Lcom/android/server/pm/PackageManagerService;)V

    .line 1304
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1305
    const-string v1, "Queries:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    .line 1307
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v1}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isGloballyEnabled()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1308
    const-string v1, "  DISABLED"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    return-void

    .line 1314
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  updateEntireShouldFilterCacheAsync finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    const/4 v8, 0x0

    if-eqz v2, :cond_34

    const/4 v2, 0x1

    goto :goto_35

    :cond_34
    move v2, v8

    :goto_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  update time for EntireShouldFilterCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/pm/AppsFilter;->mUpdateTimeForEntireShouldFilterCache:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  user count at EntireShouldFilterCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/AppsFilter;->mUserCountAtUpdateEntireShouldFilterCache:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  settings size at EntireShouldFilterCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/AppsFilter;->mSettingsSizeAtUpdateEntireShouldFilterCache:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  system apps queryable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    const-string v4, "forceQueryable"

    const-string v5, "  "

    move-object v1, p1

    move-object v2, p3

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1321
    const-string v1, "  queries via package name:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    const-string v2, "    "

    invoke-static {p1, p3, v1, v2, v7}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1323
    const-string v1, "  queries via intent:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-static {p1, p3, v1, v2, v7}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1325
    const-string v1, "  queryable via interaction:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    array-length v1, p5

    :goto_bf
    if-ge v8, v1, :cond_f1

    aget v2, p5, v8

    .line 1327
    .local v2, "user":I
    const-string v3, "    User "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    nop

    .line 1329
    if-nez p3, :cond_db

    const/4 v3, 0x0

    goto :goto_e7

    :cond_db
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_e7
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    .line 1328
    const-string v5, "      "

    invoke-static {p1, v3, v4, v5, v7}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1326
    .end local v2    # "user":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_bf

    .line 1332
    :cond_f1
    return-void
.end method

.method public getFeatureConfig()Lcom/android/server/pm/AppsFilter$FeatureConfig;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    return-object v0
.end method

.method public getVisibilityWhitelist(Lcom/android/server/pm/PackageSetting;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
    .registers 21
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "[I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 885
    .local p3, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 886
    const/4 v3, 0x0

    return-object v3

    .line 889
    :cond_16
    new-instance v3, Landroid/util/SparseArray;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 890
    .local v3, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v4, 0x0

    .local v4, "u":I
    :goto_1d
    array-length v5, v2

    if-ge v4, v5, :cond_85

    .line 891
    aget v5, v2, v4

    .line 892
    .local v5, "userId":I
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 893
    .local v6, "appIds":[I
    const/4 v7, 0x0

    .line 894
    .local v7, "buffer":[I
    const/4 v8, 0x0

    .line 895
    .local v8, "whitelistSize":I
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "i":I
    :goto_30
    if-ltz v9, :cond_73

    .line 896
    move-object/from16 v10, p3

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 897
    .local v11, "existingSetting":Lcom/android/server/pm/PackageSetting;
    iget v12, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 898
    .local v12, "existingAppId":I
    const/16 v13, 0x2710

    if-ge v12, v13, :cond_41

    .line 899
    goto :goto_6a

    .line 901
    :cond_41
    const/4 v13, 0x0

    invoke-static {v6, v13, v8, v12}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v14

    .line 902
    .local v14, "loc":I
    if-ltz v14, :cond_49

    .line 903
    goto :goto_6a

    .line 905
    :cond_49
    invoke-static {v5, v12}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    .line 906
    .local v15, "existingUid":I
    invoke-virtual {v0, v15, v11, v1, v5}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v16

    if-nez v16, :cond_6a

    .line 907
    if-nez v7, :cond_58

    .line 908
    array-length v13, v6

    new-array v7, v13, [I

    .line 910
    :cond_58
    not-int v13, v14

    .line 911
    .local v13, "insert":I
    sub-int v0, v8, v13

    const/4 v1, 0x0

    invoke-static {v6, v13, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 912
    aput v12, v6, v13

    .line 913
    add-int/lit8 v0, v13, 0x1

    sub-int v2, v8, v13

    invoke-static {v7, v1, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 914
    add-int/lit8 v8, v8, 0x1

    .line 895
    .end local v11    # "existingSetting":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "existingAppId":I
    .end local v13    # "insert":I
    .end local v14    # "loc":I
    .end local v15    # "existingUid":I
    :cond_6a
    :goto_6a
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_30

    :cond_73
    move-object/from16 v10, p3

    .line 917
    .end local v9    # "i":I
    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 890
    .end local v5    # "userId":I
    .end local v6    # "appIds":[I
    .end local v7    # "buffer":[I
    .end local v8    # "whitelistSize":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_1d

    :cond_85
    move-object/from16 v10, p3

    .line 919
    .end local v4    # "u":I
    return-object v3
.end method

.method public grantImplicitAccess(II)V
    .registers 6
    .param p1, "recipientUid"    # I
    .param p2, "visibleUid"    # I

    .line 491
    if-eq p1, p2, :cond_30

    .line 492
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 495
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 496
    :try_start_e
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v1, :cond_2b

    .line 498
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 499
    .local v1, "visibleUids":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_27

    .line 500
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v1, v2

    .line 501
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    :cond_27
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 505
    .end local v1    # "visibleUids":Landroid/util/SparseBooleanArray;
    :cond_2b
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_2d

    throw v1

    .line 507
    :cond_30
    :goto_30
    return-void
.end method

.method public synthetic lambda$addPackage$2$AppsFilter(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .registers 13
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "settings"    # Landroid/util/ArrayMap;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilter;->addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V

    .line 551
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v1, :cond_18

    .line 553
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    const/4 v4, 0x0

    .line 554
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 553
    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 556
    :cond_18
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public synthetic lambda$onSystemReady$1$AppsFilter()V
    .registers 1

    .line 528
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheAsync()V

    .line 529
    return-void
.end method

.method public synthetic lambda$onUsersChanged$7$AppsFilter()V
    .registers 1

    .line 761
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheAsync()V

    .line 762
    return-void
.end method

.method public synthetic lambda$removePackage$9$AppsFilter(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .registers 15
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "settings"    # Landroid/util/ArrayMap;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;

    .line 938
    array-length v0, p3

    .line 939
    .local v0, "userCount":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_2
    const/4 v2, 0x1

    if-ge v1, v0, :cond_30

    .line 940
    aget-object v3, p3, v1

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 941
    .local v3, "userId":I
    iget v4, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 942
    .local v4, "removingUid":I
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->remove(I)V

    .line 943
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v5}, Landroid/util/SparseSetArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_1b
    if-ltz v5, :cond_2d

    .line 944
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 943
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b

    .line 939
    .end local v3    # "userId":I
    .end local v4    # "removingUid":I
    .end local v5    # "i":I
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 948
    .end local v1    # "u":I
    :cond_30
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v1, :cond_56

    .line 949
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseSetArray;->remove(I)V

    .line 950
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_42
    if-ltz v1, :cond_56

    .line 951
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v4

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 950
    add-int/lit8 v1, v1, -0x1

    goto :goto_42

    .line 954
    .end local v1    # "i":I
    :cond_56
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseSetArray;->remove(I)V

    .line 955
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_64
    if-ltz v1, :cond_78

    .line 956
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v4

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 955
    add-int/lit8 v1, v1, -0x1

    goto :goto_64

    .line 959
    .end local v1    # "i":I
    :cond_78
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 961
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v1, :cond_a9

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a9

    .line 962
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 963
    .local v1, "removingPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 964
    .local v3, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p2, v1}, Lcom/android/server/pm/AppsFilter;->collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 965
    invoke-interface {v4, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_a9

    .line 966
    iput-boolean v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 970
    .end local v1    # "removingPackageName":Ljava/lang/String;
    .end local v3    # "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a9
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/om/OverlayReferenceMapper;->removePkg(Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v1, p1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V

    .line 977
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_df

    .line 978
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_c2
    if-ltz v1, :cond_df

    .line 979
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_cf

    .line 980
    goto :goto_dc

    .line 982
    :cond_cf
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .line 983
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 982
    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/AppsFilter;->addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V

    .line 978
    :goto_dc
    add-int/lit8 v1, v1, -0x1

    goto :goto_c2

    .line 987
    .end local v1    # "i":I
    :cond_df
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_e2
    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/AppsFilter;->removeAppIdFromVisibilityCache(I)V

    .line 989
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v3, :cond_119

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_119

    .line 990
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_f8
    if-ltz v3, :cond_119

    .line 991
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 992
    .local v2, "siblingSetting":Lcom/android/server/pm/PackageSetting;
    if-ne v2, p1, :cond_107

    .line 993
    goto :goto_116

    .line 995
    :cond_107
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 996
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 995
    move-object v4, p0

    move-object v7, v2

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 990
    .end local v2    # "siblingSetting":Lcom/android/server/pm/PackageSetting;
    :goto_116
    add-int/lit8 v3, v3, -0x1

    goto :goto_f8

    .line 999
    .end local v3    # "i":I
    :cond_119
    monitor-exit v1

    .line 1000
    return-void

    .line 999
    :catchall_11b
    move-exception v2

    monitor-exit v1
    :try_end_11d
    .catchall {:try_start_e2 .. :try_end_11d} :catchall_11b

    throw v2
.end method

.method public synthetic lambda$shouldFilterApplicationInternal$10$AppsFilter(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .registers 3
    .param p1, "settings"    # Landroid/util/ArrayMap;
    .param p2, "users"    # [Landroid/content/pm/UserInfo;

    .line 1193
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilter;->recomputeComponentVisibility(Landroid/util/ArrayMap;)V

    .line 1194
    return-void
.end method

.method public synthetic lambda$updateEntireShouldFilterCache$3$AppsFilter(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .registers 6
    .param p1, "settings"    # Landroid/util/ArrayMap;
    .param p2, "users"    # [Landroid/content/pm/UserInfo;

    .line 677
    nop

    .line 678
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheInner(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)Landroid/util/SparseArray;

    move-result-object v0

    .line 679
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 680
    :try_start_8
    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    .line 681
    monitor-exit v1

    .line 683
    return-void

    .line 681
    :catchall_c
    move-exception v2

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v2
.end method

.method public synthetic lambda$updateEntireShouldFilterCacheAsync$6$AppsFilter()V
    .registers 9

    .line 705
    const-string v0, "AppsFilter"

    const-string/jumbo v1, "updateEntireShouldFilterCacheAsync is running"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 707
    .local v0, "settingsCopy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 708
    .local v1, "packagesCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v2, 0x1

    new-array v3, v2, [[Landroid/content/pm/UserInfo;

    .line 709
    .local v3, "usersRef":[[Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v5, Lcom/android/server/pm/-$$Lambda$AppsFilter$6ZkOvIiHRxp0t0ig3JkKoOqIJ_U;

    invoke-direct {v5, v1, v0, v3}, Lcom/android/server/pm/-$$Lambda$AppsFilter$6ZkOvIiHRxp0t0ig3JkKoOqIJ_U;-><init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;[[Landroid/content/pm/UserInfo;)V

    invoke-interface {v4, v5}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 720
    const/4 v4, 0x0

    aget-object v5, v3, v4

    .line 721
    invoke-direct {p0, v0, v5}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheInner(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)Landroid/util/SparseArray;

    move-result-object v5

    .line 722
    .local v5, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    new-array v2, v2, [Z

    .line 724
    .local v2, "changed":[Z
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v7, Lcom/android/server/pm/-$$Lambda$AppsFilter$F9530A0x_pcF8mQTtvMATpL55ok;

    invoke-direct {v7, v0, v2, v1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$F9530A0x_pcF8mQTtvMATpL55ok;-><init>(Landroid/util/ArrayMap;[ZLandroid/util/ArrayMap;)V

    invoke-interface {v6, v7}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 737
    aget-boolean v4, v2, v4

    if-eqz v4, :cond_3a

    .line 739
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCache()V

    goto :goto_40

    .line 744
    :cond_3a
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 745
    :try_start_3d
    iput-object v5, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    .line 746
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_49

    .line 748
    :goto_40
    const-string v4, "AppsFilter"

    const-string/jumbo v6, "updateEntireShouldFilterCacheAsync finished"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void

    .line 746
    :catchall_49
    move-exception v6

    :try_start_4a
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v6
.end method

.method public synthetic lambda$updateShouldFilterCacheForPackage$8$AppsFilter(Ljava/lang/String;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "settings"    # Landroid/util/ArrayMap;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;

    .line 774
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    .line 775
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 776
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 774
    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 777
    return-void
.end method

.method public onSystemReady()V
    .registers 6

    .line 510
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/AppsFilter$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/AppsFilter$1;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 518
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->onSystemReady()V

    .line 519
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuildIfDeferred()V

    .line 521
    const-wide/16 v0, 0x0

    .line 522
    .local v0, "delayTime":J
    iget v2, p0, Lcom/android/server/pm/AppsFilter;->mUserCountAtUpdateEntireShouldFilterCache:I

    iget v3, p0, Lcom/android/server/pm/AppsFilter;->mSettingsSizeAtUpdateEntireShouldFilterCache:I

    mul-int/2addr v2, v3

    .line 523
    .local v2, "appxUidCount":I
    const/16 v3, 0xbb8

    if-le v2, v3, :cond_22

    .line 524
    mul-int/lit8 v3, v2, 0x23

    int-to-long v0, v3

    .line 526
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateEntireShouldFilterCacheAsync will be running after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppsFilter"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/-$$Lambda$AppsFilter$YKe4yUfi0ORFgefMioscS7sd1Ko;

    invoke-direct {v4, p0}, Lcom/android/server/pm/-$$Lambda$AppsFilter$YKe4yUfi0ORFgefMioscS7sd1Ko;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 534
    .end local v0    # "delayTime":J
    .end local v2    # "appxUidCount":I
    return-void
.end method

.method public onUsersChanged()V
    .registers 6

    .line 755
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v1, :cond_20

    .line 757
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    .line 759
    const-string v1, "AppsFilter"

    const-string/jumbo v2, "updateEntireShouldFilterCacheAsync will be running after 30000ms"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/-$$Lambda$AppsFilter$fghqK_tkcAE61wIAotIBzBfCj1k;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$AppsFilter$fghqK_tkcAE61wIAotIBzBfCj1k;-><init>(Lcom/android/server/pm/AppsFilter;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 767
    :cond_20
    monitor-exit v0

    .line 768
    return-void

    .line 767
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public removePackage(Lcom/android/server/pm/PackageSetting;)V
    .registers 4
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;

    .line 937
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$AppsFilter$4TczbSMbTBWrcf_7ZM-HvfI09do;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$4TczbSMbTBWrcf_7ZM-HvfI09do;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/PackageSetting;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 1001
    return-void
.end method

.method public shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z
    .registers 16
    .param p1, "callingUid"    # I
    .param p2, "callingSetting"    # Lcom/android/server/pm/SettingBase;
    .param p3, "targetPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "userId"    # I

    .line 1015
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "shouldFilterApplication"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1016
    const/4 v2, 0x1

    if-nez p3, :cond_15

    .line 1017
    const-string v0, "AppsFilter"

    const-string/jumbo v1, "shouldFilterApplication: targetPkgSetting is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return v2

    .line 1021
    :cond_15
    :try_start_15
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 1022
    .local v3, "callingAppId":I
    const/16 v4, 0x2710

    const/4 v5, 0x0

    if-lt v3, v4, :cond_b0

    iget v6, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-lt v6, v4, :cond_b0

    iget v4, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v3, v4, :cond_28

    goto/16 :goto_b0

    .line 1027
    :cond_28
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_b5

    .line 1028
    :try_start_2b
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v6, :cond_8f

    .line 1029
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 1030
    .local v6, "shouldFilterTargets":Landroid/util/SparseBooleanArray;
    iget v7, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p4, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 1031
    .local v7, "targetUid":I
    if-nez v6, :cond_5a

    .line 1032
    const-string v5, "AppsFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Encountered calling uid with no cached rules: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_2b .. :try_end_56} :catchall_ad

    .line 1056
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1033
    return v2

    .line 1035
    :cond_5a
    :try_start_5a
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v8

    .line 1036
    .local v8, "indexOfTargetUid":I
    if-gez v8, :cond_83

    .line 1037
    const-string v5, "AppsFilter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encountered calling -> target with no cached rules: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_5a .. :try_end_7f} :catchall_ad

    .line 1056
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1039
    return v2

    .line 1041
    :cond_83
    :try_start_83
    invoke-virtual {v6, v8}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-nez v9, :cond_8e

    .line 1042
    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_ad

    .line 1056
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1042
    return v5

    .line 1044
    .end local v6    # "shouldFilterTargets":Landroid/util/SparseBooleanArray;
    .end local v7    # "targetUid":I
    .end local v8    # "indexOfTargetUid":I
    :cond_8e
    goto :goto_9a

    .line 1045
    :cond_8f
    :try_start_8f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v6

    if-nez v6, :cond_9a

    .line 1047
    monitor-exit v4
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_ad

    .line 1056
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1047
    return v5

    .line 1050
    :cond_9a
    :goto_9a
    :try_start_9a
    monitor-exit v4
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_ad

    .line 1051
    :try_start_9b
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v4, v3}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 1052
    const-string v4, "BLOCKED"

    invoke-static {p2, p3, v4}, Lcom/android/server/pm/AppsFilter;->log(Lcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_9b .. :try_end_a8} :catchall_b5

    .line 1054
    :cond_a8
    nop

    .line 1056
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1054
    return v2

    .line 1050
    :catchall_ad
    move-exception v2

    :try_start_ae
    monitor-exit v4
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "userId":I
    :try_start_af
    throw v2
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_b5

    .line 1025
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "userId":I
    :cond_b0
    :goto_b0
    nop

    .line 1056
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1025
    return v5

    .line 1056
    .end local v3    # "callingAppId":I
    :catchall_b5
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1057
    throw v2
.end method
