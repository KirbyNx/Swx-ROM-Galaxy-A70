.class Lcom/android/server/net/MdoCore$4;
.super Landroid/content/BroadcastReceiver;
.source "MdoCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MdoCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MdoCore;


# direct methods
.method constructor <init>(Lcom/android/server/net/MdoCore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/MdoCore;

    .line 502
    iput-object p1, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 505
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 506
    .local v0, "removedUser":I
    if-ne v0, v1, :cond_b

    return-void

    .line 508
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_USER_REMOVED for user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 509
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v1, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    iget-object v3, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;
    invoke-static {v3}, Lcom/android/server/net/MdoCore;->access$400(Lcom/android/server/net/MdoCore;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 511
    iget-object v3, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;
    invoke-static {v3}, Lcom/android/server/net/MdoCore;->access$400(Lcom/android/server/net/MdoCore;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 512
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 513
    .local v4, "userId":I
    if-ne v0, v4, :cond_48

    .line 514
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .end local v3    # "uid":I
    .end local v4    # "userId":I
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 518
    .end local v2    # "i":I
    :cond_4b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 519
    .restart local v3    # "uid":I
    iget-object v4, p0, Lcom/android/server/net/MdoCore$4;->this$0:Lcom/android/server/net/MdoCore;

    # invokes: Lcom/android/server/net/MdoCore;->removeUid(I)V
    invoke-static {v4, v3}, Lcom/android/server/net/MdoCore;->access$300(Lcom/android/server/net/MdoCore;I)V

    .line 520
    .end local v3    # "uid":I
    goto :goto_4f

    .line 521
    :cond_65
    return-void
.end method
