.class Lcom/android/server/ipm/psitracker/PSITrackerService$1;
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

    .line 102
    iput-object p1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$1;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSITrackerService;->DEBUG:Z

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media_Scan finished recved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PSITrackerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1e
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSITrackerService;->mFirstTriggeredAfterBooting:Z

    if-nez v1, :cond_53

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 109
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ipm/psitracker/PSITrackerService;->mFirstTriggeredAfterBooting:Z

    .line 111
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSITrackerService;->PSIONOFFSWITCH:Z

    const-string v2, "Media scan finished"

    if-eqz v1, :cond_3d

    .line 112
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$1;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # invokes: Lcom/android/server/ipm/psitracker/PSITrackerService;->schedulePSI30PeriodRecord(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$100(Lcom/android/server/ipm/psitracker/PSITrackerService;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$1;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # invokes: Lcom/android/server/ipm/psitracker/PSITrackerService;->schedulePSI5PeriodRecord(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$200(Lcom/android/server/ipm/psitracker/PSITrackerService;Ljava/lang/String;)V

    .line 115
    :cond_3d
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$1;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # invokes: Lcom/android/server/ipm/psitracker/PSITrackerService;->scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$300(Lcom/android/server/ipm/psitracker/PSITrackerService;Ljava/lang/String;)V

    .line 117
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 118
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 119
    iget-object v2, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$1;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # getter for: Lcom/android/server/ipm/psitracker/PSITrackerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$400(Lcom/android/server/ipm/psitracker/PSITrackerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    .end local v1    # "msg":Landroid/os/Message;
    :cond_53
    return-void
.end method
