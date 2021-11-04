.class public interface abstract Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
.super Ljava/lang/Object;
.source "IMcfDeviceSyncService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;,
        Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Default;
    }
.end annotation


# virtual methods
.method public abstract internalCommand(Landroid/os/Message;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
