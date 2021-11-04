.class public Lcom/android/server/ibs/IntelligentBatterySaverGather;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverGather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCharging:Z

.field private mContext:Landroid/content/Context;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

.field private mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

.field private mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

.field private mScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;Lcom/android/server/ibs/IntelligentBatterySaverLogger;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/ibs/IntelligentBatterySaverService;
    .param p3, "logger"    # Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "IntelligentBatterySaverGather"

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->TAG:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 59
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 61
    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mScreenOn:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mCharging:Z

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ibs/IntelligentBatterySaverGather;)Lcom/android/server/ibs/IntelligentBatterySaverService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IntelligentBatterySaverGather;

    .line 45
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    return-object v0
.end method


# virtual methods
.method public init()V
    .registers 5

    .line 67
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;Lcom/android/server/ibs/IntelligentBatterySaverGather$1;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mFilter:Landroid/content/IntentFilter;

    .line 69
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 73
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 74
    return-void
.end method
