.class public Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TipsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/TipsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TipsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/TipsManagerService;

    .line 142
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetPackage"    # Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 215
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    :try_start_6
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_c

    .line 218
    nop

    .line 219
    const/4 v1, 0x1

    return v1

    .line 216
    :catch_c
    move-exception v1

    .line 217
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 145
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "user_setup_complete"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 147
    .local v3, "completeSetupWizard":I
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v6

    .line 148
    .local v6, "mEmergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    const/4 v0, 0x0

    .line 149
    .local v0, "isEmergencyMode":Z
    if-eqz v6, :cond_24

    .line 150
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    move v7, v0

    goto :goto_25

    .line 149
    :cond_24
    move v7, v0

    .line 152
    .end local v0    # "isEmergencyMode":Z
    .local v7, "isEmergencyMode":Z
    :goto_25
    const/4 v0, 0x1

    if-ne v3, v0, :cond_1ea

    if-nez v7, :cond_1ea

    const-string v8, "com.samsung.android.app.tips"

    move-object/from16 v9, p1

    invoke-direct {v1, v9, v8}, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_36

    goto/16 :goto_1ec

    .line 155
    :cond_36
    :try_start_36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 157
    .local v10, "action":Ljava/lang/String;
    const-string v11, "android.samsung.tips.FOTA_READY"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_40} :catch_1df

    const/4 v12, 0x5

    const-string/jumbo v13, "tips_extras"

    const-string v14, "com.samsung.android.app.tips.TipsIntentService"

    if-eqz v11, :cond_70

    .line 158
    :try_start_48
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v4, "new_intent":Landroid/content/Intent;
    nop

    .line 160
    invoke-virtual {v4, v8, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v5, "fota_extras"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_60

    const/4 v12, 0x4

    :cond_60
    invoke-virtual {v4, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 164
    .end local v4    # "new_intent":Landroid/content/Intent;
    goto/16 :goto_1de

    :cond_70
    iget-object v11, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z
    invoke-static {v11}, Lcom/android/server/sepunion/TipsManagerService;->access$100(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v11

    if-nez v11, :cond_8f

    iget-object v11, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z
    invoke-static {v11}, Lcom/android/server/sepunion/TipsManagerService;->access$200(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v11

    if-nez v11, :cond_8f

    const-string v11, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 165
    iget-object v4, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # setter for: Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z
    invoke-static {v4, v0}, Lcom/android/server/sepunion/TipsManagerService;->access$202(Lcom/android/server/sepunion/TipsManagerService;Z)Z

    goto/16 :goto_1de

    .line 166
    :cond_8f
    iget-object v11, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z
    invoke-static {v11}, Lcom/android/server/sepunion/TipsManagerService;->access$200(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v11

    if-eqz v11, :cond_112

    const-string v11, "android.intent.action.PHONE_STATE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_112

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 168
    .local v8, "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_110

    .line 169
    const-string/jumbo v11, "state"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_110

    .line 170
    iget-object v11, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # setter for: Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z
    invoke-static {v11, v4}, Lcom/android/server/sepunion/TipsManagerService;->access$202(Lcom/android/server/sepunion/TipsManagerService;Z)Z

    .line 171
    iget-object v4, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I
    invoke-static {v4}, Lcom/android/server/sepunion/TipsManagerService;->access$300(Lcom/android/server/sepunion/TipsManagerService;)I

    move-result v4
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_bf} :catch_1df

    const-string/jumbo v11, "tips_trigger_count"

    if-ne v4, v12, :cond_fd

    .line 173
    :try_start_c4
    # getter for: Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v12, "[GalaxyTips]TIPS Activitation!! WAKE UP"

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v4, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v12, 0x3e8

    invoke-static {v4, v11, v12, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 177
    iget-object v4, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z
    invoke-static {v4}, Lcom/android/server/sepunion/TipsManagerService;->access$500(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v4

    if-nez v4, :cond_f7

    .line 178
    iget-object v4, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;
    invoke-static {v4}, Lcom/android/server/sepunion/TipsManagerService;->access$600(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    move-result-object v11

    const/16 v12, 0x2711

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0xea60

    # invokes: Lcom/android/server/sepunion/TipsManagerService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v11 .. v17}, Lcom/android/server/sepunion/TipsManagerService;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 180
    :cond_f7
    iget-object v4, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # setter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z
    invoke-static {v4, v0}, Lcom/android/server/sepunion/TipsManagerService;->access$102(Lcom/android/server/sepunion/TipsManagerService;Z)Z

    goto :goto_110

    .line 182
    :cond_fd
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # ++operator for: Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I
    invoke-static {v4}, Lcom/android/server/sepunion/TipsManagerService;->access$304(Lcom/android/server/sepunion/TipsManagerService;)I

    move-result v4

    invoke-static {v0, v11, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 186
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_110
    :goto_110
    goto/16 :goto_1de

    :cond_112
    iget-object v11, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z
    invoke-static {v11}, Lcom/android/server/sepunion/TipsManagerService;->access$500(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v11
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_118} :catch_1df

    const-string/jumbo v12, "gtips_network_granted"

    if-nez v11, :cond_150

    :try_start_11d
    const-string/jumbo v11, "samsung.galaxy.tips.network_granted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_150

    .line 187
    iget-object v4, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # setter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z
    invoke-static {v4, v0}, Lcom/android/server/sepunion/TipsManagerService;->access$502(Lcom/android/server/sepunion/TipsManagerService;Z)Z

    .line 188
    iget-object v4, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v12, v0, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 189
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "tips_fota_inventory"

    const-string v8, "fota_inventory"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v4, v8, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1de

    .line 190
    :cond_150
    const-string/jumbo v11, "samsung.galaxy.tips.application.terminated"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16b

    .line 191
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "tips_regular_hour_timer_renewal_count"

    invoke-static {v0, v8, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1de

    .line 192
    :cond_16b
    iget-object v11, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z
    invoke-static {v11}, Lcom/android/server/sepunion/TipsManagerService;->access$800(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v11

    if-eqz v11, :cond_193

    const-string v11, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_193

    .line 193
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 194
    .restart local v4    # "new_intent":Landroid/content/Intent;
    nop

    .line 195
    invoke-virtual {v4, v8, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {v4, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_1dd

    .line 199
    .end local v4    # "new_intent":Landroid/content/Intent;
    :cond_193
    iget-object v8, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z
    invoke-static {v8}, Lcom/android/server/sepunion/TipsManagerService;->access$800(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v8

    if-eqz v8, :cond_1dd

    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1dd

    .line 200
    iget-object v8, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/sepunion/TipsManagerService;->access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v12, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v0, :cond_1b9

    .line 201
    iget-object v4, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # setter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z
    invoke-static {v4, v0}, Lcom/android/server/sepunion/TipsManagerService;->access$502(Lcom/android/server/sepunion/TipsManagerService;Z)Z

    goto :goto_1be

    .line 203
    :cond_1b9
    iget-object v0, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # setter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z
    invoke-static {v0, v4}, Lcom/android/server/sepunion/TipsManagerService;->access$502(Lcom/android/server/sepunion/TipsManagerService;Z)Z

    .line 205
    :goto_1be
    # getter for: Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_SWITCHED isNetworkGranted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    # getter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z
    invoke-static {v5}, Lcom/android/server/sepunion/TipsManagerService;->access$500(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_1dc} :catch_1df

    goto :goto_1de

    .line 199
    :cond_1dd
    :goto_1dd
    nop

    .line 209
    .end local v10    # "action":Ljava/lang/String;
    :goto_1de
    goto :goto_1e9

    .line 207
    :catch_1df
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Fail to send intent to Tips."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e9
    return-void

    .line 152
    :cond_1ea
    move-object/from16 v9, p1

    .line 153
    :goto_1ec
    return-void
.end method
