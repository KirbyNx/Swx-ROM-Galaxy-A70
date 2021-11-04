.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10046
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 10050
    move-object/from16 v1, p0

    const-string v2, "adminUid"

    const-string v3, "sealedHardKeyIntentState"

    const-string v4, "sealedStatusBarIconsState"

    const-string v5, "sealedStatusBarClockState"

    const-string v6, "sealedStatusBarMode"

    const-string v7, "KnoxCustomManagerService"

    const-string v8, "KNOX_CUSTOM"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 10053
    const/4 v9, 0x1

    .line 10055
    .local v9, "multiWindowEnabledState":Z
    const/4 v10, 0x0

    const/16 v11, 0x3e8

    :try_start_20
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    const-string v12, "multiWindowDynamicEnabled"

    invoke-virtual {v0, v11, v8, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    move v9, v0

    .line 10056
    if-nez v9, :cond_51

    .line 10057
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v0, v10}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setMultiWindowState(Z)I
    :try_end_34
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_20 .. :try_end_34} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_34} :catch_35

    goto :goto_51

    .line 10061
    :catch_35
    move-exception v0

    .line 10062
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception for multi-window state"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 10059
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4b
    move-exception v0

    .line 10060
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    iget-object v12, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # setter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mPersistenceCause:Ljava/lang/Exception;
    invoke-static {v12, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$102(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 10063
    .end local v0    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :cond_51
    :goto_51
    nop

    .line 10066
    :goto_52
    const/4 v12, 0x0

    .line 10069
    .local v12, "speakerOn":Z
    :try_start_53
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    const-string v13, "deviceSpeakerEnabledState"

    invoke-virtual {v0, v11, v8, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_5f
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_53 .. :try_end_5f} :catch_66
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5f} :catch_61

    move v12, v0

    .line 10074
    :goto_60
    goto :goto_6d

    .line 10072
    :catch_61
    move-exception v0

    .line 10073
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6d

    .line 10070
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_66
    move-exception v0

    .line 10071
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    iget-object v13, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # setter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mPersistenceCause:Ljava/lang/Exception;
    invoke-static {v13, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$102(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/Exception;)Ljava/lang/Exception;

    .end local v0    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    goto :goto_60

    .line 10076
    :goto_6d
    const/4 v13, 0x1

    if-eqz v12, :cond_81

    .line 10077
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$200(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v14, "audio"

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 10078
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V

    .line 10081
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_81
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 10082
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 10083
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v0, v13}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    .line 10089
    :cond_96
    const/4 v14, -0x1

    const/4 v15, 0x4

    :try_start_98
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, v11, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x3

    if-ne v0, v10, :cond_b9

    .line 10090
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    const-string v10, "statusBarMode"

    invoke-virtual {v0, v11, v8, v10, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 10091
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, v11, v8, v6, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b9} :catch_ba

    .line 10095
    :cond_b9
    goto :goto_bb

    .line 10093
    :catch_ba
    move-exception v0

    .line 10097
    :goto_bb
    :try_start_bb
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, v11, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_db

    .line 10098
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    const-string v6, "statusBarClockState"

    invoke-virtual {v0, v11, v8, v6, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 10099
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, v11, v8, v5, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_db} :catch_dc

    .line 10103
    :cond_db
    goto :goto_dd

    .line 10101
    :catch_dc
    move-exception v0

    .line 10105
    :goto_dd
    :try_start_dd
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, v11, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_fd

    .line 10106
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    const-string v5, "statusBarIconsState"

    invoke-virtual {v0, v11, v8, v5, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 10107
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, v11, v8, v4, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_fd} :catch_fe

    .line 10111
    :cond_fd
    goto :goto_ff

    .line 10109
    :catch_fe
    move-exception v0

    .line 10114
    :goto_ff
    :try_start_ff
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, v11, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v13, :cond_11f

    .line 10115
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    const-string v4, "hardKeyIntentMode"

    invoke-virtual {v0, v11, v8, v4, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 10116
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, v11, v8, v3, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_11f} :catch_120

    .line 10120
    :cond_11f
    goto :goto_121

    .line 10118
    :catch_120
    move-exception v0

    .line 10124
    :goto_121
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mGraceUIGraceView:Z
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$300(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 10125
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getSettingsHiddenState()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_13a

    .line 10126
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/16 v3, 0x1800

    invoke-virtual {v0, v13, v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setSettingsHiddenState(ZI)I

    .line 10130
    :cond_13a
    :try_start_13a
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, v11, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_13a .. :try_end_143} :catch_144

    .line 10134
    goto :goto_153

    .line 10131
    :catch_144
    move-exception v0

    .line 10132
    .local v0, "e1":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v3, "initializing KNOX_CUSTOM with default values"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10133
    iget-object v3, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    invoke-virtual {v3, v11, v8, v2, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 10137
    .end local v0    # "e1":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :goto_153
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # invokes: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->loadHardKeyReportList(I)V
    invoke-static {v0, v11}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$400(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V

    .line 10140
    :try_start_158
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # invokes: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getKnoxNDALicenseActivated()Z
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$500(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result v0

    if-eqz v0, :cond_182

    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10143
    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mKLM:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$600(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object v0

    const-string v2, ""

    const-string v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_182

    .line 10144
    const-string v0, "ACTION_LOCKED_BOOT_COMPLETED"

    const-string v2, "All license already revoked, so Clear all configurations"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10145
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # invokes: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->clearAllApplicationRestrictions()V
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$700(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V

    .line 10146
    iget-object v0, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setKnoxNDALicenseActivated(Z)V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_182} :catch_183

    .line 10150
    :cond_182
    goto :goto_184

    .line 10148
    :catch_183
    move-exception v0

    .line 10152
    .end local v9    # "multiWindowEnabledState":Z
    .end local v12    # "speakerOn":Z
    :cond_184
    :goto_184
    return-void
.end method
