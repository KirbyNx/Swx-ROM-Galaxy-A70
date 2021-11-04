.class public interface abstract Lcom/samsung/android/mcf/ble/IBleAdapterCallback;
.super Ljava/lang/Object;
.source "IBleAdapterCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub;,
        Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onMcfServiceStateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
