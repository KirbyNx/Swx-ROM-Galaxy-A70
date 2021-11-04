.class Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;
.super Ljava/lang/Object;
.source "AppsFilter.java"

# interfaces
.implements Lcom/android/server/pm/AppsFilter$FeatureConfig;
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AppsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureConfigImpl"
.end annotation


# static fields
.field private static final FILTERING_ENABLED_NAME:Ljava/lang/String; = "package_query_filtering_enabled"


# instance fields
.field private mAppsFilter:Lcom/android/server/pm/AppsFilter;

.field private final mDisabledPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFeatureEnabled:Z

.field private final mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

.field private mLoggingEnabled:Landroid/util/SparseBooleanArray;

.field private final mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method private constructor <init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;)V
    .registers 4
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 223
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 231
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 232
    iput-object p2, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$Injector;
    .param p3, "x2"    # Lcom/android/server/pm/AppsFilter$1;

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;)V

    return-void
.end method

.method private updateEnabledState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 315
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$Injector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    .line 316
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 315
    const-wide/32 v2, 0x81452eb

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 317
    .local v0, "enabled":Z
    if-eqz v0, :cond_1d

    .line 318
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_26

    .line 320
    :cond_1d
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 322
    :goto_26
    return-void
.end method


# virtual methods
.method public enableLogging(IZ)V
    .registers 5
    .param p1, "appId"    # I
    .param p2, "enable"    # Z

    .line 285
    if-eqz p2, :cond_14

    .line 286
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_d

    .line 287
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 289
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2e

    .line 291
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2e

    .line 292
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 293
    .local v0, "index":I
    if-ltz v0, :cond_2e

    .line 294
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 295
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_2e

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 301
    .end local v0    # "index":I
    :cond_2e
    :goto_2e
    return-void
.end method

.method public isGloballyEnabled()Z
    .registers 4

    .line 260
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "isGloballyEnabled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 262
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mFeatureEnabled:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_f

    .line 264
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 262
    return v2

    .line 264
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 265
    throw v2
.end method

.method public isLoggingEnabled(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 280
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public synthetic lambda$onSystemReady$0$AppsFilter$FeatureConfigImpl(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 247
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "package_query_filtering_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 248
    monitor-enter p0

    .line 249
    :try_start_e
    const-string/jumbo v0, "package_query_filtering_enabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 251
    monitor-exit p0

    goto :goto_1d

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0

    .line 253
    :cond_1d
    :goto_1d
    return-void
.end method

.method public onCompatChange(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 306
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_9

    .line 307
    return-void

    .line 309
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 310
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilter;

    # invokes: Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/android/server/pm/AppsFilter;->access$000(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public onSystemReady()V
    .registers 4

    .line 241
    const-string/jumbo v0, "package_manager_service"

    const-string/jumbo v1, "package_query_filtering_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 244
    nop

    .line 245
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/-$$Lambda$AppsFilter$FeatureConfigImpl$n15whgPRX7bGimHq6-7mgAskIKs;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$AppsFilter$FeatureConfigImpl$n15whgPRX7bGimHq6-7mgAskIKs;-><init>(Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;)V

    .line 244
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$Injector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    const-wide/32 v1, 0x81452eb

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 256
    return-void
.end method

.method public packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 270
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "packageIsEnabled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 272
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_19

    .line 274
    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 272
    return v2

    .line 274
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 275
    throw v2
.end method

.method public setAppsFilter(Lcom/android/server/pm/AppsFilter;)V
    .registers 2
    .param p1, "filter"    # Lcom/android/server/pm/AppsFilter;

    .line 236
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilter;

    .line 237
    return-void
.end method

.method public updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V
    .registers 6
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "removed"    # Z

    .line 326
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v0, :cond_18

    if-nez p2, :cond_18

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 327
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isTestOnly()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 328
    .local v0, "enableLogging":Z
    :goto_19
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->enableLogging(IZ)V

    .line 329
    if-eqz p2, :cond_28

    .line 330
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_31

    .line 331
    :cond_28
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v1, :cond_31

    .line 332
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-direct {p0, v1}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 334
    :cond_31
    :goto_31
    return-void
.end method
