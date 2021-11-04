.class public Lcom/android/server/am/FreecessHandler;
.super Ljava/lang/Object;
.source "FreecessHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/FreecessHandler$MainHandler;,
        Lcom/android/server/am/FreecessHandler$FreecessThread;,
        Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;
    }
.end annotation


# static fields
.field static final FREECESS_CALM_MODE_CANCEL_MSG:I = 0x16

.field static final FREECESS_CALM_MODE_REPEAT_MSG:I = 0x15

.field static final FREECESS_CALM_MODE_TRIGGER_MSG:I = 0x14

.field static final FREECESS_CHANGE_TO_FREEZEABLE_MSG:I = 0x2

.field static final FREECESS_CHANGE_TO_FROZEN_MSG:I = 0x3

.field static final FREECESS_CHECK_FROZEN_BINDER_MSG:I = 0x8

.field static final FREECESS_ENABLE_DELAYED_MSG:I = 0xd

.field static final FREECESS_LCD_ON_FREEZE_MSG:I = 0x4

.field static final FREECESS_LRS_MSG:I = 0x11

.field static final FREECESS_OLAF_MSG:I = 0x9

.field static final FREECESS_OLAF_TIMEOUT_MSG:I = 0xa

.field static final FREECESS_PACKAGE_UNFREEZE_ALL_MSG:I = 0xc

.field static final FREECESS_PENDING_ALARM_MSG:I = 0x10

.field static final FREECESS_PENDING_BROADCAST_MSG:I = 0xb

.field static final FREECESS_PROC_POST_MONITORING_MSG:I = 0x12

.field static final FREECESS_REMOVE_PACKAGE_MSG:I = 0x13

.field static final FREECESS_RESET_ALL_STATE_MSG:I = 0x6

.field static final FREECESS_RESET_STATE_MSG:I = 0x5

.field static final FREECESS_SETTLEMENT_PKG_MSG:I = 0x7

.field static final FREECESS_SSRM_CHANGED_MSG:I = 0xe

.field static final FREECESS_UIDIDLE_CHECK_MSG:I = 0x1

.field static final FREECESS_UNFREEZE_ACTIVE_PKGS_MSG:I = 0xf

.field public static final OLAF_TIMEOUT_API_MAX_INTERVAL:I = 0x1388

.field public static final OLAF_TIMEOUT_DELAY_INTERVAL:I = 0xbb8

.field static TAG:Ljava/lang/String; = null

.field static final WATCHDOG_PRE_ACTION_TO_UFZ_ALL_INTERVAL:I = 0x1388


# instance fields
.field private CHECK_FROZEN_BINDER_DELAY_INTERVAL:I

.field private DUMPSTATE_TIMEOUT_INTERVAL:I

.field private final FREECESS_THREAD_NAME:Ljava/lang/String;

.field private LCD_ON_DELAY_INTERVAL:I

.field private LCD_ON_FREECESS_CALM_MODE_DELAY_INTERVAL:I

.field private LCD_ON_FREECESS_CHECK_DELAY:I

.field private LCD_ON_FREECESS_DELAY_INTERVAL:I

.field private PROC_POST_MONITORING_DELAY_INTERVAL:I

.field private SMARTSWITCH_TIMEOUT_INTERVAL:I

.field private UID_IDLE_CHECK_INTERVAL:I

.field private lastDelayedTime:J

.field private mContext:Landroid/content/Context;

.field mFreecessThread:Lcom/android/server/am/FreecessHandler$FreecessThread;

.field public mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/android/server/am/FreecessHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "FreecessHandler"

    iput-object v0, p0, Lcom/android/server/am/FreecessHandler;->FREECESS_THREAD_NAME:Ljava/lang/String;

    .line 28
    const v1, 0xfde8

    iput v1, p0, Lcom/android/server/am/FreecessHandler;->UID_IDLE_CHECK_INTERVAL:I

    .line 29
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_DELAY_INTERVAL:I

    .line 30
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/server/am/FreecessHandler;->CHECK_FROZEN_BINDER_DELAY_INTERVAL:I

    .line 31
    const v2, 0xea60

    iput v2, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_CHECK_DELAY:I

    .line 32
    const/16 v2, 0x2710

    iput v2, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_DELAY_INTERVAL:I

    .line 33
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/am/FreecessHandler;->PROC_POST_MONITORING_DELAY_INTERVAL:I

    .line 36
    iput v1, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_CALM_MODE_DELAY_INTERVAL:I

    .line 39
    const v1, 0x493e0

    iput v1, p0, Lcom/android/server/am/FreecessHandler;->DUMPSTATE_TIMEOUT_INTERVAL:I

    .line 40
    const v1, 0xa1220

    iput v1, p0, Lcom/android/server/am/FreecessHandler;->SMARTSWITCH_TIMEOUT_INTERVAL:I

    .line 71
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/FreecessHandler;->lastDelayedTime:J

    .line 74
    new-instance v1, Lcom/android/server/am/FreecessHandler$FreecessThread;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/FreecessHandler$FreecessThread;-><init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/FreecessHandler;->mFreecessThread:Lcom/android/server/am/FreecessHandler$FreecessThread;

    .line 75
    invoke-virtual {v1}, Lcom/android/server/am/FreecessHandler$FreecessThread;->start()V

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/FreecessHandler$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/FreecessHandler$1;

    .line 18
    invoke-direct {p0}, Lcom/android/server/am/FreecessHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/FreecessHandler;
    .registers 1

    .line 83
    # getter for: Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;
    invoke-static {}, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->access$100()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 2

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/FreecessHandler;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 96
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-eqz v0, :cond_7

    .line 97
    invoke-virtual {v0, p1}, Lcom/android/server/am/FreecessHandler$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_7
    return-void
