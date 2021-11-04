.class public Lcom/android/server/ipm/chimera/SystemEventListener;
.super Landroid/content/BroadcastReceiver;
.source "SystemEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;,
        Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;,
        Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;,
        Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;,
        Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;,
        Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;,
        Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;,
        Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;
    }
.end annotation


# static fields
.field private static final ACTION_BOTTLENECK_HINT_FOR_CHIMERA:Ljava/lang/String; = "com.samsung.BOTTLENECK_HINT_FOR_CHIMERA"

.field public static final ACTION_ENTER_CAR_MODE:Ljava/lang/String; = "android.app.action.ENTER_CAR_MODE"

.field public static final ACTION_EXIT_CAR_MODE:Ljava/lang/String; = "android.app.action.EXIT_CAR_MODE"

.field private static final ACTION_KPM_STATE_CHANGED:Ljava/lang/String; = "com.samsung.KPM_STATE_CHANGED"

.field private static final ACTION_PMM_CRITICAL_TRIGGERED:Ljava/lang/String; = "com.samsung.PMM_CRITICAL_TRIGGER"

.field private static final KPM_LEVEL:Ljava/lang/String; = "kpm_level"

.field static final MSG_ENTER_CAR_MODE:I = 0x6

.field static final MSG_EXIT_CAR_MODE:I = 0x7

.field static final MSG_HANDLE_BOTTLENECK_HINT:I = 0x2

.field static final MSG_HANDLE_PMM_STATE_CHANGED:I = 0x3

.field static final MSG_HOME_LAUNCH:I = 0x5

.field static final MSG_LMKD_KILL:I = 0x4

.field static final MSG_PMM_CRITICAL:I = 0x1

.field private static final PMM_CRITICAL_TRIGGER_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.BROADCAST_PMM_CRITICAL_TRIGGER"

.field private static final TAG:Ljava/lang/String; = "SystemEventListener"


# instance fields
.field private final mBottleNeckHintListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarModeChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

.field private final mHomeLaunchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLmkdEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPmmCriticalListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPmmStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mProcessObserver:Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;

