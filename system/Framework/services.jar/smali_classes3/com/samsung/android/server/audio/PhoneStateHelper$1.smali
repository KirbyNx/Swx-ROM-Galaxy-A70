.class Lcom/samsung/android/server/audio/PhoneStateHelper$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/audio/PhoneStateHelper;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/audio/PhoneStateHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 93
    iput-object p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 97
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 101
    if-eqz p1, :cond_71

    .line 102
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 103
    .local v0, "updateState":I
    iget-object v1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    # getter for: Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I
    invoke-static {v1}, Lcom/samsung/android/server/audio/PhoneStateHelper;->access$000(Lcom/samsung/android/server/audio/PhoneStateHelper;)I

    move-result v1

    if-eq v0, v1, :cond_3f

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL State is changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    # getter for: Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I
    invoke-static {v2}, Lcom/samsung/android/server/audio/PhoneStateHelper;->access$000(Lcom/samsung/android/server/audio/PhoneStateHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.PhoneStateHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3a

    .line 106
    const-string v1, "l_call_ril_state_connected=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 110
    :cond_3a
    iget-object v1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    # setter for: Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I
    invoke-static {v1, v0}, Lcom/samsung/android/server/audio/PhoneStateHelper;->access$002(Lcom/samsung/android/server/audio/PhoneStateHelper;I)I

    .line 114
    :cond_3f
    iget-object v1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 115
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    .line 114
    # invokes: Lcom/samsung/android/server/audio/PhoneStateHelper;->is2GTDMANetwork(I)Z
    invoke-static {v1, v2}, Lcom/samsung/android/server/audio/PhoneStateHelper;->access$100(Lcom/samsung/android/server/audio/PhoneStateHelper;I)Z

    move-result v1

    .line 116
    .local v1, "update2GTDMANetwork":Z
    iget-object v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    # getter for: Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z
    invoke-static {v2}, Lcom/samsung/android/server/audio/PhoneStateHelper;->access$200(Lcom/samsung/android/server/audio/PhoneStateHelper;)Z

    move-result v2

    if-eq v2, v1, :cond_71

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "l_call_2g_tdma="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    if-eqz v1, :cond_60

    .line 120
    const-string v3, "true"

    goto :goto_62

    .line 121
    :cond_60
    const-string v3, "false"

    :goto_62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 122
    iget-object v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    # setter for: Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z
    invoke-static {v2, v1}, Lcom/samsung/android/server/audio/PhoneStateHelper;->access$202(Lcom/samsung/android/server/audio/PhoneStateHelper;Z)Z

    .line 126
    .end local v0    # "updateState":I
    .end local v1    # "update2GTDMANetwork":Z
    :cond_71
    return-void
.end method
