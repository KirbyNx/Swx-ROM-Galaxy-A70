.class public Lcom/android/server/location/LocationManagerService$LocationProviderManager;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/android/server/location/AbstractLocationProvider$Listener;
.implements Lcom/android/server/location/AbstractLocationProvider$INsflpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationProviderManager"
.end annotation


# instance fields
.field private final mEnabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastCoarseLocation:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocation:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationFudger:Lcom/android/server/location/LocationFudger;

.field private final mName:Ljava/lang/String;

.field protected final mProvider:Lcom/android/server/location/MockableLocationProvider;

.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "name"    # Ljava/lang/String;

    .line 1001
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    .line 1003
    new-instance v0, Lcom/android/server/location/LocationFudger;

    # getter for: Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$1800(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/SettingsHelper;->getCoarseLocationAccuracyM()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/location/LocationFudger;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    .line 1004
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    .line 1005
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    .line 1006
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    .line 1009
    new-instance v0, Lcom/android/server/location/MockableLocationProvider;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/location/MockableLocationProvider;-><init>(Ljava/lang/Object;Lcom/android/server/location/AbstractLocationProvider$Listener;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    .line 1010
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/server/location/LocationManagerService$1;

    .line 979
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V

    return-void
.end method

.method private setLastLocation(Landroid/location/Location;I)V
    .registers 12
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "userId"    # I

    .line 1083
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1084
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1087
    const-wide v1, 0x7fffffffffffffffL

    .line 1088
    .local v1, "timeDeltaMs":J
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 1089
    .local v3, "coarseLocation":Landroid/location/Location;
    if-eqz v3, :cond_31

    .line 1090
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1091
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 1093
    :cond_31
    const-wide/32 v4, 0x927c0

    cmp-long v4, v1, v4

    if-lez v4, :cond_43

    .line 1094
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v5, p1}, Lcom/android/server/location/LocationFudger;->createCoarse(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1096
    .end local v1    # "timeDeltaMs":J
    .end local v3    # "coarseLocation":Landroid/location/Location;
    :cond_43
    monitor-exit v0

    .line 1097
    return-void

    .line 1096
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_45

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1317
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1318
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1319
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1320
    const-string v1, " [mock]"

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1322
    :cond_2a
    const-string v1, ":"

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1327
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$1900(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/UserInfoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/UserInfoHelper;->getCurrentUserIds()[I

    move-result-object v1

    .line 1328
    .local v1, "userIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5c

    .line 1329
    aget v2, v1, v3

    .line 1333
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    .end local v2    # "userId":I
    goto :goto_9d

    .line 1335
    :cond_5c
    array-length v2, v1

    :goto_5d
    if-ge v3, v2, :cond_9d

    aget v4, v1, v3

    .line 1336
    .local v4, "userId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1335
    nop

    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 1345
    .end local v1    # "userIds":[I
    :cond_9d
    :goto_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_7 .. :try_end_9e} :catchall_a7

    .line 1347
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/MockableLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1350
    return-void

    .line 1345
    :catchall_a7
    move-exception v1

    :try_start_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method public getLastLocation(II)Landroid/location/Location;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "permissionlevel"    # I

    .line 1062
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1063
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1d

    const/4 v1, 0x2

    if-ne p2, v1, :cond_17

    .line 1067
    :try_start_d
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    monitor-exit v0

    return-object v1

    .line 1069
    :cond_17
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local p1    # "userId":I
    .end local p2    # "permissionlevel":I
    throw v1

    .line 1065
    .restart local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .restart local p1    # "userId":I
    .restart local p2    # "permissionlevel":I
    :cond_1d
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    monitor-exit v0

    return-object v1

    .line 1071
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getMockProviderRequests()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation

    .line 1128
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1129
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1133
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->getCurrentRequest()Lcom/android/internal/location/ProviderRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 1130
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider is not a test provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    throw v1

    .line 1134
    .restart local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1013
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 2

    .line 1057
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public hasProvider()Z
    .registers 2

    .line 1017
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/MockableLocationProvider;->getProvider()Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public injectLastLocation(Landroid/location/Location;I)V
    .registers 5
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "userId"    # I

    .line 1075
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1076
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    .line 1077
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    .line 1079
    :cond_12
    monitor-exit v0

    .line 1080
    return-void

    .line 1079
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isEnabled(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 1221
    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p1, v1, :cond_6

    .line 1224
    return v0

    .line 1227
    :cond_6
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1228
    :try_start_d
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1229
    .local v2, "enabled":Ljava/lang/Boolean;
    if-nez v2, :cond_6f

    .line 1242
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v3}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1243
    # getter for: Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;
    invoke-static {v3}, Lcom/android/server/location/LocationManagerService;->access$1900(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/UserInfoHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1244
    # getter for: Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;
    invoke-static {v3}, Lcom/android/server/location/LocationManagerService;->access$1800(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/location/SettingsHelper;->isLocationEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    nop

    .line 1242
    :goto_3c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v2, v0

    .line 1246
    const-string v0, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " provider saw user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " unexpectedly"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2100(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/android/server/location/-$$Lambda$LocationManagerService$LocationProviderManager$1C6AYbcesVkgZGaI6Vwd2mH57AE;

    invoke-direct {v3, p0, p1}, Lcom/android/server/location/-$$Lambda$LocationManagerService$LocationProviderManager$1C6AYbcesVkgZGaI6Vwd2mH57AE;-><init>(Lcom/android/server/location/LocationManagerService$LocationProviderManager;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1254
    :cond_6f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1255
    .end local v2    # "enabled":Ljava/lang/Boolean;
    :catchall_75
    move-exception v0

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_d .. :try_end_77} :catchall_75

    throw v0
.end method

.method public synthetic lambda$isEnabled$0$LocationManagerService$LocationProviderManager(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1248
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1249
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    .line 1250
    monitor-exit v0

    .line 1251
    return-void

    .line 1250
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onEnabledChangedLocked(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1260
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_5

    .line 1263
    return-void

    .line 1264
    :cond_5
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1f

    .line 1267
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1900(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/UserInfoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/UserInfoHelper;->getCurrentUserIds()[I

    move-result-object v0

    array-length v2, v0

    :goto_14
    if-ge v1, v2, :cond_1e

    aget v3, v0, v1

    .line 1268
    .local v3, "currentUserId":I
    invoke-virtual {p0, v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    .line 1267
    .end local v3    # "currentUserId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1270
    :cond_1e
    return-void

    .line 1276
    :cond_1f
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1277
    # getter for: Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1900(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/UserInfoHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 1278
    # getter for: Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1800(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v1, 0x1

    goto :goto_44

    :cond_43
    nop

    :goto_44
    move v0, v1

    .line 1280
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1281
    .local v1, "wasEnabled":Ljava/lang/Boolean;
    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v0, :cond_56

    .line 1282
    return-void

    .line 1285
    :cond_56
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    if-nez v0, :cond_9e

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/MockableLocationProvider;->getCurrentRequest()Lcom/android/internal/location/ProviderRequest;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    if-nez v2, :cond_9e

    .line 1293
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1294
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1298
    :cond_9e
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;
    invoke-static {v2}, Lcom/android/server/location/LocationManagerService;->access$1800(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/SettingsHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/server/location/SettingsHelper;->setLocationProviderAllowed(Ljava/lang/String;ZI)V

    .line 1301
    if-eqz v1, :cond_ee

    .line 1303
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    const-string v3, "fused"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ee

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    const-string/jumbo v3, "passive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ee

    .line 1304
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    .line 1305
    const-string v4, "android.location.extra.PROVIDER_NAME"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1306
    const-string v3, "android.location.extra.PROVIDER_ENABLED"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 1307
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 1308
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 1309
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/location/LocationManagerService;->access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1313
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_ee
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # invokes: Lcom/android/server/location/LocationManagerService;->updateProviderEnabledLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Z)V
    invoke-static {v2, p0, v0}, Lcom/android/server/location/LocationManagerService;->access$2200(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$LocationProviderManager;Z)V

    .line 1314
    return-void
.end method

.method public onReportLocation(Landroid/location/Location;)V
    .registers 9
    .param p1, "location"    # Landroid/location/Location;

    .line 1149
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    const-string v1, " provider"

    const-string v2, "LocationManagerService"

    if-nez v0, :cond_36

    .line 1150
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_36

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-nez v0, :cond_36

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blocking 0,0 location from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-void

    .line 1156
    :cond_36
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blocking incomplete location from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    return-void

    .line 1162
    :cond_56
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/MockableLocationProvider;->getCurrentRequest()Lcom/android/internal/location/ProviderRequest;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    .line 1163
    .local v0, "locationSettingsIgnored":Z
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$1900(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/UserInfoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/UserInfoHelper;->getCurrentUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6a
    if-ge v3, v2, :cond_7c

    aget v4, v1, v3

    .line 1164
    .local v4, "userId":I
    if-nez v0, :cond_76

    invoke-virtual {p0, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 1165
    :cond_76
    invoke-direct {p0, p1, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    .line 1163
    .end local v4    # "userId":I
    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 1169
    :cond_7c
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationFudger;->createCoarse(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    # invokes: Lcom/android/server/location/LocationManagerService;->handleLocationChangedLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Landroid/location/Location;Landroid/location/Location;)V
    invoke-static {v1, p0, p1, v2}, Lcom/android/server/location/LocationManagerService;->access$2000(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$LocationProviderManager;Landroid/location/Location;Landroid/location/Location;)V

    .line 1170
    return-void
.end method

.method public onReportLocation(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 1175
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    const-string/jumbo v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_1e

    .line 1179
    :cond_14
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->onReportLocation(Ljava/util/List;)V

    .line 1180
    return-void

    .line 1176
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onStateChanged(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$State;)V
    .registers 5
    .param p1, "oldState"    # Lcom/android/server/location/AbstractLocationProvider$State;
    .param p2, "newState"    # Lcom/android/server/location/AbstractLocationProvider$State;

    .line 1185
    iget-boolean v0, p1, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    iget-boolean v1, p2, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    if-eq v0, v1, :cond_a

    .line 1186
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    .line 1188
    :cond_a
    return-void
.end method

.method public onStateChangedNsflp(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1193
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService;->notifyNSFLP(Landroid/os/Message;)V

    .line 1194
    return-void
.end method

.method public onUserStarted(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1198
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1207
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1208
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    .line 1209
    monitor-exit v0

    .line 1210
    return-void

    .line 1209
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public onUserStopped(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1213
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1214
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mEnabled:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1215
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1216
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1217
    monitor-exit v0

    .line 1218
    return-void

    .line 1217
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1142
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/MockableLocationProvider;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1143
    return-void
.end method

.method public setMockProvider(Lcom/android/server/location/MockProvider;)V
    .registers 7
    .param p1, "provider"    # Lcom/android/server/location/MockProvider;

    .line 1025
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1026
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockableLocationProvider;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    .line 1031
    if-nez p1, :cond_56

    .line 1032
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_30

    .line 1033
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 1034
    .local v2, "lastLocation":Landroid/location/Location;
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1035
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastLocation:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 1032
    .end local v2    # "lastLocation":Landroid/location/Location;
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1039
    .end local v1    # "i":I
    :cond_30
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_31
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 1040
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 1041
    .local v2, "lastCoarseLocation":Landroid/location/Location;
    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1042
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLastCoarseLocation:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 1039
    .end local v2    # "lastCoarseLocation":Landroid/location/Location;
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1046
    .end local v1    # "i":I
    :cond_51
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v1}, Lcom/android/server/location/LocationFudger;->resetOffsets()V

    .line 1048
    :cond_56
    monitor-exit v0

    .line 1049
    return-void

    .line 1048
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public setMockProviderAllowed(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 1100
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1101
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1105
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockableLocationProvider;->setMockProviderAllowed(Z)V

    .line 1106
    monitor-exit v0

    .line 1107
    return-void

    .line 1102
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider is not a test provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local p1    # "enabled":Z
    throw v1

    .line 1106
    .restart local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .restart local p1    # "enabled":Z
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public setMockProviderLocation(Landroid/location/Location;)V
    .registers 9
    .param p1, "location"    # Landroid/location/Location;

    .line 1110
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1111
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1115
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, "locationProvider":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 1119
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "33091107"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "!="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1123
    :cond_53
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/location/MockableLocationProvider;->setMockProviderLocation(Landroid/location/Location;)V

    .line 1124
    .end local v1    # "locationProvider":Ljava/lang/String;
    monitor-exit v0

    .line 1125
    return-void

    .line 1112
    :cond_5a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider is not a test provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local p1    # "location":Landroid/location/Location;
    throw v1

    .line 1124
    .restart local p0    # "this":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .restart local p1    # "location":Landroid/location/Location;
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_7 .. :try_end_75} :catchall_73

    throw v1
.end method

.method public setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V
    .registers 3
    .param p1, "provider"    # Lcom/android/server/location/AbstractLocationProvider;

    .line 1021
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/MockableLocationProvider;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 1022
    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;)V
    .registers 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    .line 1138
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->mProvider:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/MockableLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    .line 1139
    return-void
.end method
