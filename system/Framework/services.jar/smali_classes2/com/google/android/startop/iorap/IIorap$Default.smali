.class public Lcom/google/android/startop/iorap/IIorap$Default;
.super Ljava/lang/Object;
.source "IIorap.java"

# interfaces
.implements Lcom/google/android/startop/iorap/IIorap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IIorap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppIntentEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppIntentEvent;)V
    .registers 3
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/AppIntentEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public onAppLaunchEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/AppLaunchEvent;)V
    .registers 3
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/AppLaunchEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public onDexOptEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/DexOptEvent;)V
    .registers 3
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/DexOptEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public onJobScheduledEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/JobScheduledEvent;)V
    .registers 3
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/JobScheduledEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public onPackageEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/PackageEvent;)V
    .registers 3
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/PackageEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public onSystemServiceEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceEvent;)V
    .registers 3
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/SystemServiceEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public onSystemServiceUserEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/SystemServiceUserEvent;)V
    .registers 3
    .param p1, "request"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "event"    # Lcom/google/android/startop/iorap/SystemServiceUserEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/startop/iorap/ITaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method
