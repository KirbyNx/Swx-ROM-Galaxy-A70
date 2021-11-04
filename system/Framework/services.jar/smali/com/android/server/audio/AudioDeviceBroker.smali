.class final Lcom/android/server/audio/AudioDeviceBroker;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;,
        Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;,
        Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;,
        Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;,
        Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    }
.end annotation


# static fields
.field private static final BROKER_WAKELOCK_TIMEOUT_MS:J = 0x1388L

.field static final BTA2DP_DOCK_TIMEOUT_MS:I = 0x1f40

.field private static final BTA2DP_MUTE_CHECK_DELAY_MS:I = 0x64

.field static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final MESSAGES_MUTE_MUSIC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xc

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUTE_MUSIC:I = 0x24

.field private static final MSG_DISCONNECT_A2DP:I = 0x13

.field private static final MSG_DISCONNECT_A2DP_SINK:I = 0x14

.field private static final MSG_DISCONNECT_BT_HEADSET:I = 0x16

.field private static final MSG_DISCONNECT_BT_HEARING_AID:I = 0x15

.field private static final MSG_IIL_SET_FORCE_BT_A2DP_USE:I = 0x5

.field private static final MSG_IIL_SET_FORCE_USE:I = 0x4

.field private static final MSG_II_SET_HEARING_AID_VOLUME:I = 0xe

.field private static final MSG_IL_BTA2DP_TIMEOUT:I = 0xa

.field private static final MSG_IL_SAVE_PREF_DEVICE_FOR_STRATEGY:I = 0x21

.field private static final MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_CONNECTED:I = 0x1b

.field private static final MSG_IL_SET_A2DP_SINK_CONNECTION_STATE_DISCONNECTED:I = 0x1c

.field private static final MSG_IL_SET_A2DP_SOURCE_CONNECTION_STATE:I = 0x7

.field private static final MSG_IL_SET_HEARING_AID_CONNECTION_STATE:I = 0x8

.field private static final MSG_INIT_DUAL_A2DP_MANAGER:I = 0x26

.field private static final MSG_I_BROADCAST_BT_CONNECTION_STATE:I = 0x3

.field private static final MSG_I_SAVE_REMOVE_PREF_DEVICE_FOR_STRATEGY:I = 0x22

.field private static final MSG_I_SET_AVRCP_ABSOLUTE_VOLUME:I = 0xf

.field private static final MSG_I_SET_MODE_OWNER_PID:I = 0x10

.field private static final MSG_L_A2DP_ACTIVE_DEVICE_CHANGE:I = 0x12

.field private static final MSG_L_A2DP_DEVICE_CONFIG_CHANGE:I = 0xb

.field private static final MSG_L_A2DP_DEVICE_CONNECTION_CHANGE_EXT_CONNECTION:I = 0x1d

.field private static final MSG_L_A2DP_DEVICE_CONNECTION_CHANGE_EXT_DISCONNECTION:I = 0x1e

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_A2DP:I = 0x17

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_A2DP_SINK:I = 0x18

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_HEADSET:I = 0x1a

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_HEARING_AID:I = 0x19

.field private static final MSG_L_HEARING_AID_DEVICE_CONNECTION_CHANGE_EXT:I = 0x1f

.field private static final MSG_L_SCOCLIENT_DIED:I = 0x20

.field private static final MSG_L_SET_FORCE_BY_USER:I = 0x27

.field private static final MSG_L_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x2

.field private static final MSG_L_SPEAKERPHONE_CLIENT_DIED:I = 0x23

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xd

.field private static final MSG_REPORT_NEW_ROUTES_A2DP:I = 0x25

.field private static final MSG_RESTORE_DEVICES:I = 0x1

.field private static final MSG_SEC_BASE:I = 0x25

.field private static final MSG_TOGGLE_HDMI:I = 0x6

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AS.AudioDeviceBroker"

.field private static sLastDeviceConnectMsgTime:J

.field private static final sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;


# instance fields
.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private mBluetoothA2dpConnecting:Z

.field private mBluetoothA2dpEnabled:Z

.field private mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

.field private mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

.field private final mBtHelper:Lcom/android/server/audio/BtHelper;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

.field private final mDeviceStateLock:Ljava/lang/Object;

.field private mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

.field private mForcedUseForComm:I

.field private mForcedUseForCommExt:I

.field private mModeOwnerPid:I

.field private mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mSetModeLock:Ljava/lang/Object;

.field private final mSpeakerphoneClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemServer:Lcom/android/server/audio/SystemServerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    .line 102
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 1386
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    .line 1401
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/audio/AudioService;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    .line 1403
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1524
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    .line 1762
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpConnecting:Z

    .line 1785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 120
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 122
    new-instance v0, Lcom/android/server/audio/BtHelper;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 123
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 124
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/audio/SystemServerAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 126
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->init()V

    .line 127
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioDeviceInventory;Lcom/android/server/audio/SystemServerAdapter;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/audio/AudioService;
    .param p3, "mockDeviceInventory"    # Lcom/android/server/audio/AudioDeviceInventory;
    .param p4, "mockSystemServer"    # Lcom/android/server/audio/SystemServerAdapter;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    .line 1403
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1524
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    .line 1762
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpConnecting:Z

    .line 1785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 134
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 136
    new-instance v0, Lcom/android/server/audio/BtHelper;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 137
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 138
    iput-object p4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 140
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->init()V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 66
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 66
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->speakerphoneClientDied(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/audio/AudioDeviceBroker;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # Z

    .line 66
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpConnecting:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # I

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/audio/AudioDeviceBroker;Lcom/samsung/android/server/audio/DualA2dpVolumeManager;)Lcom/samsung/android/server/audio/DualA2dpVolumeManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 66
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 66
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/Set;
    .registers 1

    .line 66
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/audio/AudioDeviceBroker;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    return-void
.end method

