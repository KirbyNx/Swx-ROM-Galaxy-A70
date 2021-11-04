.class Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MlLaunchReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver$MlHandler;
    }
.end annotation


# instance fields
.field private final ML_ACTION_MAKEAPPLICATION:I

.field private final ML_ACTION_MAKEAPPLICATION_REPLY:I

.field private booster_done:Z

.field private isWhitelistCleared:Z

.field public last_booster:J

.field public mBoosterPkgs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMlHandler:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver$MlHandler;

.field public mNapPkgs:Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "loop"    # Landroid/os/HandlerThread;

    .line 12021
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12012
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->ML_ACTION_MAKEAPPLICATION:I

    .line 12013
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->ML_ACTION_MAKEAPPLICATION_REPLY:I

    .line 12014
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->isWhitelistCleared:Z

    .line 12016
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mBoosterPkgs:Landroid/util/ArrayMap;

    .line 12017
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->booster_done:Z

    .line 12022
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver$MlHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver$MlHandler;-><init>(Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mMlHandler:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver$MlHandler;

    .line 12023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->last_booster:J

    .line 12024
    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;)Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver$MlHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    .line 12011
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mMlHandler:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver$MlHandler;

    return-object v0
.end method


# virtual methods
.method public isMlBoosterPkg(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 12063
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mBoosterPkgs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 12064
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mBoosterPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    .line 12065
    .local v1, "r":Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
    if-eqz v1, :cond_1a

    iget-object v2, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    const-string v3, "booster"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 12066
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 12068
    :cond_1a
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 12069
    .end local v1    # "r":Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public isMlNapPkg(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 12073
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mBoosterPkgs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 12074
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mNapPkgs:Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mNapPkgs:Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    iget-object v1, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 12075
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 12076
    :cond_14
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 12077
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 12082
    if-eqz p2, :cond_195

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_195

    .line 12086
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.DO_ML_LAUNCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xbb8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10b

    .line 12087
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 12088
    .local v0, "mExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_193

    .line 12089
    const-string/jumbo v4, "preload_type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12091
    .local v4, "type":Ljava/lang/String;
    if-eqz v4, :cond_42

    const-string v5, "booster_complete"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 12092
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->booster_done:Z

    .line 12093
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 12094
    .local v2, "msg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->what:I

    .line 12095
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 12096
    return-void

    .line 12099
    .end local v2    # "msg":Landroid/os/Message;
    :cond_42
    const-string/jumbo v1, "package_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    .line 12100
    .local v1, "preloadPkg":Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
    if-nez v1, :cond_55

    .line 12101
    const-string v2, "ActivityManager"

    const-string v3, "[ML] This Intent don\'t have the pkg "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12102
    return-void

    .line 12105
    :cond_55
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mBoosterPkgs:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 12106
    :try_start_58
    iget-object v5, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    const-string/jumbo v6, "ml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mNapPkgs:Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    .line 12107
    :cond_65
    iget-object v5, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    const-string v6, "booster"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 12108
    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->booster_done:Z

    if-eqz v5, :cond_7a

    .line 12109
    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->booster_done:Z

    .line 12110
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mBoosterPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 12112
    :cond_7a
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mBoosterPkgs:Landroid/util/ArrayMap;

    iget-object v6, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12114
    :cond_81
    monitor-exit v2
    :try_end_82
    .catchall {:try_start_58 .. :try_end_82} :catchall_108

    .line 12117
    iget-object v2, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    const-string/jumbo v5, "ml"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->packageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->userId:I

    # invokes: Lcom/android/server/am/ActivityManagerService;->isProcessExistInSystem(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    invoke-static {v2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->access$1600(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-nez v2, :cond_a7

    .line 12118
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->userId:I

    iget-boolean v10, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->pageBoost:Z

    move-object v6, p1

    # invokes: Lcom/android/server/am/ActivityManagerService;->launchSeedbedProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->access$1700(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 12121
    :cond_a7
    iget-object v2, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->preloadType:Ljava/lang/String;

    const-string v5, "booster"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_193

    .line 12123
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->isWhitelistCleared:Z

    if-eqz v2, :cond_193

    .line 12124
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v2

    if-eqz v2, :cond_104

    .line 12125
    const-string v2, "ActivityManager"

    const-string v5, "WHITELIST clear in bootupbooster"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12126
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/DynamicHiddenApp;->removeWhitelistByBUB()V

    .line 12127
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_d0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 12128
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v5, v5, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 12129
    .local v5, "N":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_df
    if-ltz v6, :cond_f9

    .line 12130
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v7, v7, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 12131
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;
    invoke-static {v8}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/am/DynamicHiddenApp;->resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V

    .line 12129
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v6, v6, -0x1

    goto :goto_df

    .line 12133
    .end local v5    # "N":I
    .end local v6    # "i":I
    :cond_f9
    monitor-exit v2
    :try_end_fa
    .catchall {:try_start_d0 .. :try_end_fa} :catchall_fe

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_104

    :catchall_fe
    move-exception v3

    :try_start_ff
    monitor-exit v2
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 12135
    :cond_104
    :goto_104
    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->isWhitelistCleared:Z

    goto/16 :goto_193

    .line 12114
    :catchall_108
    move-exception v3

    :try_start_109
    monitor-exit v2
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    throw v3

    .line 12139
    .end local v0    # "mExtras":Landroid/os/Bundle;
    .end local v1    # "preloadPkg":Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
    .end local v4    # "type":Ljava/lang/String;
    :cond_10b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.samsung.DO_ML_LIST_CLEAR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 12140
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 12141
    .restart local v0    # "mExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_177

    .line 12142
    const-string/jumbo v4, "preload_listclear_type"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 12143
    .local v4, "clearType":Z
    if-eqz v4, :cond_177

    .line 12144
    const-string v5, "ActivityManager"

    const-string v6, "WHITELIST set in bootupbooster"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12145
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->isWhitelistCleared:Z

    .line 12146
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v2

    if-eqz v2, :cond_177

    .line 12147
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/am/DynamicHiddenApp;->addWhitelistList(Z)V

    .line 12148
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_143
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 12149
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 12150
    .local v3, "N":I
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_152
    if-ltz v5, :cond_16c

    .line 12151
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v6, v6, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 12152
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;
    invoke-static {v7}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/am/DynamicHiddenApp;->resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V

    .line 12150
    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v5, v5, -0x1

    goto :goto_152

    .line 12154
    .end local v3    # "N":I
    .end local v5    # "i":I
    :cond_16c
    monitor-exit v2
    :try_end_16d
    .catchall {:try_start_143 .. :try_end_16d} :catchall_171

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_177

    :catchall_171
    move-exception v1

    :try_start_172
    monitor-exit v2
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 12159
    .end local v4    # "clearType":Z
    :cond_177
    :goto_177
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mBoosterPkgs:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 12160
    :try_start_17a
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->mBoosterPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 12162
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 12163
    .local v3, "msg":Landroid/os/Message;
    iput v1, v3, Landroid/os/Message;->what:I

    .line 12164
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 12165
    nop

    .end local v3    # "msg":Landroid/os/Message;
    monitor-exit v2

    goto :goto_194

    :catchall_190
    move-exception v1

    monitor-exit v2
    :try_end_192
    .catchall {:try_start_17a .. :try_end_192} :catchall_190

    throw v1

    .line 12139
    .end local v0    # "mExtras":Landroid/os/Bundle;
    :cond_193
    :goto_193
    nop

    .line 12167
    :goto_194
    return-void

    .line 12083
    :cond_195
    :goto_195
    return-void
.end method
