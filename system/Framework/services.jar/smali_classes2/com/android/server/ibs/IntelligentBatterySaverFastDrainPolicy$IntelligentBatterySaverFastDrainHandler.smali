.class public Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;
.super Landroid/os/Handler;
.source "IntelligentBatterySaverFastDrainPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntelligentBatterySaverFastDrainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1099
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 1100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1101
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1105
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const-string v2, "IntelligentBatterySaverFastDrainPolicy"

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_d4

    :pswitch_9
    goto/16 :goto_d2

    .line 1150
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1151
    .local v0, "bitclear":I
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I
    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$4000(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)I

    move-result v2

    not-int v3, v0

    and-int/2addr v2, v3

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setSysState(I)V
    invoke-static {v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$4100(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    .line 1152
    goto/16 :goto_d2

    .line 1146
    .end local v0    # "bitclear":I
    :pswitch_1a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1147
    .local v0, "bitset":I
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I
    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$4000(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)I

    move-result v2

    or-int/2addr v2, v0

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setSysState(I)V
    invoke-static {v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$4100(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    .line 1148
    goto/16 :goto_d2

    .line 1133
    .end local v0    # "bitset":I
    :pswitch_28
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->isCheckBatteryDropState()Z
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$3400(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->isFastDrainRestrictionOn()Z
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$3500(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v0, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v0, v3

    :goto_3c
    if-ne v0, v3, :cond_d2

    .line 1134
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->checkBatteryInfo(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$3600(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;II)V

    goto/16 :goto_d2

    .line 1138
    :pswitch_49
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    const/16 v1, 0x20

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z
    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$3700(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1139
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->checkMusicSafe()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$3800(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 1141
    :cond_58
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    const/16 v1, 0x40

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z
    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$3700(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 1142
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->checkDownloadSafe()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$3900(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    goto :goto_d2

    .line 1125
    :pswitch_68
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2100(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)I

    move-result v0

    if-ne v0, v3, :cond_d2

    .line 1126
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->exitFastDrainRestriction()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$3300(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 1127
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # setter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I
    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2102(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)I

    .line 1128
    const-string/jumbo v0, "move to off state, message"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2200(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    goto :goto_d2

    .line 1110
    :pswitch_8a
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2100(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d2

    .line 1111
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->enterFastDrainRestriction()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$3000(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 1112
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # setter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I
    invoke-static {v0, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2102(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)I

    .line 1113
    const-string/jumbo v0, "move to state on, message"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2200(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    goto :goto_d2

    .line 1118
    :pswitch_ad
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->stop()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$3100(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 1119
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # setter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I
    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2102(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)I

    .line 1120
    const-string/jumbo v0, "stop, move to off state, message"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2200(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->resetBatteryInfo()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$3200(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 1123
    goto :goto_d2

    .line 1107
    :pswitch_cc
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->start()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2900(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 1108
    nop

    .line 1156
    :cond_d2
    :goto_d2
    return-void

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_ad
        :pswitch_8a
        :pswitch_68
        :pswitch_49
        :pswitch_28
        :pswitch_9
        :pswitch_1a
        :pswitch_b
    .end packed-switch
.end method
