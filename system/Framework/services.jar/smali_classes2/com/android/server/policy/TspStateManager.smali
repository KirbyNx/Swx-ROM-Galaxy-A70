.class public Lcom/android/server/policy/TspStateManager;
.super Ljava/lang/Object;
.source "TspStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/TspStateManager$TspDebug;,
        Lcom/android/server/policy/TspStateManager$H;
    }
.end annotation


# static fields
.field private static final DEFAULT_3RDPARTY_DEADZONE:I = 0xa

.field private static final DEFAULT_3RDPARTY_EDGEZONE:I = 0x28

.field private static final DEFAULT_VALUE_COMMAND_STRING_DEADZONE_HOLE:Ljava/lang/String; = "0,0,0,0"

.field private static final FOLD_COMMAND_3RD_PARTY:Ljava/lang/String; = "0.35%,0.35%,0,0,1.41%,0,0.22%,0.22%,0.88%,0.88%"

.field private static final FOLD_COMMAND_DEVICE_DEFAULT:Ljava/lang/String; = "0.35%,0.35%,0,0,2.11%,0,0.22%,0.22%,1.32%,1.32%"

.field private static final HISTORY_TAG:Ljava/lang/String; = "tspstatemanager"

.field private static final MSG_CHANGE_IME_POLICY:I = 0x2

.field private static final MSG_CHANGE_WINDOW_POLICY:I = 0x1

.field private static final MSG_SCREEN_TURNED_ON:I = 0x3

.field private static final PHONE_COMMAND_3RD_PARTY:Ljava/lang/String; = "0.69%,1.39%,30%,1.39%,4.17%,4.17%,0.66%,0.66%,1.97%,1.97%"

.field private static final PHONE_COMMAND_3RD_PARTY_FOR_IME:Ljava/lang/String; = "0.69%,0.69%,30%,1.39%,2.78%,4.17%,0.66%,0.66%,1.97%,1.97%"

.field private static final PHONE_COMMAND_3RD_PARTY_GAME:Ljava/lang/String; = "0.69%,1.39%,30%,1.39%,4.17%,2.55%,0.66%,0.66%,1.97%,1.97%"

.field private static final PHONE_COMMAND_DEVICE_DEFAULT:Ljava/lang/String; = "0.69%,2.22%,30%,1.39%,4.17%,4.17%,1.05%,1.05%,1.97%,1.97%"

.field private static final SETTING_TSP_LAST_GRIP_CMD:Ljava/lang/String; = "setting_last_grip_cmd"

.field private static final SETTING_TSP_LAST_NOTE_MODE:Ljava/lang/String; = "setting_last_note_mode"

.field private static final SET_NOTE_MODE:Ljava/lang/String; = "set_note_mode,"

.field private static final SET_SIP_MODE:Ljava/lang/String; = "set_sip_mode,"

.field private static final SET_TUNING_DATA:Ljava/lang/String; = "set_grip_data,"

.field private static final TABLET_COMMAND_3RD_PARTY:Ljava/lang/String; = "0.35%,0.35%,0,0,1.41%,0,0.22%,0.22%,0.88%,0.88%"

.field private static final TABLET_COMMAND_DEVICE_DEFAULT:Ljava/lang/String; = "0.35%,0.35%,0,0,2.11%,0,0.22%,0.22%,1.32%,1.32%"

.field private static final TAG:Ljava/lang/String; = "TspStateManager"

.field private static final TSP_COMMAND_TYPE_HOLE:I = 0x3

.field private static final TSP_COMMAND_TYPE_LAND:I = 0x2

.field private static final TSP_COMMAND_TYPE_NOTE:I = 0x6

.field private static final TSP_COMMAND_TYPE_PORT:I = 0x1

.field private static final TSP_COMMAND_TYPE_SAME:I = 0x4

.field private static final TSP_COMMAND_TYPE_SIP:I = 0x5

.field private static final UPDATE_WINDOW_POLICY_DELAY_MILLIS:I = 0x1f4


# instance fields
.field private final m3rdPartyGameTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private final m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private final m3rdPartyTspCommandForIme:Lcom/android/server/policy/TspGripCommand;

.field private mContext:Landroid/content/Context;

.field private final mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

