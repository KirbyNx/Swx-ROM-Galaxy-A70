.class public interface abstract Lsamsung/uwb/IUwbCallback;
.super Ljava/lang/Object;
.source "IUwbCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsamsung/uwb/IUwbCallback$Stub;,
        Lsamsung/uwb/IUwbCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onRangingDataReceived(Lsamsung/uwb/RangingData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRframeDataReceived(Lsamsung/uwb/RframeData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSessionStatusChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
