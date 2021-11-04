.class public Lcom/android/server/am/FreecessHandler$MainHandler;
.super Landroid/os/Handler;
.source "FreecessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/FreecessHandler;

    .line 134
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 139
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const-string/jumbo v2, "isDelay"

    const/4 v3, 0x1

    const-string/jumbo v4, "reason"

    const-string/jumbo v5, "userId"

    const-string v6, ""

    const-string/jumbo v7, "uid"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "packageName"

    const/4 v11, -0x1

    packed-switch v1, :pswitch_data_268

    goto/16 :goto_266

    .line 337
    :pswitch_1e
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->cancelCalmMode()V

    goto/16 :goto_266

    .line 328
    :pswitch_27
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 329
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_40

    .line 330
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 332
    .local v3, "userId":I
    invoke-virtual {v1, v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "reason":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/server/am/FreecessController;->quickFreezeForCalmMode(Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "userId":I
    .end local v4    # "reason":Ljava/lang/String;
    :cond_40
    goto/16 :goto_266

    .line 321
    :pswitch_42
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 322
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_56

    .line 323
    const-string/jumbo v2, "list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 324
    .local v2, "allowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/FreecessController;->triggerCalmMode(Ljava/util/ArrayList;)V

    .line 326
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "allowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_56
    goto/16 :goto_266

    .line 313
    :pswitch_58
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 314
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_6d

    .line 315
    invoke-virtual {v1, v10, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 317
    .local v3, "uid":I
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/FreecessController;->deleteRemovedPackage(Ljava/lang/String;I)V

    .line 319
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_6d
    goto/16 :goto_266

    .line 310
    :pswitch_6f
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->postMonitoringFrozenProcs()V

    .line 311
    goto/16 :goto_266

    .line 267
    :pswitch_78
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 268
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_8f

    .line 269
    const-string v2, "enabled"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 270
    .local v2, "enabled":Z
    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 271
    .restart local v3    # "uid":I
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/FreecessController;->setLRs(ZI)V

    .line 273
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "enabled":Z
    .end local v3    # "uid":I
    :cond_8f
    goto/16 :goto_266

    .line 285
    :pswitch_91
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 286
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_a8

    .line 287
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 289
    .restart local v3    # "uid":I
    if-eq v3, v11, :cond_a8

    .line 290
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/FreecessController;->sendPendingAlarm(Ljava/lang/String;I)V

    .line 293
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_a8
    goto/16 :goto_266

    .line 199
    :pswitch_aa
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 200
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_bd

    .line 201
    invoke-virtual {v1, v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_bd

    .line 203
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/FreecessController;->handleUnfreezeActivePackages(Ljava/lang/String;)V

    .line 206
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "reason":Ljava/lang/String;
    :cond_bd
    goto/16 :goto_266

    .line 307
    :pswitch_bf
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->readSysfs()V

    .line 308
    goto/16 :goto_266

    .line 298
    :pswitch_c8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 299
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_ea

    .line 300
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 301
    .local v2, "type":I
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/server/am/FreecessController;->setIsDumpstateWorking(Z)V

    .line 302
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/server/am/FreecessController;->setIsSmartSwitchWorking(Z)V

    .line 303
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(ZI)V

    .line 305
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "type":I
    :cond_ea
    goto/16 :goto_266

    .line 295
    :pswitch_ec
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const-string v2, "BugReport"

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 296
    goto/16 :goto_266

    .line 275
    :pswitch_f7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 276
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_110

    .line 277
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 279
    .local v3, "userId":I
    if-eqz v2, :cond_110

    if-eq v3, v11, :cond_110

    .line 280
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/FreecessController;->sendPendingBroadcast(Ljava/lang/String;I)V

    .line 283
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "userId":I
    :cond_110
    goto/16 :goto_266

    .line 264
    :pswitch_112
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const-string/jumbo v2, "timeout"

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessController;->unFreezeForOLAF(Ljava/lang/String;)V

    .line 265
    goto/16 :goto_266

    .line 251
    :pswitch_11e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 252
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_145

    .line 253
    const-string v2, "enterFlag"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 254
    .local v2, "enterFlag":Z
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 256
    .local v4, "uid":I
    if-eqz v2, :cond_13c

    .line 257
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/server/am/FreecessController;->triggerOLAF(Ljava/lang/String;I)V

    goto :goto_145

    .line 259
    :cond_13c
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    const-string v6, "Force"

    invoke-virtual {v5, v6}, Lcom/android/server/am/FreecessController;->unFreezeForOLAF(Ljava/lang/String;)V

    .line 262
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "enterFlag":Z
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_145
    :goto_145
    goto/16 :goto_266

    .line 243
    :pswitch_147
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 244
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_158

    .line 245
    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 247
    .local v2, "uid":I
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/FreecessController;->checkFrozenBinder(I)V

    .line 249
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "uid":I
    :cond_158
    goto/16 :goto_266

    .line 208
    :pswitch_15a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 209
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1b1

    .line 210
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 212
    .local v4, "userId":I
    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 213
    .local v5, "uid":I
    const-string v6, "appSyncFlag"

    invoke-virtual {v1, v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 214
    .local v6, "appSyncFlag":I
    const-string/jumbo v7, "packetMonitorFlag"

    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 215
    .local v7, "packetMonitorFlag":I
    const-string v9, "disableWakelockFlag"

    invoke-virtual {v1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 216
    .local v9, "disableWakelockFlag":I
    const-string/jumbo v10, "isLcdOnTrigger"

    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 219
    .local v10, "isLcdOnTrigger":Z
    if-eq v6, v11, :cond_18f

    .line 220
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    invoke-virtual {v12, v2, v4, v6}, Lcom/android/server/am/FreecessController;->updateAppSyncStatus(Ljava/lang/String;II)V

    .line 224
    :cond_18f
    if-eqz v7, :cond_19c

    if-eq v7, v3, :cond_194

    goto :goto_1a4

    .line 231
    :cond_194
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    invoke-virtual {v12, v5, v2, v4}, Lcom/android/server/am/FreecessController;->configPacketMonitoredUid(ILjava/lang/String;I)V

    goto :goto_1a4

    .line 228
    :cond_19c
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/server/am/FreecessController;->deletePacketMonitoredUid(I)V

    .line 229
    nop

    .line 236
    :goto_1a4
    if-eq v9, v11, :cond_1b1

    .line 237
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v11

    .line 238
    if-ne v9, v3, :cond_1ad

    goto :goto_1ae

    :cond_1ad
    move v3, v8

    .line 237
    :goto_1ae
    invoke-virtual {v11, v2, v5, v3, v10}, Lcom/android/server/am/FreecessController;->setWakeLockEnableDisable(Ljava/lang/String;IZZ)V

    .line 241
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v4    # "userId":I
    .end local v5    # "uid":I
    .end local v6    # "appSyncFlag":I
    .end local v7    # "packetMonitorFlag":I
    .end local v9    # "disableWakelockFlag":I
    .end local v10    # "isLcdOnTrigger":Z
    :cond_1b1
    goto/16 :goto_266

    .line 190
    :pswitch_1b3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 191
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1c6

    .line 192
    invoke-virtual {v1, v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_1c6

    .line 194
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/FreecessController;->handleResetAllState(Ljava/lang/String;)V

    .line 197
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "reason":Ljava/lang/String;
    :cond_1c6
    goto/16 :goto_266

    .line 179
    :pswitch_1c8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 180
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1e1

    .line 181
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 184
    .local v3, "userId":I
    if-eqz v2, :cond_1e1

    if-eq v3, v11, :cond_1e1

    .line 185
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/FreecessController;->handleLcdOnResetState(Ljava/lang/String;I)V

    .line 188
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "userId":I
    :cond_1e1
    goto/16 :goto_266

    .line 171
    :pswitch_1e3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 172
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1f8

    .line 173
    invoke-virtual {v1, v10, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 175
    .local v3, "uid":I
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/FreecessController;->lcdOnFreezePackage(Ljava/lang/String;I)V

    .line 177
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_1f8
    goto/16 :goto_266

    .line 161
    :pswitch_1fa
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 162
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_21e

    .line 163
    invoke-virtual {v1, v10, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 165
    .local v5, "userId":I
    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 166
    .local v2, "isDelay":Z
    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "reason":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    const/4 v13, 0x3

    move-object v14, v4

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/am/FreecessController;->lcdOnFreezedStateChange(ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 169
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "isDelay":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "reason":Ljava/lang/String;
    .end local v5    # "userId":I
    :cond_21e
    goto :goto_266

    .line 151
    :pswitch_21f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 152
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_243

    .line 153
    invoke-virtual {v1, v10, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .restart local v3    # "packageName":Ljava/lang/String;
    invoke-virtual {v1, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 155
    .restart local v5    # "userId":I
    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 156
    .restart local v2    # "isDelay":Z
    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .restart local v4    # "reason":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    const/4 v13, 0x2

    move-object v14, v4

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/am/FreecessController;->lcdOnFreezedStateChange(ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 159
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "isDelay":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "reason":Ljava/lang/String;
    .end local v5    # "userId":I
    :cond_243
    goto :goto_266

    .line 141
    :pswitch_244
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_250

    .line 142
    sget-object v1, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handle MARS_MH_UIDIDLE_TRIGGER_MSG...."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_250
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 144
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_265

    .line 145
    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 146
    .local v2, "uid":I
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .restart local v3    # "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/FreecessController;->triggerLcdOnFreeze(ILjava/lang/String;)V

    .line 149
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "uid":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_265
    nop

    .line 340
    :goto_266
    return-void

    nop

    :pswitch_data_268
    .packed-switch 0x1
        :pswitch_244
        :pswitch_21f
        :pswitch_1fa
        :pswitch_1e3
        :pswitch_1c8
        :pswitch_1b3
        :pswitch_15a
        :pswitch_147
        :pswitch_11e
        :pswitch_112
        :pswitch_f7
        :pswitch_ec
        :pswitch_c8
        :pswitch_bf
        :pswitch_aa
        :pswitch_91
        :pswitch_78
        :pswitch_6f
        :pswitch_58
        :pswitch_42
        :pswitch_27
        :pswitch_1e
    .end packed-switch
.end method