.method static synthetic access$1700(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 66
    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 66
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 66
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 66
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 66
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 66
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioDeviceBroker;IIZLjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # I

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onSendBecomingNoisyIntent(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/audio/AudioDeviceBroker;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 66
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/audio/AudioDeviceBroker;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioDeviceBroker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->updateSpeakerphoneOn(Ljava/lang/String;)V

    return-void
.end method

.method private addSpeakerphoneClient(Landroid/os/IBinder;IZLjava/lang/String;)Z
    .registers 9
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "on"    # Z
    .param p4, "eventSource"    # Ljava/lang/String;

    .line 1505
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->removeSpeakerphoneClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    .line 1506
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;IZ)V

    .line 1509
    .local v1, "client":Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    const-string v2, "com.sk"

    invoke-virtual {p4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 1510
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1e

    .line 1512
    # setter for: Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mForced:Z
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->access$1902(Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;Z)Z

    .line 1516
    :cond_1e
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->registerDeathRecipient()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    .line 1517
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1518
    return v0

    .line 1520
    :cond_2b
    return v3
.end method

.method private checkMessagesMuteMusic(I)V
    .registers 6
    .param p1, "message"    # I

    .line 1407
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 1408
    .local v0, "mute":Z
    :goto_5
    if-nez v0, :cond_28

    .line 1409
    sget-object v1, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1410
    .local v2, "msg":I
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1411
    const/4 v0, 0x1

    .line 1412
    goto :goto_28

    .line 1414
    .end local v2    # "msg":I
    :cond_27
    goto :goto_d

    .line 1417
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eq v0, v1, :cond_35

    .line 1418
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->setMusicMute(Z)V

    .line 1420
    :cond_35
    return-void
.end method

.method private init()V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setupMessaging(Landroid/content/Context;)V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 147
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 150
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->sendEmptyMessage(I)Z

    .line 152
    return-void
.end method

.method private static isMessageHandledUnderWakelock(I)Z
    .registers 2
    .param p0, "msgId"    # I

    .line 1265
    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    const/16 v0, 0x12

    if-eq p0, v0, :cond_22

    const/16 v0, 0x24

    if-eq p0, v0, :cond_22

    const/4 v0, 0x6

    if-eq p0, v0, :cond_22

    const/4 v0, 0x7

    if-eq p0, v0, :cond_22

    const/16 v0, 0x8

    if-eq p0, v0, :cond_22

    const/16 v0, 0xa

    if-eq p0, v0, :cond_22

    const/16 v0, 0xb

    if-eq p0, v0, :cond_22

    packed-switch p0, :pswitch_data_24

    .line 1281
    const/4 v0, 0x0

    return v0

    .line 1279
    :cond_22
    :pswitch_22
    const/4 v0, 0x1

    return v0

    :pswitch_data_24
    .packed-switch 0x1b
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method private isSpeakerphoneOnRequested()Z
    .registers 6

    .line 305
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 306
    return v1

    .line 309
    :cond_a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->isForced()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 310
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->isOn()Z

    move-result v0

    return v0

    .line 313
    :cond_25
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    .line 314
    .local v2, "cl":Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->getPid()I

    move-result v3

    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    if-ne v3, v4, :cond_44

    .line 315
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->isOn()Z

    move-result v0

    return v0

    .line 317
    .end local v2    # "cl":Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    :cond_44
    goto :goto_2b

    .line 318
    :cond_45
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->isOn()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "cl"    # Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->isOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method private onSendBecomingNoisyIntent()V
    .registers 4

    .line 887
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "broadcast ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 888
    const-string v2, "AS.AudioDeviceBroker"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 887
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 889
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->sendDeviceBecomingNoisyIntent()V

    .line 890
    return-void
.end method

.method private onSendBecomingNoisyIntent(I)V
    .registers 6
    .param p1, "device"    # I

    .line 1688
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 1689
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result v0

    const-string v1, "AS.AudioDeviceBroker"

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 1690
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getPinDevice()I

    move-result v0

    if-eq v0, p1, :cond_28

    .line 1691
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->sendBecomingNoisyIntentToUnpinApps(I)V

    .line 1692
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v3, "broadcast ACTION_AUDIO_BECOMING_NOISY to unppin apps"

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 1692
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1694
    return-void

    .line 1696
    :cond_28
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v3, "broadcast ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 1696
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1700
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->sendDeviceBecomingSemNoisyIntent()V

    .line 1702
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1704
    .local v0, "noisyIntent":Landroid/content/Intent;
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1705
    const/4 v1, 0x1

    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1707
    :cond_56
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/SystemServerAdapter;->sendDeviceBecomingNoisyIntent(Landroid/content/Intent;)V

    .line 1708
    return-void
.end method

.method private onSetForceUse(IIZLjava/lang/String;)V
    .registers 8
    .param p1, "useCase"    # I
    .param p2, "config"    # I
    .param p3, "fromA2dp"    # Z
    .param p4, "eventSource"    # Ljava/lang/String;

    .line 871
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 872
    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 874
    :cond_6
    sget-object v0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 876
    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio.forceUse."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-static {p1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 878
    const-string/jumbo v2, "onSetForceUse"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 879
    invoke-virtual {v0, v1, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 881
    invoke-static {p2}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v2

    .line 880
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 883
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 884
    return-void
.end method

.method private postSetVolumeIndexForA2dpDevice(ZLjava/lang/String;)V
    .registers 7
    .param p1, "needMute"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 1873
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getMainVolume()I

    move-result v0

    .line 1874
    .local v0, "updateVolume":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    .line 1875
    const/16 v1, 0x80

    const/4 v2, 0x3

    if-eqz p1, :cond_12

    .line 1879
    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 1883
    :cond_12
    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 1885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioDeviceBroker"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    :cond_34
    return-void
.end method

.method private removeScheduledA2dpEvents(Landroid/bluetooth/BluetoothDevice;)V
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 415
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 420
    .local v0, "connectionInfoToRemove":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 422
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 425
    new-instance v1, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v1, p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 427
    .local v1, "devInfoToRemove":Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 429
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 431
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v3, 0x12

    invoke-virtual {v2, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 433
    return-void
.end method

.method private removeSpeakerphoneClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    .registers 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "unregister"    # Z

    .line 1489
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    .line 1490
    .local v1, "cl":Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_23

    .line 1491
    if-eqz p2, :cond_1d

    .line 1492
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->unregisterDeathRecipient()V

    .line 1494
    :cond_1d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1495
    return-object v1

    .line 1497
    .end local v1    # "cl":Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
    :cond_23
    goto :goto_6

    .line 1498
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private sendIILMsg(IIIILjava/lang/Object;I)V
    .registers 14
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 1337
    if-nez p2, :cond_8

    .line 1338
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    goto :goto_14

    .line 1339
    :cond_8
    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1340
    return-void

    .line 1343
    :cond_14
    :goto_14
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1346
    .local v0, "identity":J
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    .line 1349
    goto :goto_2e

    .line 1347
    :catch_26
    move-exception v2

    .line 1348
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AS.AudioDeviceBroker"

    const-string v4, "Exception acquiring wakelock"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1350
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1353
    .end local v0    # "identity":J
    :cond_31
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1354
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    .line 1357
    :cond_40
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1358
    :try_start_43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p6

    add-long/2addr v1, v3

    .line 1360
    .local v1, "time":J
    const/4 v3, 0x2

    if-eq p1, v3, :cond_6c

    const/16 v3, 0x12

    if-eq p1, v3, :cond_6c

    const/16 v3, 0x27

    if-eq p1, v3, :cond_6c

    const/4 v3, 0x7

    if-eq p1, v3, :cond_6c

    const/16 v3, 0x8

    if-eq p1, v3, :cond_6c

    const/16 v3, 0xa

    if-eq p1, v3, :cond_6c

    const/16 v3, 0xb

    if-eq p1, v3, :cond_6c

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_6c

    const/16 v3, 0x1c

    if-eq p1, v3, :cond_6c

    goto :goto_7b

    .line 1370
    :cond_6c
    sget-wide v3, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    cmp-long v3, v3, v1

    if-ltz v3, :cond_78

    .line 1372
    sget-wide v3, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    const-wide/16 v5, 0x1e

    add-long/2addr v3, v5

    move-wide v1, v3

    .line 1374
    :cond_78
    sput-wide v1, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 1375
    nop

    .line 1379
    :goto_7b
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v4, p1, p3, p4, p5}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1381
    nop

    .end local v1    # "time":J
    monitor-exit v0

    .line 1382
    return-void

    .line 1381
    :catchall_89
    move-exception v1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_43 .. :try_end_8b} :catchall_89

    throw v1
.end method

.method private sendIILMsgNoDelay(IIIILjava/lang/Object;)V
    .registers 13
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 1332
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1333
    return-void
.end method

.method private sendIIMsgNoDelay(IIII)V
    .registers 12
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 1320
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1321
    return-void
.end method

.method private sendILMsg(IIILjava/lang/Object;I)V
    .registers 13
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delay"    # I

    .line 1300
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1301
    return-void
.end method

.method private sendILMsgNoDelay(IIILjava/lang/Object;)V
    .registers 12
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1324
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1325
    return-void
.end method

.method private sendIMsg(IIII)V
    .registers 12
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "delay"    # I

    .line 1308
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1309
    return-void
.end method

.method private sendIMsgNoDelay(III)V
    .registers 11
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I

    .line 1316
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1317
    return-void
.end method

.method private sendLMsg(IILjava/lang/Object;I)V
    .registers 12
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "delay"    # I

    .line 1304
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1305
    return-void
.end method

.method private sendLMsgNoDelay(IILjava/lang/Object;)V
    .registers 11
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1328
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1329
    return-void
.end method

.method private sendMsg(III)V
    .registers 11
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "delay"    # I

    .line 1296
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1297
    return-void
.end method

.method private sendMsgNoDelay(II)V
    .registers 10
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I

    .line 1312
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1313
    return-void
.end method

.method private setupMessaging(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctxt"    # Landroid/content/Context;

    .line 899
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 900
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string/jumbo v2, "handleAudioDeviceEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 902
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    .line 903
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->start()V

    .line 904
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->waitForBrokerHandlerCreation()V

    .line 905
    return-void
.end method

.method private speakerphoneClientDied(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1479
    if-nez p1, :cond_3

    .line 1480
    return-void

    .line 1482
    :cond_3
    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "Speaker client died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    move-object v0, p1

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->removeSpeakerphoneClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1484
    const-string/jumbo v0, "speakerphoneClientDied"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->updateSpeakerphoneOn(Ljava/lang/String;)V

    .line 1486
    :cond_1e
    return-void
.end method

.method private updateSpeakerphoneOn(Ljava/lang/String;)V
    .registers 7
    .param p1, "eventSource"    # Ljava/lang/String;

    .line 274
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOnRequested()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_14

    .line 275
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne v0, v4, :cond_11

    .line 276
    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 278
    :cond_11
    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    goto :goto_2d

    .line 279
    :cond_14
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne v0, v2, :cond_2d

    .line 280
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 282
    const-string v0, "BT_SCO=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 285
    iput v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 286
    invoke-virtual {p0, v1, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    goto :goto_2d

    .line 289
    :cond_2b
    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 292
    :cond_2d
    :goto_2d
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 293
    invoke-virtual {p0, v3, v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 294
    return-void
.end method

.method private waitForBrokerHandlerCreation()V
    .registers 4

    .line 908
    monitor-enter p0

    .line 909
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_13

    .line 911
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_15

    .line 914
    goto :goto_1

    .line 912
    :catch_9
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "Interruption while waiting on BrokerHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 916
    :cond_13
    monitor-exit p0

    .line 917
    return-void

    .line 916
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method checkDeviceConnected(I)Z
    .registers 4
    .param p1, "devices"    # I

    .line 1566
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1567
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1568
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method checkMusicActive(ILjava/lang/String;)V
    .registers 4
    .param p1, "deviceType"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->checkMusicActive(ILjava/lang/String;)V

    .line 647
    return-void
.end method

.method checkSendBecomingNoisyIntent(III)I
    .registers 5
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "musicDevice"    # I

    .line 1747
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntent(III)I

    move-result v0

    return v0
.end method

.method checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 652
    return-void
.end method

.method connectA2dpDevice(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "a2dpVolume"    # I

    .line 1825
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1827
    return-void

    .line 1830
    :cond_9
    const/4 v0, -0x1

    if-eq p3, v0, :cond_e

    .line 1832
    mul-int/lit8 p3, p3, 0xa

    .line 1834
    :cond_e
    const/4 v0, 0x3

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->getVssVolumeForDevice(II)I

    move-result v7

    .line 1837
    .local v7, "defaultVolume":I
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->getActiveA2dpDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    .line 1838
    .local v8, "activeDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 1840
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isSafeMediaVolumeStateActive()Z

    move-result v5

    .line 1838
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, v7

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->connectA2dpDevice(Landroid/bluetooth/BluetoothDevice;IIIZLandroid/bluetooth/BluetoothDevice;)V

    .line 1842
    if-eqz v8, :cond_33

    const/4 v0, 0x2

    if-ne p2, v0, :cond_33

    .line 1844
    invoke-virtual {p0, v8}, Lcom/android/server/audio/AudioDeviceBroker;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1847
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAvrcpAbsoluteVolumeSupported()Z

    .line 1848
    return-void
.end method

.method disconnectAllBluetoothProfiles()V
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->disconnectAllBluetoothProfiles()V

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    if-eqz v0, :cond_34

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler (watch for unhandled messages):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_39

    .line 847
    :cond_34
    const-string v0, "Message handler is null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    :goto_39
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mForcedUseForComm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 853
    invoke-static {v1}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 852
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mForcedUseForCommExt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 855
    invoke-static {v1}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mModeOwnerPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Speakerphone clients:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSpeakerphoneClients:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/audio/-$$Lambda$AudioDeviceBroker$_5btcnib9oYo5NJB53NumoDVd6c;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/-$$Lambda$AudioDeviceBroker$_5btcnib9oYo5NJB53NumoDVd6c;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 862
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/BtHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method dumpA2dpDevicesVolume(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1804
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->dump(Ljava/io/PrintWriter;)V

    .line 1805
    return-void
.end method

.method dumpScoClients(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1739
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1740
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/BtHelper;->dumpScoClients(Ljava/io/PrintWriter;)V

    .line 1741
    monitor-exit v0

    .line 1742
    return-void

    .line 1741
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method getA2dp()Landroid/bluetooth/BluetoothA2dp;
    .registers 3

    .line 1645
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1646
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1647
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 837
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 839
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1796
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method getA2dpDevices()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1788
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getA2dpDevices()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method getAddressForDevice(I)Ljava/lang/String;
    .registers 3
    .param p1, "device"    # I

    .line 1657
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getAddressForDevice(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAvailableDeviceSetForQuickSoundPath()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1667
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceInventory;->getAvailableDeviceSetForQuickSoundPath()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getBTHeadset()Landroid/bluetooth/BluetoothHeadset;
    .registers 3

    .line 1651
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1652
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->getBTHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1653
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getBluetoothA2dpEnabled()Z
    .registers 3

    .line 831
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 833
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getConnectedDevice()I
    .registers 2

    .line 1733
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceInventory;->getConnectedDevice()I

    move-result v0

    return v0
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 642
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 528
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getDeviceForStream(I)I
    .registers 3
    .param p1, "streamType"    # I

    .line 612
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method getMasterA2dpVolume()I
    .registers 2

    .line 1800
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getMainVolume()I

    move-result v0

    return v0
.end method

.method getModeOwnerPid()I
    .registers 2

    .line 608
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    return v0
.end method

.method getPinDevice()I
    .registers 2

    .line 1717
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getPinDevice()I

    move-result v0

    return v0
.end method

.method getPriorityDevice(I)I
    .registers 3
    .param p1, "exceptedDevice"    # I

    .line 1729
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getPriorityDevice(I)I

    move-result v0

    return v0
.end method

.method getVssVolumeForDevice(II)I
    .registers 4
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .line 604
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    move-result v0

    return v0
.end method

.method handleCancelFailureToConnectToBtHeadsetService()V
    .registers 3

    .line 798
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 799
    return-void
.end method

.method handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 783
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method handleFailureToConnectToBtHeadsetService(I)V
    .registers 4
    .param p1, "delay"    # I

    .line 794
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    .line 795
    return-void
.end method

.method handleFmRadioDeviceConnection(IILjava/lang/String;)V
    .registers 6
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;

    .line 1586
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1587
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->handleFmRadioDeviceConnection(IILjava/lang/String;)V

    .line 1588
    monitor-exit v0

    .line 1589
    return-void

    .line 1588
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method handleTmsStateChange(ZI)V
    .registers 4
    .param p1, "isServer"    # Z
    .param p2, "state"    # I

    .line 1622
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->handleTmsStateChange(ZI)V

    .line 1623
    return-void
.end method

.method hasAudioFocusUsers()Z
    .registers 2

    .line 655
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->hasAudioFocusUsers()Z

    move-result v0

    return v0
.end method

.method hasMediaDynamicPolicy()Z
    .registers 2

    .line 638
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    move-result v0

    return v0
.end method

.method hasScheduledA2dpExtConnectionState(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 1775
    new-instance v0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v0, p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 1777
    .local v0, "devInfoToCheck":Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v2, 0x1e

    .line 1779
    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v1, 0x1

    .line 1777
    :goto_1d
    return v1
.end method

.method hasScheduledA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 812
    new-instance v0, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v0, p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 814
    .local v0, "devInfoToCheck":Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v2, 0x1c

    .line 816
    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v1, 0x1

    .line 814
    :goto_1d
    return v1
.end method

.method isAvrcpAbsoluteVolumeSupported()Z
    .registers 3

    .line 532
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 537
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z
    .registers 2

    .line 1898
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z

    move-result v0

    return v0
.end method

.method isBluetoothA2dpConnecting()Z
    .registers 2

    .line 1765
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpConnecting:Z

    return v0
.end method

.method isBluetoothA2dpOn()Z
    .registers 3

    .line 541
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 543
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isBluetoothScoOnForApp()Z
    .registers 4

    .line 476
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    .line 478
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method isBluetoothScoSupported()Z
    .registers 3

    .line 1552
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1553
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->isBluetoothScoSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1554
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isDualA2dpMode()Z
    .registers 2

    .line 1812
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->isDualA2dpMode()Z

    move-result v0

    return v0
.end method

.method isFMPlayerActive()Z
    .registers 2

    .line 1604
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isFMPlayerActive()Z

    move-result v0

    return v0
.end method

.method isFMRadioRecording()Z
    .registers 2

    .line 1610
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mFMRadioRecordingChecker:Lcom/samsung/android/server/audio/FrequentWorker;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/FrequentWorker;->runOrSkip()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method isForceSpeakerOn()Z
    .registers 2

    .line 1628
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isForceSpeakerOn()Z

    move-result v0

    return v0
.end method

.method isForcedUse()Z
    .registers 3

    .line 1572
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1573
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 1574
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method isInCommunication()Z
    .registers 3

    .line 630
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 631
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    nop

    .line 630
    :goto_15
    return v1
.end method

.method isMultiSoundOn()Z
    .registers 2

    .line 1713
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result v0

    return v0
.end method

.method isRemoteVolumeControlSupported()Z
    .registers 3

    .line 1544
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1545
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->isRemoteVolumeControlSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1546
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isRestrictedHeadphone()Z
    .registers 2

    .line 1616
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioHelper;->isRestrictedHeadphone(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method isSelfiestickIsConnected()Z
    .registers 2

    .line 1753
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isSelfiestickIsConnected()Z

    move-result v0

    return v0
.end method

.method isSpeakerphoneOn()Z
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    monitor-exit v0

    return v2

    .line 324
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method muteRingtoneDuringVibration()V
    .registers 2

    .line 1580
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->muteRingtoneDuringVibration()V

    .line 1581
    return-void
.end method

.method onAudioServerDied()V
    .registers 6

    .line 178
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT_SCO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    const-string/jumbo v2, "on"

    goto :goto_19

    :cond_16
    const-string/jumbo v2, "off"

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 181
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const-string/jumbo v2, "onAudioServerDied"

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v3, v2}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    .line 183
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    const-string/jumbo v4, "onAudioServerDied"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    .line 185
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_3b

    .line 187
    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 188
    return-void

    .line 185
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method onSystemReady()V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    .line 167
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getModeOwnerPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeOwnerPid:I

    .line 168
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->onSystemReady()V

    .line 169
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1b

    .line 170
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_1e

    .line 172
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceInventory;->onSystemReady()V

    .line 174
    return-void

    .line 169
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    :try_start_1d
    throw v2

    .line 170
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw v1
.end method

.method postA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    .registers 4
    .param p1, "btDeviceInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    .line 807
    const/16 v0, 0x12

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 808
    return-void
.end method

.method postA2dpSinkConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "btDeviceInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p3, "delay"    # I

    .line 671
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 672
    const/16 v0, 0x1b

    move v2, v0

    goto :goto_a

    .line 673
    :cond_7
    const/16 v0, 0x1c

    move v2, v0

    :goto_a
    const/4 v3, 0x2

    .line 671
    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 676
    return-void
.end method

.method postA2dpSourceConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "btDeviceInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
    .param p3, "delay"    # I

    .line 680
    const/4 v1, 0x7

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 682
    return-void
.end method

.method postAccessoryPlugMediaUnmute(I)V
    .registers 3
    .param p1, "device"    # I

    .line 600
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    .line 601
    return-void
.end method

.method postApplyVolumeOnDevice(IILjava/lang/String;)V
    .registers 5
    .param p1, "streamType"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 616
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 617
    return-void
.end method

.method postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 559
    const/16 v0, 0xb

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 560
    return-void
.end method

.method postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I

    .line 378
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 381
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 384
    const/4 v4, 0x2

    if-ne p2, v4, :cond_22

    .line 385
    const-string v5, "connected"

    goto :goto_24

    :cond_22
    const-string v5, "disconnected"

    .line 384
    :goto_24
    invoke-virtual {v2, v3, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 386
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 387
    invoke-virtual {v2, v3, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 388
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 389
    if-ne p2, v4, :cond_40

    .line 390
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpConnecting:Z

    .line 394
    :cond_40
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 398
    :try_start_43
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removeScheduledA2dpEvents(Landroid/bluetooth/BluetoothDevice;)V

    .line 400
    nop

    .line 401
    if-ne p2, v4, :cond_4c

    .line 402
    const/16 v3, 0x1d

    goto :goto_4e

    .line 403
    :cond_4c
    const/16 v3, 0x1e

    :goto_4e
    nop

    .line 400
    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 405
    monitor-exit v2

    .line 406
    return-void

    .line 405
    :catchall_54
    move-exception v3

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_43 .. :try_end_56} :catchall_54

    throw v3
.end method

.method postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I
    .param p5, "eventSource"    # Ljava/lang/String;

    .line 456
    new-instance v6, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V

    .line 458
    .local v0, "info":Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
    const/16 v1, 0x1f

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 459
    return-void
.end method

.method postBroadcastBecomingNoisy()V
    .registers 3

    .line 665
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 666
    return-void
.end method

.method postBroadcastBecomingNoisy(I)V
    .registers 4
    .param p1, "device"    # I

    .line 1684
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 1685
    return-void
.end method

.method postBroadcastScoConnectionState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 661
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 662
    return-void
.end method

.method postBtA2dpProfileConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .registers 4
    .param p1, "a2dpProfile"    # Landroid/bluetooth/BluetoothA2dp;

    .line 715
    const/16 v0, 0x17

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 716
    return-void
.end method

.method postBtA2dpSinkProfileConnected(Landroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;

    .line 719
    const/16 v0, 0x18

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 720
    return-void
.end method

.method postBtHearingAidProfileConnected(Landroid/bluetooth/BluetoothHearingAid;)V
    .registers 4
    .param p1, "hearingAidProfile"    # Landroid/bluetooth/BluetoothHearingAid;

    .line 727
    const/16 v0, 0x19

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 729
    return-void
.end method

.method postBtHeasetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .registers 4
    .param p1, "headsetProfile"    # Landroid/bluetooth/BluetoothHeadset;

    .line 723
    const/16 v0, 0x1a

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 724
    return-void
.end method

.method postDisconnectA2dp()V
    .registers 3

    .line 699
    const/16 v0, 0x13

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 700
    return-void
.end method

.method postDisconnectA2dpSink()V
    .registers 3

    .line 703
    const/16 v0, 0x14

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 704
    return-void
.end method

.method postDisconnectHeadset()V
    .registers 3

    .line 711
    const/16 v0, 0x16

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 712
    return-void
.end method

.method postDisconnectHearingAid()V
    .registers 3

    .line 707
    const/16 v0, 0x15

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 708
    return-void
.end method

.method postObserveDevicesForAllStreams()V
    .registers 2

    .line 625
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams()V

    .line 626
    return-void
.end method

.method postReportNewRoutes(Z)V
    .registers 4
    .param p1, "fromA2dp"    # Z

    .line 802
    if-eqz p1, :cond_5

    const/16 v0, 0x25

    goto :goto_7

    :cond_5
    const/16 v0, 0xd

    :goto_7
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 803
    return-void
.end method

.method postSaveRemovePreferredDeviceForStrategy(I)V
    .registers 4
    .param p1, "strategy"    # I

    .line 746
    const/16 v0, 0x22

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 747
    return-void
.end method

.method postSaveSetPreferredDeviceForStrategy(ILandroid/media/AudioDeviceAttributes;)V
    .registers 5
    .param p1, "strategy"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 742
    const/16 v0, 0x21

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    .line 743
    return-void
.end method

.method postScoClientDied(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 732
    const/16 v0, 0x20

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 733
    return-void
.end method

.method postSetA2dpSourceConnectionState(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "btDeviceInfo"    # Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    .line 788
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 789
    .local v1, "intState":I
    :goto_6
    const/4 v2, 0x7

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    .line 791
    return-void
.end method

.method postSetAvrcpAbsoluteVolumeIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .line 547
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 548
    return-void
.end method

.method postSetDeviceConnectionStateForceByUser(Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;I)V
    .registers 5
    .param p1, "state"    # Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;
    .param p2, "delay"    # I

    .line 1672
    const/16 v0, 0x27

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    .line 1673
    return-void
.end method

.method postSetHearingAidConnectionState(ILandroid/bluetooth/BluetoothDevice;I)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "delay"    # I

    .line 692
    const/16 v1, 0x8

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 696
    return-void
.end method

.method postSetHearingAidVolumeIndex(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "streamType"    # I

    .line 551
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIIMsgNoDelay(IIII)V

    .line 552
    return-void
.end method

.method postSetModeOwnerPid(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "mode"    # I

    .line 555
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIIMsgNoDelay(IIII)V

    .line 556
    return-void
.end method

.method postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "vssVolIndex"    # I
    .param p3, "device"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .line 621
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 622
    return-void
.end method

.method postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V
    .registers 4
    .param p1, "connectionState"    # Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;
    .param p2, "delay"    # I

    .line 686
    const/4 v0, 0x2

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    .line 687
    return-void
.end method

.method postSpeakerphoneClientDied(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 736
    const/16 v0, 0x23

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 737
    return-void
.end method

.method receiveBtEvent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 212
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 214
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/BtHelper;->receiveBtEvent(Landroid/content/Intent;)V

    .line 215
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_e

    .line 216
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_11

    .line 217
    return-void

    .line 215
    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .end local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .end local p1    # "intent":Landroid/content/Intent;
    :try_start_10
    throw v2

    .line 216
    .restart local p0    # "this":Lcom/android/server/audio/AudioDeviceBroker;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_11

    throw v1
.end method

.method registerStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V
    .registers 3
    .param p1, "dispatcher"    # Landroid/media/IStrategyPreferredDeviceDispatcher;

    .line 588
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->registerStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V

    .line 589
    return-void
.end method

.method removePreferredDeviceForStrategySync(I)I
    .registers 3
    .param p1, "strategy"    # I

    .line 583
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->removePreferredDeviceForStrategySync(I)I

    move-result v0

    return v0
.end method

.method sendBecomingNoisyToPinnedApp(I)V
    .registers 3
    .param p1, "device"    # I

    .line 1721
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1723
    return-void

    .line 1725
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->sendBecomingNoisyToPinnedApp(I)V

    .line 1726
    return-void
.end method

.method sendMsgForForceSpeaker()V
    .registers 2

    .line 1632
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->sendMsgForForceSpeaker()V

    .line 1633
    return-void
.end method

.method setA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "fineIndex"    # I

    .line 1792
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1793
    return-void
.end method

.method setA2dpTimeout(Ljava/lang/String;II)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "a2dpCodec"    # I
    .param p3, "delayMs"    # I

    .line 821
    const/16 v1, 0xa

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    .line 822
    return-void
.end method

.method setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .param p1, "activeDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 1851
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1852
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 1853
    .local v1, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAvrcpAbsoluteVolumeSupported()Z

    move-result v2

    .line 1854
    .local v2, "avcSupport":Z
    if-eqz v1, :cond_1a

    .line 1857
    if-nez v2, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    const-string/jumbo v4, "setActiveBluetoothDevice"

    invoke-direct {p0, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexForA2dpDevice(ZLjava/lang/String;)V

    .line 1859
    .end local v1    # "changed":Z
    .end local v2    # "avcSupport":Z
    :cond_1a
    monitor-exit v0

    .line 1860
    return-void

    .line 1859
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method setAvrcpAbsoluteVolumeSupported(Z)V
    .registers 4
    .param p1, "supported"    # Z

    .line 825
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 827
    monitor-exit v0

    .line 828
    return-void

    .line 827
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method setAvrcpAbsoluteVolumeSupported(ZLjava/lang/String;)V
    .registers 6
    .param p1, "support"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .line 1890
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1891
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setAvrcpAbsoluteVolumeSupported(Ljava/lang/String;Z)V

    .line 1892
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 1893
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z

    move-result v2

    .line 1892
    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1894
    monitor-exit v0

    .line 1895
    return-void

    .line 1894
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method setBluetoothA2dpOnInt(ZZLjava/lang/String;)V
    .registers 11
    .param p1, "on"    # Z
    .param p2, "fromA2dp"    # Z
    .param p3, "source"    # Ljava/lang/String;

    .line 757
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 758
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setBluetoothA2dpOn("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 760
    const-string v3, ") from u/pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const-string v3, " src:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "eventSource":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 765
    :try_start_48
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 766
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 767
    const/4 v4, 0x1

    .line 769
    iget-boolean v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_58

    move v5, v6

    goto :goto_5a

    :cond_58
    const/16 v5, 0xa

    .line 767
    :goto_5a
    invoke-direct {p0, v4, v5, p2, v2}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    .line 773
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 774
    const/16 v4, 0x24

    const/16 v5, 0x64

    invoke-direct {p0, v4, v6, v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    .line 776
    :cond_6c
    monitor-exit v3

    .line 777
    return-void

    .line 776
    :catchall_6e
    move-exception v4

    monitor-exit v3
    :try_end_70
    .catchall {:try_start_48 .. :try_end_70} :catchall_6e

    throw v4
.end method

.method setBluetoothA2dpOn_Async(ZLjava/lang/String;)V
    .registers 12
    .param p1, "on"    # Z
    .param p2, "source"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-ne v1, p1, :cond_9

    .line 222
    monitor-exit v0

    return-void

    .line 224
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    .line 225
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->removeMessages(I)V

    .line 226
    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 228
    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1a
    const/16 v1, 0xa

    :goto_1c
    move v7, v1

    .line 226
    move-object v3, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isForceSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_2d

    if-nez p1, :cond_2d

    .line 233
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgForForceSpeaker()V

    .line 238
    :cond_2d
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBluetoothA2dpOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") from pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method

.method setBluetoothScoOn(ZLjava/lang/String;)V
    .registers 12
    .param p1, "on"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBluetoothScoOn : ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " eventSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 487
    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_4e

    .line 489
    :try_start_3f
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 490
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 491
    monitor-exit v7

    return-void

    .line 493
    :cond_4b
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    goto :goto_5d

    .line 494
    :cond_4e
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne v2, v1, :cond_5d

    .line 495
    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOnRequested()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 496
    move v1, v0

    goto :goto_5b

    :cond_5a
    move v1, v8

    :goto_5b
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    .line 498
    :cond_5d
    :goto_5d
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT_SCO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    if-eqz p1, :cond_71

    const-string/jumbo v2, "on"

    goto :goto_74

    .line 501
    :cond_71
    const-string/jumbo v2, "off"

    :goto_74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 502
    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 505
    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x2

    .line 508
    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    if-ne v1, v0, :cond_91

    .line 509
    move v5, v8

    goto :goto_94

    :cond_91
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForComm:I

    move v5, v0

    .line 505
    :goto_94
    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 514
    monitor-exit v7
    :try_end_9a
    .catchall {:try_start_3f .. :try_end_9a} :catchall_a0

    .line 516
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->postUpdateRingerModeServiceInt()V

    .line 517
    return-void

    .line 514
    :catchall_a0
    move-exception v0

    :try_start_a1
    monitor-exit v7
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw v0
.end method

.method setBluetoothScoOnByApp(Z)V
    .registers 6
    .param p1, "on"    # Z

    .line 463
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    const/4 v1, 0x3

    if-nez p1, :cond_35

    :try_start_6
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    if-eq v2, v1, :cond_35

    .line 466
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBluetoothScoOn() return uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    monitor-exit v0

    return-void

    .line 472
    :catchall_33
    move-exception v1

    goto :goto_3d

    .line 471
    :cond_35
    if-eqz p1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mForcedUseForCommExt:I

    .line 472
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_33

    throw v1
.end method

.method setBtOffloadEnable(I)V
    .registers 3
    .param p1, "enabled"    # I

    .line 1771
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/BtHelper;->setBtOffloadEnable(I)V

    .line 1772
    return-void
.end method

.method setDeviceToForceByUser(ILjava/lang/String;Z)I
    .registers 6
    .param p1, "device"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "force"    # Z

    .line 1661
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1662
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1663
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method setDualA2dpMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1816
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1817
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setDualA2dpMode(Z)V

    .line 1818
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAvrcpAbsoluteVolumeSupported()Z

    .line 1819
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    .line 1820
    const/4 v0, 0x0

    const-string/jumbo v1, "setDualA2dpMode"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexForA2dpDevice(ZLjava/lang/String;)V

    .line 1821
    return-void

    .line 1819
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method setFmRadioPath(I)V
    .registers 4
    .param p1, "path"    # I

    .line 1598
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1599
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->setRadioOutputPath(I)V

    .line 1600
    monitor-exit v0

    .line 1601
    return-void

    .line 1600
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method setForceUse_Async(IILjava/lang/String;)V
    .registers 10
    .param p1, "useCase"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 191
    const/4 v1, 0x4

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    .line 193
    return-void
.end method

.method setPreferredDeviceForStrategySync(ILandroid/media/AudioDeviceAttributes;)I
    .registers 4
    .param p1, "strategy"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 579
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDeviceForStrategySync(ILandroid/media/AudioDeviceAttributes;)I

    move-result v0

    return v0
.end method

.method setSelfiestickIsConnected(Z)V
    .registers 3
    .param p1, "connected"    # Z

    .line 1757
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->setSelfiestickIsConnected(Z)V

    .line 1758
    return-void
.end method

.method setSpeakerphoneOffForScoOn(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->removeSpeakerphoneClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSpeakerphoneOffForScoOn()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "eventSource":Ljava/lang/String;
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 270
    .end local v1    # "eventSource":Ljava/lang/String;
    :cond_16
    return-void
.end method

.method setSpeakerphoneOn(Landroid/os/IBinder;IZLjava/lang/String;)Z
    .registers 9
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "on"    # Z
    .param p4, "eventSource"    # Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceBroker;->addSpeakerphoneClient(Landroid/os/IBinder;IZLjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 253
    monitor-exit v0

    return v2

    .line 255
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v1

    .line 256
    .local v1, "wasOn":Z
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioDeviceBroker;->updateSpeakerphoneOn(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v3

    if-eq v1, v3, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    monitor-exit v0

    return v2

    .line 258
    .end local v1    # "wasOn":Z
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    monitor-exit v0

    .line 334
    return-void

    .line 333
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method startBluetoothScoForClient_Sync(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 565
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/audio/BtHelper;->startBluetoothScoForClient(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 567
    monitor-exit v0

    .line 568
    return-void

    .line 567
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 4
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .line 520
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 522
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method stopBluetoothScoForClient_Sync(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/BtHelper;->stopBluetoothScoForClient(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 574
    monitor-exit v0

    .line 575
    return-void

    .line 574
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method toggleHdmiIfConnected_Async()V
    .registers 3

    .line 196
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    .line 197
    return-void
.end method

.method unregisterStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V
    .registers 3
    .param p1, "dispatcher"    # Landroid/media/IStrategyPreferredDeviceDispatcher;

    .line 593
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->unregisterStrategyPreferredDeviceDispatcher(Landroid/media/IStrategyPreferredDeviceDispatcher;)V

    .line 594
    return-void
.end method

.method updateAvrcpAbsoluteVolumeSupported()Z
    .registers 3

    .line 1864
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z

    move-result v0

    .line 1865
    .local v0, "avcSupport":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1866
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1867
    return v0
.end method

.method updateDeviceQuickConnection(ZILjava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "connected"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "codec"    # I

    .line 1639
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1640
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->updateDeviceQuickConnection(ZILjava/lang/String;Ljava/lang/String;I)V

    .line 1641
    monitor-exit v0

    .line 1642
    return-void

    .line 1641
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method updateDexState()V
    .registers 2

    .line 1678
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->updateDexState()V

    .line 1679
    return-void
.end method

.method updateFmRadioPath(I)V
    .registers 4
    .param p1, "path"    # I

    .line 1592
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1593
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory;->updateFmRadioPath(I)V

    .line 1594
    monitor-exit v0

    .line 1595
    return-void

    .line 1594
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method updateIndividualA2dpVolumes(I)V
    .registers 3
    .param p1, "fineIndex"    # I

    .line 1808
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateIndividualA2dpVolumes(I)V

    .line 1809
    return-void
.end method

.method wakeUpDeviceByWiredHeadset(I)V
    .registers 3
    .param p1, "deviceType"    # I

    .line 1560
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->wakeUpDeviceByWiredHeadset(I)V

    .line 1561
    return-void
.end method
