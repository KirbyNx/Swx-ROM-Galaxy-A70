.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$BinderService;,
        Lcom/android/server/DockObserver$logRecent;
    }
.end annotation


# static fields
.field private static final CCIC_DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_type"

.field private static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final CCIC_DOCK_USBPD_IDS_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_ids"

.field private static final DOCK_DEVICE_TYPE_CCIC:I = 0x1

.field private static final DOCK_DEVICE_TYPE_MUIC:I = 0x0

.field private static final DOCK_DEVICE_TYPE_NONE:I = -0x1

.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private mActualDockState:I

.field private mActualUsbpdIds:Ljava/lang/String;

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mCcicObserver:Landroid/os/UEventObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mLastUEventDevice:I

.field private final mLock:Ljava/lang/Object;

.field private mLogRecent:Lcom/android/server/DockObserver$logRecent;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mReportedUsbpdIds:Ljava/lang/String;

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private mUsbpdIds:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 72
    iput v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 73
    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DockObserver;->mLastUEventDevice:I

    .line 395
    new-instance v0, Lcom/android/server/DockObserver$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 407
    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    .line 431
    new-instance v0, Lcom/android/server/DockObserver$3;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$3;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mCcicObserver:Landroid/os/UEventObserver;

    .line 150
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 151
    const-string v2, "DockObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 156
    new-instance v0, Lcom/android/server/DockObserver$logRecent;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$logRecent;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    .line 159
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 161
    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/DockObserver;->mCcicObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .line 55
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .line 55
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .line 55
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/DockObserver;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .line 55
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .line 55
    iget v0, p0, Lcom/android/server/DockObserver;->mLastUEventDevice:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/DockObserver;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lcom/android/server/DockObserver;->mLastUEventDevice:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .line 55
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DockObserver;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/DockObserver;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/DockObserver;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .line 55
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/DockObserver;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .line 55
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .line 55
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method private handleDockStateChange()V
    .registers 8

    .line 281
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    const-string v1, "DockObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 285
    .local v1, "previousDockState":I
    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 288
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 289
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_45

    .line 291
    const-string v3, "DockObserver"

    const-string v4, "Device not provisioned, skipping dock broadcast"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    monitor-exit v0

    return-void

    .line 296
    :cond_45
    iget-object v3, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    if-eqz v3, :cond_53

    .line 297
    iget-object v3, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iget-object v6, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/DockObserver$logRecent;->log(IILjava/lang/String;)V

    .line 329
    :cond_53
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    const-string v4, "android.intent.extra.DOCK_STATE"

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    iget v4, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_81

    iget-object v4, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    if-eqz v4, :cond_81

    iget-object v4, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    const-string v5, ""

    .line 334
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    .line 335
    const-string v4, "com.sec.intent.extra.DOCK_ID"

    iget-object v5, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    :cond_81
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 392
    .end local v1    # "previousDockState":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "intent":Landroid/content/Intent;
    monitor-exit v0

    .line 393
    return-void

    .line 392
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method private init()V
    .registers 9

    .line 187
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    const/4 v1, 0x0

    const/16 v2, 0x400

    :try_start_6
    new-array v3, v2, [C

    .line 190
    .local v3, "buffer":[C
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/switch/dock/state"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_f} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_35
    .catchall {:try_start_6 .. :try_end_f} :catchall_32

    .line 192
    .local v4, "file":Ljava/io/FileReader;
    :try_start_f
    invoke-virtual {v4, v3, v1, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 193
    .local v5, "len":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 194
    iget v6, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_2c

    .line 196
    .end local v5    # "len":I
    :try_start_27
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 197
    nop

    .line 202
    .end local v3    # "buffer":[C
    .end local v4    # "file":Ljava/io/FileReader;
    goto :goto_47

    .line 196
    .restart local v3    # "buffer":[C
    .restart local v4    # "file":Ljava/io/FileReader;
    :catchall_2c
    move-exception v5

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 197
    nop

    .end local p0    # "this":Lcom/android/server/DockObserver;
    throw v5
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_32} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_32} :catch_35
    .catchall {:try_start_27 .. :try_end_32} :catchall_32

    .line 235
    .end local v3    # "buffer":[C
    .end local v4    # "file":Ljava/io/FileReader;
    .restart local p0    # "this":Lcom/android/server/DockObserver;
    :catchall_32
    move-exception v1

    goto/16 :goto_b1

    .line 200
    :catch_35
    move-exception v3

    .line 201
    .local v3, "e":Ljava/lang/Exception;
    :try_start_36
    const-string v4, "DockObserver"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 198
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3e
    move-exception v3

    .line 199
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "DockObserver"

    const-string v5, "This kernel does not have dock station support"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    nop

    .line 205
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_47
    iget v3, p0, Lcom/android/server/DockObserver;->mActualDockState:I
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_32

    if-nez v3, :cond_af

    .line 208
    :try_start_4b
    new-array v3, v2, [C

    .line 209
    .local v3, "bufferIds":[C
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/sec/ccic/usbpd_ids"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_54} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_54} :catch_9d
    .catchall {:try_start_4b .. :try_end_54} :catchall_32

    .line 211
    .local v4, "fileIds":Ljava/io/FileReader;
    :try_start_54
    invoke-virtual {v4, v3, v1, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 212
    .local v5, "lenIds":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_97

    .line 215
    .end local v5    # "lenIds":I
    :try_start_63
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 216
    nop

    .line 219
    new-array v5, v2, [C

    .line 220
    .local v5, "buffer":[C
    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/class/sec/ccic/usbpd_type"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_70} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_70} :catch_9d
    .catchall {:try_start_63 .. :try_end_70} :catchall_32

    .line 222
    .local v6, "file":Ljava/io/FileReader;
    :try_start_70
    invoke-virtual {v6, v5, v1, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .line 223
    .local v2, "len":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 224
    iget v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_8c
    .catchall {:try_start_70 .. :try_end_8c} :catchall_91

    .line 226
    .end local v2    # "len":I
    :try_start_8c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 227
    nop

    .line 232
    .end local v3    # "bufferIds":[C
    .end local v4    # "fileIds":Ljava/io/FileReader;
    .end local v5    # "buffer":[C
    .end local v6    # "file":Ljava/io/FileReader;
    goto :goto_af

    .line 226
    .restart local v3    # "bufferIds":[C
    .restart local v4    # "fileIds":Ljava/io/FileReader;
    .restart local v5    # "buffer":[C
    .restart local v6    # "file":Ljava/io/FileReader;
    :catchall_91
    move-exception v1

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 227
    nop

    .end local p0    # "this":Lcom/android/server/DockObserver;
    throw v1

    .line 215
    .end local v5    # "buffer":[C
    .end local v6    # "file":Ljava/io/FileReader;
    .restart local p0    # "this":Lcom/android/server/DockObserver;
    :catchall_97
    move-exception v1

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 216
    nop

    .end local p0    # "this":Lcom/android/server/DockObserver;
    throw v1
    :try_end_9d
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_9d} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9d} :catch_9d
    .catchall {:try_start_8c .. :try_end_9d} :catchall_32

    .line 230
    .end local v3    # "bufferIds":[C
    .end local v4    # "fileIds":Ljava/io/FileReader;
    .restart local p0    # "this":Lcom/android/server/DockObserver;
    :catch_9d
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    :try_start_9e
    const-string v2, "DockObserver"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_af

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_a6
    move-exception v1

    .line 229
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "DockObserver"

    const-string v3, "This kernel does not have ccic dock station support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    nop

    .line 235
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_af
    :goto_af
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :goto_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_9e .. :try_end_b2} :catchall_32

    throw v1
.end method

.method private setActualDockStateLocked(I)V
    .registers 5
    .param p1, "newState"    # I

    .line 239
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 242
    iget-object v0, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    if-eqz v1, :cond_e

    .line 247
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/DockObserver$logRecent;->log(IILjava/lang/String;)V

    .line 251
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_15

    .line 252
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 254
    :cond_15
    return-void
.end method

.method private setDockStateLocked(I)V
    .registers 6
    .param p1, "newState"    # I

    .line 257
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_32

    .line 258
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 260
    iget-object v0, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    .line 262
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_32

    .line 264
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_24

    .line 265
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "theater_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2f

    .line 267
    :cond_24
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "android.server:DOCK"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 270
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 273
    :cond_32
    return-void
.end method

.method private updateLocked()V
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 277
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 278
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 174
    const/16 v0, 0x226

    if-ne p1, v0, :cond_16

    .line 175
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 179
    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v1, :cond_11

    .line 180
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 182
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1

    .line 184
    :cond_16
    :goto_16
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 169
    new-instance v0, Lcom/android/server/DockObserver$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V

    const-string v1, "DockObserver"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 170
    return-void
.end method
