.class public Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;
.super Ljava/lang/Object;
.source "SemInputMonitorMotionEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemInputMonitorMotionEvent"

.field private static beginTime:J

.field private static endTime:J

.field private static touchCount:I


# instance fields
.field private criteria:J

.field private currentTime:J

.field private deltaTime:J

.field private detected:Z

.field private mContext:Landroid/content/Context;

.field private mHqmHelper:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

.field private mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

.field private final mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field private prv_tool_type:I

.field private support_function:I

.field private touchInterval:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->beginTime:J

    .line 44
    sput-wide v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->endTime:J

    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->support_function:I

    .line 34
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$1;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->currentTime:J

    .line 46
    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchInterval:J

    .line 47
    const-wide/16 v2, 0x3a98

    iput-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->criteria:J

    .line 48
    iput-wide v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detected:Z

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->prv_tool_type:I

    .line 59
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->monitorMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private getSurfaceTimerStates()Z
    .registers 7

    .line 169
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    .line 170
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 171
    invoke-static {v0}, Landroid/view/SurfaceControl;->getTimerStates(Landroid/os/IBinder;)Landroid/view/SurfaceControl$TimerStates;

    move-result-object v2

    .line 173
    .local v2, "timerStates":Landroid/view/SurfaceControl$TimerStates;
    const-string v3, "SemInputMonitorMotionEvent"

    if-nez v2, :cond_15

    .line 174
    const-string v4, "No valid info found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v1

    .line 177
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sec_input] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$TimerStates;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-boolean v3, v2, Landroid/view/SurfaceControl$TimerStates;->idle:Z

    if-eqz v3, :cond_33

    .line 180
    const/4 v1, 0x1

    return v1

    .line 188
    .end local v2    # "timerStates":Landroid/view/SurfaceControl$TimerStates;
    :cond_33
    return v1
.end method

.method private monitorMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "mEvent"    # Landroid/view/MotionEvent;

    .line 103
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->support_function:I

    if-lez v0, :cond_e

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->trackCase1(I)V

    .line 105
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->trackCase2(Landroid/view/MotionEvent;)V

    .line 107
    :cond_e
    return-void
.end method

.method private sendDataToHqm()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmHelper:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    if-eqz v0, :cond_9

    .line 63
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->sendHqmTspData(Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;)V

    .line 65
    :cond_9
    return-void
.end method

.method private trackCase1(I)V
    .registers 13
    .param p1, "action"    # I

    .line 110
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 111
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 112
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->currentTime:J

    .line 114
    if-nez p1, :cond_27

    .line 115
    sget-wide v4, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->endTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    .line 119
    sget v4, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    if-eqz v4, :cond_20

    iget-wide v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchInterval:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_26

    .line 120
    :cond_20
    iget-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->currentTime:J

    sput-wide v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->beginTime:J

    .line 121
    sput v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    .line 127
    :cond_26
    return-void

    .line 128
    :cond_27
    const-string v4, "SemInputMonitorMotionEvent"

    const/16 v5, 0x11

    const-string v6, "s tc "

    const-wide/16 v7, 0x3e8

    if-ne p1, v1, :cond_8b

    .line 129
    sget-wide v9, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->beginTime:J

    sub-long v9, v2, v9

    iput-wide v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    .line 130
    sput-wide v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->endTime:J

    .line 132
    iget-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detected:Z

    if-eqz v2, :cond_8a

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sec_input] CASE1 ended "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    div-long/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    div-long/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detected:Z

    .line 137
    iget-wide v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->currentTime:J

    sput-wide v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->beginTime:J

    .line 138
    sput v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    .line 139
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->increaseCount(I)V

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->sendDataToHqm()V

    .line 143
    :cond_8a
    return-void

    .line 145
    :cond_8b
    sget v9, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    add-int/2addr v9, v1

    sput v9, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    .line 148
    iget-boolean v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detected:Z

    if-nez v9, :cond_f2

    .line 149
    sget-wide v9, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->beginTime:J

    sub-long/2addr v2, v9

    iput-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    .line 151
    iget-wide v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->criteria:J

    cmp-long v2, v2, v9

    if-lez v2, :cond_f2

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->getSurfaceTimerStates()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sec_input] CASE1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    div-long/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->deltaTime:J

    div-long/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->detected:Z

    .line 157
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->increaseCount(I)V

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->sendDataToHqm()V

    goto :goto_f2

    .line 161
    :cond_ec
    iget-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->currentTime:J

    sput-wide v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->beginTime:J

    .line 162
    sput v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->touchCount:I

    .line 166
    :cond_f2
    :goto_f2
    return-void
.end method

.method private trackCase2(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "mEvent"    # Landroid/view/MotionEvent;

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    .line 193
    .local v0, "cur_tool_type":I
    invoke-static {v0}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "cur_tool_type_name":Ljava/lang/String;
    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->prv_tool_type:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_11

    if-ne v2, v4, :cond_15

    :cond_11
    if-eq v0, v3, :cond_15

    if-ne v0, v4, :cond_1f

    :cond_15
    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->prv_tool_type:I

    if-eq v2, v3, :cond_75

    if-eq v2, v4, :cond_75

    if-eq v0, v3, :cond_1f

    if-ne v0, v4, :cond_75

    .line 200
    :cond_1f
    const/16 v2, 0x11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sec_input] CASE2 : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->prv_tool_type:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sec_input] CASE2 : tool type change pre("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->prv_tool_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") : cur("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {v0}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    const-string v3, "SemInputMonitorMotionEvent"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->prv_tool_type:I

    .line 204
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-virtual {v2, v4}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->increaseCount(I)V

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->sendDataToHqm()V

    .line 207
    :cond_75
    return-void
.end method


# virtual methods
.method public SemInputMonitorMotionEvent()V
    .registers 3

    .line 68
    const-string v0, "SemInputMonitorMotionEvent"

    const-string v1, "call init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public start(Landroid/content/Context;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "support_feature"    # I

    .line 72
    const/high16 v0, 0x10000

    and-int/2addr v0, p2

    const-string v1, "SemInputMonitorMotionEvent"

    if-lez v0, :cond_a2

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->support_function:I

    .line 74
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmLoggingData:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->init()V

    .line 76
    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->support_function:I

    const-string v3, ")"

    const-string v4, "0x%X"

    const/4 v5, 0x0

    if-lez v2, :cond_7f

    .line 77
    nop

    .line 78
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 77
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerService;

    .line 79
    .local v2, "mWMS":Lcom/android/server/wm/WindowManagerService;
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mHqmHelper:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->sendDataToHqm()V

    .line 82
    if-eqz v2, :cond_5b

    .line 83
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    invoke-virtual {v2, v6, v5}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerPointerEventListener is loaded ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 86
    :cond_5b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerPointerEventListener is not loaded ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v2    # "mWMS":Lcom/android/server/wm/WindowManagerService;
    :goto_7e
    goto :goto_a2

    .line 89
    :cond_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support InputMonitorMotionEvent ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_a2
    :goto_a2
    const-string v0, "done"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method
