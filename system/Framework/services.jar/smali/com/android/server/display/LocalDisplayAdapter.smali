.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NO_DISPLAY_MODE_ID:I = 0x0

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "local:"


# instance fields
.field private final mDevices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPhysicalDisplayEventReceiver:Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .registers 11
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .line 106
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 97
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 107
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"    # J

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"    # J

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;

    .line 87
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method private getOptimizedDisplayConfig([Landroid/view/SurfaceControl$DisplayConfig;)I
    .registers 12
    .param p1, "configs"    # [Landroid/view/SurfaceControl$DisplayConfig;

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "displayConfig":I
    const/4 v1, 0x0

    .line 188
    .local v1, "displayWidth":I
    const/4 v2, 0x0

    .line 189
    .local v2, "displayHeight":I
    const/4 v3, 0x0

    .line 190
    .local v3, "displayRefreshRate":F
    const v4, 0x3c23d70a    # 0.01f

    .line 192
    .local v4, "FLOAT_TOLERANCE":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    array-length v6, p1

    if-ge v5, v6, :cond_3a

    .line 193
    aget-object v6, p1, v5

    .line 195
    .local v6, "config":Landroid/view/SurfaceControl$DisplayConfig;
    mul-int v7, v1, v2

    iget v8, v6, Landroid/view/SurfaceControl$DisplayConfig;->width:I

    iget v9, v6, Landroid/view/SurfaceControl$DisplayConfig;->height:I

    mul-int/2addr v8, v9

    if-le v7, v8, :cond_17

    .line 196
    goto :goto_37

    .line 198
    :cond_17
    iget v7, v6, Landroid/view/SurfaceControl$DisplayConfig;->refreshRate:F

    const v8, 0x426ff5c3    # 59.99f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_21

    .line 199
    goto :goto_37

    .line 202
    :cond_21
    mul-int v7, v1, v2

    iget v8, v6, Landroid/view/SurfaceControl$DisplayConfig;->width:I

    iget v9, v6, Landroid/view/SurfaceControl$DisplayConfig;->height:I

    mul-int/2addr v8, v9

    if-lt v7, v8, :cond_30

    iget v7, v6, Landroid/view/SurfaceControl$DisplayConfig;->refreshRate:F

    cmpg-float v7, v7, v3

    if-gez v7, :cond_37

    .line 204
    :cond_30
    iget v1, v6, Landroid/view/SurfaceControl$DisplayConfig;->width:I

    .line 205
    iget v2, v6, Landroid/view/SurfaceControl$DisplayConfig;->height:I

    .line 206
    iget v3, v6, Landroid/view/SurfaceControl$DisplayConfig;->refreshRate:F

    .line 207
    move v0, v5

    .line 192
    .end local v6    # "config":Landroid/view/SurfaceControl$DisplayConfig;
    :cond_37
    :goto_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 211
    .end local v5    # "i":I
    :cond_3a
    return v0
.end method

.method static getPowerModeForState(I)I
    .registers 5
    .param p0, "state"    # I

    .line 225
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p0, v1, :cond_1a

    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eq p0, v1, :cond_14

    if-eq p0, v2, :cond_e

    .line 253
    return v3

    .line 242
    :cond_e
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    if-eqz v0, :cond_13

    .line 244
    return v3

    .line 248
    :cond_13
    return v1

    .line 231
    :cond_14
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    if-eqz v1, :cond_19

    .line 233
    return v3

    .line 237
    :cond_19
    return v0

    .line 251
    :cond_1a
    return v2

    .line 227
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private tryConnectDisplayLocked(J)V
    .registers 29
    .param p1, "physicalDisplayId"    # J

    .line 121
    move-object/from16 v13, p0

    move-wide/from16 v14, p1

    invoke-static/range {p1 .. p2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v11

    .line 122
    .local v11, "displayToken":Landroid/os/IBinder;
    if-eqz v11, :cond_104

    .line 123
    invoke-static {v11}, Landroid/view/SurfaceControl;->getDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayInfo;

    move-result-object v16

    .line 124
    .local v16, "info":Landroid/view/SurfaceControl$DisplayInfo;
    const-string v0, "LocalDisplayAdapter"

    if-nez v16, :cond_27

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid info found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 128
    :cond_27
    invoke-static {v11}, Landroid/view/SurfaceControl;->getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$DisplayConfig;

    move-result-object v10

    .line 129
    .local v10, "configs":[Landroid/view/SurfaceControl$DisplayConfig;
    if-nez v10, :cond_42

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid configs found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 134
    :cond_42
    invoke-static {v11}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v1

    .line 135
    .local v1, "activeConfig":I
    if-gez v1, :cond_5d

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active config found for display device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 142
    :cond_5d
    nop

    .line 143
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 147
    invoke-direct {v13, v10}, Lcom/android/server/display/LocalDisplayAdapter;->getOptimizedDisplayConfig([Landroid/view/SurfaceControl$DisplayConfig;)I

    move-result v1

    move/from16 v17, v1

    goto :goto_71

    .line 143
    :cond_6f
    move/from16 v17, v1

    .line 150
    .end local v1    # "activeConfig":I
    .local v17, "activeConfig":I
    :goto_71
    invoke-static {v11}, Landroid/view/SurfaceControl;->getActiveColorMode(Landroid/os/IBinder;)I

    move-result v1

    .line 151
    .local v1, "activeColorMode":I
    if-gez v1, :cond_8f

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get active color mode for display device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, -0x1

    move/from16 v18, v1

    goto :goto_91

    .line 151
    :cond_8f
    move/from16 v18, v1

    .line 159
    .end local v1    # "activeColorMode":I
    .local v18, "activeColorMode":I
    :goto_91
    nop

    .line 160
    invoke-static {v11}, Landroid/view/SurfaceControl;->getDesiredDisplayConfigSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;

    move-result-object v19

    .line 161
    .local v19, "configSpecs":Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;
    invoke-static {v11}, Landroid/view/SurfaceControl;->getDisplayColorModes(Landroid/os/IBinder;)[I

    move-result-object v20

    .line 162
    .local v20, "colorModes":[I
    nop

    .line 163
    invoke-static {v11}, Landroid/view/SurfaceControl;->getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    move-result-object v21

    .line 164
    .local v21, "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    iget-object v0, v13, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 165
    .local v9, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-nez v9, :cond_e0

    .line 167
    iget-object v0, v13, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_b5

    move v12, v8

    goto :goto_b7

    :cond_b5
    const/4 v0, 0x0

    move v12, v0

    .line 168
    .local v12, "isDefaultDisplay":Z
    :goto_b7
    new-instance v22, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v11

    move-wide/from16 v3, p1

    move-object/from16 v5, v16

    move-object v6, v10

    move/from16 v7, v17

    move-object/from16 v8, v19

    move-object/from16 v23, v9

    .end local v9    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v23, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    move-object/from16 v9, v20

    move-object/from16 v24, v10

    .end local v10    # "configs":[Landroid/view/SurfaceControl$DisplayConfig;
    .local v24, "configs":[Landroid/view/SurfaceControl$DisplayConfig;
    move/from16 v10, v18

    move-object/from16 v25, v11

    .end local v11    # "displayToken":Landroid/os/IBinder;
    .local v25, "displayToken":Landroid/os/IBinder;
    move-object/from16 v11, v21

    invoke-direct/range {v0 .. v12}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$DisplayInfo;[Landroid/view/SurfaceControl$DisplayConfig;ILandroid/view/SurfaceControl$DesiredDisplayConfigSpecs;[IILandroid/view/Display$HdrCapabilities;Z)V

    .line 171
    .end local v23    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v1, v13, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v14, v15, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v13, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 173
    .end local v12    # "isDefaultDisplay":Z
    goto :goto_106

    .end local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v24    # "configs":[Landroid/view/SurfaceControl$DisplayConfig;
    .end local v25    # "displayToken":Landroid/os/IBinder;
    .restart local v9    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v10    # "configs":[Landroid/view/SurfaceControl$DisplayConfig;
    .restart local v11    # "displayToken":Landroid/os/IBinder;
    :cond_e0
    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    .end local v9    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v10    # "configs":[Landroid/view/SurfaceControl$DisplayConfig;
    .end local v11    # "displayToken":Landroid/os/IBinder;
    .restart local v23    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v24    # "configs":[Landroid/view/SurfaceControl$DisplayConfig;
    .restart local v25    # "displayToken":Landroid/os/IBinder;
    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v17

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v18

    move-object/from16 v8, v21

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayProperties([Landroid/view/SurfaceControl$DisplayConfig;ILandroid/view/SurfaceControl$DesiredDisplayConfigSpecs;[IILandroid/view/Display$HdrCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 175
    const/4 v0, 0x2

    move-object/from16 v1, v23

    .end local v23    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v1, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    invoke-virtual {v13, v1, v0}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_106

    .line 173
    .end local v1    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v23    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :cond_101
    move-object/from16 v1, v23

    .end local v23    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v1    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    goto :goto_106

    .line 122
    .end local v1    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v16    # "info":Landroid/view/SurfaceControl$DisplayInfo;
    .end local v17    # "activeConfig":I
    .end local v18    # "activeColorMode":I
    .end local v19    # "configSpecs":Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;
    .end local v20    # "colorModes":[I
    .end local v21    # "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    .end local v24    # "configs":[Landroid/view/SurfaceControl$DisplayConfig;
    .end local v25    # "displayToken":Landroid/os/IBinder;
    .restart local v11    # "displayToken":Landroid/os/IBinder;
    :cond_104
    move-object/from16 v25, v11

    .line 182
    .end local v11    # "displayToken":Landroid/os/IBinder;
    .restart local v25    # "displayToken":Landroid/os/IBinder;
    :goto_106
    return-void
.end method

.method private tryDisconnectDisplayLocked(J)V
    .registers 5
    .param p1, "physicalDisplayId"    # J

    .line 216
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 217
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-eqz v0, :cond_13

    .line 219
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 220
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 222
    :cond_13
    return-void
.end method


# virtual methods
.method getOverlayContext()Landroid/content/Context;
    .registers 2

    .line 1437
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public registerLocked()V
    .registers 6

    .line 111
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 113
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayEventReceiver:Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

    .line 115
    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_22

    aget-wide v3, v0, v2

    .line 116
    .local v3, "physicalDisplayId":J
    invoke-direct {p0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    .line 115
    .end local v3    # "physicalDisplayId":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 118
    :cond_22
    return-void
.end method
