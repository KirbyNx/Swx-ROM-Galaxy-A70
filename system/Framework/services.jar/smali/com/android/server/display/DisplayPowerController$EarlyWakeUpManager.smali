.class final Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EarlyWakeUpManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$EarlyWakeUpHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EARLY_WAKEUP_TIMEOUT_MILLIS:I = 0xbb8

.field private static final MSG_EARLY_WAKEUP_TIMEOUT:I = 0x1

.field private static final TAG_EARLY_WAKEUP:Ljava/lang/String; = "[ew] "


# instance fields
.field private mAppliedLocked:Z

.field private final mEalyWakeUpLock:Ljava/lang/Object;

.field private mEarlyDisplayEnabled:Z

.field private mEarlyDisplayReadyLocked:Z

.field private mEarlyLightSensorEnabled:Z

.field private final mEarlyLightSensorReadyListener:Ljava/lang/Runnable;

.field private mEarlyLightSensorReadyLocked:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHoldingSuspendBlocker:Z

.field private mLastEnableRequestedTime:J

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 4

    .line 4003
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3987
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEalyWakeUpLock:Ljava/lang/Object;

    .line 3998
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    .line 3999
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    .line 4066
    new-instance p1, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;-><init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    .line 4004
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "DisplayPowerController"

    const/4 v1, -0x4

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 4005
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 4007
    new-instance p1, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$EarlyWakeUpHandler;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$EarlyWakeUpHandler;-><init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    .line 4008
    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    .line 3980
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEalyWakeUpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;
    .param p1, "x1"    # Z

    .line 3980
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    .line 3980
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->updateSuspendBlockerLocked()V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;
    .param p1, "x1"    # Z

    .line 3980
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    return p1
.end method

.method private clearEnableRequestTimeout()V
    .registers 3

    .line 4185
    const-string v0, "DisplayPowerController"

    const-string v1, "[ew] clearEnableRequestTimeout -"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4188
    return-void
.end method

