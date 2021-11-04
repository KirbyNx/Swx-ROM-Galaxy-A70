.class public Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;
.super Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;
.source "KeepDeviceCallbackWrapper.java"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    return-void
.end method


# virtual methods
.method public isMyCallback(Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onKeepDeviceStateCallback(Landroid/os/PersistableBundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;->onKeepDeviceStateCallback(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    .line 28
    :catch_a
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method
