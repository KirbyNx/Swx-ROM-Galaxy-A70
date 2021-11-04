.class public interface abstract Lsamsung/uwb/IRangingCallback;
.super Ljava/lang/Object;
.source "IRangingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsamsung/uwb/IRangingCallback$Stub;,
        Lsamsung/uwb/IRangingCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onRangingDataReceived(Lsamsung/uwb/RangingMeasure;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRangingStatusReceived(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
