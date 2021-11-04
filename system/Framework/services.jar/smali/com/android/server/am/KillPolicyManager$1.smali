.class Lcom/android/server/am/KillPolicyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/KillPolicyManager;->scheduleDailyUserTrendRandomSample()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field final synthetic val$triggerTime:J


# direct methods
.method constructor <init>(Lcom/android/server/am/KillPolicyManager;J)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/KillPolicyManager;

    .line 466
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    iput-wide p2, p0, Lcom/android/server/am/KillPolicyManager$1;->val$triggerTime:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 469
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 470
    .local v0, "currentTime_Ms":J
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v2, :cond_25

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "report daily random sample time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager$1;->val$triggerTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_25
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    # invokes: Lcom/android/server/am/KillPolicyManager;->getCycleInOneDay(J)Lcom/android/server/am/KillPolicyManager$KpmRaw;
    invoke-static {v2, v0, v1}, Lcom/android/server/am/KillPolicyManager;->access$000(Lcom/android/server/am/KillPolicyManager;J)Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v2

    .line 476
    .local v2, "cycleInfo":Lcom/android/server/am/KillPolicyManager$KpmRaw;
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/KillPolicyManager;->reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 477
    return-void
.end method
