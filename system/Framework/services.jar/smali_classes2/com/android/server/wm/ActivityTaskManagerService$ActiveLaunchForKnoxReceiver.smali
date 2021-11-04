.class Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchForKnoxReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveLaunchForKnoxReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1083
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchForKnoxReceiver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1086
    move-object/from16 v1, p0

    const-string v2, ", isAutoRunBlocked : "

    const-string v3, ", isPkgStopped : "

    const-string v4, "ActivityTaskManager"

    if-eqz p2, :cond_156

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move-object/from16 v15, p1

    goto/16 :goto_158

    .line 1090
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX_LAUNCHER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_31

    :cond_2d
    move-object/from16 v15, p1

    goto/16 :goto_155

    .line 1091
    :cond_31
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1092
    .local v5, "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_153

    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1094
    .local v6, "manager":Landroid/content/pm/PackageManager;
    const-string/jumbo v0, "package_name"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1095
    .local v7, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v8, "userid"

    invoke-virtual {v5, v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1096
    .local v8, "useridActiveLaunch":I
    const/4 v9, 0x0

    .line 1097
    .local v9, "isPkgEverLaunched":Z
    const/4 v10, 0x1

    .line 1098
    .local v10, "isPkgStopped":Z
    const/4 v11, 0x1

    .line 1099
    .local v11, "isDataCleared":Z
    const/4 v12, 0x0

    .line 1100
    .local v12, "isAutoRunBlocked":Z
    const/4 v13, 0x0

    .line 1103
    .local v13, "isPkgSuspended":Z
    :try_start_4f
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchForKnoxReceiver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1104
    .local v0, "packageManagerInt":Landroid/content/pm/PackageManagerInternal;
    if-eqz v0, :cond_93

    .line 1105
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v14

    move v9, v14

    .line 1106
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(Ljava/lang/String;I)Z

    move-result v14

    move v10, v14

    .line 1107
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-virtual {v0, v7, v14}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v14

    move v13, v14

    .line 1108
    if-eqz v9, :cond_70

    if-nez v10, :cond_70

    if-eqz v13, :cond_93

    .line 1109
    :cond_70
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking for the Active launch isPkgEverLaunched :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", isPkgSuspended : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-void

    .line 1116
    :cond_93
    iget-object v14, v1, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchForKnoxReceiver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v14, v7, v8}, Landroid/app/ActivityManagerInternal;->getIsDataClearedInAms(Ljava/lang/String;I)Z

    move-result v14

    move v11, v14

    .line 1117
    iget-object v14, v1, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchForKnoxReceiver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v14, v7, v8}, Landroid/app/ActivityManagerInternal;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v14

    move v12, v14

    .line 1118
    if-nez v11, :cond_ab

    if-eqz v12, :cond_aa

    goto :goto_ab

    .line 1127
    .end local v0    # "packageManagerInt":Landroid/content/pm/PackageManagerInternal;
    :cond_aa
    goto :goto_e3

    .line 1119
    .restart local v0    # "packageManagerInt":Landroid/content/pm/PackageManagerInternal;
    :cond_ab
    :goto_ab
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking for the Active launch isDataCleared :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_c5} :catch_c6

    .line 1120
    return-void

    .line 1124
    .end local v0    # "packageManagerInt":Landroid/content/pm/PackageManagerInternal;
    :catch_c6
    move-exception v0

    .line 1125
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

    invoke-static {v4, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Knox] Checking for the Active launch isPkgEverLaunched :"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDataCleared :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    if-eqz v6, :cond_150

    if-eqz v7, :cond_150

    if-eqz v9, :cond_150

    if-nez v10, :cond_150

    if-nez v11, :cond_150

    if-nez v12, :cond_150

    .line 1131
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1133
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_148

    .line 1134
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 1135
    .local v3, "activeOpt":Landroid/app/ActivityOptions;
    if-eqz v3, :cond_145

    .line 1136
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 1138
    :try_start_127
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12f} :catch_137

    move-object/from16 v15, p1

    :try_start_131
    invoke-virtual {v15, v2, v0, v14}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_135

    .line 1141
    goto :goto_13f

    .line 1139
    :catch_135
    move-exception v0

    goto :goto_13a

    :catch_137
    move-exception v0

    move-object/from16 v15, p1

    .line 1140
    .local v0, "e":Ljava/lang/Exception;
    :goto_13a
    const-string v14, "No activity to handle assist action."

    invoke-static {v4, v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1142
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13f
    const-string v0, "[Knox] starting Active launch"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    .line 1135
    :cond_145
    move-object/from16 v15, p1

    .line 1144
    .end local v3    # "activeOpt":Landroid/app/ActivityOptions;
    :goto_147
    goto :goto_155

    .line 1145
    :cond_148
    move-object/from16 v15, p1

    const-string v0, "Received intent is null"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155

    .line 1130
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_150
    move-object/from16 v15, p1

    goto :goto_155

    .line 1092
    .end local v6    # "manager":Landroid/content/pm/PackageManager;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "useridActiveLaunch":I
    .end local v9    # "isPkgEverLaunched":Z
    .end local v10    # "isPkgStopped":Z
    .end local v11    # "isDataCleared":Z
    .end local v12    # "isAutoRunBlocked":Z
    .end local v13    # "isPkgSuspended":Z
    :cond_153
    move-object/from16 v15, p1

    .line 1150
    .end local v5    # "extras":Landroid/os/Bundle;
    :goto_155
    return-void

    .line 1086
    :cond_156
    move-object/from16 v15, p1

    .line 1087
    :goto_158
    return-void
.end method
