.class public Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;
.super Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;
.source "McfMessageCallbackWrapper.java"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    return-void
.end method


# virtual methods
.method public getMyCallback()Lcom/samsung/android/mcf/messaging/McfMessageCallback;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    return-object v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onMessageDeviceStatus(Landroid/os/PersistableBundle;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/mcf/messaging/McfMessageCallback;->onMessageDeviceStatus(Lcom/samsung/android/mcf/McfDevice;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    .line 51
    :catch_a
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method

.method public onMessageReceived(Landroid/os/PersistableBundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/messaging/McfMessageCallback;->onMessageReceived(Lcom/samsung/android/mcf/McfDevice;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    .line 42
    :catch_a
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method

.method public onMessageResult(Landroid/os/PersistableBundle;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/messaging/McfMessage;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/messaging/McfMessage;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/mcf/messaging/McfMessageCallback;->onMessageResult(Lcom/samsung/android/mcf/messaging/McfMessage;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    .line 33
    :catch_a
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method
