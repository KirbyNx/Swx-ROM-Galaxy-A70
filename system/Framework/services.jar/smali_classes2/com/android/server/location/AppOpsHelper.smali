.class public Lcom/android/server/location/AppOpsHelper;
.super Ljava/lang/Object;
.source "AppOpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/AppOpsHelper$MockLocationAppOpListener;,
        Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;
    }
.end annotation


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMockLocationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/AppOpsHelper$MockLocationAppOpListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/location/AppOpsHelper;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mMockLocationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/AppOpsHelper;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/AppOpsHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/location/AppOpsHelper;->onAppOpChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/AppOpsHelper;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/AppOpsHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/location/AppOpsHelper;->onMockLocationAppOpChanged(Ljava/lang/String;)V

    return-void
.end method

.method private noteOpNoThrow(ILcom/android/server/location/CallerIdentity;)Z
    .registers 14
    .param p1, "appOp"    # I
    .param p2, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 316
    monitor-enter p0

    .line 317
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 318
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2e

    .line 320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 322
    .local v3, "identity":J
    :try_start_12
    iget-object v5, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v7, p2, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v8, p2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v9, p2, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v10, p2, Lcom/android/server/location/CallerIdentity;->listenerId:Ljava/lang/String;

    move v6, p1

    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_29

    if-nez v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    .line 329
    :goto_25
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    return v1

    .line 329
    :catchall_29
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    throw v0

    .line 318
    .end local v3    # "identity":J
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private onAppOpChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "location appop changed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;

    .line 127
    .local v1, "listener":Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;
    invoke-interface {v1, p1}, Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;->onAppOpsChanged(Ljava/lang/String;)V

    .line 128
    .end local v1    # "listener":Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;
    goto :goto_1d

    .line 129
    :cond_2d
    return-void
.end method

.method private onMockLocationAppOpChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mock location appop changed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mMockLocationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/AppOpsHelper$MockLocationAppOpListener;

    .line 152
    .local v1, "listener":Lcom/android/server/location/AppOpsHelper$MockLocationAppOpListener;
    invoke-interface {v1}, Lcom/android/server/location/AppOpsHelper$MockLocationAppOpListener;->onMockLocationAppOpsChanged()V

    .line 153
    .end local v1    # "listener":Lcom/android/server/location/AppOpsHelper$MockLocationAppOpListener;
    goto :goto_1c

    .line 155
    :cond_2c
    return-void
.end method

