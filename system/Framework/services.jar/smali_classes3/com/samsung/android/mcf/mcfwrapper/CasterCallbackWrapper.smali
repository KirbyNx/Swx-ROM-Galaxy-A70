.class public Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;
.super Lcom/samsung/android/mcf/ICasterCallback$Stub;
.source "CasterCallbackWrapper.java"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/CasterCallback;

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
.method public constructor <init>(Lcom/samsung/android/mcf/CasterCallback;Ljava/util/function/BiPredicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/mcf/CasterCallback;",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/mcf/ICasterCallback$Stub;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/CasterCallback;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    return-void
.end method


# virtual methods
.method public getCasterCallback()Lcom/samsung/android/mcf/CasterCallback;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/CasterCallback;

    return-object v0
.end method

.method public getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    return-object v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/CasterCallback;)Z
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/CasterCallback;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onAdvertiseStarted(I)V
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

.method public onAdvertiseStopped(I)V
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

.method public onConnectionFailed(Landroid/os/PersistableBundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_12

    .line 88
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onConnectionFailed(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    .line 91
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

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_12

    .line 77
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onConnectionStateChanged(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    .line 80
    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public onHandoverRequest(ILandroid/os/PersistableBundle;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_12

    .line 66
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p2}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p2

    invoke-virtual {v0, p2, p1, p3}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onHandoverRequest(Lcom/samsung/android/mcf/McfDevice;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    .line 69
    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public onHandoverResult(Landroid/os/PersistableBundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz v0, :cond_12

    .line 99
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onHandoverResult(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    .line 102
    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public onMcfServiceStateChanged(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 110
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/CasterCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/CasterCallback;->onMcfServiceStateChanged(II)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    .line 113
    :catch_16
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onPilotScanResult(Ljava/lang/String;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    return-void
.end method
