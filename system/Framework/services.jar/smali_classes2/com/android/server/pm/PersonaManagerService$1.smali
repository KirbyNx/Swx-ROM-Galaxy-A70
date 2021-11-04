.class Lcom/android/server/pm/PersonaManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaManagerService;

    .line 2298
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2302
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2303
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mDeviceEmergencyModeLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2304
    :try_start_13
    const-string/jumbo v2, "reason"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2305
    .local v2, "reason":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EMERGENCY_STATE_CHANGED: reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    const/4 v4, 0x2

    if-eq v2, v4, :cond_67

    const/4 v4, 0x3

    if-eq v2, v4, :cond_67

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3b

    goto :goto_67

    .line 2311
    :cond_3b
    const/4 v4, 0x5

    if-ne v2, v4, :cond_5a

    .line 2312
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z
    invoke-static {v4, v3}, Lcom/android/server/pm/PersonaManagerService;->access$4502(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 2314
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v5, 0x77

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2315
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2317
    nop

    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_6d

    .line 2318
    :cond_5a
    const-string v4, "PersonaManagerService"

    const-string v5, "Unhandled emergency state. Default value is false!!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z
    invoke-static {v4, v3}, Lcom/android/server/pm/PersonaManagerService;->access$4502(Lcom/android/server/pm/PersonaManagerService;Z)Z

    goto :goto_6d

    .line 2310
    :cond_67
    :goto_67
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z
    invoke-static {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->access$4502(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 2321
    .end local v2    # "reason":I
    :goto_6d
    monitor-exit v1

    goto :goto_72

    :catchall_6f
    move-exception v2

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_13 .. :try_end_71} :catchall_6f

    throw v2

    .line 2323
    :cond_72
    :goto_72
    return-void
.end method
