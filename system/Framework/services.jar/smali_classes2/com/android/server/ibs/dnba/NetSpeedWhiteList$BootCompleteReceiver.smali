.class Lcom/android/server/ibs/dnba/NetSpeedWhiteList$BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetSpeedWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/dnba/NetSpeedWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootCompleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;)V
    .registers 4

    .line 187
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList$BootCompleteReceiver;->this$0:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    # getter for: Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->access$000(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetSpeedWhiteList"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList$BootCompleteReceiver;->this$0:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->access$100(Lcom/android/server/ibs/dnba/NetSpeedWhiteList;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    :cond_31
    return-void
.end method
