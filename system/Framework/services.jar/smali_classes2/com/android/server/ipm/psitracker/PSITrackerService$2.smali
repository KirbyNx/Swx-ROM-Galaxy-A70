.class Lcom/android/server/ipm/psitracker/PSITrackerService$2;
.super Landroid/content/BroadcastReceiver;
.source "PSITrackerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/psitracker/PSITrackerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/psitracker/PSITrackerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/psitracker/PSITrackerService;

    .line 126
    iput-object p1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$2;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSITrackerService;->DEBUG:Z

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date changed recved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PSITrackerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1e
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 133
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 134
    :cond_2e
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSITrackerService;->PSIONOFFSWITCH:Z

    const-string v2, "Time changed"

    if-eqz v1, :cond_3e

    .line 135
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$2;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # invokes: Lcom/android/server/ipm/psitracker/PSITrackerService;->schedulePSI30PeriodRecord(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$100(Lcom/android/server/ipm/psitracker/PSITrackerService;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$2;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # invokes: Lcom/android/server/ipm/psitracker/PSITrackerService;->schedulePSI5PeriodRecord(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$200(Lcom/android/server/ipm/psitracker/PSITrackerService;Ljava/lang/String;)V

    .line 138
    :cond_3e
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$2;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # invokes: Lcom/android/server/ipm/psitracker/PSITrackerService;->scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$300(Lcom/android/server/ipm/psitracker/PSITrackerService;Ljava/lang/String;)V

    .line 140
    :cond_43
    return-void
.end method
