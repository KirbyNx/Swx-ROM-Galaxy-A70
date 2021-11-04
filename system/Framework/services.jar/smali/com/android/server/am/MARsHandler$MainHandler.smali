.class public Lcom/android/server/am/MARsHandler$MainHandler;
.super Landroid/os/Handler;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field extras:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/am/MARsHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/MARsHandler;

    .line 113
    iput-object p1, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 115
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    const-string v2, ""

    const-string/jumbo v3, "policy-num"

    const-string/jumbo v4, "packageList"

    const/4 v5, 0x0

    const-string/jumbo v6, "userId"

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_216

    goto/16 :goto_214

    .line 243
    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 244
    if-eqz v0, :cond_214

    .line 245
    iget-object v1, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v1, v1, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 246
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->initDisabledPackage(I)V

    goto/16 :goto_214

    .line 239
    .end local v0    # "userId":I
    :pswitch_33
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->updateBigdataInfo()V

    .line 240
    iget-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/am/MARsHandler;->sendBigdataInfoToHQM(Z)V

    .line 241
    goto/16 :goto_214

    .line 232
    :pswitch_41
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 233
    if-eqz v0, :cond_214

    .line 234
    const-string v1, "extraType"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "extraType":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->notifyAppSleepToDC(Ljava/lang/String;)V

    .line 236
    .end local v0    # "extraType":Ljava/lang/String;
    goto/16 :goto_214

    .line 222
    :pswitch_58
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getIsManualMode()Z

    move-result v0

    if-nez v0, :cond_214

    .line 223
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 224
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->queryUsageStatsForUser()V

    .line 225
    if-eqz v0, :cond_7a

    .line 226
    const-string v1, "debug"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 227
    .local v1, "debug":Z
    iget-object v2, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 229
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "debug":Z
    :cond_7a
    goto/16 :goto_214

    .line 217
    :pswitch_7c
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_88

    .line 218
    const-string v0, "MARsHandler"

    const-string/jumbo v1, "handle MARS_MH_TRIGGER_POLICY_MSG...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_88
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->triggerAction()V

    .line 220
    goto/16 :goto_214

    .line 195
    :pswitch_91
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 196
    if-eqz v0, :cond_214

    .line 197
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 198
    .local v0, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 199
    .local v2, "policy_num":I
    iget-object v3, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v4, v4, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 201
    .local v3, "userId":I
    if-eqz v0, :cond_cb

    .line 202
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_ca

    .line 203
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 204
    .local v5, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    invoke-virtual {v6, v5, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    .line 202
    .end local v5    # "pkgName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    .end local v4    # "i":I
    :cond_ca
    goto :goto_d2

    .line 207
    :cond_cb
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(I)V

    .line 210
    :goto_d2
    if-ne v2, v1, :cond_eb

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 211
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/am/MARsPolicyManager;->setFirstTimeUpdatePkgsState(Z)V

    .line 212
    iget-object v1, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v1}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler()V

    .line 214
    .end local v0    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "policy_num":I
    .end local v3    # "userId":I
    :cond_eb
    goto/16 :goto_214

    .line 168
    :pswitch_ed
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 169
    if-eqz v0, :cond_214

    .line 170
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 171
    .restart local v0    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 172
    .local v3, "policy_num":I
    iget-object v4, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v7, "trigger-reason"

    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "reason":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v7, v7, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 175
    .local v4, "userId":I
    const/16 v6, 0x9

    if-ne v3, v6, :cond_122

    .line 176
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPolicy(ILjava/util/ArrayList;)V

    goto :goto_144

    .line 177
    :cond_122
    if-eqz v0, :cond_144

    .line 178
    const/4 v6, 0x5

    if-eq v3, v6, :cond_136

    const/4 v6, 0x6

    if-eq v3, v6, :cond_136

    if-eq v3, v1, :cond_136

    .line 186
    if-eqz v3, :cond_144

    .line 187
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V

    goto :goto_144

    .line 182
    :cond_136
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->updateSpecificPolicyTargetPackages(Ljava/util/ArrayList;II)V

    .line 183
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPolicy(ILjava/util/ArrayList;)V

    .line 192
    .end local v0    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "reason":Ljava/lang/String;
    .end local v3    # "policy_num":I
    .end local v4    # "userId":I
    :cond_144
    :goto_144
    goto/16 :goto_214

    .line 161
    :pswitch_146
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 162
    if-eqz v0, :cond_214

    .line 163
    const-string v1, "changedTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 164
    .local v0, "changeTime":J
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsedForTimeChanged(J)V

    .line 165
    .end local v0    # "changeTime":J
    goto/16 :goto_214

    .line 150
    :pswitch_15d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_184

    .line 152
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v2, "uid"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 154
    .local v2, "uid":I
    const-string/jumbo v4, "mode"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 155
    .local v4, "mode":I
    if-eqz v1, :cond_184

    if-eq v2, v3, :cond_184

    .line 156
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/am/MARsPolicyManager;->updateFasState(Ljava/lang/String;II)V

    .line 159
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v4    # "mode":I
    :cond_184
    goto/16 :goto_214

    .line 146
    :pswitch_186
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getBatteryStats()V

    .line 147
    iget-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/am/MARsHandler;->sendGetBatteryStatMsgToMainHandler(Z)V

    .line 148
    goto/16 :goto_214

    .line 140
    :pswitch_194
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getIsManualMode()Z

    move-result v0

    if-nez v0, :cond_214

    .line 141
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/am/MARsPolicyManager;->doUpdatePackages(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    goto :goto_214

    .line 130
    :pswitch_1ab
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v0

    if-nez v0, :cond_1e1

    .line 131
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getChargingMode()Z

    move-result v0

    if-nez v0, :cond_1e1

    .line 132
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getIsDumpstateWorking()Z

    move-result v0

    if-nez v0, :cond_1e1

    .line 133
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v0

    if-eqz v0, :cond_1d4

    goto :goto_1e1

    .line 136
    :cond_1d4
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->triggerAction()V

    .line 137
    iget-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    .line 138
    goto :goto_214

    .line 134
    :cond_1e1
    :goto_1e1
    return-void

    .line 121
    :pswitch_1e2
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v0

    if-nez v0, :cond_213

    .line 122
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getChargingMode()Z

    move-result v0

    if-nez v0, :cond_213

    .line 123
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getIsDumpstateWorking()Z

    move-result v0

    if-nez v0, :cond_213

    .line 124
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v0

    if-eqz v0, :cond_20b

    goto :goto_213

    .line 127
    :cond_20b
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->triggerAction()V

    .line 128
    goto :goto_214

    .line 125
    :cond_213
    :goto_213
    return-void

    .line 250
    :cond_214
    :goto_214
    return-void

    nop

    :pswitch_data_216
    .packed-switch 0x1
        :pswitch_1e2
        :pswitch_1ab
        :pswitch_194
        :pswitch_186
        :pswitch_15d
        :pswitch_146
        :pswitch_ed
        :pswitch_91
        :pswitch_7c
        :pswitch_58
        :pswitch_41
        :pswitch_33
        :pswitch_16
    .end packed-switch
.end method
