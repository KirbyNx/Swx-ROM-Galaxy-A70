.class public Lcom/samsung/android/knox/analytics/activation/B2CListener;
.super Ljava/lang/Object;
.source "B2CListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;,
        Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;
    }
.end annotation


# static fields
.field private static final PERMISSION_KNOX_ANALYTICS:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ANALYTICS_INTERNAL"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

.field private mActivationReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V
    .registers 3
    .param p1, "activationMonitor"    # Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;
    .param p2, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 17
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/knox/analytics/activation/B2CListener;Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;)Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/knox/analytics/activation/B2CListener;
    .param p1, "x1"    # Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    .line 17
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->checkRemovedReceiver()V

    return-void
.end method

.method private checkRemovedReceiver()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    if-eqz v0, :cond_1c

    .line 89
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturePackageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 91
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    .line 95
    .end local v0    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1c
    return-void
.end method


# virtual methods
.method public register()V
    .registers 8

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .local v0, "activationFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.knox.analytics.intent.action.B2C_ACTIVATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;-><init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

    .line 39
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "B2CListenerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 41
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 42
    .local v2, "looper":Landroid/os/Looper;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mHandler:Landroid/os/Handler;

    .line 44
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

    const-string v6, "com.samsung.android.knox.permission.KNOX_ANALYTICS_INTERNAL"

    invoke-virtual {v4, v5, v0, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 45
    return-void
.end method