.field private final mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/ipm/chimera/SystemRepository;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 168
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mBottleNeckHintListeners:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mPmmCriticalListeners:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mPmmStateChangeListeners:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    .line 177
    new-instance v0, Lcom/android/server/ipm/chimera/-$$Lambda$SystemEventListener$Wc0qlgxCOnAuGZ3qDqP5U6MOU8M;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/chimera/-$$Lambda$SystemEventListener$Wc0qlgxCOnAuGZ3qDqP5U6MOU8M;-><init>(Lcom/android/server/ipm/chimera/SystemEventListener;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mProcessObserver:Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;

    .line 169
    iput-object p3, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 170
    new-instance v0, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;-><init>(Lcom/android/server/ipm/chimera/SystemEventListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/ipm/chimera/SystemEventListener;->registerBroadcastReceivers(Landroid/content/Context;)V

    .line 173
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/SystemEventListener;->createSocketServer()V

    .line 174
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/SystemEventListener;->registerProcessObserver()V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/SystemEventListener;

    .line 20
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mBottleNeckHintListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/SystemEventListener;

    .line 20
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mPmmStateChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/SystemEventListener;

    .line 20
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mPmmCriticalListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/SystemEventListener;

    .line 20
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/SystemEventListener;

    .line 20
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/SystemEventListener;

    .line 20
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method private createSocketServer()V
    .registers 4

    .line 199
    new-instance v0, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;-><init>(Lcom/android/server/ipm/chimera/SystemRepository;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventServerThread;->start()V

    .line 200
    return-void
.end method

.method private registerBroadcastReceivers(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.BOTTLENECK_HINT_FOR_CHIMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v1, "com.samsung.KPM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "android.app.action.ENTER_CAR_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v1, "android.app.action.EXIT_CAR_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v1, "filter2":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.PMM_CRITICAL_TRIGGER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v2, "com.samsung.android.permission.BROADCAST_PMM_CRITICAL_TRIGGER"

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 213
    return-void
.end method

.method private registerProcessObserver()V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mProcessObserver:Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;

    invoke-interface {v0, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;)V

    .line 196
    return-void
.end method


# virtual methods
.method addBottleNeckHintListener(Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;

    .line 216
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mBottleNeckHintListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method addCarModeChangeListener(Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;

    .line 236
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method addHomeLaunchListener(Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;

    .line 232
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method addLmkdEventListener(Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;

    .line 228
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method addPmmCriticalListener(Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;

    .line 220
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mPmmCriticalListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method addPmmStateChangeListener(Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;

    .line 224
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mPmmStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public synthetic lambda$new$0$SystemEventListener(IIZI[Ljava/lang/String;Z)V
    .registers 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z
    .param p4, "userId"    # I
    .param p5, "packages"    # [Ljava/lang/String;
    .param p6, "isHomePackage"    # Z

    .line 179
    const/16 v0, 0x7d0

    .line 181
    .local v0, "DELAY_TRIGGER_CHIMERA":I
    if-eqz p3, :cond_26

    .line 182
    const/4 v1, 0x5

    if-eqz p6, :cond_21

    .line 183
    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 185
    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 186
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 187
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_26

    .line 189
    :cond_21
    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->removeMessages(I)V

    .line 192
    :cond_26
    :goto_26
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 34
    if-eqz p2, :cond_a7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_a7

    .line 38
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive() - action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemEventListener"

    invoke-interface {v1, v3, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_a8

    :cond_33
    goto :goto_66

    :sswitch_34
    const-string v1, "com.samsung.PMM_CRITICAL_TRIGGER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v4

    goto :goto_67

    :sswitch_3e
    const-string v1, "com.samsung.KPM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v5

    goto :goto_67

    :sswitch_48
    const-string v1, "android.app.action.EXIT_CAR_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v2

    goto :goto_67

    :sswitch_52
    const-string v1, "android.app.action.ENTER_CAR_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v3

    goto :goto_67

    :sswitch_5c
    const-string v1, "com.samsung.BOTTLENECK_HINT_FOR_CHIMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    goto :goto_67

    :goto_66
    move v1, v6

    :goto_67
    if-eqz v1, :cond_a0

    if-eq v1, v5, :cond_86

    if-eq v1, v4, :cond_80

    if-eq v1, v3, :cond_79

    if-eq v1, v2, :cond_72

    goto :goto_a6

    .line 59
    :cond_72
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->sendEmptyMessage(I)Z

    goto :goto_a6

    .line 56
    :cond_79
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->sendEmptyMessage(I)Z

    .line 57
    goto :goto_a6

    .line 53
    :cond_80
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->sendEmptyMessage(I)Z

    .line 54
    goto :goto_a6

    .line 45
    :cond_86
    const/4 v1, -0x1

    .line 46
    .local v1, "INVALID_STATE":I
    const-string/jumbo v2, "kpm_level"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 47
    .local v2, "kpmLevel":I
    if-eq v2, v6, :cond_a6

    .line 48
    iget-object v4, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 49
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_a6

    .line 42
    .end local v1    # "INVALID_STATE":I
    .end local v2    # "kpmLevel":I
    :cond_a0
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHandler:Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->sendEmptyMessage(I)Z

    .line 43
    nop

    .line 62
    :cond_a6
    :goto_a6
    return-void

    .line 35
    .end local v0    # "action":Ljava/lang/String;
    :cond_a7
    :goto_a7
    return-void

    :sswitch_data_a8
    .sparse-switch
        -0x280a0b0a -> :sswitch_5c
        -0x1451e31f -> :sswitch_52
        -0x13ca081d -> :sswitch_48
        0x238412e -> :sswitch_3e
        0x6ab75228 -> :sswitch_34
    .end sparse-switch
.end method

.method removeBottleNeckHintListener(Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;

    .line 240
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mBottleNeckHintListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method removeCarModeChangeListener(Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;

    .line 260
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method removeHomeLaunchListener(Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;

    .line 256
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method removeLmkdEventListener(Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;

    .line 252
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method removePmmCriticalListener(Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;

    .line 244
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mPmmCriticalListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method removePmmStateChangeListener(Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;

    .line 248
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener;->mPmmStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method
