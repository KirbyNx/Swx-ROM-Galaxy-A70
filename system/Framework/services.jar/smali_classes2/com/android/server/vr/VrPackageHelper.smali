.class public Lcom/android/server/vr/VrPackageHelper;
.super Ljava/lang/Object;
.source "VrPackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/VrPackageHelper$OnVrServicePackageListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VrPackageHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOnVrServicePackageListener:Lcom/android/server/vr/VrPackageHelper$OnVrServicePackageListener;

.field packageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/vr/VrPackageHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrPackageHelper$1;-><init>(Lcom/android/server/vr/VrPackageHelper;)V

    iput-object v0, p0, Lcom/android/server/vr/VrPackageHelper;->packageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 22
    iput-object p1, p0, Lcom/android/server/vr/VrPackageHelper;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private isVrServiceInstalled()Z
    .registers 4

    .line 104
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/vr/VrPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 105
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_f

    .line 106
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x1

    return v2

    .line 107
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_f
    move-exception v1

    .line 109
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 113
    const-string v0, "VrPackageHelper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public register()V
    .registers 6

    .line 26
    iget-object v0, p0, Lcom/android/server/vr/VrPackageHelper;->packageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/vr/VrPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 27
    invoke-direct {p0}, Lcom/android/server/vr/VrPackageHelper;->isVrServiceInstalled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 28
    invoke-virtual {p0, v4}, Lcom/android/server/vr/VrPackageHelper;->setVrServicePackageState(Z)V

    .line 30
    :cond_17
    return-void
.end method

.method public setOnVrServicePackageListener(Lcom/android/server/vr/VrPackageHelper$OnVrServicePackageListener;)V
    .registers 2
    .param p1, "onVrServicePackageListener"    # Lcom/android/server/vr/VrPackageHelper$OnVrServicePackageListener;

    .line 39
    iput-object p1, p0, Lcom/android/server/vr/VrPackageHelper;->mOnVrServicePackageListener:Lcom/android/server/vr/VrPackageHelper$OnVrServicePackageListener;

    .line 40
    return-void
.end method

.method public setVrServicePackageState(Z)V
    .registers 3
    .param p1, "available"    # Z

    .line 33
    iget-object v0, p0, Lcom/android/server/vr/VrPackageHelper;->mOnVrServicePackageListener:Lcom/android/server/vr/VrPackageHelper$OnVrServicePackageListener;

    if-eqz v0, :cond_7

    .line 34
    invoke-interface {v0, p1}, Lcom/android/server/vr/VrPackageHelper$OnVrServicePackageListener;->onVrServicePackageChanged(Z)V

    .line 36
    :cond_7
    return-void
.end method
