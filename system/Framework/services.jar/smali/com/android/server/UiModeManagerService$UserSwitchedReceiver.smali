.class final Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 2004
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p2, "x1"    # Lcom/android/server/UiModeManagerService$1;

    .line 2004
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/UiModeManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2007
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2008
    :try_start_5
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2011
    .local v1, "currentId":I
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    # invokes: Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)Z
    invoke-static {v3, p1, v4, v1}, Lcom/android/server/UiModeManagerService;->access$2200(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2012
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3, v2, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 2016
    :cond_1d
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->cancelCustomAlarm()V
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2800(Lcom/android/server/UiModeManagerService;)V

    .line 2017
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3f

    .line 2018
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$5100(Lcom/android/server/UiModeManagerService;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 2019
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->registerTimeChangeEvent()V
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$5200(Lcom/android/server/UiModeManagerService;)V

    .line 2020
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z
    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->access$5102(Lcom/android/server/UiModeManagerService;Z)Z

    goto :goto_63

    .line 2023
    :cond_3f
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$5100(Lcom/android/server/UiModeManagerService;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 2024
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->unregisterTimeChangeEvent()V
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$5300(Lcom/android/server/UiModeManagerService;)V

    .line 2025
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z
    invoke-static {v3, v2}, Lcom/android/server/UiModeManagerService;->access$5102(Lcom/android/server/UiModeManagerService;Z)Z

    .line 2027
    :cond_51
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mIsScreenOnOffForCustomRegistered:Z
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$5400(Lcom/android/server/UiModeManagerService;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2028
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$1600(Lcom/android/server/UiModeManagerService;)V

    .line 2029
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mIsScreenOnOffForCustomRegistered:Z
    invoke-static {v3, v2}, Lcom/android/server/UiModeManagerService;->access$5402(Lcom/android/server/UiModeManagerService;Z)Z

    .line 2033
    .end local v1    # "currentId":I
    :cond_63
    :goto_63
    monitor-exit v0

    .line 2034
    return-void

    .line 2033
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_5 .. :try_end_67} :catchall_65

    throw v1
.end method
