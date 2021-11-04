.class Lcom/android/server/am/Pageboost$2;
.super Landroid/content/BroadcastReceiver;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Pageboost;->staticInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 292
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 294
    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 297
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "received ACTION_USER_UNLOCKED"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    # getter for: Lcom/android/server/am/Pageboost;->user_unlock_done:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Z

    move-result v2

    if-nez v2, :cond_36

    .line 299
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "init mGlobalAppLRU"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v2, 0x1

    # setter for: Lcom/android/server/am/Pageboost;->user_unlock_done:Z
    invoke-static {v2}, Lcom/android/server/am/Pageboost;->access$302(Z)Z

    .line 301
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x2710

    # invokes: Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/Pageboost;->access$400(ILjava/lang/String;IIII)V

    .line 303
    :cond_36
    return-void

    .line 306
    :cond_37
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 307
    return-void

    .line 310
    :cond_3e
    const-string v2, "com.sec.android.launcher.action.RUN_APP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "package"

    if-nez v2, :cond_a0

    const-string v2, "com.android.server.am.ACTION_PAGEBOOST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_a0

    .line 353
    :cond_52
    const-string v2, "com.android.server.am.ACTION_VRAMDISK_PREFETCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 354
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v3, "reason"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "reason":Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/am/Pageboost;->prefetchPackage(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    goto/16 :goto_13b

    :cond_6a
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    goto :goto_92

    .line 360
    :cond_7b
    const-string v2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 361
    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    # invokes: Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/Pageboost;->access$400(ILjava/lang/String;IIII)V

    .line 362
    # invokes: Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;->onHqmUpdateRequest()V
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;->access$800()V

    goto/16 :goto_13b

    .line 358
    :cond_92
    :goto_92
    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    # invokes: Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    invoke-static/range {v9 .. v14}, Lcom/android/server/am/Pageboost;->access$400(ILjava/lang/String;IIII)V

    .line 359
    # invokes: Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->exportPkgInfoList()V
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldPkgManager;->access$700()V

    goto/16 :goto_13b

    .line 311
    :cond_a0
    :goto_a0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "sendString":Ljava/lang/String;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v3, 0x0

    if-eqz v2, :cond_db

    .line 315
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isRecordingCapture()Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 316
    const/16 v4, 0xe

    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    invoke-static {v4, v2, v3}, Lcom/android/server/am/Pageboost;->access$600(ILjava/lang/Object;I)V

    goto :goto_d2

    .line 318
    :cond_cc
    const/4 v4, 0x5

    const/16 v5, 0x7d0

    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    invoke-static {v4, v2, v5}, Lcom/android/server/am/Pageboost;->access$600(ILjava/lang/Object;I)V

    .line 322
    :goto_d2
    const/16 v4, 0x11

    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    invoke-static {v4, v2, v3}, Lcom/android/server/am/Pageboost;->access$600(ILjava/lang/Object;I)V

    .line 325
    invoke-static {}, Lcom/android/server/am/Pageboost;->stopActiveLaunch()V

    goto :goto_13a

    .line 327
    :cond_db
    const-string v4, "apps"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    if-nez v2, :cond_fc

    .line 329
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 332
    :cond_fc
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "arr":[Ljava/lang/String;
    new-instance v5, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v5}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    .line 335
    .local v5, "pageInfo":Lcom/android/server/am/Pageboost$PageboostAppList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_108
    array-length v7, v4

    const/4 v8, 0x2

    if-ge v6, v7, :cond_137

    .line 336
    aget-object v7, v4, v6

    if-nez v7, :cond_111

    .line 337
    goto :goto_137

    .line 339
    :cond_111
    aget-object v7, v4, v6

    const-string v9, "/"

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 340
    .local v7, "tmp":[Ljava/lang/String;
    aget-object v8, v7, v3

    if-nez v8, :cond_11e

    .line 341
    goto :goto_134

    .line 343
    :cond_11e
    const/4 v8, 0x0

    .line 344
    .local v8, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v9

    if-eqz v9, :cond_12f

    .line 345
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v9

    aget-object v10, v7, v3

    invoke-virtual {v9, v10}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v8

    .line 347
    :cond_12f
    if-eqz v8, :cond_134

    .line 348
    invoke-virtual {v5, v8, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 335
    .end local v7    # "tmp":[Ljava/lang/String;
    .end local v8    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :cond_134
    :goto_134
    add-int/lit8 v6, v6, 0x1

    goto :goto_108

    .line 351
    .end local v6    # "i":I
    :cond_137
    :goto_137
    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    invoke-static {v8, v5, v3}, Lcom/android/server/am/Pageboost;->access$600(ILjava/lang/Object;I)V

    .line 353
    .end local v2    # "sendString":Ljava/lang/String;
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v5    # "pageInfo":Lcom/android/server/am/Pageboost$PageboostAppList;
    :goto_13a
    nop

    .line 364
    :cond_13b
    :goto_13b
    return-void
.end method
