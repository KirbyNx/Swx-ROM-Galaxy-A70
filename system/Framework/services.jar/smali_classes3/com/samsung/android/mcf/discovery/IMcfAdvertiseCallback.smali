.class public interface abstract Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;
.super Ljava/lang/Object;
.source "IMcfAdvertiseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;,
        Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onAdvertiseStarted(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAdvertiseStopped(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
