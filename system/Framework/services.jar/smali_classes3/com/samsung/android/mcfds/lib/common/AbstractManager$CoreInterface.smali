.class public interface abstract Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;
.super Ljava/lang/Object;
.source "AbstractManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/common/AbstractManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CoreInterface"
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract obtain(ILandroid/os/Bundle;)Landroid/os/Message;
.end method

.method public abstract sendMessage(Landroid/os/Message;)I
.end method
