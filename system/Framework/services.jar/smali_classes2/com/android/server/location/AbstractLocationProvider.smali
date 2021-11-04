.class public abstract Lcom/android/server/location/AbstractLocationProvider;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/AbstractLocationProvider$InternalState;,
        Lcom/android/server/location/AbstractLocationProvider$State;,
        Lcom/android/server/location/AbstractLocationProvider$INsflpListener;,
        Lcom/android/server/location/AbstractLocationProvider$Listener;
    }
.end annotation


# instance fields
.field protected final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInternalState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/location/AbstractLocationProvider$InternalState;",
            ">;"
        }
    .end annotation
.end field

.field protected mNsflpListener:Lcom/android/server/location/AbstractLocationProvider$INsflpListener;

.field protected mProviderName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;

    .line 205
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V

    .line 206
    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mNsflpListener:Lcom/android/server/location/AbstractLocationProvider$INsflpListener;

    .line 83
    iput-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mProviderName:Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lcom/android/server/location/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    .line 210
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    sget-object v3, Lcom/android/server/location/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/AbstractLocationProvider$State;

    .line 211
    # invokes: Lcom/android/server/location/AbstractLocationProvider$State;->withProviderPackageNames(Ljava/util/Set;)Lcom/android/server/location/AbstractLocationProvider$State;
    invoke-static {v3, p2}, Lcom/android/server/location/AbstractLocationProvider$State;->access$000(Lcom/android/server/location/AbstractLocationProvider$State;Ljava/util/Set;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v3

    invoke-direct {v2, v0, v3, v0}, Lcom/android/server/location/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/AbstractLocationProvider$Listener;Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$1;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 212
    return-void
.end method

.method static synthetic lambda$setAllowed$3(ZLcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$State;
    .registers 3
    .param p0, "allowed"    # Z
    .param p1, "state"    # Lcom/android/server/location/AbstractLocationProvider$State;

    .line 318
    # invokes: Lcom/android/server/location/AbstractLocationProvider$State;->withAllowed(Z)Lcom/android/server/location/AbstractLocationProvider$State;
    invoke-static {p1, p0}, Lcom/android/server/location/AbstractLocationProvider$State;->access$300(Lcom/android/server/location/AbstractLocationProvider$State;Z)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setListener$0(Lcom/android/server/location/AbstractLocationProvider$Listener;Lcom/android/server/location/AbstractLocationProvider$InternalState;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    .registers 3
    .param p0, "listener"    # Lcom/android/server/location/AbstractLocationProvider$Listener;
    .param p1, "internalState"    # Lcom/android/server/location/AbstractLocationProvider$InternalState;

    .line 220
    # invokes: Lcom/android/server/location/AbstractLocationProvider$InternalState;->withListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    invoke-static {p1, p0}, Lcom/android/server/location/AbstractLocationProvider$InternalState;->access$600(Lcom/android/server/location/AbstractLocationProvider$InternalState;Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$InternalState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setPackageNames$5(Ljava/util/Set;Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$State;
    .registers 3
    .param p0, "packageNames"    # Ljava/util/Set;
    .param p1, "state"    # Lcom/android/server/location/AbstractLocationProvider$State;

    .line 332
    # invokes: Lcom/android/server/location/AbstractLocationProvider$State;->withProviderPackageNames(Ljava/util/Set;)Lcom/android/server/location/AbstractLocationProvider$State;
    invoke-static {p1, p0}, Lcom/android/server/location/AbstractLocationProvider$State;->access$000(Lcom/android/server/location/AbstractLocationProvider$State;Ljava/util/Set;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setProperties$4(Lcom/android/internal/location/ProviderProperties;Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$State;
    .registers 3
    .param p0, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p1, "state"    # Lcom/android/server/location/AbstractLocationProvider$State;

    .line 325
    # invokes: Lcom/android/server/location/AbstractLocationProvider$State;->withProperties(Lcom/android/internal/location/ProviderProperties;)Lcom/android/server/location/AbstractLocationProvider$State;
    invoke-static {p1, p0}, Lcom/android/server/location/AbstractLocationProvider$State;->access$200(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/internal/location/ProviderProperties;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setState$1(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$InternalState;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    .registers 3
    .param p0, "newState"    # Lcom/android/server/location/AbstractLocationProvider$State;
    .param p1, "internalState"    # Lcom/android/server/location/AbstractLocationProvider$InternalState;

    .line 235
    # invokes: Lcom/android/server/location/AbstractLocationProvider$InternalState;->withState(Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    invoke-static {p1, p0}, Lcom/android/server/location/AbstractLocationProvider$InternalState;->access$500(Lcom/android/server/location/AbstractLocationProvider$InternalState;Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$InternalState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setState$2(Ljava/util/function/UnaryOperator;Lcom/android/server/location/AbstractLocationProvider$InternalState;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    .registers 3
    .param p0, "operator"    # Ljava/util/function/UnaryOperator;
    .param p1, "internalState"    # Lcom/android/server/location/AbstractLocationProvider$InternalState;

    .line 254
    # invokes: Lcom/android/server/location/AbstractLocationProvider$InternalState;->withState(Ljava/util/function/UnaryOperator;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    invoke-static {p1, p0}, Lcom/android/server/location/AbstractLocationProvider$InternalState;->access$400(Lcom/android/server/location/AbstractLocationProvider$InternalState;Ljava/util/function/UnaryOperator;)Lcom/android/server/location/AbstractLocationProvider$InternalState;

    move-result-object v0

    return-object v0
.end method

.method private setState(Ljava/util/function/UnaryOperator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Lcom/android/server/location/AbstractLocationProvider$State;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Lcom/android/server/location/AbstractLocationProvider$State;>;"
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$kFGsZg9Hx50h6WYQeAMQABkRKNU;

    invoke-direct {v1, p1}, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$kFGsZg9Hx50h6WYQeAMQABkRKNU;-><init>(Ljava/util/function/UnaryOperator;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    .line 258
    .local v0, "oldInternalState":Lcom/android/server/location/AbstractLocationProvider$InternalState;
    iget-object v1, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-interface {p1, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/AbstractLocationProvider$State;

    .line 260
    .local v1, "newState":Lcom/android/server/location/AbstractLocationProvider$State;
    iget-object v2, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-virtual {v1, v2}, Lcom/android/server/location/AbstractLocationProvider$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 261
    return-void

    .line 266
    :cond_1e
    iget-object v2, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    if-eqz v2, :cond_8b

    .line 268
    iget-object v2, p0, Lcom/android/server/location/AbstractLocationProvider;->mNsflpListener:Lcom/android/server/location/AbstractLocationProvider$INsflpListener;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/location/AbstractLocationProvider;->mProviderName:Ljava/lang/String;

    .line 269
    const-string/jumbo v3, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    :cond_31
    iget-object v2, p0, Lcom/android/server/location/AbstractLocationProvider;->mProviderName:Ljava/lang/String;

    const-string/jumbo v3, "network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 270
    :cond_3c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 271
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/location/AbstractLocationProvider;->mProviderName:Ljava/lang/String;

    const-string/jumbo v4, "provider"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-boolean v3, v1, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    const-string v4, "enabled"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string/jumbo v4, "pid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 277
    .local v3, "msg":Landroid/os/Message;
    sget-object v4, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->PROVIDER_ENABLED_CHANGED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v4}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->what:I

    .line 278
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 280
    iget-object v4, p0, Lcom/android/server/location/AbstractLocationProvider;->mNsflpListener:Lcom/android/server/location/AbstractLocationProvider$INsflpListener;

    invoke-interface {v4, v3}, Lcom/android/server/location/AbstractLocationProvider$INsflpListener;->onStateChangedNsflp(Landroid/os/Message;)V

    .line 283
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 285
    .local v2, "identity":J
    :try_start_7b
    iget-object v4, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    iget-object v5, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-interface {v4, v5, v1}, Lcom/android/server/location/AbstractLocationProvider$Listener;->onStateChanged(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$State;)V
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_86

    .line 287
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    goto :goto_8b

    .line 287
    :catchall_86
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    throw v4

    .line 290
    .end local v2    # "identity":J
    :cond_8b
    :goto_8b
    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method protected getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method protected getProviderPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    return-object v0
.end method

.method public getState()Lcom/android/server/location/AbstractLocationProvider$State;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    return-object v0
.end method

.method protected isAllowed()Z
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    iget-boolean v0, v0, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    return v0
.end method

.method protected abstract onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected abstract onSetRequest(Lcom/android/internal/location/ProviderRequest;)V
.end method

.method protected reportLocation(Landroid/location/Location;)V
    .registers 6
    .param p1, "location"    # Landroid/location/Location;

    .line 339
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    .line 340
    .local v0, "listener":Lcom/android/server/location/AbstractLocationProvider$Listener;
    if-eqz v0, :cond_1c

    .line 341
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 343
    .local v1, "identity":J
    :try_start_10
    invoke-interface {v0, p1}, Lcom/android/server/location/AbstractLocationProvider$Listener;->onReportLocation(Landroid/location/Location;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 345
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    goto :goto_1c

    .line 345
    :catchall_17
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    throw v3

    .line 348
    .end local v1    # "identity":J
    :cond_1c
    :goto_1c
    return-void
.end method

.method protected reportLocation(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 354
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    .line 355
    .local v0, "listener":Lcom/android/server/location/AbstractLocationProvider$Listener;
    if-eqz v0, :cond_1c

    .line 356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 358
    .local v1, "identity":J
    :try_start_10
    invoke-interface {v0, p1}, Lcom/android/server/location/AbstractLocationProvider$Listener;->onReportLocation(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 360
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    goto :goto_1c

    .line 360
    :catchall_17
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    throw v3

    .line 363
    .end local v1    # "identity":J
    :cond_1c
    :goto_1c
    return-void
.end method

.method public final sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 388
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/android/server/location/-$$Lambda$emxC4DBjBtjrPCOadFmmcL-kgiw;->INSTANCE:Lcom/android/server/location/-$$Lambda$emxC4DBjBtjrPCOadFmmcL-kgiw;

    .line 389
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 390
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 388
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 391
    return-void
.end method

.method protected setAllowed(Z)V
    .registers 3
    .param p1, "allowed"    # Z

    .line 318
    new-instance v0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$s_g7M1EFAxoisWC6LYYgN-hWTwc;

    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$s_g7M1EFAxoisWC6LYYgN-hWTwc;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/android/server/location/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 319
    return-void
.end method

.method protected setListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$State;
    .registers 4
    .param p1, "listener"    # Lcom/android/server/location/AbstractLocationProvider$Listener;

    .line 219
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$diUZq3K1KUpjC4EqB0SQY_fHHGM;

    invoke-direct {v1, p1}, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$diUZq3K1KUpjC4EqB0SQY_fHHGM;-><init>(Lcom/android/server/location/AbstractLocationProvider$Listener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    return-object v0
.end method

.method protected final setNsflpListener(Lcom/android/server/location/AbstractLocationProvider$INsflpListener;)V
    .registers 2
    .param p1, "nsflpListener"    # Lcom/android/server/location/AbstractLocationProvider$INsflpListener;

    .line 399
    iput-object p1, p0, Lcom/android/server/location/AbstractLocationProvider;->mNsflpListener:Lcom/android/server/location/AbstractLocationProvider$INsflpListener;

    .line 400
    return-void
.end method

.method protected setPackageNames(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 332
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$Cz0MzfhYL-KpWWW0XmxsZTNwnI0;

    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$Cz0MzfhYL-KpWWW0XmxsZTNwnI0;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 333
    return-void
.end method

.method protected setProperties(Lcom/android/internal/location/ProviderProperties;)V
    .registers 3
    .param p1, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .line 325
    new-instance v0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$wZCGZbIMAspHRG64AcKlNjhWJEk;

    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$wZCGZbIMAspHRG64AcKlNjhWJEk;-><init>(Lcom/android/internal/location/ProviderProperties;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 326
    return-void
.end method

.method protected final setProviderName(Ljava/lang/String;)V
    .registers 2
    .param p1, "providerName"    # Ljava/lang/String;

    .line 395
    iput-object p1, p0, Lcom/android/server/location/AbstractLocationProvider;->mProviderName:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public final setRequest(Lcom/android/internal/location/ProviderRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    .line 370
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/android/server/location/-$$Lambda$hUPZkLaip7KhcHlSjfSfX2fzk_I;->INSTANCE:Lcom/android/server/location/-$$Lambda$hUPZkLaip7KhcHlSjfSfX2fzk_I;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 371
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 370
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method protected setState(Lcom/android/server/location/AbstractLocationProvider$State;)V
    .registers 7
    .param p1, "newState"    # Lcom/android/server/location/AbstractLocationProvider$State;

    .line 234
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$I29l5_Y-rKhaHygNa-fvF70mzA0;

    invoke-direct {v1, p1}, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$I29l5_Y-rKhaHygNa-fvF70mzA0;-><init>(Lcom/android/server/location/AbstractLocationProvider$State;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    .line 236
    .local v0, "oldInternalState":Lcom/android/server/location/AbstractLocationProvider$InternalState;
    iget-object v1, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-virtual {p1, v1}, Lcom/android/server/location/AbstractLocationProvider$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 237
    return-void

    .line 242
    :cond_16
    iget-object v1, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    if-eqz v1, :cond_2e

    .line 243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 245
    .local v1, "identity":J
    :try_start_1e
    iget-object v3, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    iget-object v4, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-interface {v3, v4, p1}, Lcom/android/server/location/AbstractLocationProvider$Listener;->onStateChanged(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$State;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_29

    .line 247
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 248
    goto :goto_2e

    .line 247
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 248
    throw v3

    .line 250
    .end local v1    # "identity":J
    :cond_2e
    :goto_2e
    return-void
.end method
