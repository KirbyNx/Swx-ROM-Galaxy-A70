.class Lcom/android/server/SamsungAlarmManagerService$SamsungAlarmHandler;
.super Landroid/os/Handler;
.source "SamsungAlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SamsungAlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungAlarmHandler"
.end annotation


# static fields
.field public static final SEND_ALARM_CLOCK_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/SamsungAlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SamsungAlarmManagerService;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/android/server/SamsungAlarmManagerService$SamsungAlarmHandler;->this$0:Lcom/android/server/SamsungAlarmManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 269
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 272
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_14

    .line 274
    :cond_6
    iget-object v0, p0, Lcom/android/server/SamsungAlarmManagerService$SamsungAlarmHandler;->this$0:Lcom/android/server/SamsungAlarmManagerService;

    iget-object v0, v0, Lcom/android/server/SamsungAlarmManagerService;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/SamsungAlarmManagerService;->ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/SamsungAlarmManagerService;->access$000()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 275
    nop

    .line 281
    :goto_14
    return-void
.end method
