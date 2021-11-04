.class Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeedbedLaunchReceiver"
.end annotation


# instance fields
.field public mSeedbedPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 11917
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11918
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->mSeedbedPkgs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public isSeedBedPkg(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 11922
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->mSeedbedPkgs:Ljava/util/ArrayList;

    monitor-enter v0

    .line 11923
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->mSeedbedPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 11924
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->mSeedbedPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11925
    .local v2, "realApp":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 11926
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 11928
    .end local v2    # "realApp":Ljava/lang/String;
    :cond_26
    goto :goto_11

    .line 11930
    :cond_27
    monitor-exit v0

    .line 11931
    const/4 v0, 0x0

    return v0

    .line 11930
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 11992
    if-eqz p2, :cond_3c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3c

    .line 11996
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.DO_SEEDBED_LAUNCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 11997
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 11998
    .local v0, "mExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_3b

    .line 11999
    const-string/jumbo v1, "preload_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12000
    .local v1, "preloadType":Ljava/lang/String;
    const-string/jumbo v2, "seedbed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 12001
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->preloadSeedbedApp(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_3b

    .line 12002
    :cond_2f
    const-string/jumbo v2, "listout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 12003
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->seedbedListout(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 12007
    .end local v0    # "mExtras":Landroid/os/Bundle;
    .end local v1    # "preloadType":Ljava/lang/String;
    :cond_3b
    :goto_3b
    return-void

    .line 11993
    :cond_3c
    :goto_3c
    return-void
.end method

.method public preloadSeedbedApp(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 11970
    if-eqz p2, :cond_52

    .line 11972
    const-string/jumbo v0, "package_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11973
    .local v0, "packageNameForMlLaunch":Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "preload_userid"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 11974
    .local v7, "userId":I
    const-string/jumbo v1, "preload_type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11977
    .local v1, "preloadType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->isProcessExistInSystem(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    invoke-static {v2, v0, v7}, Lcom/android/server/am/ActivityManagerService;->access$1600(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-nez v2, :cond_52

    .line 11978
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMlReceiver:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMlReceiver:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->isMlBoosterPkg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 11979
    const-string v1, "booster"

    move-object v8, v1

    goto :goto_44

    .line 11982
    :cond_34
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSeedbedReceiver:Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;

    monitor-enter v2

    .line 11983
    :try_start_39
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mSeedbedReceiver:Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->mSeedbedPkgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11984
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_4f

    move-object v8, v1

    .line 11986
    .end local v1    # "preloadType":Ljava/lang/String;
    .local v8, "preloadType":Ljava/lang/String;
    :goto_44
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v8

    move v5, v7

    # invokes: Lcom/android/server/am/ActivityManagerService;->launchSeedbedProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->access$1700(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_52

    .line 11984
    .end local v8    # "preloadType":Ljava/lang/String;
    .restart local v1    # "preloadType":Ljava/lang/String;
    :catchall_4f
    move-exception v3

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v3

    .line 11989
    .end local v0    # "packageNameForMlLaunch":Ljava/lang/String;
    .end local v1    # "preloadType":Ljava/lang/String;
    .end local v7    # "userId":I
    :cond_52
    :goto_52
    return-void
.end method

.method public seedbedListout(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 11935
    if-eqz p2, :cond_c1

    .line 11937
    const-string/jumbo v0, "package_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11938
    .local v0, "packageNameForMlLaunch":Ljava/lang/String;
    const-string/jumbo v1, "preload_userid"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 11939
    .local v1, "userId":I
    const-string/jumbo v3, "listout_type"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 11940
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSeedbedReceiver:Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;

    monitor-enter v4

    .line 11941
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->mSeedbedPkgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_26
    if-ltz v5, :cond_3f

    .line 11942
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->mSeedbedPkgs:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 11943
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->mSeedbedPkgs:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11944
    goto :goto_3f

    .line 11941
    :cond_3c
    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    .line 11947
    .end local v5    # "i":I
    :cond_3f
    :goto_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_1e .. :try_end_40} :catchall_be

    .line 11948
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "SDcheck"

    # invokes: Lcom/android/server/am/ActivityManagerService;->findProcessLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;
    invoke-static {v4, v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->access$1500(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 11949
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-ne v3, v6, :cond_85

    .line 11950
    if-eqz v4, :cond_c1

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v5, :cond_c1

    .line 11951
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c1

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, v1, :cond_c1

    iget-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    if-eqz v5, :cond_c1

    .line 11952
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SD] seedbedListout pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " out type=ACTION_LISTOUT_NORMAL_LAUNCH"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11953
    iput-boolean v2, v4, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    .line 11954
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowProcessController;->setSeedbed(Z)V

    goto :goto_c1

    .line 11957
    :cond_85
    const/4 v5, 0x2

    if-ne v3, v5, :cond_c1

    .line 11958
    if-eqz v4, :cond_c1

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v5, :cond_c1

    .line 11959
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c1

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, v1, :cond_c1

    iget-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    if-eqz v5, :cond_c1

    .line 11960
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SD] seedbedListout pkg:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " out type=ACTION_LISTOUT_SYSTEM_RECYCLE"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ActivityManager"

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11961
    iput-boolean v2, v4, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    .line 11962
    iput-boolean v6, v4, Lcom/android/server/am/ProcessRecord;->isSDListout:Z

    goto :goto_c1

    .line 11947
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_be
    move-exception v2

    :try_start_bf
    monitor-exit v4
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v2

    .line 11967
    .end local v0    # "packageNameForMlLaunch":Ljava/lang/String;
    .end local v1    # "userId":I
    .end local v3    # "type":I
    :cond_c1
    :goto_c1
    return-void
.end method
