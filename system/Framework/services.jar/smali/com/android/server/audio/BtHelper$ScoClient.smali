.class Lcom/android/server/audio/BtHelper$ScoClient;
.super Ljava/lang/Object;
.source "BtHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/BtHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field final synthetic this$0:Lcom/android/server/audio/BtHelper;


# direct methods
.method constructor <init>(Lcom/android/server/audio/BtHelper;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 822
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput-object p2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    .line 824
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    .line 825
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/BtHelper$ScoClient;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/BtHelper$ScoClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 818
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    move-result v0

    return v0
.end method

.method private requestScoState(II)Z
    .registers 13
    .param p1, "state"    # I
    .param p2, "scoAudioMode"    # I

    .line 862
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->checkScoAudioState()V
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$200(Lcom/android/server/audio/BtHelper;)V

    .line 863
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", scoAudioMode="

    const/4 v2, 0x1

    const-string v3, "AS.BtHelper"

    if-eq v0, v2, :cond_44

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: state="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", num SCO clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 865
    # getter for: Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 864
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return v2

    .line 868
    :cond_44
    const/16 v0, 0xc

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne p1, v0, :cond_1dc

    .line 871
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    const/4 v8, 0x2

    # invokes: Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    invoke-static {v0, v8}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 874
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getModeOwnerPid()I

    move-result v0

    .line 875
    .local v0, "modeOwnerPid":I
    if-eqz v0, :cond_87

    iget v9, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    if-eq v0, v9, :cond_87

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestScoState: audio mode is not NORMAL and modeOwnerPid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " != creatorPid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 879
    return v7

    .line 881
    :cond_87
    iget-object v9, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v9}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v9

    if-eqz v9, :cond_d7

    if-eq v9, v6, :cond_cf

    if-eq v9, v5, :cond_c3

    if-eq v9, v4, :cond_bc

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestScoState: failed to connect in state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 939
    # getter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 938
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 941
    return v7

    .line 928
    :cond_bc
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v1, v2}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 929
    goto/16 :goto_294

    .line 931
    :cond_c3
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v1, v6}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 932
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    invoke-static {v1, v2}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 933
    goto/16 :goto_294

    .line 935
    :cond_cf
    const-string/jumbo v1, "requestScoState: already in ACTIVE mode, simply return"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    goto/16 :goto_294

    .line 883
    :cond_d7
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioMode:I
    invoke-static {v1, p2}, Lcom/android/server/audio/BtHelper;->access$602(Lcom/android/server/audio/BtHelper;I)I

    .line 884
    const/4 v1, -0x1

    if-ne p2, v1, :cond_12d

    .line 885
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioMode:I
    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$602(Lcom/android/server/audio/BtHelper;I)I

    .line 886
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_12d

    .line 887
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 888
    # getter for: Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bluetooth_sco_channel_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 890
    # getter for: Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 887
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioMode:I
    invoke-static {v1, v4}, Lcom/android/server/audio/BtHelper;->access$602(Lcom/android/server/audio/BtHelper;I)I

    .line 892
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v1

    if-gt v1, v8, :cond_128

    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v1

    if-gez v1, :cond_12d

    .line 893
    :cond_128
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioMode:I
    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$602(Lcom/android/server/audio/BtHelper;I)I

    .line 897
    :cond_12d
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-nez v1, :cond_165

    .line 898
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$900(Lcom/android/server/audio/BtHelper;)Z

    move-result v1

    if-eqz v1, :cond_144

    .line 899
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v1, v2}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    goto/16 :goto_294

    .line 901
    :cond_144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 902
    # getter for: Lcom/android/server/audio/BtHelper;->mScoAudioMode:I
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 905
    return v7

    .line 909
    :cond_165
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_18e

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestScoState: no active device while connecting, mScoAudioMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 911
    # getter for: Lcom/android/server/audio/BtHelper;->mScoAudioMode:I
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 910
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 914
    return v7

    .line 916
    :cond_18e
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 917
    # getter for: Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mScoAudioMode:I
    invoke-static {v5}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v5

    .line 916
    # invokes: Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    invoke-static {v1, v4, v5}, Lcom/android/server/audio/BtHelper;->access$1000(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 918
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v1, v6}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    goto/16 :goto_294

    .line 920
    :cond_1ad
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestScoState: connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed, mScoAudioMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 921
    # getter for: Lcom/android/server/audio/BtHelper;->mScoAudioMode:I
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 920
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    invoke-static {v1, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 924
    return v7

    .line 943
    .end local v0    # "modeOwnerPid":I
    :cond_1dc
    const/16 v0, 0xa

    if-ne p1, v0, :cond_294

    .line 944
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v0

    if-eq v0, v2, :cond_289

    if-eq v0, v6, :cond_211

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestScoState: failed to disconnect in state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 980
    # getter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->access$500(Lcom/android/server/audio/BtHelper;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 982
    return v7

    .line 946
    :cond_211
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-nez v0, :cond_24d

    .line 947
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$900(Lcom/android/server/audio/BtHelper;)Z

    move-result v0

    if-eqz v0, :cond_227

    .line 948
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v0, v5}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    goto :goto_295

    .line 950
    :cond_227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 951
    # getter for: Lcom/android/server/audio/BtHelper;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 950
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 953
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 955
    return v7

    .line 959
    :cond_24d
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_260

    .line 960
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 961
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 963
    goto :goto_295

    .line 965
    :cond_260
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$800(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    .line 966
    # getter for: Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->access$700(Lcom/android/server/audio/BtHelper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mScoAudioMode:I
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->access$600(Lcom/android/server/audio/BtHelper;)I

    move-result v3

    .line 965
    # invokes: Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    invoke-static {v0, v1, v3}, Lcom/android/server/audio/BtHelper;->access$1100(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    if-eqz v0, :cond_27e

    .line 967
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v0, v4}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    goto :goto_295

    .line 969
    :cond_27e
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 970
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 973
    goto :goto_295

    .line 975
    :cond_289
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # setter for: Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$502(Lcom/android/server/audio/BtHelper;I)I

    .line 976
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # invokes: Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    invoke-static {v0, v7}, Lcom/android/server/audio/BtHelper;->access$400(Lcom/android/server/audio/BtHelper;I)V

    .line 977
    goto :goto_295

    .line 943
    :cond_294
    :goto_294
    nop

    .line 985
    :goto_295
    return v2
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$100(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker;->postScoClientDied(Ljava/lang/Object;)V

    .line 848
    return-void
.end method

.method getBinder()Landroid/os/IBinder;
    .registers 2

    .line 851
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method getPid()I
    .registers 2

    .line 855
    iget v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCreatorPid:I

    return v0
.end method

.method public registerDeathRecipient()V
    .registers 4

    .line 829
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 832
    goto :goto_25

    .line 830
    :catch_7
    move-exception v0

    .line 831
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScoClient could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " binder death"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.BtHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method remove(ZZ)V
    .registers 5
    .param p1, "stop"    # Z
    .param p2, "unregister"    # Z

    .line 990
    if-eqz p2, :cond_5

    .line 991
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper$ScoClient;->unregisterDeathRecipient()V

    .line 993
    :cond_5
    if-eqz p1, :cond_d

    .line 994
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/BtHelper$ScoClient;->requestScoState(II)Z

    .line 997
    :cond_d
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->this$0:Lcom/android/server/audio/BtHelper;

    # getter for: Lcom/android/server/audio/BtHelper;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->access$300(Lcom/android/server/audio/BtHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 998
    return-void
.end method

.method public unregisterDeathRecipient()V
    .registers 4

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    .line 840
    goto :goto_f

    .line 838
    :catch_7
    move-exception v0

    .line 839
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AS.BtHelper"

    const-string v2, "ScoClient could not not unregistered to binder"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_f
    return-void
.end method
