.class public final Lcom/android/server/UserspaceRebootLogger;
.super Ljava/lang/Object;
.source "UserspaceRebootLogger.java"


# static fields
.field private static final LAST_BOOT_REASON_PROPERTY:Ljava/lang/String; = "sys.boot.reason.last"

.field private static final TAG:Ljava/lang/String; = "UserspaceRebootLogger"

.field private static final USERSPACE_REBOOT_LAST_FINISHED_PROPERTY:Ljava/lang/String; = "sys.userspace_reboot.log.last_finished"

.field private static final USERSPACE_REBOOT_LAST_STARTED_PROPERTY:Ljava/lang/String; = "sys.userspace_reboot.log.last_started"

.field private static final USERSPACE_REBOOT_SHOULD_LOG_PROPERTY:Ljava/lang/String; = "persist.sys.userspace_reboot.log.should_log"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeOutcome()I
    .registers 5

    .line 141
    const-string/jumbo v0, "sys.userspace_reboot.log.last_started"

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f

    .line 142
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_f
    const-string/jumbo v0, "sys.boot.reason.last"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "reason":Ljava/lang/String;
    const-string/jumbo v1, "reboot,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 146
    const-string/jumbo v1, "reboot"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_30
    const-string/jumbo v1, "userspace_failed,watchdog_fork"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3b

    .line 149
    return v2

    .line 151
    :cond_3b
    const-string/jumbo v1, "userspace_failed,shutdown_aborted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 152
    return v2

    .line 154
    :cond_45
    const-string/jumbo v1, "mount_userdata_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_50

    .line 155
    return v2

    .line 157
    :cond_50
    const-string/jumbo v1, "userspace_failed,init_user0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 158
    return v2

    .line 160
    :cond_5a
    const-string/jumbo v1, "userspace_failed,enablefilecrypto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 161
    return v2

    .line 163
    :cond_64
    const-string/jumbo v1, "userspace_failed,watchdog_triggered"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 164
    const/4 v1, 0x4

    return v1

    .line 166
    :cond_6f
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$logEventAsync$0(IJI)V
    .registers 6
    .param p0, "outcome"    # I
    .param p1, "durationMillis"    # J
    .param p3, "encryptionState"    # I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging UserspaceRebootReported atom: { outcome: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " durationMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " encryptionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserspaceRebootLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/16 v0, 0xf3

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJI)V

    .line 136
    const-string/jumbo v0, "persist.sys.userspace_reboot.log.should_log"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static logEventAsync(ZLjava/util/concurrent/Executor;)V
    .registers 9
    .param p0, "userUnlocked"    # Z
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 112
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    if-nez v0, :cond_e

    .line 113
    const-string v0, "UserspaceRebootLogger"

    const-string v1, "Userspace reboot is not supported."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 117
    :cond_e
    invoke-static {}, Lcom/android/server/UserspaceRebootLogger;->computeOutcome()I

    move-result v0

    .line 119
    .local v0, "outcome":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 120
    const-string/jumbo v2, "sys.userspace_reboot.log.last_finished"

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 121
    const-string/jumbo v2, "sys.userspace_reboot.log.last_started"

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v5, v2

    .local v5, "durationMillis":J
    goto :goto_29

    .line 123
    .end local v5    # "durationMillis":J
    :cond_27
    const-wide/16 v5, 0x0

    .line 126
    .restart local v5    # "durationMillis":J
    :goto_29
    if-eqz p0, :cond_2c

    .line 127
    goto :goto_2d

    .line 128
    :cond_2c
    const/4 v1, 0x2

    :goto_2d
    nop

    .line 129
    .local v1, "encryptionState":I
    new-instance v2, Lcom/android/server/-$$Lambda$UserspaceRebootLogger$VEOhpRejFmAYcfCk3N3JgiP0nOQ;

    invoke-direct {v2, v0, v5, v6, v1}, Lcom/android/server/-$$Lambda$UserspaceRebootLogger$VEOhpRejFmAYcfCk3N3JgiP0nOQ;-><init>(IJI)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public static noteUserspaceRebootSuccess()V
    .registers 2

    .line 79
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    if-nez v0, :cond_e

    .line 80
    const-string v0, "UserspaceRebootLogger"

    const-string v1, "Userspace reboot is not supported."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 84
    :cond_e
    nop

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "sys.userspace_reboot.log.last_finished"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static noteUserspaceRebootWasRequested()V
    .registers 2

    .line 61
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    if-nez v0, :cond_e

    .line 62
    const-string v0, "UserspaceRebootLogger"

    const-string v1, "Userspace reboot is not supported."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 66
    :cond_e
    const-string/jumbo v0, "persist.sys.userspace_reboot.log.should_log"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    nop

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "sys.userspace_reboot.log.last_started"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static shouldLogUserspaceRebootEvent()Z
    .registers 3

    .line 94
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 95
    const-string v0, "UserspaceRebootLogger"

    const-string v2, "Userspace reboot is not supported."

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v1

    .line 99
    :cond_f
    const-string/jumbo v0, "persist.sys.userspace_reboot.log.should_log"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
