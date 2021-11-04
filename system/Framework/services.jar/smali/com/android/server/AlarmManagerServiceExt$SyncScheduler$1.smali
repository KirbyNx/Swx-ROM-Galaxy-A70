.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 649
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 652
    const-string/jumbo v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 653
    .local v0, "plugged":I
    const/4 v1, 0x1

    const-string v2, "AlarmManagerEXT"

    if-ne v0, v1, :cond_1f

    .line 654
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z
    invoke-static {v3, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    .line 655
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v1

    if-eqz v1, :cond_69

    const-string/jumbo v1, "on AC power"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 656
    :cond_1f
    const/4 v3, 0x2

    if-ne v0, v3, :cond_34

    .line 657
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string/jumbo v3, "on USB power"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_2e
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z
    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    goto :goto_69

    .line 659
    :cond_34
    const/4 v1, 0x0

    if-nez v0, :cond_49

    .line 660
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v3

    if-eqz v3, :cond_43

    const-string/jumbo v3, "on Battery power"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_43
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z
    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    goto :goto_69

    .line 663
    :cond_49
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v3

    if-eqz v3, :cond_64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no Extra info, plugged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_64
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z
    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    .line 666
    :cond_69
    :goto_69
    return-void
.end method
