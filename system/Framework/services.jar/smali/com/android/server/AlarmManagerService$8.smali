.class Lcom/android/server/AlarmManagerService$8;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .line 5588
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$8;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 5591
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_29

    .line 5605
    :cond_e
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$8;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/AlarmManagerService;->restoreDisallowedAlarmList(Z)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$4300(Lcom/android/server/AlarmManagerService;Z)V

    goto :goto_29

    .line 5601
    :cond_15
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$8;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->restoreDisallowedAlarmList(Z)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$4300(Lcom/android/server/AlarmManagerService;Z)V

    .line 5602
    goto :goto_29

    .line 5597
    :cond_1b
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$8;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x7

    # invokes: Lcom/android/server/AlarmManagerService;->removeDisallowedAlarmList(I)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$4200(Lcom/android/server/AlarmManagerService;I)V

    .line 5598
    goto :goto_29

    .line 5593
    :cond_22
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$8;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/AlarmManagerService;->removeDisallowedAlarmList(I)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$4200(Lcom/android/server/AlarmManagerService;I)V

    .line 5594
    nop

    .line 5609
    :goto_29
    return-void
.end method
