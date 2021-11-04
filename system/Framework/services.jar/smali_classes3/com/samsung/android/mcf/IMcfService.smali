.class public interface abstract Lcom/samsung/android/mcf/IMcfService;
.super Ljava/lang/Object;
.source "IMcfService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/IMcfService$Stub;,
        Lcom/samsung/android/mcf/IMcfService$Default;
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

.method public abstract internalStringCommand(Landroid/os/Message;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerInsyncEventListenerDelegator(Lcom/samsung/android/net/ISemInsyncEventListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterInsyncEventListenerDelegator(Lcom/samsung/android/net/ISemInsyncEventListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