.method private isCandidateForAutoBrightness()Z
    .registers 4

    .line 4164
    const/4 v0, 0x0

    .line 4166
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$4000(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v1

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 4167
    # getter for: Lcom/android/server/display/DisplayPowerController;->mProximity:I
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$4100(Lcom/android/server/display/DisplayPowerController;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    .line 4168
    const/4 v0, 0x1

    .line 4171
    :cond_15
    return v0
.end method

.method private isLastRequestExpired(J)Z
    .registers 8
    .param p1, "now"    # J

    .line 4175
    const/4 v0, 0x0

    .line 4177
    .local v0, "ret":Z
    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mLastEnableRequestedTime:J

    const-wide/16 v3, 0xbb8

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-ltz v1, :cond_b

    .line 4178
    const/4 v0, 0x1

    .line 4181
    :cond_b
    return v0
.end method

.method private resetEnableRequestTimeout()V
    .registers 7

    .line 4191
    const-string v0, "DisplayPowerController"

    const-string v1, "[ew] resetEnableRequestTimeout +"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4194
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mLastEnableRequestedTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 4196
    return-void
.end method

.method private setEarlyDisplayEnabledLocked(ZI)V
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "currentState"    # I

    .line 4105
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    if-ne p1, v0, :cond_5

    .line 4106
    return-void

    .line 4109
    :cond_5
    if-eqz p1, :cond_e

    .line 4110
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->supportEarlyDisplayEnableLocked(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 4111
    return-void

    .line 4115
    :cond_e
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    .line 4122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    .line 4124
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;-><init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4139
    return-void
.end method

.method private setEarlyLightSensorEnabledLocked(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 4079
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->supportEarlyLightSensorEnableLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4080
    return-void

    .line 4083
    :cond_7
    if-eqz p1, :cond_10

    .line 4084
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->isCandidateForAutoBrightness()Z

    move-result v0

    if-nez v0, :cond_10

    .line 4089
    return-void

    .line 4093
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    if-ne p1, v0, :cond_15

    .line 4094
    return-void

    .line 4097
    :cond_15
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    .line 4099
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    .line 4101
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$3700(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setEarlyLightSensorEnabled(ZLjava/lang/Runnable;)Z

    .line 4102
    return-void
.end method

.method private supportEarlyDisplayEnableLocked(I)Z
    .registers 4
    .param p1, "currentState"    # I

    .line 4152
    const/4 v0, 0x1

    .line 4154
    .local v0, "support":Z
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v1

    if-nez v1, :cond_f

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v1, :cond_f

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

    if-eqz v1, :cond_10

    .line 4157
    :cond_f
    const/4 v0, 0x0

    .line 4160
    :cond_10
    return v0
.end method

.method private supportEarlyLightSensorEnableLocked()Z
    .registers 3

    .line 4142
    const/4 v0, 0x1

    .line 4144
    .local v0, "support":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$3700(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v1

    if-nez v1, :cond_a

    .line 4145
    const/4 v0, 0x0

    .line 4148
    :cond_a
    return v0
.end method

.method private updateSuspendBlockerLocked()V
    .registers 5

    .line 4199
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    .line 4203
    .local v0, "needSuspendBlocker":Z
    :goto_12
    const-string v3, "DisplayPowerController"

    if-eqz v0, :cond_2b

    .line 4204
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    if-nez v1, :cond_3f

    .line 4205
    const-string v1, "[ew] acquireSuspendBlocker: +"

    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$1600(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 4208
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    goto :goto_3f

    .line 4210
    :cond_2b
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    if-eqz v2, :cond_3f

    .line 4211
    const-string v2, "[ew] releaseSuspendBlocker: -"

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    .line 4214
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$1600(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 4216
    :cond_3f
    :goto_3f
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4219
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEalyWakeUpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4220
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4221
    const-string v1, "[ew] EarlyWakeUpManager:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAppliedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEarlyLightSensorEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEarlyDisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastEnableRequestedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mLastEnableRequestedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingSuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mEarlyLightSensorReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mEarlyDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4230
    monitor-exit v0

    .line 4231
    return-void

    .line 4230
    :catchall_bf
    move-exception v1

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_3 .. :try_end_c1} :catchall_bf

    throw v1
.end method

.method public update(ZI)V
    .registers 13
    .param p1, "newRequest"    # Z
    .param p2, "currentState"    # I

    .line 4011
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEalyWakeUpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4012
    const/4 v1, 0x0

    .line 4013
    .local v1, "shouldApply":Z
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4023
    .local v2, "now":J
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p2, v4, :cond_f

    move v4, v5

    goto :goto_10

    :cond_f
    move v4, v6

    .line 4025
    .local v4, "necessaryConditionForEnable":Z
    :goto_10
    if-eqz v4, :cond_2b

    .line 4026
    iget-boolean v7, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    if-eqz v7, :cond_1e

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->isLastRequestExpired(J)Z

    move-result v7

    if-nez v7, :cond_1e

    move v7, v5

    goto :goto_1f

    :cond_1e
    move v7, v6

    .line 4028
    .local v7, "validOldRequest":Z
    :goto_1f
    if-nez p1, :cond_23

    if-eqz v7, :cond_2b

    .line 4029
    :cond_23
    const/4 v1, 0x1

    .line 4031
    if-eqz p1, :cond_2b

    .line 4032
    iput-wide v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mLastEnableRequestedTime:J

    .line 4033
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->resetEnableRequestTimeout()V

    .line 4038
    .end local v7    # "validOldRequest":Z
    :cond_2b
    iget-boolean v7, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    if-eq v1, v7, :cond_5b

    .line 4039
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ew] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    if-eqz v1, :cond_4e

    .line 4043
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyLightSensorEnabledLocked(Z)V

    .line 4046
    invoke-direct {p0, v5, p2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyDisplayEnabledLocked(ZI)V

    goto :goto_54

    .line 4049
    :cond_4e
    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyLightSensorEnabledLocked(Z)V

    .line 4052
    invoke-direct {p0, v6, p2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyDisplayEnabledLocked(ZI)V

    .line 4055
    :goto_54
    if-nez v1, :cond_59

    .line 4056
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->clearEnableRequestTimeout()V

    .line 4059
    :cond_59
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    .line 4062
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->updateSuspendBlockerLocked()V

    .line 4063
    .end local v1    # "shouldApply":Z
    .end local v2    # "now":J
    .end local v4    # "necessaryConditionForEnable":Z
    monitor-exit v0

    .line 4064
    return-void

    .line 4063
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v1
.end method
