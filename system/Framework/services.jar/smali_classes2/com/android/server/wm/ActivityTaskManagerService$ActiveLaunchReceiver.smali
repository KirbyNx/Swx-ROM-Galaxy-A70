.class Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveLaunchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1003
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1006
    move-object/from16 v1, p0

    const-string v2, ", isAutoRunBlocked : "

    const-string v3, ", isPkgStopped : "

    const-string v4, "Checking for the Active launch isPkgEverLaunched :"

    if-eqz p2, :cond_168

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move-object/from16 v4, p1

    goto/16 :goto_16a

    .line 1010
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.samsung.DO_ACTIVE_LAUNCH"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1012
    .local v5, "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_162

    .line 1013
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1014
    .local v6, "manager":Landroid/content/pm/PackageManager;
    const-string/jumbo v0, "package_name"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1015
    .local v7, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1016
    .local v8, "isPkgEverLaunched":Z
    const/4 v9, 0x1

    .line 1017
    .local v9, "isPkgStopped":Z
    const/4 v10, 0x0

    .line 1018
    .local v10, "isDataCleared":Z
    const/4 v11, 0x0

    .line 1019
    .local v11, "isAutoRunBlocked":Z
    const/4 v12, 0x0

    .line 1021
    .local v12, "isPkgSuspended":Z
    const-string v0, "com.imangi.templerun2"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v13, "ActivityTaskManager"

    if-eqz v0, :cond_55

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disable active launch :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    return-void

    .line 1033
    :cond_55
    :try_start_55
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1034
    .local v0, "packageManagerInt":Landroid/content/pm/PackageManagerInternal;
    if-eqz v0, :cond_9f

    .line 1035
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-virtual {v0, v7, v14}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v14

    move v8, v14

    .line 1036
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-virtual {v0, v7, v14}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(Ljava/lang/String;I)Z

    move-result v14

    move v9, v14

    .line 1037
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-virtual {v0, v7, v14}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v14

    move v12, v14

    .line 1038
    if-eqz v8, :cond_7e

    if-nez v9, :cond_7e

    if-eqz v12, :cond_9f

    .line 1039
    :cond_7e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", isPkgSuspended : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return-void

    .line 1046
    :cond_9f
    iget-object v14, v1, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-virtual {v14, v7, v15}, Landroid/app/ActivityManagerInternal;->getIsDataClearedInAms(Ljava/lang/String;I)Z

    move-result v14

    move v10, v14

    .line 1047
    iget-object v14, v1, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-virtual {v14, v7, v15}, Landroid/app/ActivityManagerInternal;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v14

    move v11, v14

    .line 1048
    if-nez v10, :cond_bf

    if-eqz v11, :cond_be

    goto :goto_bf

    .line 1057
    .end local v0    # "packageManagerInt":Landroid/content/pm/PackageManagerInternal;
    :cond_be
    goto :goto_f7

    .line 1049
    .restart local v0    # "packageManagerInt":Landroid/content/pm/PackageManagerInternal;
    :cond_bf
    :goto_bf
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking for the Active launch isDataCleared :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_d9} :catch_da

    .line 1050
    return-void

    .line 1054
    .end local v0    # "packageManagerInt":Landroid/content/pm/PackageManagerInternal;
    :catch_da
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed active Launch package : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_f7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDataCleared :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    if-eqz v6, :cond_15f

    if-eqz v7, :cond_15f

    if-eqz v8, :cond_15f

    if-nez v9, :cond_15f

    if-nez v10, :cond_15f

    if-nez v11, :cond_15f

    .line 1062
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1063
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_157

    .line 1064
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 1065
    .local v3, "activeOpt":Landroid/app/ActivityOptions;
    if-eqz v3, :cond_154

    .line 1066
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 1068
    :try_start_139
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13d} :catch_145

    move-object/from16 v4, p1

    :try_start_13f
    invoke-virtual {v4, v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_142} :catch_143

    .line 1071
    goto :goto_14d

    .line 1069
    :catch_143
    move-exception v0

    goto :goto_148

    :catch_145
    move-exception v0

    move-object/from16 v4, p1

    .line 1070
    .local v0, "e":Ljava/lang/Exception;
    :goto_148
    const-string v14, "No activity to handle assist action."

    invoke-static {v13, v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1072
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14d
    const-string/jumbo v0, "starting Active launch"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    .line 1065
    :cond_154
    move-object/from16 v4, p1

    .line 1074
    .end local v3    # "activeOpt":Landroid/app/ActivityOptions;
    :goto_156
    goto :goto_167

    .line 1075
    :cond_157
    move-object/from16 v4, p1

    const-string v0, "Received intent is null"

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_167

    .line 1061
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_15f
    move-object/from16 v4, p1

    goto :goto_167

    .line 1012
    .end local v6    # "manager":Landroid/content/pm/PackageManager;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "isPkgEverLaunched":Z
    .end local v9    # "isPkgStopped":Z
    .end local v10    # "isDataCleared":Z
    .end local v11    # "isAutoRunBlocked":Z
    .end local v12    # "isPkgSuspended":Z
    :cond_162
    move-object/from16 v4, p1

    goto :goto_167

    .line 1010
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_165
    move-object/from16 v4, p1

    .line 1080
    :goto_167
    return-void

    .line 1006
    :cond_168
    move-object/from16 v4, p1

    .line 1007
    :goto_16a
    return-void
.end method
