.class public Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;
.super Landroid/os/Handler;
.source "NetSpeedPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/dnba/NetSpeedPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LimitHandler"
.end annotation


# instance fields
.field speed:I

.field final synthetic this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

.field uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/dnba/NetSpeedPolicy;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 192
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 193
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 194
    return-void
.end method

.method private resetMessage(IJ)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .line 197
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 198
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->removeMessages(I)V

    .line 199
    :cond_11
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1e

    .line 200
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 201
    :cond_1e
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 205
    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetSpeedPolicy"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    const-wide/16 v5, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eq v2, v3, :cond_232

    const/16 v9, 0xb

    if-eq v2, v9, :cond_232

    const/16 v9, 0x11

    if-eq v2, v9, :cond_226

    const/16 v10, 0x13

    if-eq v2, v10, :cond_232

    const/4 v11, -0x1

    const-wide/16 v12, 0xbb8

    packed-switch v2, :pswitch_data_242

    goto/16 :goto_240

    .line 220
    :pswitch_3e
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->WifiConnected:Z
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$300(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->VPNConnected:Z
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$200(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_5d

    .line 224
    :cond_4f
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->saveAllAppsNetTraf()V

    .line 225
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v2, v7, v12, v13}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 226
    goto/16 :goto_240

    .line 221
    :cond_5d
    :goto_5d
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v2

    const-string/jumbo v3, "wifi not connect or vpn connect"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void

    .line 229
    :pswitch_6a
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->checkFGBGAppChange()I

    move-result v2

    iput v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->uid:I

    .line 231
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-boolean v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isScreenOn:Z

    if-eqz v2, :cond_dd

    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->WifiConnected:Z
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$300(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Z

    move-result v2

    if-eqz v2, :cond_dd

    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->VPNConnected:Z
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$200(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Z

    move-result v2

    if-eqz v2, :cond_89

    goto :goto_dd

    .line 236
    :cond_89
    iget v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->uid:I

    if-eqz v2, :cond_ad

    .line 237
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 238
    .local v2, "msg1":Landroid/os/Message;
    iget v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->uid:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 239
    iput v9, v2, Landroid/os/Message;->what:I

    .line 240
    iget-object v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v3

    const-string v9, "Limit BG app to FG,release limit"

    invoke-virtual {v3, v4, v9}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v3, v3, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    .end local v2    # "msg1":Landroid/os/Message;
    :cond_ad
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 245
    .local v2, "launchUid":I
    iget v3, v1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d0

    iget-object v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;
    invoke-static {v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$400(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->isNoNetworkUseApp(I)Z

    move-result v3

    if-nez v3, :cond_d0

    .line 246
    iget-object v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-boolean v3, v3, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isBlocked:Z

    if-nez v3, :cond_cb

    .line 247
    iget-object v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # invokes: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->checkAppNetworkStatus(Z)V
    invoke-static {v3, v4}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$500(Lcom/android/server/ibs/dnba/NetSpeedPolicy;Z)V

    .line 249
    :cond_cb
    iget-object v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # setter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastFGTotalSpeed:I
    invoke-static {v3, v11}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$602(Lcom/android/server/ibs/dnba/NetSpeedPolicy;I)I

    .line 253
    :cond_d0
    iget-object v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->saveAllAppsNetTraf()V

    .line 254
    invoke-direct {p0, v8, v5, v6}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    .line 255
    invoke-direct {p0, v7, v12, v13}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    .line 256
    goto/16 :goto_240

    .line 232
    .end local v2    # "launchUid":I
    :cond_dd
    :goto_dd
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v2

    const-string v3, " Screen off,wifi not connect or vpn connect "

    invoke-virtual {v2, v4, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 296
    :pswitch_e9
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-boolean v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isBlocked:Z

    if-eqz v2, :cond_f0

    .line 297
    return-void

    .line 298
    :cond_f0
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v8, v4, v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 299
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-boolean v4, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->needUpdateAvgSpeed:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->updateFGBGAppsNetSpeed(IZ)V

    .line 300
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # invokes: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->checkTotalNetworkStatus()Z
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$700(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Z

    .line 301
    goto/16 :goto_240

    .line 259
    :pswitch_107
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-boolean v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isBlocked:Z

    if-eqz v2, :cond_10e

    .line 260
    return-void

    .line 261
    :cond_10e
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-boolean v9, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->needUpdateAvgSpeed:Z

    invoke-virtual {v2, v8, v9}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->updateFGBGAppsNetSpeed(IZ)V

    .line 262
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v2, v7, v12, v13}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 263
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # invokes: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->checkTotalNetworkStatus()Z
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$700(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Z

    move-result v2

    if-nez v2, :cond_125

    return-void

    .line 264
    :cond_125
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getFGAppList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_14a

    .line 265
    const-string v2, "fg app list size is 0."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    const-string v3, "fg app list is NULL"

    invoke-virtual {v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->releaseAllAppsLimit(Ljava/lang/String;)V

    .line 267
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v8, v3, v4}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 268
    invoke-direct {p0, v7, v5, v6}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    .line 269
    return-void

    .line 272
    :cond_14a
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastFGTotalSpeed:I
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$600(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)I

    move-result v2

    if-ne v2, v11, :cond_167

    .line 273
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v2

    const-string/jumbo v5, "mLastFGTotalSpeed is 0."

    invoke-virtual {v2, v4, v5}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getFgTotalSpeed()I

    move-result v5

    # setter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastFGTotalSpeed:I
    invoke-static {v2, v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$602(Lcom/android/server/ibs/dnba/NetSpeedPolicy;I)I

    .line 277
    :cond_167
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getExtraspeed()I

    move-result v2

    iget-object v5, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getAvgPhySpeed()I

    move-result v5

    div-int/2addr v5, v8

    if-le v2, v5, :cond_1c7

    .line 278
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reFillBGAppList(),FG total net speed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getFgTotalSpeed()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "BG total net speed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getBgTotalSpeed()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " real total speed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 279
    invoke-virtual {v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getTotalSpeed()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " getAvgPhySpeed  = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getAvgPhySpeed()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {v2, v4, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->reFillBGAppList()V

    .line 281
    return-void

    .line 284
    :cond_1c7
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    const-string v5, "BGAppListEmpty"

    invoke-virtual {v2, v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    .line 285
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getBGAppList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1f3

    .line 287
    const-string v2, "bg app size is 0."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    invoke-virtual {v2, v5, v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 289
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v2, v10}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    .line 290
    :cond_1f2
    return-void

    .line 292
    :cond_1f3
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->checkAppNetworkStatus(Z)V
    invoke-static {v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$500(Lcom/android/server/ibs/dnba/NetSpeedPolicy;Z)V

    .line 293
    goto :goto_240

    .line 208
    :pswitch_1fa
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-boolean v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isScreenOn:Z

    if-eqz v2, :cond_21a

    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->VPNConnected:Z
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$200(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Z

    move-result v2

    if-eqz v2, :cond_209

    goto :goto_21a

    .line 212
    :cond_209
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mAvgPhySpeed:I

    .line 213
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->saveAllAppsNetTraf()V

    .line 215
    invoke-direct {p0, v8, v5, v6}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    .line 216
    invoke-direct {p0, v7, v12, v13}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    .line 217
    goto :goto_240

    .line 209
    :cond_21a
    :goto_21a
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v2

    const-string v3, "Screen off!"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void

    .line 304
    :cond_226
    iget v2, v1, Landroid/os/Message;->arg1:I

    iput v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->uid:I

    .line 305
    iget-object v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    const-string v4, "MSG_REMOVE_BG_SPEED_LIMIT"

    invoke-virtual {v3, v2, v4}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->releaseAppLimit(ILjava/lang/String;)V

    .line 306
    goto :goto_240

    .line 312
    :cond_232
    :pswitch_232
    invoke-direct {p0, v7, v5, v6}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    .line 313
    invoke-direct {p0, v8, v5, v6}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->resetMessage(IJ)V

    .line 314
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    const-string v3, "LCD off or VPN_CON or REMOVE ALL"

    invoke-virtual {v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->releaseAllAppsLimit(Ljava/lang/String;)V

    .line 315
    nop

    .line 319
    :goto_240
    return-void

    nop

    :pswitch_data_242
    .packed-switch 0x1
        :pswitch_1fa
        :pswitch_107
        :pswitch_e9
        :pswitch_6a
        :pswitch_3e
        :pswitch_232
    .end packed-switch
.end method
