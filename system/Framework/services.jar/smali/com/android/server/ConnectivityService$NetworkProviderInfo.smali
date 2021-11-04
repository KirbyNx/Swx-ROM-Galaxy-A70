.class Lcom/android/server/ConnectivityService$NetworkProviderInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkProviderInfo"
.end annotation


# instance fields
.field private final mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final messenger:Landroid/os/Messenger;

.field public final name:Ljava/lang/String;

.field public final providerId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;ILandroid/os/IBinder$DeathRecipient;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "asyncChannel"    # Lcom/android/internal/util/AsyncChannel;
    .param p4, "providerId"    # I
    .param p5, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 8394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8395
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->name:Ljava/lang/String;

    .line 8396
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    .line 8397
    iput p4, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->providerId:I

    .line 8398
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 8399
    iput-object p5, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 8401
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_13

    move v2, v0

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-nez v3, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    if-eq v2, v0, :cond_1d

    .line 8404
    return-void

    .line 8402
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must pass exactly one of asyncChannel or deathRecipient"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method cancelRequest(Landroid/net/NetworkRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 8430
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_d

    .line 8431
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_11

    .line 8433
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0, p1}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->sendMessageToNetworkProvider(IIILjava/lang/Object;)V

    .line 8435
    :goto_11
    return-void
.end method

.method completeConnection()V
    .registers 3

    .line 8450
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8451
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x11001

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 8453
    :cond_e
    return-void
.end method

.method connect(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 8438
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8439
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_21

    .line 8442
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_1b

    .line 8445
    goto :goto_21

    .line 8443
    :catch_1b
    move-exception v0

    .line 8444
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    .line 8447
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method isLegacyNetworkFactory()Z
    .registers 2

    .line 8407
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method requestNetwork(Landroid/net/NetworkRequest;II)V
    .registers 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I
    .param p3, "servingProviderId"    # I

    .line 8420
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 8421
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_10

    .line 8424
    :cond_d
    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->sendMessageToNetworkProvider(IIILjava/lang/Object;)V

    .line 8427
    :goto_10
    return-void
.end method

.method sendMessageToNetworkProvider(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 8412
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 8416
    goto :goto_c

    .line 8413
    :catch_b
    move-exception v0

    .line 8417
    :goto_c
    return-void
.end method
