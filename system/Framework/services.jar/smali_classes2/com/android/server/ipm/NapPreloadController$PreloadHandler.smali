.class Lcom/android/server/ipm/NapPreloadController$PreloadHandler;
.super Landroid/os/Handler;
.source "NapPreloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/NapPreloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/NapPreloadController;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/NapPreloadController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 153
    iput-object p1, p0, Lcom/android/server/ipm/NapPreloadController$PreloadHandler;->this$0:Lcom/android/server/ipm/NapPreloadController;

    .line 154
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "booster_batch"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 161
    .local v11, "batch_time":J
    iget v2, v1, Landroid/os/Message;->what:I

    const-string/jumbo v4, "preload_type"

    const-string v5, "com.samsung.DO_ML_LAUNCH"

    const/4 v6, 0x4

    if-ne v2, v6, :cond_35

    .line 162
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {v2, v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 165
    const-string v3, "booster_complete"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v3, v0, Lcom/android/server/ipm/NapPreloadController$PreloadHandler;->this$0:Lcom/android/server/ipm/NapPreloadController;

    # getter for: Lcom/android/server/ipm/NapPreloadController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ipm/NapPreloadController;->access$000(Lcom/android/server/ipm/NapPreloadController;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 167
    .end local v2    # "intent":Landroid/content/Intent;
    goto/16 :goto_ff

    :cond_35
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const-string v6, "PkgPredictorService-NapPreloadController"

    if-eq v2, v3, :cond_79

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_42

    goto :goto_79

    .line 184
    :cond_42
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_77

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "preload_listclear_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 186
    .local v2, "isDisable":Z
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.DO_ML_LIST_CLEAR"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    iget-object v3, v0, Lcom/android/server/ipm/NapPreloadController$PreloadHandler;->this$0:Lcom/android/server/ipm/NapPreloadController;

    # getter for: Lcom/android/server/ipm/NapPreloadController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ipm/NapPreloadController;->access$000(Lcom/android/server/ipm/NapPreloadController;)Landroid/content/Context;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 190
    # getter for: Lcom/android/server/ipm/NapPreloadController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/ipm/NapPreloadController;->access$300()Z

    move-result v3

    if-eqz v3, :cond_ff

    const-string v3, "Sent Clear List"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ff

    .line 184
    .end local v2    # "isDisable":Z
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_77
    :goto_77
    goto/16 :goto_ff

    .line 168
    :cond_79
    :goto_79
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "preload_pkgs"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "use_pageboost"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 171
    .local v13, "usePageboost":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "preload_uid"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 173
    .local v14, "userId":I
    iget-object v4, v0, Lcom/android/server/ipm/NapPreloadController$PreloadHandler;->this$0:Lcom/android/server/ipm/NapPreloadController;

    # invokes: Lcom/android/server/ipm/NapPreloadController;->determinAppBeBlocked(Ljava/lang/String;I)Z
    invoke-static {v4, v2, v14}, Lcom/android/server/ipm/NapPreloadController;->access$100(Lcom/android/server/ipm/NapPreloadController;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_100

    iget-object v4, v0, Lcom/android/server/ipm/NapPreloadController$PreloadHandler;->this$0:Lcom/android/server/ipm/NapPreloadController;

    # invokes: Lcom/android/server/ipm/NapPreloadController;->isUserRunningAndUnlocked(I)Z
    invoke-static {v4, v14}, Lcom/android/server/ipm/NapPreloadController;->access$200(Lcom/android/server/ipm/NapPreloadController;I)Z

    move-result v4

    if-nez v4, :cond_b3

    goto :goto_100

    .line 178
    :cond_b3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ML] Sent pkg = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " type: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v15, v4

    .line 180
    .local v15, "intent":Landroid/content/Intent;
    invoke-virtual {v15, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    new-instance v9, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    move-object v4, v9

    move-object v5, v2

    move v6, v14

    move-object v7, v3

    move v8, v13

    move-object v1, v9

    move-wide v9, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZJ)V

    const-string/jumbo v4, "package_data"

    invoke-virtual {v15, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 182
    iget-object v1, v0, Lcom/android/server/ipm/NapPreloadController$PreloadHandler;->this$0:Lcom/android/server/ipm/NapPreloadController;

    # getter for: Lcom/android/server/ipm/NapPreloadController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ipm/NapPreloadController;->access$000(Lcom/android/server/ipm/NapPreloadController;)Landroid/content/Context;

    move-result-object v1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v15, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v13    # "usePageboost":Z
    .end local v14    # "userId":I
    .end local v15    # "intent":Landroid/content/Intent;
    goto/16 :goto_77

    .line 192
    :cond_ff
    :goto_ff
    return-void

    .line 174
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v13    # "usePageboost":Z
    .restart local v14    # "userId":I
    :cond_100
    :goto_100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is blocked, could not preload  as "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method
