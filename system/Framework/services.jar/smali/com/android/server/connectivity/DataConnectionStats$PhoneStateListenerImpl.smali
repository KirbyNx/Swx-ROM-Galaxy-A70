.class Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;
.super Landroid/telephony/PhoneStateListener;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DataConnectionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DataConnectionStats;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DataConnectionStats;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 150
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    .line 151
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    .line 152
    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .registers 3
    .param p1, "direction"    # I

    .line 174
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    # invokes: Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V
    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$300(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 175
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 168
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    # setter for: Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$402(Lcom/android/server/connectivity/DataConnectionStats;I)I

    .line 169
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    # invokes: Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V
    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$300(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 170
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .line 161
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    # setter for: Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$102(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 162
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    # setter for: Lcom/android/server/connectivity/DataConnectionStats;->mNrState:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/DataConnectionStats;->access$202(Lcom/android/server/connectivity/DataConnectionStats;I)I

    .line 163
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    # invokes: Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V
    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$300(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 164
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 156
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    # setter for: Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$002(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 157
    return-void
.end method
