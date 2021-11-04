.class Lcom/android/server/net/MdoCore$3;
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

    .line 490
    iput-object p1, p0, Lcom/android/server/net/MdoCore$3;->this$0:Lcom/android/server/net/MdoCore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 493
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 494
    .local v0, "uid":I
    if-ne v0, v1, :cond_a

    return-void

    .line 497
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UID_REMOVED for uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/android/server/net/MdoCore$3;->this$0:Lcom/android/server/net/MdoCore;

    # invokes: Lcom/android/server/net/MdoCore;->removeUid(I)V
    invoke-static {v1, v0}, Lcom/android/server/net/MdoCore;->access$300(Lcom/android/server/net/MdoCore;I)V

    .line 499
    return-void
.end method
