.class public Lcom/android/server/am/MARsHandler;
.super Ljava/lang/Object;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsHandler$MainHandler;,
        Lcom/android/server/am/MARsHandler$MainThread;,
        Lcom/android/server/am/MARsHandler$MARsHandlerHolder;
    }
.end annotation


# static fields
.field private static final GET_BATTERYSTAT_INTERVAL:J = 0x2932e00L

.field static final MARS_MH_CALL_SETMODE_MSG:I = 0x5

.field static final MARS_MH_CANCEL_POLICY_MSG:I = 0x8

.field static final MARS_MH_FIRST_TRIGGER_MSG:I = 0x1

.field static final MARS_MH_GET_BATTERYSTAT_MSG:I = 0x4

.field static final MARS_MH_INIT_DISABLED_MSG:I = 0xd

.field static final MARS_MH_NOTIFY_DEVICECARE_MSG:I = 0xb

.field static final MARS_MH_REPEAT_TRIGGER_MSG:I = 0x2

.field static final MARS_MH_RUN_POLICY_SPECIFIC_PKG_MSG:I = 0x7

.field static final MARS_MH_TIME_CHANGED_MSG:I = 0x6

.field static final MARS_MH_TRIGGER_POLICY_MSG:I = 0x9

.field static final MARS_MH_UPDATE_BIGDATA_INFO_MSG:I = 0xc

.field static final MARS_MH_UPDATE_DISABLE_MSG:I = 0xa

.field static final MARS_MH_UPDATE_PACKAGES_MSG:I = 0x3

.field private static final REPEAT_TRIGGER_INTERVAL:J = 0x3a98L

.field private static final SEND_BIGDATAINFO_INTERVAL:J = 0x5265c00L

.field static final TAG:Ljava/lang/String; = "MARsHandler"

.field private static final UPDATE_DISABLE_INTERVAL:J = 0x5265c00L

.field private static final UPDATE_DISABLE_INTERVAL_DEBUG:J = 0x36ee80L

.field private static final UPDATE_PACKAGES_INTERVAL:J = 0x927c0L


# instance fields
.field mContext:Landroid/content/Context;

.field mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MARsHandler$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/MARsHandler$1;

    .line 25
    invoke-direct {p0}, Lcom/android/server/am/MARsHandler;-><init>()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/MARsHandler;
    .registers 1

    .line 59
    # getter for: Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;
    invoke-static {}, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->access$100()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    return-object v0
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    iput-object p1, p0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 78
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsHandler;->setContext(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/android/server/am/MARsHandler$MainThread;

    const-string v1, "MARsMainThread"

    const/4 v2, -0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/MARsHandler$MainThread;-><init>(Lcom/android/server/am/MARsHandler;Ljava/lang/String;I)V

    .line 74
    .local v0, "mMainThread":Lcom/android/server/am/MARsHandler$MainThread;
    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler$MainThread;->start()V

    .line 75
    return-void
.end method

.method removeMessages(I)V
    .registers 3
    .param p1, "what"    # I

    .line 391
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    .line 392
    return-void

    .line 394
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    .line 395
    return-void
.end method

.method removeMessagesByObj(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    .line 399
    return-void

    .line 401
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 402
    return-void
.end method

.method sendBigdataInfoToHQM(Z)V
    .registers 6
    .param p1, "now"    # Z

    .line 383
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 385
    :cond_5
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    .line 386
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 387
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-eqz p1, :cond_17

    const-wide/16 v2, 0x0

    goto :goto_1a

    :cond_17
    const-wide/32 v2, 0x5265c00

    :goto_1a
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 388
    return-void
.end method

.method sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 290
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    .line 291
    return-void

    .line 293
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 299
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 300
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2f

    .line 301
    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_34

    .line 303
    :cond_2f
    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 305
    :goto_34
    return-void
.end method

.method sendCancelPolicyMsgToMainHandler(Ljava/util/ArrayList;II)V
    .registers 7
    .param p2, "policyNum"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 331
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "packageList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 334
    const-string/jumbo v1, "policy-num"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 338
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 339
    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    return-void
.end method

.method public sendFirstTriggerMsgToMainHandler()V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    .line 255
    return-void

    .line 257
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    .line 258
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 259
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    return-void
.end method

.method sendGetBatteryStatMsgToMainHandler(Z)V
    .registers 6
    .param p1, "now"    # Z

    .line 281
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    .line 282
    return-void

    .line 284
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 286
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-eqz p1, :cond_16

    const-wide/16 v2, 0x0

    goto :goto_19

    :cond_16
    const-wide/32 v2, 0x2932e00

    :goto_19
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 287
    return-void
.end method

.method sendInitDisabledMsgToMainHandler(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 372
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    .line 373
    return-void

    .line 374
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 375
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 378
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 379
    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    return-void
.end method

.method sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;)V
    .registers 5
    .param p1, "extraType"    # Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    .line 361
    return-void

    .line 363
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "extraType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 367
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 368
    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 369
    return-void
.end method

.method public sendRepeatTriggerMsgToMainHandler()V
    .registers 5

    .line 263
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    .line 264
    return-void

    .line 266
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    .line 267
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 268
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    return-void
.end method

.method sendRunPolicySepcificPkgMsgToMainHandler(Ljava/util/ArrayList;ILjava/lang/String;I)V
    .registers 8
    .param p2, "policyNum"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 318
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 320
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "packageList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 321
    const-string/jumbo v1, "policy-num"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    const-string/jumbo v1, "trigger-reason"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 326
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 327
    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    return-void
.end method

.method sendTimeChangedMsgToMainHandler(J)V
    .registers 6
    .param p1, "changedTime"    # J

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "changedTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 312
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 313
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 314
    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 315
    return-void
.end method

.method sendTriggerPolicyMsgToMainHandler()V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 344
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    return-void
.end method

.method sendUpdateDisableMsgToMainHandler(Z)V
    .registers 7
    .param p1, "debug"    # Z

    .line 348
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    .line 349
    return-void

    .line 350
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "debug"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 353
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    .line 354
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 355
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 356
    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-eqz p1, :cond_27

    const-wide/32 v3, 0x36ee80

    goto :goto_2a

    :cond_27
    const-wide/32 v3, 0x5265c00

    :goto_2a
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 357
    return-void
.end method

.method sendUpdatePkgMsgToMainHandler(Z)V
    .registers 6
    .param p1, "now"    # Z

    .line 272
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    .line 273
    return-void

    .line 275
    :cond_5
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    .line 276
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-eqz p1, :cond_16

    const-wide/16 v2, 0x0

    goto :goto_19

    :cond_16
    const-wide/32 v2, 0x927c0

    :goto_19
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 278
    return-void
.end method
