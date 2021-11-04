.class public Lcom/android/server/vr/UpmsMonitor;
.super Ljava/lang/Object;
.source "UpmsMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpmsObserver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOnUpmsListener:Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;

.field private mUPSMEnabled:Z

.field private final mUpsmEventReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/android/server/vr/UpmsMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/UpmsMonitor$1;-><init>(Lcom/android/server/vr/UpmsMonitor;)V

    iput-object v0, p0, Lcom/android/server/vr/UpmsMonitor;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    iput-object p1, p0, Lcom/android/server/vr/UpmsMonitor;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vr/UpmsMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/UpmsMonitor;

    .line 17
    iget-boolean v0, p0, Lcom/android/server/vr/UpmsMonitor;->mUPSMEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/vr/UpmsMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/UpmsMonitor;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lcom/android/server/vr/UpmsMonitor;->mUPSMEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/vr/UpmsMonitor;)Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/UpmsMonitor;

    .line 17
    iget-object v0, p0, Lcom/android/server/vr/UpmsMonitor;->mOnUpmsListener:Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 79
    const-string v0, "UpmsMonitor:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mUPSMEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/UpmsMonitor;->mUPSMEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method isUPSMEnabled()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lcom/android/server/vr/UpmsMonitor;->mUPSMEnabled:Z

    return v0
.end method

.method public register()V
    .registers 4

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, "upsmIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/server/vr/UpmsMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vr/UpmsMonitor;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/android/server/vr/UpmsMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vr/UpmsMonitor;->mUPSMEnabled:Z

    .line 64
    return-void
.end method

.method public setOnUpmsListener(Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;)V
    .registers 2
    .param p1, "onUpmsListener"    # Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;

    .line 71
    iput-object p1, p0, Lcom/android/server/vr/UpmsMonitor;->mOnUpmsListener:Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;

    .line 72
    return-void
.end method
