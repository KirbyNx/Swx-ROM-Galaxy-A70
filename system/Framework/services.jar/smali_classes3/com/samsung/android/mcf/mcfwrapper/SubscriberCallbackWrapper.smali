.class public Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;
.super Lcom/samsung/android/mcf/ISubscribeCallback$Stub;
.source "SubscriberCallbackWrapper.java"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/SubscribeCallback;

.field public mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

.field public mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/SubscribeCallback;Ljava/util/function/BiPredicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/mcf/SubscribeCallback;",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/SubscribeCallback;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    return-void
.end method


# virtual methods
.method public getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    return-object v0
.end method

.method public getSubscribeCallback()Lcom/samsung/android/mcf/SubscribeCallback;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/SubscribeCallback;

    return-object v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/SubscribeCallback;)Z
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/SubscribeCallback;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onConnectionFailed(Landroid/os/PersistableBundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_12

    .line 100
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onConnectionFailed(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    .line 103
    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public onConnectionStateChanged(Landroid/os/PersistableBundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_12

    .line 89
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onConnectionStateChanged(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    .line 92
    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public onDiscoveryStarted(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDiscoveryStopped(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onHandoverResult(Landroid/os/PersistableBundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_12

    .line 111
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onHandoverResult(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    .line 114
    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public onHandoverStarted(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onHandoverStopped(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onMcfServiceStateChanged(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 122
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/SubscribeCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/SubscribeCallback;->onMcfServiceStateChanged(II)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    .line 125
    :catch_16
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onPilotAdvertiseStarted(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPilotAdvertiseStopped(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onReceiveHandoverResponse(Landroid/os/PersistableBundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_12

    .line 78
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onReceiveHandoverResponse(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    .line 81
    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    return-void
.end method
