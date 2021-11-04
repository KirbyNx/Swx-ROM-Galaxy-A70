.class public interface abstract Lcom/samsung/android/net/ISemInsyncEventListener;
.super Ljava/lang/Object;
.source "ISemInsyncEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/net/ISemInsyncEventListener$Stub;,
        Lcom/samsung/android/net/ISemInsyncEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onConfirmed(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTapEvent()Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
