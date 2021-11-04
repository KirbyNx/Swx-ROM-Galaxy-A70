.class public Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;
.super Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;
.source "McfAdvertiseCallbackWrapper.java"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    return-void
.end method


# virtual methods
.method public isMyCallback(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)Z
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onAdvertiseStarted(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;->onAdvertiseStarted(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    .line 26
    :catch_6
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method

.method public onAdvertiseStopped(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;->onAdvertiseStopped(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    .line 35
    :catch_6
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method
