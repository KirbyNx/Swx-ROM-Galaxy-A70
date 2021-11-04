.class public Lcom/android/server/location/MockableLocationProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "MockableLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;
    }
.end annotation


# instance fields
.field private mMockProvider:Lcom/android/server/location/MockProvider;

.field private final mOwnerLock:Ljava/lang/Object;

.field private mProvider:Lcom/android/server/location/AbstractLocationProvider;

.field private mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/location/AbstractLocationProvider$Listener;)V
    .registers 5
    .param p1, "ownerLock"    # Ljava/lang/Object;
    .param p2, "listener"    # Lcom/android/server/location/AbstractLocationProvider$Listener;

    .line 75
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V

    .line 76
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/internal/location/ProviderRequest;->EMPTY_REQUEST:Lcom/android/internal/location/ProviderRequest;

    iput-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/server/location/MockableLocationProvider;->setListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$State;

    .line 82
    instance-of v0, p2, Lcom/android/server/location/AbstractLocationProvider$INsflpListener;

    if-eqz v0, :cond_1c

    .line 83
    move-object v0, p2

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$INsflpListener;

    invoke-virtual {p0, v0}, Lcom/android/server/location/MockableLocationProvider;->setNsflpListener(Lcom/android/server/location/AbstractLocationProvider$INsflpListener;)V

    .line 86
    :cond_1c
    instance-of v0, p2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    if-eqz v0, :cond_29

    .line 87
    move-object v0, p2

    check-cast v0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mProviderName:Ljava/lang/String;

    .line 90
    :cond_29
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/MockableLocationProvider;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/MockableLocationProvider;

    .line 49
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/MockableLocationProvider;)Lcom/android/server/location/AbstractLocationProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/MockableLocationProvider;

    .line 49
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    return-object v0
.end method

.method private setProviderLocked(Lcom/android/server/location/AbstractLocationProvider;)V
    .registers 7
    .param p1, "provider"    # Lcom/android/server/location/AbstractLocationProvider;

    .line 144
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-ne v0, p1, :cond_5

    .line 145
    return-void

    .line 149
    :cond_5
    if-eqz p1, :cond_11

    .line 150
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/location/AbstractLocationProvider;->setProviderName(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mNsflpListener:Lcom/android/server/location/AbstractLocationProvider$INsflpListener;

    invoke-virtual {p1, v0}, Lcom/android/server/location/AbstractLocationProvider;->setNsflpListener(Lcom/android/server/location/AbstractLocationProvider$INsflpListener;)V

    .line 155
    :cond_11
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 156
    .local v0, "oldProvider":Lcom/android/server/location/AbstractLocationProvider;
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 158
    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 161
    invoke-virtual {v0, v1}, Lcom/android/server/location/AbstractLocationProvider;->setListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$State;

    .line 162
    sget-object v2, Lcom/android/internal/location/ProviderRequest;->EMPTY_REQUEST:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v0, v2}, Lcom/android/server/location/AbstractLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    .line 166
    :cond_20
    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v2, :cond_2e

    .line 167
    new-instance v3, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;-><init>(Lcom/android/server/location/MockableLocationProvider;Lcom/android/server/location/AbstractLocationProvider;Lcom/android/server/location/MockableLocationProvider$1;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/AbstractLocationProvider;->setListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v1

    .local v1, "newState":Lcom/android/server/location/AbstractLocationProvider$State;
    goto :goto_30

    .line 169
    .end local v1    # "newState":Lcom/android/server/location/AbstractLocationProvider$State;
    :cond_2e
    sget-object v1, Lcom/android/server/location/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/AbstractLocationProvider$State;

    .line 172
    .restart local v1    # "newState":Lcom/android/server/location/AbstractLocationProvider$State;
    :goto_30
    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 173
    .local v2, "oldRequest":Lcom/android/internal/location/ProviderRequest;
    invoke-virtual {p0, v1}, Lcom/android/server/location/MockableLocationProvider;->setState(Lcom/android/server/location/AbstractLocationProvider$State;)V

    .line 175
    iget-object v3, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v3, :cond_40

    iget-object v4, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    if-ne v2, v4, :cond_40

    .line 176
    invoke-virtual {v3, v4}, Lcom/android/server/location/AbstractLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    .line 178
    :cond_40
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_e
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 255
    .local v1, "provider":Lcom/android/server/location/AbstractLocationProvider;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "properties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_e .. :try_end_78} :catchall_7e

    .line 261
    if-eqz v1, :cond_7d

    .line 264
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 266
    :cond_7d
    return-void

    .line 259
    .end local v1    # "provider":Lcom/android/server/location/AbstractLocationProvider;
    :catchall_7e
    move-exception v1

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v1
.end method

.method public getCurrentRequest()Lcom/android/internal/location/ProviderRequest;
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    monitor-exit v0

    return-object v1

    .line 217
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getProvider()Lcom/android/server/location/AbstractLocationProvider;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    monitor-exit v0

    return-object v1

    .line 100
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isMock()Z
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 187
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method protected onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 237
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v1, :cond_c

    .line 239
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/location/AbstractLocationProvider;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 241
    :cond_c
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected onSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    .line 222
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    if-ne p1, v1, :cond_9

    .line 224
    monitor-exit v0

    return-void

    .line 227
    :cond_9
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 229
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v1, :cond_14

    .line 230
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/AbstractLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    .line 232
    :cond_14
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public setMockProvider(Lcom/android/server/location/MockProvider;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/location/MockProvider;

    .line 128
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    if-ne v1, p1, :cond_9

    .line 130
    monitor-exit v0

    return-void

    .line 133
    :cond_9
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    .line 134
    if-eqz p1, :cond_11

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/location/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_16

    .line 137
    :cond_11
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/location/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 139
    :goto_16
    monitor-exit v0

    .line 140
    return-void

    .line 139
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public setMockProviderAllowed(Z)V
    .registers 4
    .param p1, "allowed"    # Z

    .line 195
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockProvider;->setProviderAllowed(Z)V

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public setMockProviderLocation(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 205
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 207
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockProvider;->setProviderLocation(Landroid/location/Location;)V

    .line 208
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/location/AbstractLocationProvider;

    .line 109
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-ne v1, p1, :cond_9

    .line 111
    monitor-exit v0

    return-void

    .line 114
    :cond_9
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 115
    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    if-nez v1, :cond_16

    .line 116
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/location/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 118
    :cond_16
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
