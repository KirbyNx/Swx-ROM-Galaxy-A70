.class public interface abstract Lcom/android/internal/net/INetdTetherEventListener;
.super Ljava/lang/Object;
.source "INetdTetherEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/INetdTetherEventListener$Stub;,
        Lcom/android/internal/net/INetdTetherEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onTetherStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTetherStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
