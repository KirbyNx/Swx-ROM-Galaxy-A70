.class Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IntelligentBatterySaverFastDrainPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntelligentBatterySaverFastDrainReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 495
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 498
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1e1f7f95

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2e

    const v2, 0x741706da

    if-eq v1, v2, :cond_24

    const v2, 0x79950caa

    if-eq v1, v2, :cond_1a

    :cond_19
    goto :goto_38

    :cond_1a
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v3

    goto :goto_39

    :cond_24
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v4

    goto :goto_39

    :cond_2e
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    goto :goto_39

    :goto_38
    const/4 v0, -0x1

    :goto_39
    if-eqz v0, :cond_46

    if-eq v0, v4, :cond_40

    if-eq v0, v3, :cond_40

    goto :goto_5b

    .line 505
    :cond_40
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->sendEixtFastDrainRestrictionMessage()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$1400(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 506
    goto :goto_5b

    .line 500
    :cond_46
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$1300(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->TimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;
    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$1200(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 501
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateActivated()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$000(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 502
    nop

    .line 510
    :goto_5b
    return-void
.end method
