.class public Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;
.super Landroid/os/Handler;
.source "EventProcessHandler.java"


# static fields
.field public static final MSG_OBSERVE_INTENT_ACTION:I = 0x2

.field public static final MSG_OBSERVE_URI:I = 0x1

.field public static final MSG_REGISTER_ACTIVITY_STATE_MONITOR:I = 0x5

.field public static final MSG_REGISTER_CALL_STATE_MONITOR:I = 0x3

.field public static final MSG_REGISTER_PACKAGE_STATE_MONITOR:I = 0x7

.field public static final MSG_RESUME_COMPONENT:I = 0x9

.field public static final MSG_UNIDENTIFIED:I = -0x1

.field public static final MSG_UNREGISTER_ACTIVITY_STATE_MONITOR:I = 0x6

.field public static final MSG_UNREGISTER_CALL_STATE_MONITOR:I = 0x4

.field public static final MSG_UNREGISTER_PACKAGE_STATE_MONITOR:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mObserverHandler:Landroid/os/Handler;

.field private final mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

.field private final mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mObserverHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContentReceivers:Ljava/util/HashMap;

    .line 241
    new-instance v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;-><init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 278
    new-instance v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;-><init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 297
    new-instance v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$3;-><init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 61
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 41
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 67
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_5
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 69
    .local v1, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 70
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_1b

    .line 71
    sget-object v3, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleMessage(): msg.getData() returns null!"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    monitor-exit v0

    return-void

    .line 75
    :cond_1b
    sget-object v3, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventProcessHandler:handleMessage() msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_2e6

    .line 229
    sget-object v3, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    goto/16 :goto_2c9

    .line 162
    :pswitch_3d
    const-string v3, "component"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 163
    .local v3, "cn":Landroid/content/ComponentName;
    if-eqz v3, :cond_2e0

    .line 164
    const-string/jumbo v4, "is_resumed"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 165
    .local v4, "isResumed":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "monitor_activity_state;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "key":Ljava/lang/String;
    sget-object v6, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_RESUME_COMPONENT: key = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v6, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 169
    .local v6, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    iget-object v7, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v7, v6, v3, v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportComponentStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/ComponentName;Z)V

    .line 170
    .end local v4    # "isResumed":Z
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    goto/16 :goto_2e0

    .line 216
    .end local v3    # "cn":Landroid/content/ComponentName;
    :pswitch_95
    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 217
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_be

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 218
    .restart local v5    # "key":Ljava/lang/String;
    const-string/jumbo v6, "monitor_package_state"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 219
    sget-object v4, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    const-string v6, "PackageMonitor is still in use! DO NOT UNREGISTER!"

    invoke-static {v4, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v0

    return-void

    .line 222
    .end local v5    # "key":Ljava/lang/String;
    :cond_bd
    goto :goto_9f

    .line 224
    :cond_be
    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v4}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_c3
    .catchall {:try_start_5 .. :try_end_c3} :catchall_2e2

    .line 225
    goto/16 :goto_2e0

    .line 208
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_c5
    :try_start_c5
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d0} :catch_d2
    .catchall {:try_start_c5 .. :try_end_d0} :catchall_2e2

    .line 211
    goto/16 :goto_2e0

    .line 209
    :catch_d2
    move-exception v3

    .line 210
    .local v3, "e":Ljava/lang/Exception;
    :try_start_d3
    sget-object v4, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error on registering package monitor! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto/16 :goto_2e0

    .line 181
    :pswitch_f0
    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 182
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_fa
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_119

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 183
    .restart local v5    # "key":Ljava/lang/String;
    const-string/jumbo v6, "monitor_activity_state"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_118

    .line 184
    sget-object v4, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    const-string v6, "UsageStatWatcher is still needed! DO NOT UNREGISTER!"

    invoke-static {v4, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-exit v0

    return-void

    .line 187
    .end local v5    # "key":Ljava/lang/String;
    :cond_118
    goto :goto_fa

    .line 188
    :cond_119
    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "usagestats"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManager;

    .line 189
    .local v4, "manager":Landroid/app/usage/UsageStatsManager;
    iget-object v5, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    invoke-virtual {v4, v5}, Landroid/app/usage/UsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 191
    goto/16 :goto_2e0

    .line 175
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "manager":Landroid/app/usage/UsageStatsManager;
    :pswitch_12b
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "usagestats"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManager;

    .line 176
    .local v3, "manager":Landroid/app/usage/UsageStatsManager;
    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    invoke-virtual {v3, v4}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 177
    goto/16 :goto_2e0

    .line 201
    .end local v3    # "manager":Landroid/app/usage/UsageStatsManager;
    :pswitch_13d
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 202
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v5, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 203
    goto/16 :goto_2e0

    .line 195
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :pswitch_14f
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 196
    .restart local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 197
    goto/16 :goto_2e0

    .line 111
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :pswitch_163
    const-string/jumbo v3, "intent_action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "action":Ljava/lang/String;
    const-string/jumbo v5, "is_register"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 113
    .local v5, "doRegister":Z
    const-string v6, "for_all_users"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 114
    .local v4, "checkUserAll":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_187

    .line 115
    sget-object v6, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "handleMessage(): bundle.getString(intent_action) returns null!"

    invoke-static {v6, v7}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit v0

    return-void

    .line 119
    :cond_187
    iget-object v6, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContentReceivers:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/BroadcastReceiver;

    .line 120
    .local v6, "receiver":Landroid/content/BroadcastReceiver;
    if-nez v6, :cond_1c2

    .line 121
    sget-object v7, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "handleMessage(): mContentReceivers.get(action) returns null!"

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz v5, :cond_1c0

    .line 124
    sget-object v7, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Creating new UnionBroadcastReceiver for the action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v7, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;

    iget-object v8, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {v7, v8}, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    move-object v6, v7

    .line 126
    iget-object v7, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContentReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v6

    goto :goto_1c3

    .line 128
    :cond_1c0
    monitor-exit v0
    :try_end_1c1
    .catchall {:try_start_d3 .. :try_end_1c1} :catchall_2e2

    return-void

    .line 120
    :cond_1c2
    move-object v12, v6

    .line 133
    .end local v6    # "receiver":Landroid/content/BroadcastReceiver;
    .local v12, "receiver":Landroid/content/BroadcastReceiver;
    :goto_1c3
    if-eqz v5, :cond_224

    .line 134
    :try_start_1c5
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v13, v6

    .line 135
    .local v13, "intentFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20a

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    .line 136
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20a

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    .line 137
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20a

    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    .line 138
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20a

    const-string v6, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 139
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20a

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    .line 140
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1fc

    goto :goto_20a

    .line 142
    :cond_1fc
    const-string v6, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_210

    .line 143
    const-string v6, "content"

    invoke-virtual {v13, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_210

    .line 141
    :cond_20a
    :goto_20a
    const-string/jumbo v6, "package"

    invoke-virtual {v13, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    :cond_210
    :goto_210
    if-eqz v4, :cond_21e

    .line 146
    iget-object v6, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v12

    move-object v9, v13

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_223

    .line 149
    :cond_21e
    iget-object v6, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    .end local v13    # "intentFilter":Landroid/content/IntentFilter;
    :goto_223
    goto :goto_22e

    .line 152
    :cond_224
    iget-object v6, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v12}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    iget-object v6, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContentReceivers:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_22e} :catch_230
    .catchall {:try_start_1c5 .. :try_end_22e} :catchall_2e2

    .line 157
    :goto_22e
    goto/16 :goto_2e0

    .line 155
    :catch_230
    move-exception v6

    .line 156
    .local v6, "e":Ljava/lang/Exception;
    :try_start_231
    sget-object v7, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while processing MSG_OBSERVE_INTENT_ACTION: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    nop

    .end local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_2e0

    .line 78
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "checkUserAll":Z
    .end local v5    # "doRegister":Z
    .end local v12    # "receiver":Landroid/content/BroadcastReceiver;
    :pswitch_24e
    const-string/jumbo v3, "uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 79
    .local v3, "uri":Landroid/net/Uri;
    const-string/jumbo v5, "is_register"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 80
    .local v5, "isRegister":Z
    if-nez v3, :cond_26a

    .line 81
    sget-object v4, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "handleMessage(): bundle.getParcelable(uri) returns null!"

    invoke-static {v4, v6}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-exit v0

    return-void

    .line 85
    :cond_26a
    iget-object v6, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/ContentObserver;

    .line 86
    .local v6, "observer":Landroid/database/ContentObserver;
    if-nez v6, :cond_2a6

    .line 87
    sget-object v7, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "handleMessage(): mContentObservers.get(uri) returns null!"

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz v5, :cond_2a4

    .line 90
    sget-object v7, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Creating new UnionContentObserver for the uri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v7, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;

    iget-object v8, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mObserverHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {v7, v8, v9}, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;-><init>(Landroid/os/Handler;Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    move-object v6, v7

    .line 92
    iget-object v7, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a6

    .line 94
    :cond_2a4
    monitor-exit v0

    return-void

    .line 98
    :cond_2a6
    :goto_2a6
    if-eqz v5, :cond_2ba

    .line 99
    const-string/jumbo v7, "notify_for_descendants"

    .line 100
    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 101
    .local v4, "notifyForDescendants":Z
    iget-object v7, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v3, v4, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 103
    .end local v4    # "notifyForDescendants":Z
    goto :goto_2e0

    .line 104
    :cond_2ba
    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 105
    iget-object v4, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    goto :goto_2e0

    .line 229
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v5    # "isRegister":Z
    .end local v6    # "observer":Landroid/database/ContentObserver;
    :goto_2c9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg.what has invalid value. msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v1    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_2e0
    :goto_2e0
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_2e2
    move-exception v1

    monitor-exit v0
    :try_end_2e4
    .catchall {:try_start_231 .. :try_end_2e4} :catchall_2e2

    throw v1

    nop

    :pswitch_data_2e6
    .packed-switch 0x1
        :pswitch_24e
        :pswitch_163
        :pswitch_14f
        :pswitch_13d
        :pswitch_12b
        :pswitch_f0
        :pswitch_c5
        :pswitch_95
        :pswitch_3d
    .end packed-switch
.end method

.method public notifyToHandler(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "msg"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    return-void
.end method
