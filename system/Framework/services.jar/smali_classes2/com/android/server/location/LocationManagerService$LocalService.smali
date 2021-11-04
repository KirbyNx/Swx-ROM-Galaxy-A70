.class Lcom/android/server/location/LocationManagerService$LocalService;
.super Landroid/location/LocationManagerInternal;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2

    .line 3450
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Landroid/location/LocationManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p2, "x1"    # Lcom/android/server/location/LocationManagerService$1;

    .line 3450
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService$LocalService;-><init>(Lcom/android/server/location/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3454
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3455
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    # invokes: Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-static {v1, p1}, Lcom/android/server/location/LocationManagerService;->access$2400(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v1

    .line 3456
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v1, :cond_12

    .line 3457
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 3460
    :cond_12
    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 3461
    .end local v1    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public isProviderPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3466
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$4300(Lcom/android/server/location/LocationManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 3467
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getPackages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3468
    const/4 v0, 0x1

    return v0

    .line 3470
    .end local v1    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_22
    goto :goto_a

    .line 3471
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public sendNiResponse(II)V
    .registers 4
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .line 3476
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3477
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService;->sendNiResponse(II)V

    .line 3479
    :cond_11
    return-void
.end method
