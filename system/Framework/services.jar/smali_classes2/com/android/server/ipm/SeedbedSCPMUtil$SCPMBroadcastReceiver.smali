.class Lcom/android/server/ipm/SeedbedSCPMUtil$SCPMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SeedbedSCPMUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/SeedbedSCPMUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCPMBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/SeedbedSCPMUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/SeedbedSCPMUtil;)V
    .registers 4

    .line 78
    iput-object p1, p0, Lcom/android/server/ipm/SeedbedSCPMUtil$SCPMBroadcastReceiver;->this$0:Lcom/android/server/ipm/SeedbedSCPMUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "sec.app.policy.UPDATE.seedbednet"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    # getter for: Lcom/android/server/ipm/SeedbedSCPMUtil;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/ipm/SeedbedSCPMUtil;->access$000(Lcom/android/server/ipm/SeedbedSCPMUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sec.app.policy.UPDATE.seedbednet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x63

    const-string v2, "ACTION***"

    const-string/jumbo v3, "seedbed-SeedbedSCPMUtil"

    if-eqz v0, :cond_34

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedSCPMUtil$SCPMBroadcastReceiver;->this$0:Lcom/android/server/ipm/SeedbedSCPMUtil;

    # getter for: Lcom/android/server/ipm/SeedbedSCPMUtil;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ipm/SeedbedSCPMUtil;->access$100(Lcom/android/server/ipm/SeedbedSCPMUtil;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5f

    .line 90
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedSCPMUtil$SCPMBroadcastReceiver;->this$0:Lcom/android/server/ipm/SeedbedSCPMUtil;

    # getter for: Lcom/android/server/ipm/SeedbedSCPMUtil;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ipm/SeedbedSCPMUtil;->access$100(Lcom/android/server/ipm/SeedbedSCPMUtil;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    :cond_5f
    :goto_5f
    return-void
.end method