.field private final mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private mDeadzoneHoleMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private mFocusedWindow:Ljava/lang/String;

.field private mGameManager:Lcom/samsung/android/game/SemGameManager;

.field private final mH:Lcom/android/server/policy/TspStateManager$H;

.field private mHeight:I

.field private mInitHeight:I

.field private mInitWidth:I

.field private mIsEnabledCustomSetting:Z

.field private mIsImmShowing:Z

.field private mIsPortrait:Z

.field private mLastDeadzoneHole:Ljava/lang/String;

.field private mLastLandCmd:Ljava/lang/String;

.field private mLastNoteMode:Z

.field private mLastPortCmd:Ljava/lang/String;

.field private mPackagePolicyDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReserveLandCmd:Ljava/lang/String;

.field private mReservePortCmd:Ljava/lang/String;

.field private mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

.field private mWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Lcom/android/server/policy/TspGripCommand;

    invoke-direct {v1}, Lcom/android/server/policy/TspGripCommand;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    .line 87
    new-instance v1, Lcom/android/server/policy/TspGripCommand;

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/16 v9, 0x28

    const/16 v10, 0x28

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/policy/TspGripCommand;-><init>(IIIIIIII)V

    iput-object v1, v0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    .line 91
    new-instance v1, Lcom/android/server/policy/TspGripCommand;

    const/16 v12, 0xa

    const/16 v13, 0xa

    const/16 v14, 0xa

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xa

    const/16 v18, 0x28

    const/16 v19, 0x28

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lcom/android/server/policy/TspGripCommand;-><init>(IIIIIIII)V

    iput-object v1, v0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommandForIme:Lcom/android/server/policy/TspGripCommand;

    .line 95
    new-instance v1, Lcom/android/server/policy/TspGripCommand;

    const/16 v10, 0xa

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/policy/TspGripCommand;-><init>(IIIIIIII)V

    iput-object v1, v0, Lcom/android/server/policy/TspStateManager;->m3rdPartyGameTspCommand:Lcom/android/server/policy/TspGripCommand;

    .line 99
    new-instance v1, Lcom/android/server/policy/TspGripCommand;

    invoke-direct {v1}, Lcom/android/server/policy/TspGripCommand;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    .line 100
    new-instance v1, Lcom/android/server/policy/TspGripCommand;

    invoke-direct {v1}, Lcom/android/server/policy/TspGripCommand;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/TspStateManager;->mLastNoteMode:Z

    .line 104
    iput-boolean v1, v0, Lcom/android/server/policy/TspStateManager;->mIsPortrait:Z

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    .line 119
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/TspStateManager;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    .line 121
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/TspStateManager;->mPackagePolicyDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 146
    new-instance v1, Lcom/android/server/policy/TspStateManager$H;

    invoke-direct {v1, v0}, Lcom/android/server/policy/TspStateManager$H;-><init>(Lcom/android/server/policy/TspStateManager;)V

    iput-object v1, v0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    .line 128
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    .line 130
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/TspStateManager;->initDefaultValue()V

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    .line 133
    const-string/jumbo v2, "tspstatemanager"

    const-string/jumbo v3, "init"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "0,0,0,0"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/TspStateManager;->createDebugObjectIfNeeded()V

    .line 137
    iget-object v3, v0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    .line 138
    const-string/jumbo v4, "semcustomdump"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sepunion/SemCustomDumpManager;

    .line 139
    .local v3, "dumpManager":Lcom/samsung/android/sepunion/SemCustomDumpManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/sepunion/SemCustomDumpManager;->setDumpState(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/TspStateManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/TspStateManager;
    .param p1, "x1"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicyInner(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/TspStateManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/TspStateManager;
    .param p1, "x1"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/policy/TspStateManager;->updateImePolicyInner(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/TspStateManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/TspStateManager;

    .line 42
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->finishScreenTurningOnInner()V

    return-void
.end method

.method private finishScreenTurningOnInner()V
    .registers 3

    .line 284
    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mIsPortrait:Z

    const-string/jumbo v1, "tspstatemanager"

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 285
    const-string v0, "finishScreenTurningOn TSP_COMMAND_TYPE_PORT"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 287
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    goto :goto_2e

    .line 288
    :cond_1b
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 289
    const-string v0, "finishScreenTurningOn TSP_COMMAND_TYPE_LAND"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 291
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    .line 293
    :cond_2e
    :goto_2e
    return-void
.end method

.method private initDefaultValue()V
    .registers 16

    .line 184
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_35

    .line 185
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    const/4 v7, 0x0

    const-string v6, "0.35%,0.35%,0,0,2.11%,0,0.22%,0.22%,1.32%,1.32%"

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    .line 187
    iget-object v8, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v9, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v10, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v11, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v12, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    const/4 v14, 0x0

    const-string v13, "0.35%,0.35%,0,0,1.41%,0,0.22%,0.22%,0.88%,0.88%"

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    .line 189
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommandForIme:Lcom/android/server/policy/TspGripCommand;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    const/4 v6, 0x0

    const-string v5, "0.35%,0.35%,0,0,1.41%,0,0.22%,0.22%,0.88%,0.88%"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    goto :goto_73

    .line 199
    :cond_35
    iget-object v7, p0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v8, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v9, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v10, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v11, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    const/4 v13, 0x0

    const-string v12, "0.69%,2.22%,30%,1.39%,4.17%,4.17%,1.05%,1.05%,1.97%,1.97%"

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    .line 201
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    const/4 v6, 0x0

    const-string v5, "0.69%,1.39%,30%,1.39%,4.17%,4.17%,0.66%,0.66%,1.97%,1.97%"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    .line 203
    iget-object v7, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommandForIme:Lcom/android/server/policy/TspGripCommand;

    iget v8, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v9, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v10, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v11, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    const-string v12, "0.69%,0.69%,30%,1.39%,2.78%,4.17%,0.66%,0.66%,1.97%,1.97%"

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    .line 205
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyGameTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    const-string v5, "0.69%,1.39%,30%,1.39%,4.17%,2.55%,0.66%,0.66%,1.97%,1.97%"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    .line 208
    :goto_73
    return-void
.end method

.method private isForegroundGame()Z
    .registers 4

    .line 727
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    if-nez v0, :cond_b

    .line 728
    new-instance v0, Lcom/samsung/android/game/SemGameManager;

    invoke-direct {v0}, Lcom/samsung/android/game/SemGameManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    .line 731
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    if-eqz v0, :cond_16

    .line 732
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    invoke-virtual {v0}, Lcom/samsung/android/game/SemGameManager;->isForegroundGame()Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_17

    return v0

    .line 736
    :cond_16
    goto :goto_32

    .line 734
    :catch_17
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in checking isForegroundGame, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TspStateManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    const/4 v0, 0x0

    return v0
.end method

.method private makeLandCommand(IIIIII)Ljava/lang/String;
    .registers 9
    .param p1, "edgeZone"    # I
    .param p2, "landX1"    # I
    .param p3, "landTopReject"    # I
    .param p4, "landBottomReject"    # I
    .param p5, "landTopGrip"    # I
    .param p6, "landBottomGrip"    # I

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .local v0, "landCmdStrBuilder":Ljava/lang/StringBuilder;
    const-string v1, "2,1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 550
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makePortCommand(IIIIII)Ljava/lang/String;
    .registers 10
    .param p1, "edgeZone"    # I
    .param p2, "portX1"    # I
    .param p3, "portX2"    # I
    .param p4, "portX3"    # I
    .param p5, "portY1"    # I
    .param p6, "portY2"    # I

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v0, "portCmdStrBuilder":Ljava/lang/StringBuilder;
    const-string v1, "1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 575
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    if-eqz v2, :cond_31

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseCommand(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I
    .param p2, "fullCommand"    # Ljava/lang/String;

    .line 534
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 535
    return-object v1

    .line 537
    :cond_8
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "parsedString":[Ljava/lang/String;
    array-length v2, v0

    if-gt v2, p1, :cond_12

    .line 539
    return-object v1

    .line 541
    :cond_12
    aget-object v1, v0, p1

    return-object v1
.end method

.method private updateCustomValue()V
    .registers 11

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 211
    const-string/jumbo v1, "setting_tsp_threshold"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "customSetting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 214
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104032d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCustomValue customSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TspStateManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 221
    return-void

    .line 224
    :cond_41
    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/TspStateManager;->parseCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "commandForSamsung":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v6, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    const/4 v9, 0x0

    move-object v8, v1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    .line 228
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/policy/TspStateManager;->parseCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "commandFor3rdParty":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v6, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    move-object v8, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    .line 231
    iget-object v3, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommandForIme:Lcom/android/server/policy/TspGripCommand;

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v6, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    .line 233
    return-void
.end method

.method private updateImePolicyInner(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 11
    .param p1, "imeWindow"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 393
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_SIP_MODE:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mIsImmShowing:Z

    if-nez v0, :cond_11

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mIsImmShowing:Z

    .line 395
    const/4 v0, 0x5

    const-string v1, "1"

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 398
    :cond_11
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-nez v0, :cond_16

    .line 399
    return-void

    .line 402
    :cond_16
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-nez v0, :cond_1f

    .line 403
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v0}, Lcom/android/server/policy/TspGripCommand;->reset()V

    .line 406
    :cond_1f
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    .line 407
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 406
    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "defaultInputMethod":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 410
    const-string v1, "SamsungKeypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 411
    const-string/jumbo v1, "honeyboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 412
    :cond_42
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommandForIme:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    .line 415
    :cond_49
    if-eqz p1, :cond_5f

    .line 416
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getTspDeadzone()Landroid/os/Bundle;

    move-result-object v1

    .line 417
    .local v1, "deadzone":Landroid/os/Bundle;
    if-eqz v1, :cond_5f

    .line 418
    iget-object v3, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v6, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILandroid/os/Bundle;)Z

    .line 422
    .end local v1    # "deadzone":Landroid/os/Bundle;
    :cond_5f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_84

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImePolicy imeWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TspStateManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_84
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-direct {p0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspCommand(Lcom/android/server/policy/TspGripCommand;)V

    .line 428
    return-void
.end method

.method private updateTspCommand(Lcom/android/server/policy/TspGripCommand;)V
    .registers 11
    .param p1, "command"    # Lcom/android/server/policy/TspGripCommand;

    .line 586
    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    if-eqz v0, :cond_9

    .line 587
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {p1, v0}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    .line 590
    :cond_9
    iget v2, p1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iget v3, p1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iget v4, p1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iget v5, p1, Lcom/android/server/policy/TspGripCommand;->mPortX3:I

    iget v6, p1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iget v7, p1, Lcom/android/server/policy/TspGripCommand;->mPortY2:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/TspStateManager;->makePortCommand(IIIIII)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "portCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 594
    iget-boolean v1, p0, Lcom/android/server/policy/TspStateManager;->mIsPortrait:Z

    if-eqz v1, :cond_2c

    .line 595
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 596
    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    .line 599
    :cond_2c
    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    .line 601
    iget v3, p1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    iget v4, p1, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    iget v5, p1, Lcom/android/server/policy/TspGripCommand;->mLandTopRejecttWidth:I

    iget v6, p1, Lcom/android/server/policy/TspGripCommand;->mLandBottomRejectWidth:I

    iget v7, p1, Lcom/android/server/policy/TspGripCommand;->mLandTopGriptWidth:I

    iget v8, p1, Lcom/android/server/policy/TspGripCommand;->mLandBottomGripWidth:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/policy/TspStateManager;->makeLandCommand(IIIIII)Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, "landCmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 605
    iget-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mIsPortrait:Z

    if-nez v2, :cond_51

    .line 606
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 607
    iput-object v1, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    .line 610
    :cond_51
    iput-object v1, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    .line 611
    return-void
.end method

.method private updateTspState(Ljava/lang/String;I)V
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 614
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$TspStateManager$r1XoifJsXIYp3MESTPagL5HfVT4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/policy/-$$Lambda$TspStateManager$r1XoifJsXIYp3MESTPagL5HfVT4;-><init>(Lcom/android/server/policy/TspStateManager;ILjava/lang/String;)V

    const-string/jumbo v2, "tspStateManager"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 664
    .local v0, "T":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 665
    return-void
.end method

.method private updateWindowPolicyInner(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 11
    .param p1, "focusedWindow"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 318
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_SIP_MODE:Z

    const-string v1, "0"

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mIsImmShowing:Z

    if-eqz v0, :cond_11

    .line 319
    iput-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mIsImmShowing:Z

    .line 320
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 323
    :cond_11
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_NOTE_MODE:Z

    if-eqz v0, :cond_29

    if-eqz p1, :cond_29

    .line 324
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isTspNoteMode()Z

    move-result v0

    .line 326
    .local v0, "isNoteMode":Z
    iget-boolean v3, p0, Lcom/android/server/policy/TspStateManager;->mLastNoteMode:Z

    if-eq v3, v0, :cond_29

    .line 327
    iput-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mLastNoteMode:Z

    .line 328
    if-eqz v0, :cond_25

    const-string v1, "1"

    :cond_25
    const/4 v3, 0x6

    invoke-direct {p0, v1, v3}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 332
    .end local v0    # "isNoteMode":Z
    :cond_29
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-nez v0, :cond_2e

    .line 333
    return-void

    .line 336
    :cond_2e
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, "applyDefaultDeadzone":Z
    if-eqz p1, :cond_9e

    .line 341
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    const/4 v4, 0x1

    if-lt v1, v3, :cond_4f

    .line 342
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0xbb7

    if-gt v1, v3, :cond_4f

    move v1, v4

    goto :goto_50

    :cond_4f
    move v1, v2

    :goto_50
    move v0, v1

    .line 344
    if-nez v0, :cond_6f

    .line 345
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 346
    .local v1, "windowPkgName":Ljava/lang/String;
    if-eqz v1, :cond_6d

    .line 347
    const-string v3, "com.sec.android."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 348
    const-string v3, "com.samsung."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    :cond_6b
    move v2, v4

    goto :goto_6e

    :cond_6d
    nop

    :goto_6e
    move v0, v2

    .line 351
    .end local v1    # "windowPkgName":Ljava/lang/String;
    :cond_6f
    if-nez v0, :cond_86

    .line 352
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->isForegroundGame()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 353
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyGameTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    goto :goto_86

    .line 355
    :cond_7f
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    .line 359
    :cond_86
    :goto_86
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getTspDeadzone()Landroid/os/Bundle;

    move-result-object v1

    .line 360
    .local v1, "deadzone":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v6, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILandroid/os/Bundle;)Z

    .line 362
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/TspStateManager;->mFocusedWindow:Ljava/lang/String;

    .line 365
    .end local v1    # "deadzone":Landroid/os/Bundle;
    :cond_9e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_cb

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWindowPolicy focusedWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isDeviceDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TspStateManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_cb
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-direct {p0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspCommand(Lcom/android/server/policy/TspGripCommand;)V

    .line 371
    return-void
.end method


# virtual methods
.method createDebugObjectIfNeeded()V
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_tsp_debug"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 167
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    if-nez v0, :cond_24

    .line 168
    new-instance v0, Lcom/android/server/policy/TspStateManager$TspDebug;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/TspStateManager$TspDebug;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    goto :goto_24

    .line 171
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    .line 173
    :cond_24
    :goto_24
    return-void
.end method

.method finishScreenTurningOn()V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 276
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    .line 278
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 280
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/TspStateManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 281
    return-void
.end method

.method public synthetic lambda$updateTspState$0$TspStateManager(ILjava/lang/String;)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 616
    const/4 v0, 0x6

    const/4 v1, 0x5

    if-ne p1, v1, :cond_d

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set_sip_mode,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v2, "builder":Ljava/lang/StringBuilder;
    goto :goto_20

    .line 618
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_d
    if-ne p1, v0, :cond_18

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set_note_mode,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    goto :goto_20

    .line 621
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set_grip_data,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :goto_20
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "tspCommand":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TspStateManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v4, "]"

    const-string v6, "["

    const-string/jumbo v7, "tspstatemanager"

    if-eq p1, v1, :cond_8f

    if-ne p1, v0, :cond_4a

    goto :goto_8f

    .line 631
    :cond_4a
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mFocusedWindow:Ljava/lang/String;

    if-eqz v0, :cond_76

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]window : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/TspStateManager;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mFocusedWindow:Ljava/lang/String;

    goto :goto_a7

    .line 637
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 629
    :cond_8f
    :goto_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :goto_a7
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    if-eqz v0, :cond_b2

    if-eq p1, v1, :cond_b2

    .line 642
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/policy/TspStateManager$TspDebug;->updateTspState(Landroid/content/Context;Ljava/lang/String;I)V

    .line 646
    :cond_b2
    :try_start_b2
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c5

    .line 648
    const-string v1, "The file is not existed."

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void

    .line 651
    :cond_c5
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_d1

    .line 652
    const-string v1, "The file cannot write."

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void

    .line 656
    :cond_d1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_d6} :catch_f0

    .line 657
    .local v1, "fos":Ljava/io/OutputStream;
    :try_start_d6
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 658
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_e2
    .catchall {:try_start_d6 .. :try_end_e2} :catchall_e6

    .line 659
    :try_start_e2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_f0

    .line 662
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fos":Ljava/io/OutputStream;
    goto :goto_f4

    .line 656
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fos":Ljava/io/OutputStream;
    :catchall_e6
    move-exception v4

    :try_start_e7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_eb

    goto :goto_ef

    :catchall_eb
    move-exception v5

    :try_start_ec
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "tspCommand":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/policy/TspStateManager;
    .end local p1    # "type":I
    .end local p2    # "cmd":Ljava/lang/String;
    :goto_ef
    throw v4
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f0} :catch_f0

    .line 660
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "tspCommand":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/policy/TspStateManager;
    .restart local p1    # "type":I
    .restart local p2    # "cmd":Ljava/lang/String;
    :catch_f0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 663
    .end local v0    # "e":Ljava/io/IOException;
    :goto_f4
    return-void
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "deadzoneHole"    # Landroid/os/Bundle;

    .line 457
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string/jumbo v1, "setDeadzoneHole "

    const-string v2, "TspStateManager"

    if-eqz v0, :cond_c

    .line 458
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_c
    if-nez p1, :cond_15

    .line 462
    const-string/jumbo v0, "setDeadzoneHole hole is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void

    .line 466
    :cond_15
    const/4 v0, 0x0

    const-string v3, "dead_zone_process_name"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "processName":Ljava/lang/String;
    if-nez v0, :cond_25

    .line 469
    const-string/jumbo v1, "setDeadzoneHole invalid name key"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void

    .line 473
    :cond_25
    const-string v3, "dead_zone_direction"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 475
    .local v3, "direction":I
    const-string v5, "dead_zone_port_y1"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 476
    .local v5, "startY":I
    const-string v6, "dead_zone_port_y2"

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 477
    .local v6, "endY":I
    if-ltz v5, :cond_51

    if-ltz v6, :cond_51

    if-ne v5, v6, :cond_3f

    goto :goto_51

    .line 482
    :cond_3f
    new-instance v7, Landroid/graphics/Rect;

    if-ge v5, v6, :cond_47

    invoke-direct {v7, v4, v5, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4a

    :cond_47
    invoke-direct {v7, v4, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_4a
    move-object v4, v7

    .line 483
    .local v4, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/server/policy/TspStateManager;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 478
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_51
    :goto_51
    iget-object v4, p0, Lcom/android/server/policy/TspStateManager;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 479
    iget-object v4, p0, Lcom/android/server/policy/TspStateManager;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_5e
    :goto_5e
    const v4, 0x7fffffff

    .line 487
    .end local v5    # "startY":I
    .local v4, "startY":I
    const/4 v5, 0x0

    .line 488
    .end local v6    # "endY":I
    .local v5, "endY":I
    iget-object v6, p0, Lcom/android/server/policy/TspStateManager;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 489
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_69
    if-ge v7, v6, :cond_88

    .line 490
    iget-object v8, p0, Lcom/android/server/policy/TspStateManager;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 491
    .local v8, "rect":Landroid/graphics/Rect;
    if-eqz v8, :cond_85

    .line 492
    iget v9, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 493
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 489
    .end local v8    # "rect":Landroid/graphics/Rect;
    :cond_85
    add-int/lit8 v7, v7, 0x1

    goto :goto_69

    .line 496
    .end local v7    # "i":I
    :cond_88
    if-nez v5, :cond_8b

    .line 497
    const/4 v3, 0x0

    .line 499
    :cond_8b
    const v7, 0x7fffffff

    if-ne v4, v7, :cond_91

    .line 500
    move v4, v5

    .line 503
    :cond_91
    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v8, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-static {v7, v8, v4}, Lcom/android/server/policy/TspGripCommand;->getTspHeightPixel(III)I

    move-result v4

    .line 504
    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v8, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-static {v7, v8, v5}, Lcom/android/server/policy/TspGripCommand;->getTspHeightPixel(III)I

    move-result v5

    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v7, "cmdBuilder":Ljava/lang/StringBuilder;
    const-string v8, "0,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 515
    .local v8, "cmd":Ljava/lang/String;
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v9, :cond_e8

    .line 516
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadzoneHole:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " --> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", processName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_e8
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadzoneHole:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 521
    return-void

    .line 523
    :cond_f1
    iput-object v8, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadzoneHole:Ljava/lang/String;

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tspstatemanager"

    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadzoneHole:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 526
    return-void
.end method

.method public setDefaultDisplaySizeDensity(IIII)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "initWidth"    # I
    .param p4, "initHeight"    # I

    .line 434
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v1, "TspStateManager"

    if-eqz v0, :cond_33

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultDisplaySizeDensity initWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", initHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_33
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3d

    .line 440
    const-string v0, "TspStateManager not yet initialized"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 443
    :cond_3d
    iput p3, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    .line 444
    iput p4, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    .line 445
    iput p1, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    .line 446
    iput p2, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    .line 448
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->initDefaultValue()V

    .line 449
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    .line 451
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    if-eqz v0, :cond_56

    .line 452
    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/TspStateManager$TspDebug;->setInitDisplaySize(II)V

    .line 454
    :cond_56
    return-void
.end method

.method public setOrientation(Z)V
    .registers 7
    .param p1, "isPortrait"    # Z

    .line 236
    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mIsPortrait:Z

    if-eq v0, p1, :cond_97

    .line 237
    iput-boolean p1, p0, Lcom/android/server/policy/TspStateManager;->mIsPortrait:Z

    .line 239
    const-string v0, "TspStateManager"

    const-string/jumbo v1, "tspstatemanager"

    if-eqz p1, :cond_5c

    .line 240
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "2,0"

    if-nez v2, :cond_28

    .line 241
    const-string/jumbo v2, "setOrientation mReservePortCmd is null."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-nez v0, :cond_27

    .line 243
    const-string/jumbo v0, "setOrientation TSP_COMMAND_TYPE_PORT"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, v4, v3}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 246
    :cond_27
    return-void

    .line 248
    :cond_28
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrientation TSP_COMMAND_TYPE_PORT : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 252
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    goto :goto_97

    .line 254
    :cond_51
    const-string/jumbo v0, "setOrientation TSP_COMMAND_TYPE_SAME"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x4

    invoke-direct {p0, v4, v0}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    goto :goto_97

    .line 258
    :cond_5c
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    const/4 v3, 0x2

    if-nez v2, :cond_77

    .line 259
    const-string/jumbo v2, "setOrientation mReserveLandCmd is null."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-nez v0, :cond_76

    .line 261
    const-string/jumbo v0, "setOrientation TSP_COMMAND_TYPE_LAND"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "2,1,0,10,0,0"

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 264
    :cond_76
    return-void

    .line 266
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrientation TSP_COMMAND_TYPE_LAND : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 269
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    .line 272
    :cond_97
    :goto_97
    return-void
.end method

.method public setPackagePolicyDataMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 529
    .local p1, "policyDataMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mPackagePolicyDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 530
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mPackagePolicyDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 531
    return-void
.end method

.method public updateImePolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "imeWindow"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 377
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 378
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    .line 380
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 381
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    .line 383
    :cond_1c
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 384
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    .line 386
    :cond_2a
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 387
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 388
    iput v1, v0, Landroid/os/Message;->what:I

    .line 389
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/TspStateManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 390
    return-void
.end method

.method updateTspCustomCommand()V
    .registers 3

    .line 176
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->initDefaultValue()V

    .line 177
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tspstatemanager"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 181
    return-void
.end method

.method public updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 6
    .param p1, "focusedWindow"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 302
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 303
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    .line 305
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 306
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    .line 308
    :cond_1c
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 309
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    .line 311
    :cond_2a
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 312
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 313
    iput v1, v0, Landroid/os/Message;->what:I

    .line 314
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/policy/TspStateManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 315
    return-void
.end method
