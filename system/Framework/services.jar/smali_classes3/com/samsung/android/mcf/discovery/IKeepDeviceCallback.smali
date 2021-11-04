.class public interface abstract Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;
.super Ljava/lang/Object;
.source "IKeepDeviceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;,
        Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onKeepDeviceStateCallback(Landroid/os/PersistableBundle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
