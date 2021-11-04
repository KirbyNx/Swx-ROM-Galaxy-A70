.class Lcom/android/server/ipm/MultiUserPkgManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiUserPkgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/MultiUserPkgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/MultiUserPkgManager;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/MultiUserPkgManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/MultiUserPkgManager;

    .line 245
    iput-object p1, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z
    invoke-static {v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$000(Lcom/android/server/ipm/MultiUserPkgManager;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 250
    iget-object v1, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$100(Lcom/android/server/ipm/MultiUserPkgManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast received action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_26
    const-string v1, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xa0

    const/16 v3, 0x96

    const-string v4, " userId = "

    const/4 v5, -0x1

    if-eqz v1, :cond_87

    .line 253
    const-string/jumbo v1, "userid"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 254
    .local v1, "userId":I
    iget-object v5, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z
    invoke-static {v5}, Lcom/android/server/ipm/MultiUserPkgManager;->access$000(Lcom/android/server/ipm/MultiUserPkgManager;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 255
    iget-object v5, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/ipm/MultiUserPkgManager;->access$100(Lcom/android/server/ipm/MultiUserPkgManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUserActionReceiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_65
    if-lt v1, v3, :cond_85

    if-gt v1, v2, :cond_85

    .line 260
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->registerSecureFolderReceiver(I)V

    .line 262
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # setter for: Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I
    invoke-static {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$402(Lcom/android/server/ipm/MultiUserPkgManager;I)I

    .line 265
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->sendInsPkgAsUserMsgToMainHandler(I)V

    .line 266
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I
    invoke-static {v2}, Lcom/android/server/ipm/MultiUserPkgManager;->access$400(Lcom/android/server/ipm/MultiUserPkgManager;)I

    move-result v2

    if-eq v1, v2, :cond_85

    .line 267
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # setter for: Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I
    invoke-static {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$402(Lcom/android/server/ipm/MultiUserPkgManager;I)I

    .line 269
    .end local v1    # "userId":I
    :cond_85
    goto/16 :goto_1c7

    :cond_87
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v6, "user"

    const/16 v7, 0x63

    const/16 v8, 0x5f

    const-string v9, "android.intent.extra.user_handle"

    const-string v10, "ACTION_USER "

    if-eqz v1, :cond_112

    .line 270
    invoke-virtual {p2, v9, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 271
    .restart local v1    # "userId":I
    iget-object v9, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z
    invoke-static {v9}, Lcom/android/server/ipm/MultiUserPkgManager;->access$000(Lcom/android/server/ipm/MultiUserPkgManager;)Z

    move-result v9

    if-eqz v9, :cond_c4

    .line 272
    iget-object v9, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/ipm/MultiUserPkgManager;->access$100(Lcom/android/server/ipm/MultiUserPkgManager;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_c4
    const/16 v4, -0x2710

    if-eq v1, v5, :cond_dd

    if-lt v1, v3, :cond_dd

    if-gt v1, v2, :cond_dd

    .line 277
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v2}, Lcom/android/server/ipm/MultiUserPkgManager;->unregisterSecureFolderReceiver()V

    .line 280
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->sendDelPkgAsUserMsgToMainHandler(I)V

    .line 281
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # setter for: Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I
    invoke-static {v2, v4}, Lcom/android/server/ipm/MultiUserPkgManager;->access$402(Lcom/android/server/ipm/MultiUserPkgManager;I)I

    goto/16 :goto_1c6

    .line 282
    :cond_dd
    if-lt v1, v8, :cond_f2

    if-gt v1, v7, :cond_f2

    .line 285
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v2}, Lcom/android/server/ipm/MultiUserPkgManager;->unregisterDualAppReceiver()V

    .line 288
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->sendDelPkgAsUserMsgToMainHandler(I)V

    .line 289
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # setter for: Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppUserId:I
    invoke-static {v2, v4}, Lcom/android/server/ipm/MultiUserPkgManager;->access$502(Lcom/android/server/ipm/MultiUserPkgManager;I)I

    goto/16 :goto_1c6

    .line 292
    :cond_f2
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 293
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_1c6

    .line 294
    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 295
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_1c6

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1c6

    .line 297
    iget-object v4, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v4}, Lcom/android/server/ipm/MultiUserPkgManager;->unregisterWorkspaceReceiver()V

    .line 299
    iget-object v4, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v4, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->sendDelPkgAsUserMsgToMainHandler(I)V

    goto/16 :goto_1c6

    .line 303
    .end local v1    # "userId":I
    .end local v2    # "um":Landroid/os/UserManager;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_112
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c6

    .line 304
    invoke-virtual {p2, v9, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 305
    .restart local v1    # "userId":I
    iget-object v5, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z
    invoke-static {v5}, Lcom/android/server/ipm/MultiUserPkgManager;->access$000(Lcom/android/server/ipm/MultiUserPkgManager;)Z

    move-result v5

    if-eqz v5, :cond_144

    .line 306
    iget-object v5, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/ipm/MultiUserPkgManager;->access$100(Lcom/android/server/ipm/MultiUserPkgManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_144
    if-lt v1, v8, :cond_160

    if-gt v1, v7, :cond_160

    .line 310
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->registerDualAppReceiver(I)V

    .line 313
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->sendInsPkgAsUserMsgToMainHandler(I)V

    .line 314
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppUserId:I
    invoke-static {v2}, Lcom/android/server/ipm/MultiUserPkgManager;->access$500(Lcom/android/server/ipm/MultiUserPkgManager;)I

    move-result v2

    if-eq v1, v2, :cond_1c7

    .line 315
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # setter for: Lcom/android/server/ipm/MultiUserPkgManager;->mDualAppUserId:I
    invoke-static {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$502(Lcom/android/server/ipm/MultiUserPkgManager;I)I

    goto :goto_1c7

    .line 316
    :cond_160
    if-lt v1, v3, :cond_1a7

    if-gt v1, v2, :cond_1a7

    .line 318
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->DEBUG:Z
    invoke-static {v2}, Lcom/android/server/ipm/MultiUserPkgManager;->access$000(Lcom/android/server/ipm/MultiUserPkgManager;)Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 319
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ipm/MultiUserPkgManager;->access$100(Lcom/android/server/ipm/MultiUserPkgManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_18a
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->registerSecureFolderReceiver(I)V

    .line 322
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # setter for: Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I
    invoke-static {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$402(Lcom/android/server/ipm/MultiUserPkgManager;I)I

    .line 325
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->sendInsPkgAsUserMsgToMainHandler(I)V

    .line 326
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # getter for: Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I
    invoke-static {v2}, Lcom/android/server/ipm/MultiUserPkgManager;->access$400(Lcom/android/server/ipm/MultiUserPkgManager;)I

    move-result v2

    if-eq v1, v2, :cond_1c7

    .line 327
    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    # setter for: Lcom/android/server/ipm/MultiUserPkgManager;->mSecureFolderUserId:I
    invoke-static {v2, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->access$402(Lcom/android/server/ipm/MultiUserPkgManager;I)I

    goto :goto_1c7

    .line 330
    :cond_1a7
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 331
    .restart local v2    # "um":Landroid/os/UserManager;
    if-eqz v2, :cond_1c7

    .line 332
    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 333
    .restart local v3    # "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_1c7

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1c7

    .line 334
    iget-object v4, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v4, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->registerWorkspaceReceiver(I)V

    .line 336
    iget-object v4, p0, Lcom/android/server/ipm/MultiUserPkgManager$1;->this$0:Lcom/android/server/ipm/MultiUserPkgManager;

    invoke-virtual {v4, v1}, Lcom/android/server/ipm/MultiUserPkgManager;->sendInsPkgAsUserMsgToMainHandler(I)V

    goto :goto_1c7

    .line 303
    .end local v1    # "userId":I
    .end local v2    # "um":Landroid/os/UserManager;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1c6
    :goto_1c6
    nop

    .line 341
    :cond_1c7
    :goto_1c7
    return-void
.end method
