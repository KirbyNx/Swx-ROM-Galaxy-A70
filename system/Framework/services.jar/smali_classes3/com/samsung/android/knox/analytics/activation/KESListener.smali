.class public Lcom/samsung/android/knox/analytics/activation/KESListener;
.super Landroid/content/BroadcastReceiver;
.source "KESListener.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms.intent.action.KES_STATE_CHANGED"

.field private static final EXTRA_ENROLL_STATUS:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms.intent.extra.ENROLLED"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms.intent.extra.PACKAGE_NAME"

.field private static final KME_BROADCAST_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/activation/KESListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/KESListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V
    .registers 3
    .param p1, "activationMonitor"    # Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;
    .param p2, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/activation/KESListener;->mContext:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/KESListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    .line 28
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.intent.action.KES_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 43
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/KESListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/KESListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "com.sec.enterprise.knox.cloudmdm.smdms.intent.extra.ENROLLED"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKes(Ljava/lang/String;Z)V

    .line 46
    :cond_3d
    return-void
.end method

.method public register()V
    .registers 5

    .line 31
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/KESListener;->TAG:Ljava/lang/String;

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.intent.action.KES_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/KESListener;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 38
    return-void
.end method
