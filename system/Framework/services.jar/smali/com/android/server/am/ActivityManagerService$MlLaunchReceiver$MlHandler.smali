.class Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver$MlHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MlHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 12027
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver$MlHandler;->this$1:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    .line 12028
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12029
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 12033
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "ActivityManager"

    const/16 v2, 0xa

    if-ne v0, v2, :cond_32

    .line 12034
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 12036
    .local v0, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_2f

    .line 12037
    const/4 v2, 0x0

    :try_start_f
    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    .line 12038
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->setSeedbed(Z)V

    .line 12039
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->isMLException:Z

    .line 12040
    const-string v2, "[SD] seedbed process need to change into empty process"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12041
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->makeApplication()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_26

    goto :goto_2f

    .line 12043
    :catch_26
    move-exception v2

    .line 12044
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 12045
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2f
    :goto_2f
    nop

    .line 12046
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_30
    goto/16 :goto_c0

    .line 12047
    :cond_32
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_c0

    .line 12048
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver$MlHandler;->this$1:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 12049
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_c0

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    if-eqz v2, :cond_c0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver$MlHandler;->this$1:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->isMlBoosterPkg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c0

    .line 12050
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12051
    .local v2, "pkgsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12052
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.DO_ML_LAUNCH_REPLY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12053
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "normallaunch"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 12054
    const-string/jumbo v5, "preload_type"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12055
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver$MlHandler;->this$1:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 12056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SD] system seedbed listen restart self name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " adj:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12059
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "pkgsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_c0
    :goto_c0
    return-void
.end method
