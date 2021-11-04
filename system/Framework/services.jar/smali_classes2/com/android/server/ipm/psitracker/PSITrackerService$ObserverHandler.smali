.class Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;
.super Landroid/os/Handler;
.source "PSITrackerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/psitracker/PSITrackerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverHandler"
.end annotation


# static fields
.field public static final ACTION_AVAILMEM_RECORD_240:I = 0x3

.field public static final ACTION_FOREGROUND_ACTIVITY_CHANGED:I = 0x4

.field public static final ACTION_PSI_RECORD_30:I = 0x2

.field public static final ACTION_PSI_RECORD_5:I = 0x1

.field public static final ACTION_SAVE_APPENTRY_REC:I = 0x6

.field public static final ACTION_SAVE_AVAILABLEMEM_REC:I = 0x7

.field public static final ACTION_SAVE_REC:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/psitracker/PSITrackerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1141
    iput-object p1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    .line 1142
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1143
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    goto :goto_58

    .line 1175
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # getter for: Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;
    invoke-static {v0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$900(Lcom/android/server/ipm/psitracker/PSITrackerService;)Lcom/android/server/ipm/psitracker/PSICollector;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 1176
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # getter for: Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;
    invoke-static {v0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$900(Lcom/android/server/ipm/psitracker/PSITrackerService;)Lcom/android/server/ipm/psitracker/PSICollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSICollector;->saveAvailableMemRecords()V

    goto :goto_58

    .line 1170
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # getter for: Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;
    invoke-static {v0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$900(Lcom/android/server/ipm/psitracker/PSITrackerService;)Lcom/android/server/ipm/psitracker/PSICollector;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 1171
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # getter for: Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;
    invoke-static {v0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$900(Lcom/android/server/ipm/psitracker/PSITrackerService;)Lcom/android/server/ipm/psitracker/PSICollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSICollector;->saveEntryAppRecords()V

    goto :goto_58

    .line 1165
    :pswitch_2a
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # getter for: Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;
    invoke-static {v0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$900(Lcom/android/server/ipm/psitracker/PSITrackerService;)Lcom/android/server/ipm/psitracker/PSICollector;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 1166
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # getter for: Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;
    invoke-static {v0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$900(Lcom/android/server/ipm/psitracker/PSITrackerService;)Lcom/android/server/ipm/psitracker/PSICollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSICollector;->saveRecords()V

    goto :goto_58

    .line 1160
    :pswitch_3c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1161
    .local v0, "pid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1162
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # invokes: Lcom/android/server/ipm/psitracker/PSITrackerService;->processForegroundChanged(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$800(Lcom/android/server/ipm/psitracker/PSITrackerService;II)V

    .line 1163
    goto :goto_58

    .line 1157
    .end local v0    # "pid":I
    .end local v1    # "uid":I
    :pswitch_46
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # invokes: Lcom/android/server/ipm/psitracker/PSITrackerService;->record240MinutesAvailMem()V
    invoke-static {v0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$700(Lcom/android/server/ipm/psitracker/PSITrackerService;)V

    .line 1158
    goto :goto_58

    .line 1154
    :pswitch_4c
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # invokes: Lcom/android/server/ipm/psitracker/PSITrackerService;->record30MinutesPSI()V
    invoke-static {v0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$600(Lcom/android/server/ipm/psitracker/PSITrackerService;)V

    .line 1155
    goto :goto_58

    .line 1151
    :pswitch_52
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;->this$0:Lcom/android/server/ipm/psitracker/PSITrackerService;

    # invokes: Lcom/android/server/ipm/psitracker/PSITrackerService;->record5MinutesPSI()V
    invoke-static {v0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->access$500(Lcom/android/server/ipm/psitracker/PSITrackerService;)V

    .line 1152
    nop

    .line 1182
    :cond_58
    :goto_58
    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4c
        :pswitch_46
        :pswitch_3c
        :pswitch_2a
        :pswitch_18
        :pswitch_6
    .end packed-switch
.end method
