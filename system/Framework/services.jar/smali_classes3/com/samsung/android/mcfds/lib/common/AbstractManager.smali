.class public abstract Lcom/samsung/android/mcfds/lib/common/AbstractManager;
.super Ljava/lang/Object;
.source "AbstractManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;
    }
.end annotation


# instance fields
.field protected TAG:Ljava/lang/String;

.field private final mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

.field private mPendingMessageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;Ljava/lang/String;)V
    .registers 5
    .param p1, "coreInterface"    # Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;
    .param p2, "tag"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mPendingMessageQueue:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method protected addPendingMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mPendingMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-interface {v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected isAvailable()Z
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-interface {v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->isAvailable()Z

    move-result v0

    return v0
.end method

.method protected obtain(ILandroid/os/Bundle;)Landroid/os/Message;
    .registers 4
    .param p1, "what"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 46
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected removePendingMessageByCommand(I)V
    .registers 5
    .param p1, "commandId"    # I

    .line 60
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mPendingMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 61
    .local v1, "msg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p1, :cond_1c

    .line 62
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mPendingMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void

    .line 65
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1c
    goto :goto_6

    .line 66
    :cond_1d
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)I
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method protected sendPendingMessages()V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mPendingMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 70
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-interface {v2, v1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    .line 71
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_6

    .line 72
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/AbstractManager;->mPendingMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
