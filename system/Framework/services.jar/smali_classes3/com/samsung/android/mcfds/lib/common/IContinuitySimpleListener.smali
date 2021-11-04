.class public interface abstract Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;
.super Ljava/lang/Object;
.source "IContinuitySimpleListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub;,
        Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onNotify(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
