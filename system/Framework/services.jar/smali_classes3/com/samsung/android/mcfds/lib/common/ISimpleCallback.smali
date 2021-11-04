.class public interface abstract Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;
.super Ljava/lang/Object;
.source "ISimpleCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub;,
        Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onCallback(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
