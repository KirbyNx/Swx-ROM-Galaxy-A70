.class Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;
.super Landroid/os/Handler;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MARsDBManagerHandler"
.end annotation


# instance fields
.field extras:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 132
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->extras:Landroid/os/Bundle;

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_172

    goto/16 :goto_171

    .line 224
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->doMigration()V
    invoke-static {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->access$1300(Lcom/android/server/am/mars/database/MARsDBManager;)V

    goto/16 :goto_171

    .line 214
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->extras:Landroid/os/Bundle;

    .line 215
    if-eqz v0, :cond_171

    .line 216
    const/4 v1, -0x1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 217
    .local v0, "userId":I
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 218
    .local v1, "currentUser":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    invoke-static {v2, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->access$1100(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 219
    .local v2, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # getter for: Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/mars/database/MARsDBManager;->access$800(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mContext.id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V
    invoke-static {v3, v2}, Lcom/android/server/am/mars/database/MARsDBManager;->access$1200(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/content/Context;)V

    .line 221
    .end local v0    # "userId":I
    .end local v1    # "currentUser":Landroid/os/UserHandle;
    .end local v2    # "context":Landroid/content/Context;
    goto/16 :goto_171

    .line 181
    :pswitch_51
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 182
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_f5

    .line 183
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    const-string/jumbo v4, "onCreate"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/am/mars/database/MARsDBManager;->mDBCreate:Z

    .line 184
    const-string/jumbo v3, "onUpgrade"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 185
    .local v3, "onUpgrade":Z
    const-string/jumbo v4, "onInit"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 186
    .local v4, "onInit":Z
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v5, :cond_b0

    .line 187
    iget-object v5, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # getter for: Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/am/mars/database/MARsDBManager;->access$800(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received MARS_DB_SM_CHANGED_MSG, --mDBCreate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    iget-boolean v7, v7, Lcom/android/server/am/mars/database/MARsDBManager;->mDBCreate:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " --onUpgrade = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " --onInit = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " --mDBUpdated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 188
    # getter for: Lcom/android/server/am/mars/database/MARsDBManager;->mDBUpdated:Z
    invoke-static {v7}, Lcom/android/server/am/mars/database/MARsDBManager;->access$900(Lcom/android/server/am/mars/database/MARsDBManager;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 187
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_b0
    if-eqz v4, :cond_be

    .line 192
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager;->cancelAllPolicy()V

    .line 193
    iget-object v5, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V
    invoke-static {v5, v2}, Lcom/android/server/am/mars/database/MARsDBManager;->access$300(Lcom/android/server/am/mars/database/MARsDBManager;Z)V

    .line 195
    :cond_be
    if-nez v3, :cond_c2

    if-eqz v4, :cond_c9

    .line 196
    :cond_c2
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->clearAllPackages()V

    .line 199
    :cond_c9
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    iget-boolean v2, v2, Lcom/android/server/am/mars/database/MARsDBManager;->mDBCreate:Z

    if-nez v2, :cond_d3

    if-nez v3, :cond_d3

    if-eqz v4, :cond_ee

    .line 200
    :cond_d3
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 201
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsPolicyManager;->setFirstTimeUpdatePkgsState(Z)V

    .line 203
    :cond_e4
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V
    invoke-static {v1}, Lcom/android/server/am/mars/database/MARsDBManager;->access$400(Lcom/android/server/am/mars/database/MARsDBManager;)V

    .line 204
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->initManagedPackagesInternal()V
    invoke-static {v1}, Lcom/android/server/am/mars/database/MARsDBManager;->access$1000(Lcom/android/server/am/mars/database/MARsDBManager;)V

    .line 208
    :cond_ee
    if-eqz v4, :cond_f5

    .line 209
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendMigrateMsgToDBHandler()V

    .line 212
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v3    # "onUpgrade":Z
    .end local v4    # "onInit":Z
    :cond_f5
    goto/16 :goto_171

    .line 174
    :pswitch_f7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 175
    .restart local v0    # "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_108

    .line 176
    const-string v1, "boot"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 177
    .local v1, "boot":Z
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->getPolicyDefaultInfoFromSMToMARs(Z)V
    invoke-static {v2, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->access$700(Lcom/android/server/am/mars/database/MARsDBManager;Z)V

    .line 179
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "boot":Z
    :cond_108
    goto :goto_171

    .line 164
    :pswitch_109
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 165
    .restart local v0    # "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_137

    .line 166
    const-string v2, "callee"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "callee":Ljava/lang/String;
    const-string v4, "caller"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "caller":Ljava/lang/String;
    const-string/jumbo v4, "isblock"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 169
    .local v1, "isblocked":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "requesttime"

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 170
    .local v10, "requestTime":J
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    move-object v5, v2

    move-object v6, v3

    move v7, v1

    move-wide v8, v10

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->updateCompHistory(Ljava/lang/String;Ljava/lang/String;ZJ)V
    invoke-static/range {v4 .. v9}, Lcom/android/server/am/mars/database/MARsDBManager;->access$600(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 172
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "isblocked":Z
    .end local v2    # "callee":Ljava/lang/String;
    .end local v3    # "caller":Ljava/lang/String;
    .end local v10    # "requestTime":J
    :cond_137
    goto :goto_171

    .line 155
    :pswitch_138
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 156
    .restart local v0    # "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_14e

    .line 157
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/FASEntity;

    .line 158
    .local v1, "entity":Lcom/android/server/am/mars/database/FASEntity;
    if-eqz v1, :cond_14e

    .line 159
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 162
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "entity":Lcom/android/server/am/mars/database/FASEntity;
    :cond_14e
    goto :goto_171

    .line 146
    :pswitch_14f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .restart local v0    # "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_165

    .line 148
    const-string/jumbo v1, "values"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 149
    .local v1, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    if-eqz v1, :cond_165

    .line 150
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgsToSMDB(Ljava/util/ArrayList;)V
    invoke-static {v2, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->access$500(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/util/ArrayList;)V

    .line 153
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :cond_165
    goto :goto_171

    .line 142
    :pswitch_166
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V
    invoke-static {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->access$300(Lcom/android/server/am/mars/database/MARsDBManager;Z)V

    .line 143
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V
    invoke-static {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->access$400(Lcom/android/server/am/mars/database/MARsDBManager;)V

    .line 144
    nop

    .line 227
    :cond_171
    :goto_171
    return-void

    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_166
        :pswitch_14f
        :pswitch_138
        :pswitch_109
        :pswitch_f7
        :pswitch_51
        :pswitch_10
        :pswitch_9
    .end packed-switch
.end method
