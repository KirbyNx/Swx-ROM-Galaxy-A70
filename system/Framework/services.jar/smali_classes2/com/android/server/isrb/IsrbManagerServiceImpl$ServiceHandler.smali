.class final Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;
.super Landroid/os/Handler;
.source "IsrbManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/isrb/IsrbManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 83
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 84
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "IsrbManagerServiceImpl"

    if-eqz v0, :cond_6d

    const/4 v3, 0x1

    const-string v4, "Set ISRB Disabled"

    if-eq v0, v3, :cond_56

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_28

    if-eq v0, v1, :cond_17

    goto/16 :goto_ac

    .line 115
    :cond_17
    const-string v0, "SetupwizardFinished, show ISRB alert."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->showSystemErrDialog()V

    .line 117
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->initBroadcastReceiver()V

    .line 118
    goto/16 :goto_ac

    .line 108
    :cond_28
    const-string v0, "Timer is running, waiting for SetupwizardFinished."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->isSetupwizardFinished()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 110
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;
    invoke-static {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$200(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_ac

    .line 112
    :cond_41
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;
    invoke-static {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$200(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 113
    goto :goto_ac

    .line 104
    :cond_4d
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->rebootExitisrbInternal()V

    .line 106
    goto :goto_ac

    .line 98
    :cond_56
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string/jumbo v0, "sys.isrblevel.callreboot"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100
    .local v0, "callreboot":Z
    if-nez v0, :cond_ac

    .line 101
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.enable_isrb"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    .line 91
    .end local v0    # "callreboot":Z
    :cond_6d
    const-string v0, "Fake time Check it in Handler thread"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    const-wide/32 v2, 0x5e0b7080

    const-string/jumbo v4, "ro.build.date.utc"

    invoke-static {v4, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    # setter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBuildtime:J
    invoke-static {v0, v2, v3}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$002(Lcom/android/server/isrb/IsrbManagerServiceImpl;J)J

    .line 93
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBuildtime:J
    invoke-static {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$000(Lcom/android/server/isrb/IsrbManagerServiceImpl;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 94
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$100(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_time"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$100(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_time_zone"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    nop

    .line 122
    :cond_ac
    :goto_ac
    return-void
.end method
