.class public interface abstract Lcom/android/server/ipm/chimera/SystemRepository;
.super Ljava/lang/Object;
.source "SystemRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/chimera/SystemRepository$ChimeraUidObserver;,
        Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;,
        Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    }
.end annotation


# virtual methods
.method public abstract currentTimeMillis()J
.end method

.method public abstract forceGc(I)V
.end method

.method public abstract getAppStandbyBucket(Ljava/lang/String;I)I
.end method

.method public abstract getAppStandbyBucket(Ljava/lang/String;IJ)I
.end method

.method public abstract getAppStandbyBuckets()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableMemory()J
.end method

.method public abstract getCurrentHomePackageName()Ljava/lang/String;
.end method

.method public abstract getFullPowerWhitelist()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongLiveProcessesForUser(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageNameFromUid(I)[Ljava/lang/String;
.end method

.method public abstract getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Landroid/util/Pair<",
            "[I[I>;"
        }
    .end annotation
.end method

.method public abstract getPss(I[J)J
.end method

.method public abstract getRunningAppProcesses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSystemPid()I
.end method

.method public abstract getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUserId(I)I
.end method

.method public abstract getWakeLockPackageList()[Ljava/lang/String;
.end method

.method public abstract hasChimeraProtectedProc(Ljava/lang/String;I)I
.end method

.method public abstract hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
.end method

.method public abstract hasPkgIcon(Ljava/lang/String;I)Z
.end method

.method public abstract hasRestartService(Ljava/lang/String;I)Z
.end method

.method public abstract isApp(I)Z
.end method

.method public abstract isInCall()Z
.end method

.method public abstract isKilledByRecentTask(ILjava/lang/String;)Z
.end method

.method public abstract isOnScreenWindow(I)Z
.end method

.method public abstract isScreenOff()Z
.end method

.method public abstract isSmartSwitchWorking()Z
.end method

.method public abstract isThreadGroupLeader(I)Z
.end method

.method public abstract isUserShipBuild()Z
.end method

.method public abstract killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logDebug(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerProcessObserver(Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;)V
.end method

.method public abstract registerUidObserver(Lcom/android/server/ipm/chimera/SystemRepository$ChimeraUidObserver;)V
.end method

.method public abstract removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendMessageDelayed(Landroid/os/Handler;ILjava/lang/Object;J)V
.end method
