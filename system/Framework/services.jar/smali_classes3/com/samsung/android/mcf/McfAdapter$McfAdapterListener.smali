.class public interface abstract Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;
.super Ljava/lang/Object;
.source "McfAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/McfAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "McfAdapterListener"
.end annotation


# virtual methods
.method public abstract onServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V
.end method

.method public abstract onServiceDisconnected()V
.end method

.method public abstract onServiceRemoteException()V
.end method
