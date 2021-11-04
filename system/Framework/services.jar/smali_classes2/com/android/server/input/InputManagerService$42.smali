.class Lcom/android/server/input/InputManagerService$42;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .line 6015
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$42;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 6018
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6019
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 6020
    const/4 v1, 0x0

    const-string/jumbo v2, "kids_home_mode"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 6021
    .local v1, "isKidsMode":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KidsMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$42;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$5700(Lcom/android/server/input/InputManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6022
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$42;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$5700(Lcom/android/server/input/InputManagerService;)Z

    move-result v2

    if-eq v2, v1, :cond_4e

    .line 6023
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$42;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$2800(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetKidsMode(JZ)V
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->access$5800(JZ)V

    .line 6024
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$42;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z
    invoke-static {v2, v1}, Lcom/android/server/input/InputManagerService;->access$5702(Lcom/android/server/input/InputManagerService;Z)Z

    .line 6027
    .end local v1    # "isKidsMode":Z
    :cond_4e
    return-void
.end method
