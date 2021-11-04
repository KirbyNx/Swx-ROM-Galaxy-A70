.class Lcom/android/server/ipm/psitracker/PSITrackerService$5;
.super Ljava/lang/Object;
.source "PSITrackerService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


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

    .line 186
    iput-object p1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$5;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$5;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    const-string v1, "240 Alarm fired"

    # invokes: Lcom/android/server/ipm/psitracker/PSITrackerService;->scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$300(Lcom/android/server/ipm/psitracker/PSITrackerService;Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 193
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 194
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$5;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # getter for: Lcom/android/server/ipm/psitracker/PSITrackerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$400(Lcom/android/server/ipm/psitracker/PSITrackerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    return-void
.end method
