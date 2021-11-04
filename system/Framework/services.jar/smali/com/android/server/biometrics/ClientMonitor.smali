.class public abstract Lcom/android/server/biometrics/ClientMonitor;
.super Lcom/android/server/biometrics/LoggableMonitor;
.source "ClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field protected static final DEBUG:Z = true

.field protected static final ERROR_ESRCH:I = 0x3

.field private static final FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field protected mAlreadyCancelled:Z

.field protected mAlreadyDone:Z

.field protected final mConstants:Lcom/android/server/biometrics/Constants;

.field private final mContext:Landroid/content/Context;

.field private final mCookie:I

.field private final mDaemon:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

.field private final mErrorVibrationEffect:Landroid/os/VibrationEffect;

.field private final mGroupId:I

.field private final mHalDeviceId:J

.field private final mIsRestricted:Z

.field private mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

.field protected final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOwner:Ljava/lang/String;

.field protected mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

.field private final mSuccessVibrationEffect:Landroid/os/VibrationEffect;

.field private final mTargetUserId:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 46
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 47
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/ClientMonitor;->FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constants"    # Lcom/android/server/biometrics/Constants;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "userId"    # I
    .param p9, "groupId"    # I
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;
    .param p12, "cookie"    # I

    .line 92
    invoke-direct {p0}, Lcom/android/server/biometrics/LoggableMonitor;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/server/biometrics/ClientMonitor;->mConstants:Lcom/android/server/biometrics/Constants;

    .line 95
    iput-object p3, p0, Lcom/android/server/biometrics/ClientMonitor;->mDaemon:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 96
    iput-wide p4, p0, Lcom/android/server/biometrics/ClientMonitor;->mHalDeviceId:J

    .line 97
    iput-object p6, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 98
    iput-object p7, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 99
    iput p8, p0, Lcom/android/server/biometrics/ClientMonitor;->mTargetUserId:I

    .line 100
    iput p9, p0, Lcom/android/server/biometrics/ClientMonitor;->mGroupId:I

    .line 101
    iput-boolean p10, p0, Lcom/android/server/biometrics/ClientMonitor;->mIsRestricted:Z

    .line 102
    iput-object p11, p0, Lcom/android/server/biometrics/ClientMonitor;->mOwner:Ljava/lang/String;

    .line 103
    iput p12, p0, Lcom/android/server/biometrics/ClientMonitor;->mCookie:I

    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mSuccessVibrationEffect:Landroid/os/VibrationEffect;

    .line 105
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mErrorVibrationEffect:Landroid/os/VibrationEffect;

    .line 106
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 108
    if-eqz p6, :cond_3f

    .line 109
    :try_start_30
    invoke-interface {p6, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3f

    .line 111
    :catch_34
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    nop

    .line 114
    :goto_40
    return-void
.end method

.method private blacklistContains(II)Z
    .registers 8
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v0}, Lcom/android/server/biometrics/Constants;->acquireVendorCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_36

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireVendorIgnorelist()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_35

    .line 164
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireVendorIgnorelist()[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v2, p2, :cond_32

    .line 165
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring vendor message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v1

    .line 163
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v0    # "i":I
    :cond_35
    goto :goto_62

    .line 170
    :cond_36
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_37
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireIgnorelist()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_62

    .line 171
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireIgnorelist()[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v2, p1, :cond_5f

    .line 172
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v1

    .line 170
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 177
    .end local v0    # "i":I
    :cond_62
    :goto_62
    const/4 v0, 0x0

    return v0
.end method

.method private vibrate(Landroid/os/Vibrator;I)V
    .registers 6
    .param p1, "vibrator"    # Landroid/os/Vibrator;
    .param p2, "index"    # I

    .line 369
    invoke-virtual {p1}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_15

    .line 370
    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    const/4 v1, -0x1

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 372
    .local v0, "vibrationEffect":Landroid/os/VibrationEffect;
    invoke-virtual {p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 374
    .end local v0    # "vibrationEffect":Landroid/os/VibrationEffect;
    :cond_15
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/ClientMonitor;->binderDiedInternal(Z)V

    .line 256
    return-void
.end method

.method binderDiedInternal(Z)V
    .registers 4
    .param p1, "clearListener"    # Z

    .line 260
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binder died, cancelling client"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 263
    if-eqz p1, :cond_14

    .line 264
    iput-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 266
    :cond_14
    return-void
.end method

.method public destroy()V
    .registers 7

    .line 237
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    if-eqz v0, :cond_7

    .line 238
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemClientExtension;->destroy()V

    .line 241
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 243
    const/4 v2, 0x0

    :try_start_d
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_10
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_10} :catch_11

    .line 247
    goto :goto_37

    .line 244
    :catch_11
    move-exception v0

    .line 246
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroy(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_37
    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 250
    :cond_39
    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 251
    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_28

    .line 272
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getHalDeviceId()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_2d

    .line 277
    :cond_28
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 278
    nop

    .line 279
    return-void

    .line 277
    :catchall_2d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 278
    throw v0
.end method

.method public getAcquireIgnorelist()[I
    .registers 2

    .line 155
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAcquireVendorIgnorelist()[I
    .registers 2

    .line 158
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCookie()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mCookie:I

    return v0
.end method

.method public final getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mDaemon:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method public getExtensionImpl()Lcom/android/server/biometrics/SemClientExtension;
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    return-object v0
.end method

.method public final getGroupId()I
    .registers 2

    .line 315
    iget v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mGroupId:I

    return v0
.end method

.method public final getHalDeviceId()J
    .registers 3

    .line 286
    iget-wide v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mHalDeviceId:J

    return-wide v0
.end method

.method public final getIsRestricted()Z
    .registers 2

    .line 302
    iget-boolean v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mIsRestricted:Z

    return v0
.end method

.method public final getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v0}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetUserId()I
    .registers 2

    .line 307
    iget v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mGroupId:I

    return v0
.end method

.method public final getToken()Landroid/os/IBinder;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public isAlreadyCancelled()Z
    .registers 2

    .line 361
    iget-boolean v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mAlreadyCancelled:Z

    return v0
.end method

.method public isAlreadyDone()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mAlreadyDone:Z

    return v0
.end method

.method public abstract notifyUserActivity()V
.end method

.method public onAcquired(II)Z
    .registers 6
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 191
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-super {p0, v0, p1, p2, v1}, Lcom/android/server/biometrics/LoggableMonitor;->logOnAcquired(Landroid/content/Context;III)V

    .line 192
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_29
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    if-eqz v0, :cond_3c

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->blacklistContains(II)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 195
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getHalDeviceId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAcquired(JII)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3c} :catch_45
    .catchall {:try_start_29 .. :try_end_3c} :catchall_43

    .line 197
    :cond_3c
    const/4 v0, 0x0

    .line 206
    if-nez p1, :cond_42

    .line 207
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->notifyUserActivity()V

    .line 197
    :cond_42
    return v0

    .line 206
    :catchall_43
    move-exception v0

    goto :goto_5a

    .line 198
    :catch_45
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_46
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to invoke sendAcquired"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_43

    .line 203
    nop

    .line 206
    if-nez p1, :cond_59

    .line 207
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->notifyUserActivity()V

    .line 203
    :cond_59
    return v1

    .line 206
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5a
    if-nez p1, :cond_5f

    .line 207
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->notifyUserActivity()V

    .line 209
    :cond_5f
    throw v0
.end method

.method public abstract onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
.end method

.method public abstract onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
.end method

.method public onError(JII)Z
    .registers 12
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 219
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-super {p0, v0, p3, p4, v1}, Lcom/android/server/biometrics/LoggableMonitor;->logOnError(Landroid/content/Context;III)V

    .line 221
    :try_start_9
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    if-eqz v0, :cond_2e

    .line 222
    iget-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v6

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onError(JIII)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    goto :goto_2e

    .line 226
    :catch_1a
    move-exception v0

    .line 229
    .local v0, "ee":Ljava/lang/Exception;
    const-string v1, "BiometricStats"

    const-string/jumbo v2, "onError: Failed to invoke sendError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 224
    .end local v0    # "ee":Ljava/lang/Exception;
    :catch_24
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to invoke sendError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    nop

    .line 232
    :goto_2f
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
.end method

.method public setExtensionImpl(Lcom/android/server/biometrics/SemClientExtension;)V
    .registers 2
    .param p1, "extImpl"    # Lcom/android/server/biometrics/SemClientExtension;

    .line 353
    iput-object p1, p0, Lcom/android/server/biometrics/ClientMonitor;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    .line 354
    return-void
.end method

.method public abstract start()I
.end method

.method public abstract stop(Z)I
.end method

.method public final vibrateError()V
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 338
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_11

    .line 344
    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/ClientMonitor;->vibrate(Landroid/os/Vibrator;I)V

    .line 348
    :cond_11
    return-void
.end method

.method public final vibrateSuccess()V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 324
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_10

    .line 330
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/ClientMonitor;->vibrate(Landroid/os/Vibrator;I)V

    .line 334
    :cond_10
    return-void
.end method
