.class public Lcom/android/server/biometrics/SemClientExtension;
.super Ljava/lang/Object;
.source "SemClientExtension.java"


# static fields
.field protected static final DEBUG:Z

.field protected static TAG:Ljava/lang/String; = null

.field public static final TYPE_AUTH:I = 0x1

.field public static final TYPE_ENROLL:I = 0x2


# instance fields
.field protected mAttr:Landroid/os/Bundle;

.field protected mCanIgnoreLockout:Z

.field protected mClient:Lcom/android/server/biometrics/ClientMonitor;

.field protected mClientType:I

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mHasBackgroundAuthPermission:Z

.field protected mHasNoVibrationEffectPermission:Z

.field protected mIsKeyguard:Z

.field protected mIsPrompt:Z

.field protected mIsSetting:Z

.field protected mPrivilegedAttr:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/SemClientExtension;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/ClientMonitor;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "client"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "type"    # I
    .param p4, "b"    # Landroid/os/Bundle;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/SemClientExtension;->mPrivilegedAttr:I

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".Ext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/biometrics/SemClientExtension;->TAG:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/SemClientExtension;->mContext:Landroid/content/Context;

    .line 32
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/biometrics/SemClientExtension;->mHandler:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/android/server/biometrics/SemClientExtension;->mClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 34
    iput p3, p0, Lcom/android/server/biometrics/SemClientExtension;->mClientType:I

    .line 35
    iput-object p4, p0, Lcom/android/server/biometrics/SemClientExtension;->mAttr:Landroid/os/Bundle;

    .line 36
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3c

    move v0, v2

    :cond_3c
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemClientExtension;->mIsPrompt:Z

    .line 37
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getIsRestricted()Z

    move-result v0

    if-nez v0, :cond_61

    .line 38
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 39
    iput-boolean v2, p0, Lcom/android/server/biometrics/SemClientExtension;->mIsKeyguard:Z

    goto :goto_61

    .line 40
    :cond_53
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 41
    iput-boolean v2, p0, Lcom/android/server/biometrics/SemClientExtension;->mIsSetting:Z

    .line 44
    :cond_61
    :goto_61
    return-void
.end method


# virtual methods
.method public canIgnoreLockout()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemClientExtension;->mCanIgnoreLockout:Z

    return v0
.end method

.method public destroy()V
    .registers 1

    .line 92
    return-void
.end method

.method public hasBackgroundAuthPermission()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemClientExtension;->mHasBackgroundAuthPermission:Z

    return v0
.end method

.method public hasNoVibrationEffectPermission()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemClientExtension;->mHasNoVibrationEffectPermission:Z

    return v0
.end method

.method public hasPrivilegedAttr(I)Z
    .registers 3
    .param p1, "attr"    # I

    .line 67
    iget v0, p0, Lcom/android/server/biometrics/SemClientExtension;->mPrivilegedAttr:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isKeyguard()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemClientExtension;->mIsKeyguard:Z

    return v0
.end method

.method public isPrompt()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemClientExtension;->mIsPrompt:Z

    return v0
.end method

.method public isSetting()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemClientExtension;->mIsSetting:Z

    return v0
.end method

.method public onAcquired(II)Z
    .registers 4
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onEnrollResult(I)V
    .registers 2
    .param p1, "remaining"    # I

    .line 104
    return-void
.end method

.method public onError(II)Z
    .registers 4
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public postAuthStart()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public postAuthStop(Z)V
    .registers 2
    .param p1, "hasPendingClient"    # Z

    .line 88
    return-void
.end method

.method public postEnrollStart()V
    .registers 1

    .line 78
    return-void
.end method

.method public postEnrollStop()V
    .registers 1

    .line 81
    return-void
.end method

.method public preEnrollStart()V
    .registers 1

    .line 75
    return-void
.end method
