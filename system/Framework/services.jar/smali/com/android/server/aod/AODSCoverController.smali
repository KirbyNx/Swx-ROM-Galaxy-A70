.class public Lcom/android/server/aod/AODSCoverController;
.super Ljava/lang/Object;
.source "AODSCoverController.java"


# static fields
.field private static final LUX_FOR_HIGH_NIT:F = 2.0f

.field private static final LUX_QUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final LUX_QUE_SIZE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "AODManagerService.SCover"


# instance fields
.field private mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

.field private mContext:Landroid/content/Context;

.field private mCoverAttached:Z

.field private mCoverClosed:Z

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCoverUIWorking:Z

.field private mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/aod/AODSettingHelper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/android/server/aod/AODSettingHelper;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    .line 40
    iput-object p1, p0, Lcom/android/server/aod/AODSCoverController;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/server/aod/AODSCoverController;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 42
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/aod/AODSCoverController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODSCoverController;

    .line 19
    iget-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/aod/AODSCoverController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODSCoverController;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/aod/AODSCoverController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODSCoverController;

    .line 19
    iget-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/aod/AODSCoverController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODSCoverController;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/aod/AODSCoverController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODSCoverController;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/aod/AODSCoverController;)Lcom/android/server/aod/AODSettingHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODSCoverController;

    .line 19
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/aod/AODSCoverController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/aod/AODSCoverController;

    .line 19
    invoke-direct {p0}, Lcom/android/server/aod/AODSCoverController;->registerSViewCoverSensorListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/aod/AODSCoverController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/aod/AODSCoverController;

    .line 19
    invoke-direct {p0}, Lcom/android/server/aod/AODSCoverController;->unregisterSViewCoverSensorListener()V

    return-void
.end method

.method static synthetic access$600()Ljava/util/Queue;
    .registers 1

    .line 19
    sget-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    return-object v0
.end method

.method private registerSViewCoverSensorListener()V
    .registers 6

    .line 92
    sget-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_14

    .line 94
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 96
    :cond_14
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    if-nez v1, :cond_31

    .line 97
    sget-object v1, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 98
    new-instance v1, Lcom/android/server/aod/AODSCoverController$2;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODSCoverController$2;-><init>(Lcom/android/server/aod/AODSCoverController;)V

    iput-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 116
    iget-object v2, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 118
    :cond_31
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method private unregisterSViewCoverSensorListener()V
    .registers 4

    .line 122
    sget-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    monitor-enter v0

    .line 123
    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_1a

    .line 124
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 126
    sget-object v1, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 128
    :cond_1a
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 166
    const-string v0, " AODSCoverController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCoverAttached : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCoverClosed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCoverUIWorking : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method isCoverUIWorking()Z
    .registers 2

    .line 162
    iget-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    return v0
.end method

.method isSViewCoverBrightnessHigh()Z
    .registers 12

    .line 132
    sget-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    monitor-enter v0

    .line 133
    :try_start_3
    sget-object v1, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    .line 134
    monitor-exit v0

    return v2

    .line 136
    :cond_e
    const/high16 v1, 0x40400000    # 3.0f

    .line 137
    .local v1, "lux":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 139
    .local v4, "count":I
    const/4 v5, 0x0

    .line 140
    .local v5, "avg":F
    sget-object v6, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_57

    .line 141
    const/4 v6, 0x0

    .line 142
    .local v6, "luxSum":F
    sget-object v7, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 143
    .local v7, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Float;>;"
    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 144
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 145
    .local v8, "tempLux":F
    add-float/2addr v6, v8

    .line 146
    add-int/lit8 v4, v4, 0x1

    .line 147
    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    nop

    .end local v8    # "tempLux":F
    goto :goto_26

    .line 150
    :cond_47
    int-to-float v8, v4

    div-float v5, v6, v8

    .line 151
    sget-object v8, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move v1, v8

    .line 154
    .end local v6    # "luxSum":F
    .end local v7    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Float;>;"
    :cond_57
    const-string v6, "AODManagerService.SCover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSViewCoverBrightnessHighInternal: (SVIEW_COVER) luxes ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "], average ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "], lux ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "], NIT state ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v9, v5, v8

    const/4 v10, 0x0

    if-lez v9, :cond_85

    move v9, v2

    goto :goto_86

    :cond_85
    move v9, v10

    :goto_86
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    cmpl-float v6, v5, v8

    if-lez v6, :cond_9a

    goto :goto_9b

    :cond_9a
    move v2, v10

    :goto_9b
    monitor-exit v0

    return v2

    .line 158
    .end local v1    # "lux":F
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "count":I
    .end local v5    # "avg":F
    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_3 .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method refresh()V
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_22

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 80
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_22

    iget-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_22

    iget v1, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 81
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v1}, Lcom/android/server/aod/AODSettingHelper;->isAODEnabled()Z

    move-result v1

    .line 82
    .local v1, "isAODModeEnabled":Z
    if-eqz v1, :cond_1f

    .line 83
    invoke-direct {p0}, Lcom/android/server/aod/AODSCoverController;->registerSViewCoverSensorListener()V

    goto :goto_22

    .line 85
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/aod/AODSCoverController;->unregisterSViewCoverSensorListener()V

    .line 89
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v1    # "isAODModeEnabled":Z
    :cond_22
    :goto_22
    return-void
.end method

.method register()V
    .registers 5

    .line 46
    new-instance v0, Lcom/android/server/aod/AODSCoverController$1;

    invoke-direct {v0, p0}, Lcom/android/server/aod/AODSCoverController$1;-><init>(Lcom/android/server/aod/AODSCoverController;)V

    iput-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 64
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_31

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 66
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_29

    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    .line 69
    iget-boolean v3, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    if-eqz v3, :cond_26

    if-eqz v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    iput-boolean v2, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    .line 71
    :cond_29
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/aod/AODSCoverController;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 72
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    goto :goto_39

    .line 73
    :cond_31
    const-string v0, "AODManagerService.SCover"

    const-string/jumbo v1, "initCoverManager is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_39
    return-void
.end method
