.class Lcom/android/server/job/JobConcurrencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobConcurrencyManager;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobConcurrencyManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobConcurrencyManager;

    .line 125
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7ed8ea7f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1f

    const v2, -0x56ac2893

    if-eq v1, v2, :cond_15

    :cond_14
    goto :goto_29

    :cond_15
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v3

    goto :goto_2a

    :cond_1f
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v4

    goto :goto_2a

    :goto_29
    const/4 v0, -0x1

    :goto_2a
    if-eqz v0, :cond_35

    if-eq v0, v4, :cond_2f

    goto :goto_3b

    .line 133
    :cond_2f
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    # invokes: Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V
    invoke-static {v0, v3}, Lcom/android/server/job/JobConcurrencyManager;->access$000(Lcom/android/server/job/JobConcurrencyManager;Z)V

    goto :goto_3b

    .line 130
    :cond_35
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    # invokes: Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V
    invoke-static {v0, v4}, Lcom/android/server/job/JobConcurrencyManager;->access$000(Lcom/android/server/job/JobConcurrencyManager;Z)V

    .line 131
    nop

    .line 136
    :goto_3b
    return-void
.end method