.method private startLocationMonitoring(ILcom/android/server/location/CallerIdentity;)Z
    .registers 15
    .param p1, "appOp"    # I
    .param p2, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 280
    monitor-enter p0

    .line 281
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 282
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2f

    .line 284
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 286
    .local v3, "identity":J
    :try_start_12
    iget-object v5, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v7, p2, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v8, p2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p2, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v11, p2, Lcom/android/server/location/CallerIdentity;->listenerId:Ljava/lang/String;

    move v6, p1

    invoke-virtual/range {v5 .. v11}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_2a

    if-nez v0, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    .line 294
    :goto_26
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    return v1

    .line 294
    :catchall_2a
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 295
    throw v0

    .line 282
    .end local v3    # "identity":J
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private stopLocationMonitoring(ILcom/android/server/location/CallerIdentity;)V
    .registers 9
    .param p1, "appOp"    # I
    .param p2, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 299
    monitor-enter p0

    .line 300
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 301
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_25

    .line 303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 305
    .local v0, "identity":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p2, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v4, p2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_20

    .line 311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    nop

    .line 313
    return-void

    .line 311
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    throw v2

    .line 301
    .end local v0    # "identity":J
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;

    .line 135
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public addMockLocationListener(Lcom/android/server/location/AppOpsHelper$MockLocationAppOpListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/AppOpsHelper$MockLocationAppOpListener;

    .line 161
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mMockLocationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z
    .registers 10
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 200
    monitor-enter p0

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 202
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2f

    .line 204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 206
    .local v3, "identity":J
    :try_start_12
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget v5, p1, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    .line 207
    invoke-static {v5}, Lcom/android/server/location/CallerIdentity;->asAppOp(I)I

    move-result v5

    iget v6, p1, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v7, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    .line 206
    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_2a

    if-nez v0, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    .line 211
    :goto_26
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    return v1

    .line 211
    :catchall_2a
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 212
    throw v0

    .line 202
    .end local v3    # "identity":J
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public checkMockLocationAccess(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 175
    monitor-enter p0

    .line 176
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 177
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_27

    .line 179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 181
    .local v3, "identity":J
    :try_start_12
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x3a

    invoke-virtual {v0, v5, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_22

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 186
    :goto_1e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    return v1

    .line 186
    :catchall_22
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    throw v0

    .line 177
    .end local v3    # "identity":J
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public noteLocationAccess(Lcom/android/server/location/CallerIdentity;)Z
    .registers 3
    .param p1, "identity"    # Lcom/android/server/location/CallerIdentity;

    .line 221
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    invoke-static {v0}, Lcom/android/server/location/CallerIdentity;->asAppOp(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AppOpsHelper;->noteOpNoThrow(ILcom/android/server/location/CallerIdentity;)Z

    move-result v0

    return v0
.end method

.method public noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z
    .registers 13
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 261
    monitor-enter p0

    .line 262
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 263
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2f

    .line 265
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 268
    .local v3, "identity":J
    :try_start_12
    iget-object v5, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x3a

    iget v7, p1, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v8, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/location/CallerIdentity;->listenerId:Ljava/lang/String;

    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_2a

    if-nez v0, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    .line 275
    :goto_26
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    return v1

    .line 275
    :catchall_2a
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    throw v0

    .line 263
    .end local v3    # "identity":J
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public declared-synchronized onSystemReady()V
    .registers 6

    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    if-eqz v0, :cond_7

    .line 88
    monitor-exit p0

    return-void

    .line 91
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 92
    const/4 v1, 0x1

    new-instance v2, Lcom/android/server/location/AppOpsHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/AppOpsHelper$1;-><init>(Lcom/android/server/location/AppOpsHelper;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x3a

    new-instance v2, Lcom/android/server/location/AppOpsHelper$2;

    invoke-direct {v2, p0}, Lcom/android/server/location/AppOpsHelper$2;-><init>(Lcom/android/server/location/AppOpsHelper;)V

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_31

    .line 119
    monitor-exit p0

    return-void

    .line 86
    .end local p0    # "this":Lcom/android/server/location/AppOpsHelper;
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;

    .line 142
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public removeMockLocationListener(Lcom/android/server/location/AppOpsHelper$MockLocationAppOpListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/AppOpsHelper$MockLocationAppOpListener;

    .line 168
    iget-object v0, p0, Lcom/android/server/location/AppOpsHelper;->mMockLocationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public startHighPowerLocationMonitoring(Lcom/android/server/location/CallerIdentity;)Z
    .registers 3
    .param p1, "identity"    # Lcom/android/server/location/CallerIdentity;

    .line 246
    const/16 v0, 0x2a

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AppOpsHelper;->startLocationMonitoring(ILcom/android/server/location/CallerIdentity;)Z

    move-result v0

    return v0
.end method

.method public startLocationMonitoring(Lcom/android/server/location/CallerIdentity;)Z
    .registers 3
    .param p1, "identity"    # Lcom/android/server/location/CallerIdentity;

    .line 230
    const/16 v0, 0x29

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AppOpsHelper;->startLocationMonitoring(ILcom/android/server/location/CallerIdentity;)Z

    move-result v0

    return v0
.end method

.method public stopHighPowerLocationMonitoring(Lcom/android/server/location/CallerIdentity;)V
    .registers 3
    .param p1, "identity"    # Lcom/android/server/location/CallerIdentity;

    .line 253
    const/16 v0, 0x2a

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AppOpsHelper;->stopLocationMonitoring(ILcom/android/server/location/CallerIdentity;)V

    .line 254
    return-void
.end method

.method public stopLocationMonitoring(Lcom/android/server/location/CallerIdentity;)V
    .registers 3
    .param p1, "identity"    # Lcom/android/server/location/CallerIdentity;

    .line 238
    const/16 v0, 0x29

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AppOpsHelper;->stopLocationMonitoring(ILcom/android/server/location/CallerIdentity;)V

    .line 239
    return-void
.end method