.end method

.method removeBgTriggerMsg()V
    .registers 3

    .line 712
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 713
    return-void

    .line 715
    :cond_5
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeBgTriggerMsg...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 717
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 718
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 719
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 720
    return-void
.end method

.method removeBgTriggerMsgByObj(ILjava/lang/Object;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 703
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 704
    return-void

    .line 706
    :cond_5
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_28

    .line 707
    sget-object v0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeBgTriggerMsgByObj....what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_28
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 709
    return-void
.end method

.method public removeCalmModeFreezeMsg()V
    .registers 3

    .line 487
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 488
    return-void

    .line 489
    :cond_5
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 490
    return-void
.end method

.method removeMessages(I)V
    .registers 3
    .param p1, "what"    # I

    .line 723
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-eqz v0, :cond_7

    .line 724
    invoke-virtual {v0, p1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 726
    :cond_7
    return-void
.end method

.method removeOLAFTimeOutMsg()V
    .registers 3

    .line 695
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 696
    return-void

    .line 698
    :cond_5
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeOLAFTimeOutMsg...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 700
    return-void
.end method

.method public sendCalmModeCancelMsg()V
    .registers 4

    .line 478
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 479
    return-void

    .line 481
    :cond_5
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 482
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 483
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 484
    return-void
.end method

.method public sendCalmModeRepeatMsg(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 465
    return-void

    .line 467
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 473
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 474
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    iget v3, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_CALM_MODE_DELAY_INTERVAL:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 475
    return-void
.end method

.method public sendCalmModeTriggerMsg(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 452
    .local p1, "allowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 453
    return-void

    .line 454
    :cond_5
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 455
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 456
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "list"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 458
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 459
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 460
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 461
    return-void
.end method

.method sendChangeToFreezeableMsg(Ljava/lang/String;IZLjava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isDelay"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 366
    return-void

    .line 368
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 369
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 371
    const-string/jumbo v1, "isDelay"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 375
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 377
    if-eqz p3, :cond_4c

    .line 378
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/am/FreecessHandler$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 379
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result v3

    if-eqz v3, :cond_45

    iget v3, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_DELAY_INTERVAL:I

    goto :goto_47

    :cond_45
    iget v3, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_DELAY_INTERVAL:I

    :goto_47
    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_51

    .line 381
    :cond_4c
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    :cond_51
    :goto_51
    return-void
.end method

.method sendChangeToFrozenMsg(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 387
    return-void

    .line 389
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 390
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 395
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 397
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/am/FreecessHandler$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 398
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget v3, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_DELAY_INTERVAL:I

    goto :goto_3f

    :cond_3d
    iget v3, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_DELAY_INTERVAL:I

    :goto_3f
    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 399
    :cond_43
    return-void
.end method

.method sendFreecessSettlementMsg(Ljava/lang/String;IIIIIZZ)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "appSyncFlag"    # I
    .param p5, "packetMonitorFlag"    # I
    .param p6, "disableWakelockFlag"    # I
    .param p7, "checkFrozenBinder"    # Z
    .param p8, "isLcdOnTrigger"    # Z

    .line 521
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 522
    return-void

    .line 524
    :cond_5
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 526
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 527
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 530
    const-string v3, "appSyncFlag"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    const-string/jumbo v3, "packetMonitorFlag"

    invoke-virtual {v1, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    const-string v3, "disableWakelockFlag"

    invoke-virtual {v1, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    const-string/jumbo v3, "isLcdOnTrigger"

    invoke-virtual {v1, v3, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 534
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 536
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 539
    if-eqz p7, :cond_5c

    .line 540
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 541
    .local v3, "msgForCFB":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 542
    .local v4, "extrasForCFB":Landroid/os/Bundle;
    invoke-virtual {v4, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 543
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 544
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    iget v5, p0, Lcom/android/server/am/FreecessHandler;->CHECK_FROZEN_BINDER_DELAY_INTERVAL:I

    int-to-long v5, v5

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 546
    .end local v3    # "msgForCFB":Landroid/os/Message;
    .end local v4    # "extrasForCFB":Landroid/os/Bundle;
    :cond_5c
    return-void
.end method

.method sendLRsMsg(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "uid"    # I

    .line 585
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 586
    return-void

    .line 588
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 589
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 590
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 592
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 593
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 595
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    return-void
.end method

.method sendLcdOnFreezeTriggerMsg(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 402
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 403
    return-void

    .line 405
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 410
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 412
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    return-void
.end method

.method sendOLAFMsg(ZLjava/lang/String;I)V
    .registers 7
    .param p1, "enterFlag"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 549
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 550
    return-void

    .line 552
    :cond_5
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 554
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 555
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "enterFlag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 556
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 560
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 562
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 563
    return-void
.end method

.method sendOLAFTimeOutMsg(J)V
    .registers 9
    .param p1, "estimatedTime"    # J

    .line 566
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 567
    return-void

    .line 569
    :cond_5
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 570
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xbb8

    .line 571
    .local v1, "delay":I
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_28

    .line 572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 573
    .local v2, "now":J
    sub-long v4, p1, v2

    long-to-int v1, v4

    .line 574
    const/16 v4, 0x1388

    if-le v1, v4, :cond_20

    .line 575
    const/16 v1, 0x1388

    .line 576
    :cond_20
    if-gtz v1, :cond_28

    .line 577
    iget-object v4, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v4, v0}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 578
    return-void

    .line 581
    .end local v2    # "now":J
    :cond_28
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 582
    return-void
.end method

.method sendPendingAlarmMsg(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 624
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 625
    return-void

    .line 627
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 628
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 632
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 634
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 635
    return-void
.end method

.method sendPendingBroadcastMsg(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 610
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 611
    return-void

    .line 613
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 614
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 617
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 618
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 620
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    return-void
.end method

.method sendProcPostMonitoringMsg()V
    .registers 5

    .line 599
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 600
    return-void

    .line 603
    :cond_5
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 604
    return-void

    .line 605
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 606
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    iget v2, p0, Lcom/android/server/am/FreecessHandler;->PROC_POST_MONITORING_DELAY_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 607
    return-void
.end method

.method sendRemovePackageMsg(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 681
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 682
    return-void

    .line 684
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 685
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 688
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 689
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 691
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 692
    return-void
.end method

.method public sendResetAllStateMsg(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 432
    return-void

    .line 434
    :cond_5
    const-string v0, "Watchdog_HALF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 435
    .local v0, "isWatchdogHalf":Z
    if-eqz v0, :cond_14

    .line 436
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->handleResetAllPreAction()V

    .line 438
    :cond_14
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 439
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 440
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "reason"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 443
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 444
    if-eqz v0, :cond_38

    .line 445
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3d

    .line 447
    :cond_38
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 448
    :goto_3d
    return-void
.end method

.method sendResetStateMsg(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 416
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 417
    return-void

    .line 419
    :cond_5
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 420
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 425
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 427
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    return-void
.end method

.method sendSCPMChangedPkgMsgToDBHandler()V
    .registers 5

    .line 673
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 674
    return-void

    .line 676
    :cond_5
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 677
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 678
    return-void
.end method

.method sendSetFreecessEnableDelayedMsg(I)V
    .registers 10
    .param p1, "type"    # I

    .line 649
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 650
    return-void

    .line 652
    :cond_5
    iget v0, p0, Lcom/android/server/am/FreecessHandler;->DUMPSTATE_TIMEOUT_INTERVAL:I

    .line 653
    .local v0, "delay":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_c

    .line 654
    iget v0, p0, Lcom/android/server/am/FreecessHandler;->SMARTSWITCH_TIMEOUT_INTERVAL:I

    .line 657
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 659
    .local v1, "currentTime":J
    iget-wide v3, p0, Lcom/android/server/am/FreecessHandler;->lastDelayedTime:J

    sub-long/2addr v3, v1

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-gez v3, :cond_3d

    .line 660
    int-to-long v3, v0

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/am/FreecessHandler;->lastDelayedTime:J

    .line 661
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 662
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 663
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 665
    iget-object v5, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 666
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 668
    iget-object v5, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 670
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_3d
    return-void
.end method

.method sendUidIdleCheckMsg(ILjava/lang/String;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 345
    return-void

    .line 347
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 348
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 352
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 354
    iget-object v3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/am/FreecessHandler$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 356
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result v3

    if-eqz v3, :cond_37

    iget v3, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_CHECK_DELAY:I

    goto :goto_39

    :cond_37
    iget v3, p0, Lcom/android/server/am/FreecessHandler;->UID_IDLE_CHECK_INTERVAL:I

    :goto_39
    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5e

    .line 358
    :cond_3e
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v2, :cond_5e

    .line 359
    sget-object v2, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already hasMessage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_5e
    :goto_5e
    return-void
.end method

.method public sendUnfreezeActivePackagesMsg(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 495
    return-void

    .line 497
    :cond_5
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 498
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 499
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 502
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 503
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 504
    return-void
.end method

.method sendUnfreezeAllMsg()V
    .registers 3

    .line 638
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    .line 639
    return-void

    .line 641
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 642
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->removeMessages(I)V

    .line 644
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 645
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 646
    return-void
.end method
