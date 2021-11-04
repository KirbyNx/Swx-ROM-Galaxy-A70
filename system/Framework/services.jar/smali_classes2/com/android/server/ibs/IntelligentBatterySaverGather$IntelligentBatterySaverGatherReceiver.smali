.class Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IntelligentBatterySaverGather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverGather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntelligentBatterySaverGatherReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;


# direct methods
.method private constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;Lcom/android/server/ibs/IntelligentBatterySaverGather$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/ibs/IntelligentBatterySaverGather;
    .param p2, "x1"    # Lcom/android/server/ibs/IntelligentBatterySaverGather$1;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, -0x5bb23923

    if-eq v1, v4, :cond_10

    :cond_f
    goto :goto_1a

    :cond_10
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto :goto_1b

    :goto_1a
    move v0, v2

    :goto_1b
    if-eqz v0, :cond_1e

    goto :goto_57

    .line 81
    :cond_1e
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    monitor-enter v0

    .line 82
    :try_start_21
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, "plugged":I
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;
    invoke-static {v4}, Lcom/android/server/ibs/IntelligentBatterySaverGather;->access$100(Lcom/android/server/ibs/IntelligentBatterySaverGather;)Lcom/android/server/ibs/IntelligentBatterySaverService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    if-eqz v1, :cond_34

    const/4 v5, 0x1

    goto :goto_35

    :cond_34
    move v5, v3

    :goto_35
    invoke-virtual {v4, v5}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateChargingLocked(Z)V

    .line 85
    const-string/jumbo v4, "level"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 86
    .local v4, "level":I
    const-string/jumbo v5, "scale"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 87
    .local v3, "scale":I
    if-eq v4, v2, :cond_55

    if-eqz v3, :cond_55

    .line 88
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;
    invoke-static {v2}, Lcom/android/server/ibs/IntelligentBatterySaverGather;->access$100(Lcom/android/server/ibs/IntelligentBatterySaverGather;)Lcom/android/server/ibs/IntelligentBatterySaverService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateBatteryLevelChanged(II)V

    .line 90
    .end local v1    # "plugged":I
    .end local v3    # "scale":I
    .end local v4    # "level":I
    :cond_55
    monitor-exit v0

    .line 91
    nop

    .line 95
    :goto_57
    return-void

    .line 90
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_21 .. :try_end_5a} :catchall_58

    throw v1
.end method
