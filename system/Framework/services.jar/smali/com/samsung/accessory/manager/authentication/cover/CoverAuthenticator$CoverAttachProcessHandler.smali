.class final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;
.super Landroid/os/Handler;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverAttachProcessHandler"
.end annotation


# static fields
.field public static final MSG_ATTACH:I = 0x0

.field public static final MSG_DETACH:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method private constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 2

    .line 1078
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p2, "x1"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;

    .line 1078
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 1084
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1085
    .local v0, "bundle":Landroid/os/Bundle;
    const-wide/16 v1, 0x0

    .line 1086
    .local v1, "whenNanos":J
    if-eqz v0, :cond_f

    .line 1087
    const-string/jumbo v3, "when"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1089
    :cond_f
    iget v3, p1, Landroid/os/Message;->what:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_ab

    if-eq v3, v7, :cond_1b

    goto/16 :goto_c6

    .line 1099
    :cond_1b
    invoke-virtual {p0, v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->removeMessages(I)V

    .line 1101
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1102
    .local v3, "isSensor":Z
    if-eqz v3, :cond_73

    .line 1103
    iget-object v8, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;
    invoke-static {v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2900(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/DetachCheck;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/accessory/manager/DetachCheck;->isAuthChipExistBySensor()I

    move-result v8

    .line 1104
    .local v8, "result":I
    if-ne v8, v7, :cond_4d

    .line 1105
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "auth chip exists"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 v5, 0xa

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addSensorRecord(I)V
    invoke-static {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1107
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 v5, 0x31

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V
    invoke-static {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;C)V

    .line 1108
    goto/16 :goto_c6

    .line 1109
    :cond_4d
    const/4 v9, 0x2

    if-ne v8, v9, :cond_6c

    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateByNfc:I
    invoke-static {v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$3000(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v9

    if-ne v9, v7, :cond_6c

    .line 1110
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 v5, 0x14

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addSensorRecord(I)V
    invoke-static {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1111
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 v5, 0x32

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V
    invoke-static {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;C)V

    .line 1112
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I
    invoke-static {v4, v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2402(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    .line 1113
    goto :goto_c6

    .line 1115
    :cond_6c
    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 v9, 0x30

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V
    invoke-static {v7, v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;C)V

    .line 1119
    .end local v8    # "result":I
    :cond_73
    const-wide/16 v7, 0x0

    .line 1120
    .local v7, "delayedMs":J
    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-wide v9, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    cmp-long v4, v9, v4

    if-eqz v4, :cond_8c

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-wide v4, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    sub-long v4, v1, v4

    const-wide/32 v9, 0x1dcd6500

    cmp-long v4, v4, v9

    if-gez v4, :cond_8c

    .line 1122
    const-wide/16 v7, 0x1f4

    .line 1124
    :cond_8c
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$3100(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    const-wide/16 v9, 0x3e8

    invoke-virtual {v4, v9, v10}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1125
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J
    invoke-static {v4, v9, v10}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$3202(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)J

    .line 1126
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I
    invoke-static {v4, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1502(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    .line 1127
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V
    invoke-static {v4, v7, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V

    .line 1128
    goto :goto_c6

    .line 1091
    .end local v3    # "isSensor":Z
    .end local v7    # "delayedMs":J
    :cond_ab
    invoke-virtual {p0, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->removeMessages(I)V

    .line 1092
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I
    invoke-static {v3, v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$802(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    .line 1093
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iput-wide v1, v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    .line 1094
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J
    invoke-static {v3, v8, v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2802(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)J

    .line 1095
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V
    invoke-static {v3, v7, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V

    .line 1096
    nop

    .line 1131
    :goto_c6
    return-void
.end method
