.class final Lcom/android/server/sepunion/cover/NfcLedCoverController;
.super Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;,
        Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;,
        Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;,
        Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    }
.end annotation


# static fields
.field private static final CMD_LED_BATTERY_CHARGING_WIRELESS_DELAY:J = 0x96L

.field private static final CMD_LED_CALL_INPROGRESS:I = 0xfffe

.field private static final CMD_LED_CLEAR_ONGOING_EVENT:I = 0xfff0

.field private static final CMD_LED_CLOCK_TIME_TICK:I = 0xffff

.field private static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field private static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field private static final LED_COVER_RETRY_DONE_INTENT_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

.field private static final MSG_CLEAR_ONGOING_EVENT:I = 0x5

.field private static final MSG_COVER_ATTACH_STATE:I = 0x7

.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0xa

.field private static final MSG_LED_NOTIFICATION_ADD:I = 0x8

.field private static final MSG_LED_NOTIFICATION_REMOVE:I = 0x9

.field private static final MSG_LED_OFF_BY_SELF:I = 0x1

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field private static final RESPONSE_COMMAND_POS:I = 0x3

.field private static final RESPONSE_LEN_POS:I = 0x1

.field private static final RESPONSE_STATUS_POS:I = 0x2

.field private static final SYSTEM_EVENT_KEY_TYPE:Ljava/lang/String; = "event_type"

.field private static final SYSTEM_EVENT_TOUCH_RESPONSE:I

.field private static final TAG:Ljava/lang/String;

