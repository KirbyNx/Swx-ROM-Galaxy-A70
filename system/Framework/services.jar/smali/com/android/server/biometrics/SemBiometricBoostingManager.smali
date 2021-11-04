.class public Lcom/android/server/biometrics/SemBiometricBoostingManager;
.super Ljava/lang/Object;
.source "SemBiometricBoostingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;
    }
.end annotation


# static fields
.field private static final ACTION_BIO_AUTH_START:Ljava/lang/String; = "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_START"

.field private static final ACTION_BIO_AUTH_STOP:Ljava/lang/String; = "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_STOP"

.field private static final TAG:Ljava/lang/String; = "BiometricsBoosting"

.field private static sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;


# instance fields
.field private final mDvfsMgrs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/os/SemDvfsManager;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnabledSsrm:Z

.field private final mReleasers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    return-void
.end method

.method private SemBiometricBoostingManager()V
    .registers 1

    .line 50
    return-void
.end method

.method private disableGpisHint(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    nop

    .line 128
    const-string v0, "CustomFrequencyManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    .line 129
    .local v0, "cfm":Landroid/os/CustomFrequencyManager;
    if-eqz v0, :cond_17

    .line 131
    :try_start_b
    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->disableGpisHint()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    .line 134
    goto :goto_17

    .line 132
    :catch_f
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BiometricsBoosting"

    const-string v3, "acquireDvfs: failed to disableGipsHint"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_17
    :goto_17
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;
    .registers 2

    const-class v0, Lcom/android/server/biometrics/SemBiometricBoostingManager;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;

    if-nez v1, :cond_e

    .line 44
    new-instance v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;

    invoke-direct {v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 46
    :cond_e
    sget-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .line 139
    const-string v0, "BiometricsBoosting"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "intent":Landroid/content/Intent;
    :try_start_7
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 142
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 145
    goto :goto_2a

    .line 143
    :catch_10
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcastForBoosting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method


# virtual methods
.method public declared-synchronized acquireDvfs(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "biometricType"    # I
    .param p3, "tagName"    # Ljava/lang/String;
    .param p4, "time"    # I

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemDvfsManager;

    .line 54
    .local v0, "dvfsMgr":Lcom/samsung/android/os/SemDvfsManager;
    if-nez v0, :cond_22

    .line 55
    const/16 v1, 0xc

    invoke-static {p1, p3, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    move-object v0, v1

    .line 57
    if-nez v0, :cond_1d

    .line 58
    const-string v1, "BiometricsBoosting"

    const-string v2, "acquireDvfs: can\'t get SemDvfsManager"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_f7

    .line 59
    monitor-exit p0

    return-void

    .line 61
    .end local p0    # "this":Lcom/android/server/biometrics/SemBiometricBoostingManager;
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    :cond_22
    const/4 v1, 0x0

    .line 64
    .local v1, "freq":I
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2f

    .line 65
    const v2, 0x1e8480

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v2

    move v1, v2

    goto :goto_49

    .line 66
    :cond_2f
    const/16 v2, 0x8

    if-ne p2, v2, :cond_df

    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v2

    .line 68
    .local v2, "frequencyList":[I
    if-eqz v2, :cond_41

    array-length v3, v2

    if-lez v3, :cond_41

    .line 70
    const/4 v3, 0x0

    aget v3, v2, v3

    move v1, v3

    goto :goto_48

    .line 72
    :cond_41
    const-string v3, "BiometricsBoosting"

    const-string v4, "acquireDVFS:  dvfs Frequency Table is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v2    # "frequencyList":[I
    :goto_48
    nop

    .line 78
    :goto_49
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v2, :cond_6b

    .line 79
    const-string v2, "BiometricsBoosting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireDvfs: set="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_6b
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 82
    invoke-virtual {v0, p4}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 85
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    .line 86
    .local v2, "releaser":Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;
    if-nez v2, :cond_87

    .line 87
    new-instance v3, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    invoke-direct {v3, p1, p2}, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;-><init>(Landroid/content/Context;I)V

    move-object v2, v3

    .line 88
    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8e

    .line 90
    :cond_87
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    :goto_8e
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    int-to-long v4, p4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->disableGpisHint(Landroid/content/Context;)V

    .line 95
    iget-boolean v3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    if-nez v3, :cond_a5

    .line 96
    const-string v3, "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_START"

    invoke-direct {p0, p1, v3}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 99
    :cond_a5
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v3, :cond_dd

    .line 100
    const-string v3, "BiometricsBoosting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireDvfs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catchall {:try_start_1d .. :try_end_dd} :catchall_f7

    .line 103
    :cond_dd
    monitor-exit p0

    return-void

    .line 75
    .end local v2    # "releaser":Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;
    :cond_df
    :try_start_df
    const-string v2, "BiometricsBoosting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireDvfs: Unknown type, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_df .. :try_end_f5} :catchall_f7

    .line 76
    monitor-exit p0

    return-void

    .line 52
    .end local v0    # "dvfsMgr":Lcom/samsung/android/os/SemDvfsManager;
    .end local v1    # "freq":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "biometricType":I
    .end local p3    # "tagName":Ljava/lang/String;
    .end local p4    # "time":I
    :catchall_f7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "biometricType"    # I

    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemDvfsManager;

    .line 107
    .local v0, "dvfsMgr":Lcom/samsung/android/os/SemDvfsManager;
    if-eqz v0, :cond_13

    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 109
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 111
    .end local p0    # "this":Lcom/android/server/biometrics/SemBiometricBoostingManager;
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_27

    .line 112
    const-string v1, "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_STOP"

    invoke-direct {p0, p1, v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 115
    :cond_27
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    .line 116
    .local v1, "releaser":Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;
    if-eqz v1, :cond_38

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    :cond_38
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 120
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v2, :cond_74

    .line 121
    const-string v2, "BiometricsBoosting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 122
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_1 .. :try_end_74} :catchall_76

    .line 124
    :cond_74
    monitor-exit p0

    return-void

    .line 105
    .end local v0    # "dvfsMgr":Lcom/samsung/android/os/SemDvfsManager;
    .end local v1    # "releaser":Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "biometricType":I
    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method