.field private static final mResponsePattern:[B


# instance fields
.field private mCallDurationTimer:Ljava/util/Timer;

.field private mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

.field private mCallInProgressDisplay:Z

.field private mCallStartTime:J

.field private mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mCoverEventsDisabledForSamsungPay:Z

.field mFactoryTransceiveResponseIntentSent:Z

.field private final mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

.field private mIsLedOn:Z

.field private mLedCoverRetryPostTime:J

.field private mLedCoverStartRetryCount:I

.field private mLedCoverTransceiveRetryCount:I

.field private mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

.field private mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPollingTouchEvents:Z

.field private mPrevCommand:I

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTestCount:I

.field private mTestMode:I

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    return-void

    :array_22
    .array-data 1
        0x10t
        0x6t
        -0x2ft
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 8
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 122
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 124
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    .line 141
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 142
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 158
    new-instance v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 159
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "send leddata"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 161
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 162
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "pollTouch ledcover"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 164
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 165
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "touchResponse ledcover"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 167
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "onoff ledcover"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 170
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 173
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nfc_led_cover_test"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 59
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 59
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/sepunion/cover/NfcLedCoverController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleClearOngoingEvent(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 59
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 59
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/sepunion/cover/NfcLedCoverController;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 59
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getCallDuration()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .registers 1

    .line 59
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/cover/NfcLedCoverController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 59
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 59
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 59
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendCurrentClockCommand()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 59
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 59
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 59
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/sepunion/cover/NfcLedCoverController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/sepunion/cover/NfcLedCoverController;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method private buildNfcCoverLedData(I[B)[B
    .registers 10
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .line 1101
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_9

    .line 1102
    new-array v2, v0, [B

    aput-byte v1, v2, v1

    move-object p2, v2

    .line 1104
    :cond_9
    const/4 v2, 0x5

    .line 1105
    .local v2, "nfcCommandLength":I
    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getLenByteValue([B)I

    move-result v3

    .line 1106
    .local v3, "ledPacketLength":I
    add-int v4, v2, v3

    .line 1107
    .local v4, "size":I
    add-int v5, v2, v3

    new-array v5, v5, [B

    .line 1110
    .local v5, "genData":[B
    aput-byte v1, v5, v1

    .line 1111
    const/16 v6, -0x5e

    aput-byte v6, v5, v0

    .line 1112
    const/4 v0, 0x2

    aput-byte v1, v5, v0

    .line 1113
    const/4 v0, 0x3

    aput-byte v1, v5, v0

    .line 1115
    const/4 v0, 0x4

    int-to-byte v6, v3

    aput-byte v6, v5, v0

    .line 1118
    const/4 v0, 0x5

    const/16 v6, 0x10

    aput-byte v6, v5, v0

    .line 1119
    const/4 v0, 0x6

    int-to-byte v6, v3

    aput-byte v6, v5, v0

    .line 1120
    const/4 v0, 0x7

    int-to-byte v6, p1

    aput-byte v6, v5, v0

    .line 1121
    const/16 v0, 0x8

    array-length v6, p2

    invoke-static {p2, v1, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1122
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v1, v4, -0x2

    const/4 v6, -0x1

    aput-byte v6, v5, v1

    aput-byte v6, v5, v0

    .line 1124
    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_5e

    .line 1125
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byte data to send to cover: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_5e
    return-object v5
.end method

.method private clearOngoingEvent()V
    .registers 2

    .line 979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    .line 980
    return-void
.end method

.method private clearRetryCountDelayedMsg()V
    .registers 3

    .line 1405
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 1407
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 1409
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1410
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 1412
    :cond_13
    return-void
.end method

.method private getCallDuration()[B
    .registers 13

    .line 1435
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_5a

    .line 1436
    .local v0, "duration":[B
    iget-wide v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_f

    .line 1437
    return-object v0

    .line 1439
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1441
    .local v1, "time":J
    const/4 v3, 0x0

    .line 1442
    .local v3, "locale":Ljava/util/Locale;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-wide/16 v6, 0x3c

    div-long v8, v1, v6

    const-wide/16 v10, 0x64

    rem-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    const-string v8, "%02d"

    invoke-static {v3, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1443
    .local v5, "minutes":[B
    new-array v10, v4, [Ljava/lang/Object;

    rem-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v9

    invoke-static {v3, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1444
    .local v6, "seconds":[B
    aget-byte v7, v5, v9

    aput-byte v7, v0, v9

    .line 1445
    aget-byte v7, v5, v4

    aput-byte v7, v0, v4

    .line 1446
    const/4 v7, 0x2

    aget-byte v8, v6, v9

    aput-byte v8, v0, v7

    .line 1447
    const/4 v7, 0x3

    aget-byte v4, v6, v4

    aput-byte v4, v0, v7

    .line 1449
    return-object v0

    :array_5a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getCurrentClockData()[B
    .registers 13

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "curTimeStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 686
    .local v1, "locale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    .line 687
    .local v2, "bIs24HTime":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 688
    .local v3, "curTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 689
    .local v5, "c":Ljava/util/Calendar;
    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 691
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 692
    .local v6, "hours":I
    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 694
    .local v7, "minutes":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v2, :cond_3d

    .line 697
    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    .line 698
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v8

    .line 697
    const-string v8, "%02d%02d"

    invoke-static {v1, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    .line 700
    :cond_3d
    rem-int/lit8 v6, v6, 0xc

    .line 701
    if-nez v6, :cond_43

    .line 702
    const/16 v6, 0xc

    .line 706
    :cond_43
    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    .line 707
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v8

    .line 706
    const-string v8, "%2d%02d"

    invoke-static {v1, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 709
    :goto_57
    sget-boolean v8, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v8, :cond_71

    .line 710
    sget-object v8, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentClockData : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_71
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    return-object v8
.end method

.method private getLenByteValue([B)I
    .registers 4
    .param p1, "data"    # [B

    .line 1134
    const/4 v0, 0x5

    .line 1135
    .local v0, "len":I
    if-eqz p1, :cond_6

    .line 1136
    array-length v1, p1

    add-int/2addr v0, v1

    goto :goto_8

    .line 1139
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 1142
    :goto_8
    return v0
.end method

.method private getListenerTypeForCommand(I[B)I
    .registers 8
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .line 1531
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2e

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v2, :cond_1b

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_e

    goto :goto_2c

    .line 1535
    :cond_e
    if-eqz p2, :cond_2c

    array-length v0, p2

    if-lez v0, :cond_2c

    .line 1536
    aget-byte v0, p2, v1

    if-eq v0, v4, :cond_1a

    if-eq v0, v3, :cond_1a

    .line 1539
    goto :goto_2c

    :cond_1a
    return v1

    .line 1544
    :cond_1b
    if-eqz p2, :cond_2c

    array-length v2, p2

    if-lez v2, :cond_2c

    .line 1545
    aget-byte v1, p2, v1

    if-eq v1, v4, :cond_2b

    if-eq v1, v0, :cond_2a

    if-eq v1, v3, :cond_29

    goto :goto_2c

    .line 1551
    :cond_29
    return v3

    .line 1549
    :cond_2a
    return v0

    .line 1547
    :cond_2b
    return v4

    .line 1555
    :cond_2c
    :goto_2c
    const/4 v0, -0x1

    return v0

    .line 1533
    :cond_2e
    return v1
.end method

.method private handleAddLedNotification(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "data"    # Landroid/os/Bundle;

    .line 563
    const/4 v0, 0x2

    .line 565
    .local v0, "event":I
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 566
    :try_start_4
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 567
    .local v3, "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v4, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1e

    .line 568
    invoke-virtual {v3, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 570
    .end local v3    # "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_1e
    goto :goto_a

    .line 571
    :cond_1f
    monitor-exit v1

    .line 572
    return-void

    .line 571
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v2
.end method

.method private handleClearOngoingEvent(I)V
    .registers 3
    .param p1, "code"    # I

    .line 1277
    const v0, 0xfffe

    if-ne p1, v0, :cond_6

    .line 1278
    const/4 p1, 0x3

    .line 1280
    :cond_6
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-eqz v0, :cond_13

    iget v0, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    if-ne v0, p1, :cond_13

    .line 1281
    :cond_10
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearOngoingEvent()V

    .line 1283
    :cond_13
    return-void
.end method

.method private handleCoverDetachedLocked()V
    .registers 3

    .line 271
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 275
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    .line 277
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 285
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 286
    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    .line 287
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 288
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 289
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover()V
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_44

    .line 292
    :cond_3d
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 293
    nop

    .line 294
    return-void

    .line 292
    :catchall_44
    move-exception v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 293
    throw v0
.end method

.method private handleEventResponse(II)V
    .registers 7
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .line 1286
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleEventResponse: type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4a

    .line 1289
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Event touch: accept"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1291
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1292
    .local v2, "info":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_44

    .line 1293
    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V

    .line 1295
    .end local v2    # "info":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_44
    goto :goto_31

    .line 1296
    :cond_45
    monitor-exit v0

    goto :goto_8c

    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_47

    throw v1

    .line 1297
    :cond_4a
    const/4 v0, 0x2

    if-ne p2, v0, :cond_76

    .line 1298
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Event touch: reject"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1300
    :try_start_57
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1301
    .restart local v2    # "info":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_70

    .line 1302
    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V

    .line 1304
    .end local v2    # "info":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_70
    goto :goto_5d

    .line 1305
    :cond_71
    monitor-exit v0

    goto :goto_8c

    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_57 .. :try_end_75} :catchall_73

    throw v1

    .line 1307
    :cond_76
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :goto_8c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 1310
    return-void
.end method

.method private handleInvalidCommand(I[B[B)V
    .registers 12
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .param p3, "returnValue"    # [B

    .line 1011
    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 1013
    const/16 v0, 0x12

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_cf

    if-eq p1, v0, :cond_cf

    array-length v3, p3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_cf

    .line 1014
    const/4 v3, 0x0

    .line 1017
    .local v3, "doRetry":Z
    aget-byte v5, p3, v2

    const/16 v6, -0x20

    if-eq v5, v6, :cond_3c

    if-eq v5, v4, :cond_3c

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3c

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3c

    const/4 v6, 0x6

    if-eq v5, v6, :cond_3c

    packed-switch v5, :pswitch_data_100

    .line 1029
    sget-object v5, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transceive error - unknown error value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, p3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 1026
    :cond_3c
    :pswitch_3c
    const/4 v3, 0x1

    .line 1027
    nop

    .line 1035
    :goto_3e
    if-nez v3, :cond_58

    array-length v5, p3

    if-le v5, v1, :cond_58

    aget-byte v5, p3, v1

    const/16 v6, -0x30

    if-ne v5, v6, :cond_58

    .line 1040
    array-length v5, p3

    new-array v5, v5, [B

    .line 1041
    .local v5, "tmp":[B
    array-length v6, p3

    invoke-static {p3, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1042
    const/16 v6, -0x2f

    aput-byte v6, v5, v1

    .line 1046
    invoke-direct {p0, p1, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v3

    .line 1049
    .end local v5    # "tmp":[B
    :cond_58
    if-eqz v3, :cond_c4

    iget v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v6, 0xd

    if-ge v5, v6, :cond_c4

    .line 1050
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Repeat command "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " count: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 1057
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v0

    .line 1058
    .local v0, "stopCoverResult":Z
    sget-boolean v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_a6

    .line 1059
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop result: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_a6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1062
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1063
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1064
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1065
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v1, v5, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1066
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    .line 1067
    iget v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 1068
    return-void

    .line 1070
    .end local v0    # "stopCoverResult":Z
    .end local v1    # "msg":Landroid/os/Message;
    :cond_c4
    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 1071
    sget-object v4, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v5, "Could not transceive command to cover so turn off led cover"

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 1076
    .end local v3    # "doRetry":Z
    :cond_cf
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v3, "doneIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1078
    sget-object v4, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v5, "Sent done intent, fail transceive"

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    if-eq p1, v1, :cond_e9

    if-eq p1, v0, :cond_e9

    goto :goto_ef

    .line 1083
    :cond_e9
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    if-eqz v0, :cond_ef

    .line 1084
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1088
    :cond_ef
    :goto_ef
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover()V

    .line 1090
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 1091
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 1092
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 1095
    return-void

    nop

    :pswitch_data_100
    .packed-switch -0x50
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "data"    # Landroid/os/Bundle;

    .line 587
    const/4 v0, 0x4

    .line 589
    .local v0, "event":I
    const-string/jumbo v1, "lcd_off_disabled_by_cover"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 591
    .local v1, "lcdOffDisabledByCover":Z
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eq v2, v1, :cond_1a

    .line 592
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    .line 594
    if-eqz v1, :cond_1a

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_1a

    .line 595
    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 599
    :cond_1a
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 600
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 601
    .local v4, "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v5, v4, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_37

    .line 602
    invoke-virtual {v4, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 604
    .end local v4    # "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_37
    goto :goto_23

    .line 605
    :cond_38
    monitor-exit v2

    .line 606
    return-void

    .line 605
    :catchall_3a
    move-exception v3

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method private handlePollEventTouch(I)V
    .registers 13
    .param p1, "event"    # I

    .line 1150
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v0, :cond_15

    .line 1151
    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_f

    .line 1152
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Stop polling touch events"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 1155
    return-void

    .line 1158
    :cond_15
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    const/4 v1, 0x1

    if-lez v0, :cond_1f

    .line 1159
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    .line 1163
    :cond_1f
    new-array v0, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v0, v2

    const/16 v3, 0x11

    invoke-direct {p0, v3, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v0

    .line 1164
    .local v0, "pollData":[B
    const/4 v4, 0x0

    .line 1166
    .local v4, "returnData":[B
    :try_start_2b
    iget v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    if-nez v5, :cond_36

    .line 1167
    iget-object v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5, v0}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v5
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_35} :catch_37

    move-object v4, v5

    .line 1171
    :cond_36
    goto :goto_3f

    .line 1169
    :catch_37
    move-exception v5

    .line 1170
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v7, "Error sending data to NFC"

    invoke-static {v6, v7, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1174
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3f
    iget v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-lez v5, :cond_82

    iget v9, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    const/16 v10, 0x13

    if-le v9, v10, :cond_82

    .line 1175
    const/4 v9, 0x5

    new-array v4, v9, [B

    .line 1176
    aput-byte v2, v4, v1

    aput-byte v2, v4, v2

    .line 1177
    const/16 v9, -0x2f

    aput-byte v9, v4, v8

    .line 1178
    aput-byte v3, v4, v6

    .line 1179
    if-ne v5, v8, :cond_5e

    .line 1180
    aput-byte v1, v4, v7

    goto :goto_82

    .line 1181
    :cond_5e
    if-ne v5, v1, :cond_63

    .line 1182
    aput-byte v8, v4, v7

    goto :goto_82

    .line 1184
    :cond_63
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown test value: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", reject by default"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    aput-byte v8, v4, v7

    .line 1190
    :cond_82
    :goto_82
    invoke-direct {p0, v4}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 1191
    sget-boolean v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_ac

    .line 1192
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TouchEvent from led cover: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    aget-byte v8, v4, v7

    if-ne v8, v1, :cond_9f

    const-string v1, "accept"

    goto :goto_a2

    :cond_9f
    const-string/jumbo v1, "reject"

    :goto_a2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1192
    invoke-static {v3, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_ac
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 1196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1197
    .local v1, "msg":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1199
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1201
    aget-byte v3, v4, v7

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 1202
    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1203
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 1204
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 1205
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_e0

    .line 1207
    :cond_ca
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "No touch event from LED cover, keep listening"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1209
    .restart local v1    # "msg":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1210
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1211
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v1, v5, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1213
    .end local v1    # "msg":Landroid/os/Message;
    :goto_e0
    return-void
.end method

.method private handleRemoveLedNotification(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "data"    # Landroid/os/Bundle;

    .line 575
    const/4 v0, 0x3

    .line 577
    .local v0, "event":I
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 578
    :try_start_4
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 579
    .local v3, "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v4, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1e

    .line 580
    invoke-virtual {v3, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 582
    .end local v3    # "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_1e
    goto :goto_a

    .line 583
    :cond_1f
    monitor-exit v1

    .line 584
    return-void

    .line 583
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v2
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .registers 13
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .line 760
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 762
    :try_start_5
    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_20

    .line 763
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSendDataToLedCover : command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_20
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_53

    .line 767
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    .line 771
    if-eqz p2, :cond_53

    array-length v3, p2

    if-lez v3, :cond_53

    aget-byte v3, p2, v2

    if-nez v3, :cond_53

    .line 773
    iget v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v3, v0, :cond_4a

    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 774
    invoke-virtual {v3, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 777
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "CMD_LED_CALL_END was already processed so return"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_238

    .line 938
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 778
    return-void

    .line 780
    :cond_4a
    :try_start_4a
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "CMD_LED_CALL_END called but with dummy data, switch to LED_OFF and stop CallTimer"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/16 p1, 0x12

    .line 788
    :cond_53
    const v3, 0xfffe

    const/16 v4, 0x12

    if-ne p1, v3, :cond_60

    .line 789
    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->startCallInProgressDisplayTimer([B)V

    .line 790
    const/4 p1, 0x3

    goto/16 :goto_1ad

    .line 791
    :cond_60
    if-ne p1, v4, :cond_85

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-nez v3, :cond_85

    .line 792
    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_71

    .line 793
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v3, "NfcLedCover not started, Start wireless charger"

    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_71
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 796
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Led cover already off"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z
    :try_end_7f
    .catchall {:try_start_4a .. :try_end_7f} :catchall_238

    .line 938
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 798
    return-void

    .line 800
    :cond_85
    :try_start_85
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v5, "Ensuring NFC LED Cover started"

    invoke-static {v3, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v3, 0x0

    .line 804
    .local v3, "coverStarted":Z
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->tryStartLedCover()Z

    move-result v5
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_238

    move v3, v5

    .line 806
    const-string v5, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    if-nez v3, :cond_11c

    .line 807
    :try_start_96
    iget v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v6, 0xd

    if-ge v4, v6, :cond_f5

    .line 808
    sget-object v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 811
    .local v2, "msg":Landroid/os/Message;
    iput v0, v2, Landroid/os/Message;->what:I

    .line 812
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 813
    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 814
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    .line 816
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 822
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v0

    .line 823
    .local v0, "stopCoverResult":Z
    sget-boolean v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_f4

    .line 824
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    .end local v0    # "stopCoverResult":Z
    .end local v2    # "msg":Landroid/os/Message;
    :cond_f4
    goto :goto_116

    .line 827
    :cond_f5
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Could not start NFC LED Cover"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 829
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, "doneIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 831
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "Sent done intent, fail start"

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover()V

    .line 837
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z
    :try_end_116
    .catchall {:try_start_96 .. :try_end_116} :catchall_238

    .line 938
    .end local v0    # "doneIntent":Landroid/content/Intent;
    :goto_116
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 839
    return-void

    .line 841
    :cond_11c
    :try_start_11c
    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 844
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v0
    :try_end_122
    .catchall {:try_start_11c .. :try_end_122} :catchall_238

    .line 845
    .local v0, "genData":[B
    const/4 v6, 0x0

    .line 847
    .local v6, "returnValue":[B
    :try_start_123
    iget-object v7, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v7, v0}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v7

    move-object v6, v7

    .line 848
    sget-boolean v7, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v7, :cond_14a

    if-eqz v6, :cond_14a

    .line 849
    sget-object v7, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_14a} :catch_14b
    .catchall {:try_start_123 .. :try_end_14a} :catchall_238

    .line 853
    :cond_14a
    goto :goto_153

    .line 851
    :catch_14b
    move-exception v7

    .line 852
    .local v7, "e":Ljava/lang/Exception;
    :try_start_14c
    sget-object v8, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v9, "Error in trancieve command"

    invoke-static {v8, v9, v7}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_153
    invoke-direct {p0, p1, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v7

    if-nez v7, :cond_192

    .line 856
    sget-object v7, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing response for command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {p0, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 856
    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleInvalidCommand(I[B[B)V

    .line 861
    invoke-direct {p0, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    .line 862
    iget v7, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I
    :try_end_183
    .catchall {:try_start_14c .. :try_end_183} :catchall_238

    if-nez v7, :cond_18b

    .line 938
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 863
    return-void

    .line 865
    :cond_18b
    :try_start_18b
    sget-object v7, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v8, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_192
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 871
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 872
    .local v5, "doneIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 873
    sget-object v7, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v8, "Sent done intent, sucess"

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 875
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->scheduleLedOffTimeout(I[B)V

    .line 880
    .end local v0    # "genData":[B
    .end local v3    # "coverStarted":Z
    .end local v5    # "doneIntent":Landroid/content/Intent;
    .end local v6    # "returnValue":[B
    :goto_1ad
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 881
    .local v0, "previousCommand":I
    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 884
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->setOngoingEventIfValid(I[B)V

    .line 888
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1da

    const/4 v5, 0x6

    if-eq p1, v5, :cond_1dc

    const/16 v5, 0xa

    if-eq p1, v5, :cond_1cb

    if-eq p1, v4, :cond_1c5

    const/16 v4, 0xe0

    if-eq p1, v4, :cond_1dc

    goto :goto_1cd

    .line 923
    :cond_1c5
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover()V

    .line 924
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->notifyLedOffListeners(I)V

    .line 929
    :cond_1cb
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 932
    :goto_1cd
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 933
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 934
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_231

    .line 891
    :cond_1da
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 895
    :cond_1dc
    iget v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    if-lez v4, :cond_1e2

    .line 896
    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    .line 900
    :cond_1e2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 901
    .restart local v2    # "msg":Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->what:I

    .line 902
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getListenerTypeForCommand(I[B)I

    move-result v4

    .line 903
    .local v4, "listenerType":I
    if-gez v4, :cond_20f

    .line 904
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong listener type requested for command:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; return"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_209
    .catchall {:try_start_18b .. :try_end_209} :catchall_238

    .line 938
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 905
    return-void

    .line 907
    :cond_20f
    :try_start_20f
    iget-object v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 909
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 912
    iget-boolean v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v5, :cond_227

    .line 913
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v5, "Already polling for touch events"

    invoke-static {v1, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    goto :goto_229

    .line 916
    :cond_227
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 918
    :goto_229
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_230
    .catchall {:try_start_20f .. :try_end_230} :catchall_238

    .line 920
    nop

    .line 938
    .end local v0    # "previousCommand":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "listenerType":I
    :goto_231
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 939
    nop

    .line 940
    return-void

    .line 938
    :catchall_238
    move-exception v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 939
    throw v0
.end method

.method private handleSendPowerKeyToCover()V
    .registers 6

    .line 625
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->notifyPowerButtonPressListeners()V

    .line 627
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 628
    .local v1, "data":[B
    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 630
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    const-string/jumbo v3, "mIsLedOn : "

    if-eqz v2, :cond_3b

    .line 632
    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2f

    .line 633
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ". should be off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_2f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 636
    const/16 v0, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto/16 :goto_b6

    .line 639
    :cond_3b
    sget-boolean v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v2, :cond_77

    .line 640
    sget-object v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ". should be on"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget-object v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mOngoingEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_77
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 647
    :try_start_7c
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-eqz v2, :cond_ad

    .line 650
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    iget v2, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a1

    .line 651
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    if-nez v2, :cond_90

    goto :goto_93

    .line 656
    :cond_90
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto :goto_b0

    .line 652
    :cond_93
    :goto_93
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "There is no time update task but we\'ve got call duration ongoing event... displaying clock instead"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearOngoingEvent()V

    .line 654
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendCurrentClockCommand()V

    goto :goto_b0

    .line 659
    :cond_a1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    iget v0, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    iget-object v2, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    invoke-virtual {p0, v0, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_b0

    .line 662
    :cond_ad
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    :try_end_b0
    .catchall {:try_start_7c .. :try_end_b0} :catchall_b7

    .line 665
    :goto_b0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 666
    nop

    .line 668
    :goto_b6
    return-void

    .line 665
    :catchall_b7
    move-exception v0

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 666
    throw v0
.end method

.method private isFinishedTouchReply([B)Z
    .registers 6
    .param p1, "returnData"    # [B

    .line 1265
    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    array-length v1, p1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1f

    const/4 v1, 0x2

    aget-byte v2, p1, v1

    const/16 v3, -0x2f

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x4

    aget-byte v3, p1, v2

    if-eq v3, v0, :cond_1e

    aget-byte v2, p1, v2

    if-ne v2, v1, :cond_1f

    :cond_1e
    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method private isSingleMissedEvent([B)Z
    .registers 6
    .param p1, "data"    # [B

    .line 465
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    array-length v1, p1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_8

    goto :goto_20

    .line 468
    :cond_8
    const/4 v1, 0x1

    aget-byte v2, p1, v1

    const/16 v3, 0x30

    if-ne v2, v3, :cond_14

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-eq v2, v3, :cond_1e

    :cond_14
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_1f

    :cond_1e
    move v0, v1

    :cond_1f
    return v0

    .line 466
    :cond_20
    :goto_20
    return v0
.end method

.method private isValidCoverStartData([B)Z
    .registers 4
    .param p1, "coverStartData"    # [B

    .line 992
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    array-length v1, p1

    if-le v1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isValidResponse(I[B)Z
    .registers 10
    .param p1, "command"    # I
    .param p2, "response"    # [B

    .line 1225
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 1226
    return v0

    .line 1228
    :cond_4
    array-length v1, p2

    sget-object v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v3, v2

    if-ge v1, v3, :cond_b

    .line 1230
    return v0

    .line 1232
    :cond_b
    const/4 v1, 0x3

    int-to-byte v3, p1

    aput-byte v3, v2, v1

    .line 1233
    sget-boolean v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2f

    .line 1234
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected response data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_2f
    const/4 v1, 0x0

    .line 1237
    .local v1, "patternCount":I
    array-length v2, p2

    move v3, v0

    :goto_32
    if-ge v3, v2, :cond_4f

    aget-byte v4, p2, v3

    .line 1239
    .local v4, "b":B
    sget-object v5, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    aget-byte v5, v5, v1

    const/4 v6, 0x1

    if-eq v4, v5, :cond_44

    if-ne v1, v6, :cond_40

    goto :goto_44

    .line 1244
    :cond_40
    if-nez v1, :cond_43

    .line 1246
    goto :goto_4c

    .line 1250
    :cond_43
    return v0

    .line 1240
    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    .line 1241
    sget-object v5, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v5, v5

    if-ne v1, v5, :cond_4c

    .line 1242
    return v6

    .line 1237
    .end local v4    # "b":B
    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 1253
    :cond_4f
    return v0
.end method

.method private notifyLedOffListeners(I)V
    .registers 9
    .param p1, "turnedOffCommand"    # I

    .line 1485
    const/4 v0, 0x0

    .line 1486
    .local v0, "event":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1487
    .local v1, "systemEventData":Landroid/os/Bundle;
    const-string/jumbo v2, "led_off_command"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1489
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1490
    :try_start_f
    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1491
    .local v4, "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v5, v4, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_29

    .line 1492
    invoke-virtual {v4, v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 1494
    .end local v4    # "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_29
    goto :goto_15

    .line 1495
    :cond_2a
    monitor-exit v2

    .line 1496
    return-void

    .line 1495
    :catchall_2c
    move-exception v3

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_2c

    throw v3
.end method

.method private notifyPowerButtonPressListeners()V
    .registers 7

    .line 1505
    const/4 v0, 0x1

    .line 1507
    .local v0, "event":I
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1508
    :try_start_4
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1509
    .local v3, "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v4, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1f

    .line 1510
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 1512
    .end local v3    # "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_1f
    goto :goto_a

    .line 1513
    :cond_20
    monitor-exit v1

    .line 1514
    return-void

    .line 1513
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v2
.end method

.method private scheduleLedOffTimeout(I[B)V
    .registers 7
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .line 392
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleLedOffTimerout, command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x1

    if-eq p1, v0, :cond_ae

    const/4 v1, 0x2

    if-eq p1, v1, :cond_ae

    const/16 v1, 0x12

    if-eq p1, v1, :cond_ae

    const/16 v1, 0x14

    if-eq p1, v1, :cond_ae

    const/16 v1, 0xe0

    if-eq p1, v1, :cond_ae

    .line 411
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v1, :cond_52

    const/16 v1, 0xf

    if-eq p1, v1, :cond_34

    const/4 v2, 0x3

    if-ne p1, v2, :cond_52

    :cond_34
    iget v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v2, p1, :cond_52

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 412
    invoke-virtual {v2, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 413
    if-ne p1, v1, :cond_4a

    .line 414
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Time update"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 416
    :cond_4a
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Call InProgress duration time update"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_51
    return-void

    .line 422
    :cond_52
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 424
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 425
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 428
    :cond_64
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 429
    .local v1, "msgLedOff":Landroid/os/Message;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 430
    iput v0, v1, Landroid/os/Message;->what:I

    .line 431
    const/4 v0, 0x6

    if-eq p1, v0, :cond_a4

    const/16 v0, 0x9

    const-wide/16 v2, 0xe74

    if-eq p1, v0, :cond_90

    packed-switch p1, :pswitch_data_c2

    .line 452
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ad

    .line 446
    :pswitch_80
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 447
    goto :goto_ad

    .line 433
    :pswitch_88
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x11f8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 434
    goto :goto_ad

    .line 438
    :cond_90
    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isSingleMissedEvent([B)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 439
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ad

    .line 441
    :cond_9c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x13ec

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 443
    goto :goto_ad

    .line 449
    :cond_a4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 450
    nop

    .line 455
    :goto_ad
    return-void

    .line 400
    .end local v1    # "msgLedOff":Landroid/os/Message;
    :cond_ae
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 401
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 403
    :cond_bb
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 407
    return-void

    nop

    :pswitch_data_c2
    .packed-switch 0xc
        :pswitch_88
        :pswitch_80
        :pswitch_80
    .end packed-switch
.end method

.method private sendCurrentClockCommand()V
    .registers 3

    .line 675
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 676
    return-void
.end method

.method private sendNfcFailIntentForFactoryMode([B)V
    .registers 6
    .param p1, "returnValue"    # [B

    .line 1459
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_13

    .line 1460
    return-void

    .line 1463
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    if-eqz v0, :cond_18

    .line 1465
    return-void

    .line 1470
    :cond_18
    if-eqz p1, :cond_40

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_40

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v2, 0x69

    if-ne v0, v2, :cond_40

    const/4 v0, 0x1

    aget-byte v2, p1, v0

    const/16 v3, -0x7b

    if-ne v2, v3, :cond_40

    aget-byte v1, p1, v1

    if-nez v1, :cond_40

    .line 1472
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 1473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NFC_LED_COVER_FPCB_DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v0, "nfcFailIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1476
    .end local v0    # "nfcFailIntent":Landroid/content/Intent;
    :cond_40
    return-void
.end method

.method private setOngoingEventIfValid(I[B)V
    .registers 7
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .line 951
    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-eq p1, v0, :cond_24

    const/16 v1, 0xd

    if-eq p1, v1, :cond_13

    const/16 v0, 0xe

    if-eq p1, v0, :cond_24

    const/16 v0, 0x14

    if-eq p1, v0, :cond_24

    .line 968
    return-void

    .line 954
    :cond_13
    if-eqz p2, :cond_23

    array-length v1, p2

    if-lez v1, :cond_23

    const/4 v1, 0x0

    aget-byte v2, p2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    aget-byte v1, p2, v1

    if-ne v1, v0, :cond_23

    .line 955
    goto :goto_25

    .line 958
    :cond_23
    return-void

    .line 965
    :cond_24
    nop

    .line 970
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-nez v0, :cond_31

    .line 971
    new-instance v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    goto :goto_37

    .line 973
    :cond_31
    iput p1, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    .line 974
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    iput-object p2, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    .line 976
    :goto_37
    return-void
.end method

.method private startCallInProgressDisplayTimer([B)V
    .registers 12
    .param p1, "data"    # [B

    .line 1321
    const-string v0, "CallStartTime incorrect"

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1323
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :try_start_8
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1324
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1325
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J
    :try_end_14
    .catch Ljava/nio/BufferUnderflowException; {:try_start_8 .. :try_end_14} :catch_6b
    .catch Ljava/nio/BufferOverflowException; {:try_start_8 .. :try_end_14} :catch_64

    .line 1332
    nop

    .line 1333
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallStartTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    const/4 v2, 0x0

    if-eqz v0, :cond_39

    .line 1335
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1336
    iput-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1337
    iput-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    .line 1339
    :cond_39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1340
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1341
    new-instance v5, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    invoke-direct {v5, p0, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Lcom/android/server/sepunion/cover/NfcLedCoverController$1;)V

    iput-object v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    .line 1343
    :try_start_4a
    iget-object v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1f4

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_53
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4a .. :try_end_53} :catch_54

    .line 1349
    goto :goto_63

    .line 1344
    :catch_54
    move-exception v0

    .line 1345
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "Error while scheduling TimerTask"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1346
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1347
    iput-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1348
    iput-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    .line 1350
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_63
    return-void

    .line 1329
    :catch_64
    move-exception v2

    .line 1330
    .local v2, "e":Ljava/nio/BufferOverflowException;
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1331
    return-void

    .line 1326
    .end local v2    # "e":Ljava/nio/BufferOverflowException;
    :catch_6b
    move-exception v2

    .line 1327
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    return-void
.end method

.method private stopCallInProgressDisplayTimer()V
    .registers 3

    .line 1359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1360
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_10

    .line 1361
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1363
    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    goto :goto_17

    .line 1365
    :cond_10
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Call duration should not be null in stop or was already stopped"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :goto_17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    .line 1368
    return-void
.end method

.method private stopLedCover()V
    .registers 5

    .line 1419
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v0

    .line 1420
    .local v0, "stopCoverResult":Z
    sget-boolean v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_24

    .line 1421
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop LedCover, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 1424
    sget-boolean v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_32

    .line 1425
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "LED_OFF, Start wireless charger"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_32
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 1429
    return-void
.end method

.method private tryStartLedCover()Z
    .registers 7

    .line 723
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 725
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_77

    .line 727
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    const/4 v2, 0x0

    if-nez v0, :cond_36

    .line 728
    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_31

    .line 729
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v3, "Disable Wireless Charger"

    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_31
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, v2}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 733
    :cond_36
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStartLedCoverMode()[B

    move-result-object v0

    .line 734
    .local v0, "coverStartData":[B
    sget-boolean v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_5a

    .line 735
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_5a
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 738
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "Started NFC LED Cover"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 740
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 748
    .end local v0    # "coverStartData":[B
    goto :goto_7e

    .line 742
    .restart local v0    # "coverStartData":[B
    :cond_6c
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start NFC LED Cover"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    .line 746
    return v2

    .line 749
    .end local v0    # "coverStartData":[B
    :cond_77
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "NFC LED Cover already started"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :goto_7e
    return v1
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "data"    # Landroid/os/Bundle;

    .line 527
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "addLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 529
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 530
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 531
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1633
    const-string v0, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    const-string v0, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1635
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1636
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    const-string v0, " Current NFC Callback state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1641
    :try_start_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Live callbacks ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1643
    .local v2, "info":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v2, :cond_88

    .line 1644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    .end local v2    # "info":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_88
    goto :goto_41

    .line 1648
    :cond_89
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1649
    monitor-exit v0

    .line 1650
    return-void

    .line 1649
    :catchall_90
    move-exception v1

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_1c .. :try_end_92} :catchall_90

    throw v1
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3b

    .line 474
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNfcTouchListenerCallback: binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_3b
    if-ltz p1, :cond_8e

    const/4 v0, 0x5

    if-le p1, v0, :cond_41

    goto :goto_8e

    .line 486
    :cond_41
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 487
    :try_start_44
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 488
    .local v2, "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v2, :cond_6a

    .line 489
    iget-object v3, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 490
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    monitor-exit v0

    return-void

    .line 494
    .end local v2    # "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_6a
    goto :goto_4a

    .line 496
    :cond_6b
    const/4 v1, 0x0

    .line 497
    .local v1, "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    new-instance v9, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 498
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v2, v9

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    move-object v1, v9

    .line 499
    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 500
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    nop

    .end local v1    # "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    monitor-exit v0

    .line 502
    return-void

    .line 501
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_44 .. :try_end_8d} :catchall_8b

    throw v1

    .line 481
    :cond_8e
    :goto_8e
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported touch listener type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "data"    # Landroid/os/Bundle;

    .line 534
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 536
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 537
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 538
    return-void
.end method

.method sendDataToNfcLedCover(I[B)V
    .registers 13
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .line 298
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v0, :cond_17

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_17

    .line 300
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToLedCover : Not attached LED Cover or Disabled by SamsungPay"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 303
    :cond_17
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 305
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToLedCover : Nfc Service not available"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 310
    :cond_2a
    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_4d

    .line 311
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDataToNfcLedCover: command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_4d
    const v0, 0xffff

    const/16 v1, 0xf

    if-ne p1, v0, :cond_67

    .line 316
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v0, v1, :cond_5f

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v0, :cond_5f

    .line 317
    const/16 p1, 0xf

    goto :goto_67

    .line 319
    :cond_5f
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Time tick: clock not displayed, ignore"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 325
    :cond_67
    :goto_67
    if-ne p1, v1, :cond_6d

    .line 326
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getCurrentClockData()[B

    move-result-object p2

    .line 332
    :cond_6d
    const/16 v0, 0xc

    if-ne p1, v0, :cond_7f

    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_7f

    .line 333
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Ignore battery chargin, battery low already shown"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 337
    :cond_7f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 339
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 340
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 341
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 343
    const v1, 0xfff0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_a7

    .line 344
    if-eqz p2, :cond_ff

    array-length v1, p2

    if-lez v1, :cond_ff

    .line 345
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 346
    aget-byte v1, p2, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 347
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 348
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_ff

    .line 350
    :cond_a7
    const/16 v1, 0x13

    const/4 v3, 0x4

    if-ne p1, v1, :cond_bb

    .line 351
    iput v3, v0, Landroid/os/Message;->what:I

    .line 352
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 353
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ff

    .line 356
    :cond_bb
    iput v2, v0, Landroid/os/Message;->what:I

    .line 364
    const-wide/16 v4, 0x0

    .line 365
    .local v4, "delay":J
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 366
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 368
    const-wide/16 v1, 0x1f4

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    sub-long/2addr v6, v8

    sub-long/2addr v1, v6

    .line 370
    .end local v4    # "delay":J
    .local v1, "delay":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_e0

    .line 371
    const-wide/16 v1, 0x0

    move-wide v4, v1

    goto :goto_e1

    .line 370
    :cond_e0
    move-wide v4, v1

    .line 373
    .end local v1    # "delay":J
    .restart local v4    # "delay":J
    :goto_e1
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is pending DELAYED message due to Retry mechanism send this command with proper delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_f7
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 381
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 383
    .end local v4    # "delay":J
    :cond_ff
    :goto_ff
    return-void
.end method

.method public sendPowerKeyToCover()V
    .registers 3

    .line 610
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_d

    .line 611
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage MSG_EVENT_POWER_BUTTON: SamsungPay active - ignore power button events"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 617
    :cond_d
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    .line 619
    :goto_13
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "data"    # Landroid/os/Bundle;

    .line 541
    const-string v0, "event_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 542
    .local v0, "event":I
    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    goto :goto_3c

    .line 555
    :cond_c
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 556
    .local v1, "msgLedOffDisabled":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 557
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3c

    .line 544
    .end local v1    # "msgLedOffDisabled":Landroid/os/Message;
    :cond_1c
    const-string/jumbo v1, "lcd_touch_listener_type"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 545
    .local v1, "touchListenerType":I
    const-string/jumbo v3, "lcd_touch_listener_respone"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 546
    .local v2, "response":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 547
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 549
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 551
    iput v2, v3, Landroid/os/Message;->arg2:I

    .line 552
    iget-object v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 553
    nop

    .line 560
    .end local v1    # "touchListenerType":I
    .end local v2    # "response":I
    .end local v3    # "msg":Landroid/os/Message;
    :goto_3c
    return-void
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 505
    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_33

    .line 506
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_33
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 511
    :try_start_36
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 512
    .local v2, "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v2, :cond_77

    .line 513
    iget-object v4, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 514
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 516
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 517
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 520
    .end local v2    # "listener":Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_77
    goto :goto_3c

    .line 521
    :cond_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_36 .. :try_end_79} :catchall_81

    .line 522
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return v3

    .line 521
    :catchall_81
    move-exception v1

    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v1
.end method

.method updateNfcLedCoverAttachStateLocked(ZI)V
    .registers 8
    .param p1, "attached"    # Z
    .param p2, "type"    # I

    .line 244
    const/4 v0, 0x7

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    if-eq p2, v0, :cond_a

    const/16 v2, 0xe

    if-ne p2, v2, :cond_c

    :cond_a
    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    move v2, v1

    .line 246
    .local v2, "isCoverAttached":Z
    :goto_d
    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v3, v2, :cond_2b

    .line 247
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    .line 248
    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v3, :cond_2b

    .line 253
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 256
    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 261
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2b
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "nfc_led_cover_test"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    .line 263
    return-void
.end method
