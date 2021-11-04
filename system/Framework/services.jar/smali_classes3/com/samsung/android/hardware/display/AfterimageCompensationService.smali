.class public Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.super Ljava/lang/Object;
.source "AfterimageCompensationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;,
        Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DISPLAY_ON_TIME:Ljava/lang/String; = "com.sec.android.app.server.power.DISPLAY_ON_TIME"

.field private static final ACTION_HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final ACTION_MAFPC_DEVICE_CARE:Ljava/lang/String; = "com.samsung.android.sm.ACTION_ABC_SOLUTION"

.field private static final ACTION_POLICY_UPDATED:Ljava/lang/String; = "sec.app.policy.UPDATE.AFPC"

.field private static final AFPC_KEYS:[Ljava/lang/String;

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final BIGDATA_DISPLAY_IMAGE_QUALITY_ENHANCEMENT:Ljava/lang/String; = "DIQE"

.field private static final BIGDATA_DISPLAY_USER_INFO:Ljava/lang/String; = "DPUI"

.field private static final POLICY_ITEM:Ljava/lang/String; = "policy_item"

.field private static final POLICY_LIST:Ljava/lang/String; = "policy_list"

.field private static final POLICY_NAME:Ljava/lang/String; = "AFPC"

.field private static final TAG:Ljava/lang/String; = "AfterimageCompensationService"

.field private static final mAFPC_KEYS:[Ljava/lang/String;


# instance fields
.field private final AFC_APPLY_COUNT:Ljava/lang/String;

.field private final AFC_APPLY_LDU:Ljava/lang/String;

.field private final AFC_COPR_ROI_MAX_INDEX:I

.field private final AFC_COPR_ROI_MAX_NUMBER:I

.field private final AFC_COPR_ROI_MAX_VALUE:I

.field private final AFC_COPR_ROI_TABLE_SIZE:I

.field private final AFC_COPR_ROI_XY_NUMBER:I

.field private final AFC_DEFAULT_VALUE:Ljava/lang/String;

.field private final AFC_DIFF_DATA:Ljava/lang/String;

.field private final AFC_DIRECTORY:Ljava/lang/String;

.field private final AFC_DISPLAY_ON_TIME:Ljava/lang/String;

.field private final AFC_INIT_VALUE:Ljava/lang/String;

.field private final AFC_LOGGING_DATA:Ljava/lang/String;

.field private final AFC_LOGGING_DATA_SIZE:I

.field private final AFC_LUX_MAX_NUMBER:I

.field private final AFC_MAX_COUNT:I

.field private final AFC_MDNIE_BLOCK:Ljava/lang/String;

.field private final AFC_ORIGINAL_VEC:Ljava/lang/String;

.field private final AFC_PANEL_CELL_ID:Ljava/lang/String;

.field private final AFC_POC_DATA:Ljava/lang/String;

.field private final AFC_REG_DATA:Ljava/lang/String;

.field private final AFC_RGB_ADDRESS:I

.field private final AFC_RGB_MAX_NUMBER:I

.field private final AFC_RGB_NUMBER:I

.field private final AFC_STATE:Ljava/lang/String;

.field private final AFC_STATE_0:I

.field private final AFC_STATE_1:I

.field private final AFC_STATE_2:I

.field private final AFC_STATE_3:I

.field private final AFC_STATE_END:I

.field private final AFC_TABLE_SIZE:I

.field private final AFC_TEST_BLOCK:Ljava/lang/String;

.field private final AFC_TIME_DATA:Ljava/lang/String;

.field private final AFC_TYPE_AFC:I

.field private final AFC_TYPE_AFC_V1:I

.field private final AFC_TYPE_AFPC:I

.field private final AFC_TYPE_AFPC_V2:I

.field private final AFC_TYPE_MAFPC:I

.field private final AFC_TYPE_MAFPC_V2:I

.field private final AFC_TYPE_MAFPC_V3:I

.field private final AFC_XRGB_BASE_POINT:I

.field private final AFC_XRGB_MAX_INDEX:I

.field private final AFC_XRGB_MAX_VALUE:I

.field private final AFC_XRGB_TABLE_SIZE:I

.field private final AFC_XY_COPR_ROI_SIZE:I

.field private final AFPC_PERIOD_COUNT:I

.field private final AFPC_V2_PERIOD_COUNT:I

.field private final APPLY_AVG_LUM:D

.field private final APPLY_AVG_LUM_V2:D

.field private final APPLY_AVG_LUM_V3:D

.field private final APPLY_BDI:D

.field private final AUTHORITY_URI:Landroid/net/Uri;

.field private AfcStateCondition:Z

.field private AfcThreadCondition:Z

.field private AfpcPeriodCount:I

.field private AfpcPeriodMax:I

.field private final BEYOND_POC_COMMAND:Ljava/lang/String;

.field private final BLF_COPR_ROI_BLUE_COPR:I

.field private final BLF_STATE_0:I

.field private final BLF_STATE_1:I

.field private final BLF_STATE_2:I

.field private final BLF_STATE_3:I

.field private final BLF_STATE_NUMBER:I

.field private final BRIGHTNESS_MAX_NUMBER:I

.field private final BRIGHTNESS_MAX_VALUE:I

.field private final DEBUG:Z

.field private final DEV_POC:Ljava/lang/String;

.field private final EFF_NBDI_MAX_NUM:I

.field private final EFF_NBDI_V3_MAX_NUM:I

.field private final MAX_APPLY_COUNT:I

.field private final MAX_BURN_IN_APPLY:I

.field private final MCA_ORG_VEC:Ljava/lang/String;

.field private final MCA_REWRITED:Ljava/lang/String;

.field private final MILLIS_AFC_PERIOD:J

.field private final MILLIS_AFPC_PERIOD:J

.field private final MILLIS_AFPC_V2_PERIOD:J

.field private final MILLIS_BLF_CHANGE_STEP:J

.field private final MILLIS_BLF_RESET:J

.field private final MODEL_BEYOND0:I

.field private final MODEL_BEYOND1:I

.field private final MODEL_BEYOND2:I

.field private final MODEL_BEYONDX:I

.field private final MODEL_C1:I

.field private final MODEL_C2:I

.field private final MODEL_DAVINC1:I

.field private final MODEL_DAVINC2:I

.field private final MODEL_TOP:I

.field private final MODEL_X1:I

.field private final MODEL_Y2:I

.field private final MODEL_Z3:I

.field private final MSG_BLF_ANIMATE:I

.field private final MSG_BLF_CHNAGE:I

.field private final MSG_RESET_BLF:I

.field private final POC_ERASE_COMMAND:Ljava/lang/String;

.field private final POLICY_ITEM_URI:Landroid/net/Uri;

.field private final POLICY_LIST_URI:Landroid/net/Uri;

.field private final RECOVERY_POC:Ljava/lang/String;

.field private final SUPPORT_ONTIME_SUPPORT:Z

.field private final SYSFS_AFC_FILE_PATH:Ljava/lang/String;

.field private final SYSFS_BRIGHTNESS_FILE_PATH:Ljava/lang/String;

.field private final SYSFS_COPR_FILE_PATH:Ljava/lang/String;

.field private final SYSFS_PANEL_CELL_ID:Ljava/lang/String;

.field private final SYSFS_PANEL_POC:Ljava/lang/String;

.field private final SYSFS_SENSOR_COPR_FILE_PATH:Ljava/lang/String;

.field private effNbdiTh:[F

.field private effNbdiTh_V3:[F

.field private interpolationCoprRoi:[I

.field private interpolationCoprRoiDouble:[D

.field private interpolationCount:I

.field private interpolationLuminance:I

.field private interpolationLuminanceDouble:D

.field private isLDU:Z

.field private isRDU:Z

.field private isRunningCameraApp:Z

.field private mAFPCVersion1:Z

.field private mAfcLoggingDataValid:Z

.field private mAfcState:I

.field private mAfcStateOn:Z

.field private mAfcTable:[[[I

.field private mAfcThread:Ljava/lang/Thread;

.field private mAfcType:I

.field private mAfpcHeight:I

.field private mAfpcJndRef:[F

.field private mAfpcJndRefV2:[F

.field private mAfpcModelNumber:I

.field private mAfpcSize:I

.field private mAfpcWidth:I

.field private mApplyCount:I

.field private mApplyScaleEffect:I

.field private mApplyValue:F

.field private mAvgLum:D

.field private mBrightnessBorderValue:[I

.field private final mContext:Landroid/content/Context;

.field private mCoprRoi:[I

.field private mCoprRoiTable:[[I

.field private mCurrentBrightnessValue:F

.field private mEffAvgLum:D

.field private mEffMaxBDI:D

.field private mEffNBDI:D

.field private mLuminance:I

.field private mMaxBDI:D

.field private mMcaRewrited:Z

.field private mNBDI:D

.field private mPocInitVector:Z

.field private mPolicyVersion:I

.field private mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private mSyncLock:Ljava/lang/Object;

.field private mThreadAFPC:Z

.field private mThreadAPC:Z

.field private mThreadSleepTime:J

.field private mWindowManager:Landroid/view/WindowManager;

.field private mXrgbTable:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 157
    const-string v0, "BURN_IN_INIT_POC_VECTOR"

    const-string v1, "BURN_IN_POC_APPLY_COUNT"

    const-string v2, "BURN_IN_JND"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFPC_KEYS:[Ljava/lang/String;

    .line 158
    const-string v1, "ApplyCount"

    const-string v2, "JND"

    const-string v3, "AvgLum"

    const-string v4, "MaxBDI"

    const-string v5, "NBDI"

    const-string v6, "EffAvgLum"

    const-string v7, "EffMaxBDI"

    const-string v8, "EffNBDI"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPC_KEYS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 35
    .param p1, "context"    # Landroid/content/Context;

    .line 318
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    .line 75
    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_AFC:I

    .line 76
    const/4 v2, 0x1

    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_AFC_V1:I

    .line 77
    const/4 v3, 0x2

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_AFPC:I

    .line 78
    const/4 v4, 0x3

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_MAFPC:I

    .line 79
    const/4 v5, 0x4

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_AFPC_V2:I

    .line 80
    const/4 v6, 0x5

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_MAFPC_V2:I

    .line 81
    const/4 v6, 0x6

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_MAFPC_V3:I

    .line 83
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_RESET_BLF:I

    .line 84
    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_BLF_ANIMATE:I

    .line 85
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_BLF_CHNAGE:I

    .line 87
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BLF_STATE_0:I

    .line 88
    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BLF_STATE_1:I

    .line 89
    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BLF_STATE_2:I

    .line 90
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BLF_STATE_3:I

    .line 92
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BLF_STATE_NUMBER:I

    .line 94
    const v6, 0x2e694

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_BEYOND0:I

    .line 95
    const v6, 0x2e695

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_BEYOND1:I

    .line 96
    const v6, 0x2e696

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_BEYOND2:I

    .line 97
    const v6, 0x2e697

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_BEYONDX:I

    .line 98
    const v6, 0x2e6f9

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_DAVINC1:I

    .line 99
    const v7, 0x2e6fa

    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_DAVINC2:I

    .line 100
    const v8, 0x30da5

    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_X1:I

    .line 101
    const v8, 0x30da6

    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_Y2:I

    .line 102
    const v8, 0x30da7

    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_Z3:I

    .line 103
    const v8, 0x30e09

    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_C1:I

    .line 104
    const v8, 0x30e0a

    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_C2:I

    .line 105
    const v8, 0x30e0b

    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_TOP:I

    .line 107
    const v8, 0x186a0

    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MAX_BURN_IN_APPLY:I

    .line 109
    const-wide/16 v8, 0x2710

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MILLIS_AFC_PERIOD:J

    .line 110
    const-wide/32 v10, 0xea60

    iput-wide v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MILLIS_AFPC_PERIOD:J

    .line 111
    const-wide/16 v10, 0x7530

    iput-wide v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MILLIS_AFPC_V2_PERIOD:J

    .line 112
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MILLIS_BLF_RESET:J

    .line 113
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MILLIS_BLF_CHANGE_STEP:J

    .line 115
    const/16 v10, 0xa

    iput v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MAX_APPLY_COUNT:I

    .line 116
    const-wide v10, 0x4072c00000000000L    # 300.0

    iput-wide v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->APPLY_BDI:D

    .line 117
    const-wide/high16 v10, 0x4054000000000000L    # 80.0

    iput-wide v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->APPLY_AVG_LUM:D

    .line 118
    const-wide v10, 0x4052c00000000000L    # 75.0

    iput-wide v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->APPLY_AVG_LUM_V2:D

    .line 119
    const-wide v10, 0x4051800000000000L    # 70.0

    iput-wide v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->APPLY_AVG_LUM_V3:D

    .line 121
    const-string v10, "/sys/class/lcd/panel/copr_roi"

    iput-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_COPR_FILE_PATH:Ljava/lang/String;

    .line 122
    const-string v11, "/sys/class/sensors/light_sensor/copr_roix"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_SENSOR_COPR_FILE_PATH:Ljava/lang/String;

    .line 123
    const-string v11, "/sys/class/lcd/panel/brt_avg"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_BRIGHTNESS_FILE_PATH:Ljava/lang/String;

    .line 124
    const-string v11, "/sys/class/mdnie/mdnie/afc"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_AFC_FILE_PATH:Ljava/lang/String;

    .line 125
    const-string v12, "/sys/class/lcd/panel/cell_id"

    iput-object v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_PANEL_CELL_ID:Ljava/lang/String;

    .line 126
    const-string v12, "/sys/class/lcd/panel/poc"

    iput-object v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_PANEL_POC:Ljava/lang/String;

    .line 127
    const-string v13, "/efs/afc"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DIRECTORY:Ljava/lang/String;

    .line 128
    const-string v13, "/efs/afc/cell_id"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_PANEL_CELL_ID:Ljava/lang/String;

    .line 129
    const-string v13, "/efs/afc/logging_data"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_LOGGING_DATA:Ljava/lang/String;

    .line 130
    const-string v13, "/efs/afc/afc_data"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_REG_DATA:Ljava/lang/String;

    .line 131
    const-string v13, "/efs/afc/display_on_time"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DISPLAY_ON_TIME:Ljava/lang/String;

    .line 132
    const-string v13, "/efs/afc/org.vec"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_ORIGINAL_VEC:Ljava/lang/String;

    .line 133
    const-string v13, "/efs/afc/time_data"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TIME_DATA:Ljava/lang/String;

    .line 134
    const-string v13, "/efs/afc/poc_data"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_POC_DATA:Ljava/lang/String;

    .line 135
    const-string v13, "/efs/afc/apply_count"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_APPLY_COUNT:Ljava/lang/String;

    .line 136
    const-string v13, "/efs/afc/apply_ldu"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_APPLY_LDU:Ljava/lang/String;

    .line 137
    const-string v13, "/efs/afc/diff_data"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DIFF_DATA:Ljava/lang/String;

    .line 138
    const-string v13, "/efs/afc/afc_state"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE:Ljava/lang/String;

    .line 139
    const-string v13, "/efs/afc/mdnie_block"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_MDNIE_BLOCK:Ljava/lang/String;

    .line 140
    const-string v13, "/efs/afc/test_block"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TEST_BLOCK:Ljava/lang/String;

    .line 141
    const-string v13, "/efs/afc/rewrited"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MCA_REWRITED:Ljava/lang/String;

    .line 142
    const-string v14, "/efs/afc/original.vec"

    iput-object v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MCA_ORG_VEC:Ljava/lang/String;

    .line 143
    const-string v14, "/dev/poc"

    iput-object v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEV_POC:Ljava/lang/String;

    .line 144
    const-string v15, "/cache/recovery/poc.vec"

    iput-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->RECOVERY_POC:Ljava/lang/String;

    .line 145
    const-string v7, "7 0 551186"

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BEYOND_POC_COMMAND:Ljava/lang/String;

    .line 146
    const-string v7, "7 0 "

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->POC_ERASE_COMMAND:Ljava/lang/String;

    .line 148
    const-string v6, "0"

    iput-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DEFAULT_VALUE:Ljava/lang/String;

    .line 149
    const-string v6, "1 255 255 255 255 255 255 255 255 255 255 255 255"

    iput-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_INIT_VALUE:Ljava/lang/String;

    .line 160
    const/16 v6, 0xf

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_LOGGING_DATA_SIZE:I

    .line 162
    const v6, 0x10c8e0

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_MAX_COUNT:I

    .line 164
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_RGB_NUMBER:I

    .line 166
    const/16 v6, 0xb

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BRIGHTNESS_MAX_NUMBER:I

    .line 167
    const/16 v8, 0xc

    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_MAX_NUMBER:I

    .line 169
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BLF_COPR_ROI_BLUE_COPR:I

    .line 171
    const/16 v9, 0x5a0

    iput v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFPC_PERIOD_COUNT:I

    .line 172
    const/16 v9, 0xb40

    iput v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFPC_V2_PERIOD_COUNT:I

    .line 174
    const/16 v9, 0x10

    iput v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_XY_NUMBER:I

    .line 176
    const/16 v8, 0x100

    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_MAX_VALUE:I

    .line 177
    const/16 v5, 0x101

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_MAX_INDEX:I

    .line 179
    const/16 v5, 0xff

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_MAX_VALUE:I

    .line 180
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_MAX_INDEX:I

    .line 182
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_LUX_MAX_NUMBER:I

    .line 183
    const/16 v5, 0x168

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_RGB_MAX_NUMBER:I

    .line 185
    const/16 v5, 0x78

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_RGB_ADDRESS:I

    .line 187
    const/16 v5, 0x88

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_BASE_POINT:I

    .line 189
    iput v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XY_COPR_ROI_SIZE:I

    .line 190
    const/16 v5, 0x303

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_TABLE_SIZE:I

    .line 191
    const/16 v5, 0x300

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_TABLE_SIZE:I

    .line 192
    const/16 v5, 0x3de0

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TABLE_SIZE:I

    .line 194
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_0:I

    .line 195
    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_1:I

    .line 196
    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_2:I

    .line 197
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_3:I

    .line 198
    const/4 v5, 0x4

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_END:I

    .line 200
    const/16 v5, 0x14

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->EFF_NBDI_MAX_NUM:I

    .line 201
    const/16 v5, 0x1e

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->EFF_NBDI_V3_MAX_NUM:I

    .line 203
    const/16 v5, 0x5dc

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BRIGHTNESS_MAX_VALUE:I

    .line 211
    const-string v5, "content://com.samsung.android.sm.policy"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AUTHORITY_URI:Landroid/net/Uri;

    .line 214
    const-string v8, "policy_list"

    invoke-static {v5, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->POLICY_LIST_URI:Landroid/net/Uri;

    .line 217
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v8, "policy_item"

    invoke-static {v5, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v8, "AFPC"

    invoke-static {v5, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->POLICY_ITEM_URI:Landroid/net/Uri;

    .line 219
    nop

    .line 220
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ONTIME_POC_COMPENSATION"

    invoke-virtual {v5, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SUPPORT_ONTIME_SUPPORT:Z

    .line 222
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 223
    iput-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

    .line 225
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    .line 227
    new-array v8, v6, [I

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    .line 229
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    .line 230
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 231
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    .line 232
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    .line 234
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z

    .line 235
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    .line 236
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPCVersion1:Z

    .line 237
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z

    .line 239
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isLDU:Z

    .line 240
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRDU:Z

    .line 241
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    .line 243
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mPocInitVector:Z

    .line 244
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 245
    const/4 v8, 0x0

    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 246
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCurrentBrightnessValue:F

    .line 248
    const/16 v8, 0xc

    new-array v4, v8, [I

    iput-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    .line 249
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    .line 251
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    .line 253
    move-object v4, v7

    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    .line 255
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    .line 257
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    .line 258
    const/16 v6, 0xc

    new-array v7, v6, [I

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    .line 259
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    .line 261
    new-array v6, v6, [D

    iput-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D

    .line 262
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    .line 264
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 265
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcModelNumber:I

    .line 266
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    .line 267
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcHeight:I

    .line 268
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcWidth:I

    .line 270
    const/16 v8, 0xb4

    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    .line 276
    new-array v8, v3, [F

    fill-array-data v8, :array_722

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRef:[F

    .line 277
    const/4 v8, 0x5

    new-array v8, v8, [F

    fill-array-data v8, :array_72a

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    .line 278
    const/16 v8, 0x14

    new-array v8, v8, [F

    fill-array-data v8, :array_738

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh:[F

    .line 281
    const/16 v8, 0x1e

    new-array v8, v8, [F

    fill-array-data v8, :array_764

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V3:[F

    .line 285
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSyncLock:Ljava/lang/Object;

    .line 286
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mPolicyVersion:I

    .line 289
    iput-wide v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    .line 290
    iput-wide v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    .line 291
    iput-wide v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    .line 292
    iput-wide v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    .line 293
    iput-wide v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    .line 294
    iput-wide v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    .line 296
    iput-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 297
    iput-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;

    .line 319
    const/4 v6, 0x1

    .line 320
    .local v6, "mAfcSupport":Z
    move-object/from16 v7, p1

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    .line 322
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 323
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v0, "com.sec.android.app.server.power.DISPLAY_ON_TIME"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v0, "sec.app.policy.UPDATE.AFPC"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

    invoke-direct {v9, v1, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$1;)V

    invoke-virtual {v0, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    new-instance v0, Ljava/io/File;

    const-string v5, "/efs/afc"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 333
    .local v5, "afcDirectory":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27f

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 334
    :cond_27f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_28c

    and-int/lit8 v6, v6, 0x1

    .line 335
    :cond_28c
    new-instance v0, Ljava/io/File;

    const-string v9, "/sys/class/lcd/panel/brt_avg"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_29b

    and-int/lit8 v6, v6, 0x1

    .line 336
    :cond_29b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a8

    and-int/lit8 v6, v6, 0x1

    .line 338
    :cond_2a8
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x10e0007

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 339
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x10e0009

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcModelNumber:I

    .line 340
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x10e000a

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    .line 341
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x10e0008

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcHeight:I

    .line 342
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x10e000b

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcWidth:I

    .line 343
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x1070041

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 344
    .local v9, "mXY":[I
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070039

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    .line 345
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 346
    .local v2, "coprRoiTableArray":[I
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1070065

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 347
    .local v3, "xrgbTableArray":[I
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object/from16 v23, v5

    .end local v5    # "afcDirectory":Ljava/io/File;
    .local v23, "afcDirectory":Ljava/io/File;
    const v5, 0x107003a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 349
    .local v5, "afcTableArray":[I
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v7, 0x2

    if-lt v0, v7, :cond_35a

    .line 350
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    .line 351
    const/4 v7, 0x4

    if-lt v0, v7, :cond_34e

    .line 352
    move-object/from16 v24, v8

    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    .local v24, "intentFilter":Landroid/content/IntentFilter;
    const-wide/16 v7, 0x7530

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    .line 353
    const/16 v0, 0xb40

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    goto :goto_365

    .line 356
    .end local v24    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v8    # "intentFilter":Landroid/content/IntentFilter;
    :cond_34e
    move-object/from16 v24, v8

    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v24    # "intentFilter":Landroid/content/IntentFilter;
    const-wide/32 v7, 0xea60

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    .line 357
    const/16 v0, 0x5a0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    goto :goto_365

    .line 360
    .end local v24    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v8    # "intentFilter":Landroid/content/IntentFilter;
    :cond_35a
    move-object/from16 v24, v8

    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v24    # "intentFilter":Landroid/content/IntentFilter;
    const/4 v7, 0x1

    if-ne v0, v7, :cond_365

    .line 361
    iput-boolean v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z

    .line 362
    const-wide/16 v7, 0x2710

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    .line 365
    :cond_365
    :goto_365
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_36c

    iput-boolean v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPCVersion1:Z

    .line 366
    :cond_36c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAfcType : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mThreadAFPC : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mThreadSleepTime : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", mAFPCVersion1 : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPCVersion1:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "AfterimageCompensationService"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAfpcModelNumber : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcModelNumber:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mAfpcSize : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mAfpcHeight : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcHeight:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mAfpcWidth : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcWidth:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    if-eqz v6, :cond_51c

    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z

    if-eqz v0, :cond_51c

    array-length v0, v9

    const/16 v8, 0x10

    if-ne v0, v8, :cond_51c

    array-length v0, v2

    const/16 v8, 0x303

    if-ne v0, v8, :cond_51c

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    array-length v0, v0

    const/16 v8, 0xb

    if-ne v0, v8, :cond_51c

    move-object/from16 v16, v24

    .end local v24    # "intentFilter":Landroid/content/IntentFilter;
    .local v16, "intentFilter":Landroid/content/IntentFilter;
    array-length v0, v3

    const/16 v8, 0x300

    if-ne v0, v8, :cond_515

    array-length v0, v5

    const/16 v8, 0x3de0

    if-ne v0, v8, :cond_515

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "i":I
    const/4 v8, 0x0

    .line 372
    .local v8, "x":I
    const/16 v17, 0x0

    .line 373
    .local v17, "y":I
    const/16 v22, 0x0

    .line 375
    .local v22, "z":I
    move/from16 v25, v0

    move/from16 v24, v6

    const/4 v6, 0x2

    .end local v0    # "i":I
    .end local v6    # "mAfcSupport":Z
    .local v24, "mAfcSupport":Z
    .local v25, "i":I
    new-array v0, v6, [I

    fill-array-data v0, :array_7a4

    const-class v6, I

    invoke-static {v6, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I

    .line 376
    const/4 v0, 0x0

    .end local v8    # "x":I
    .local v0, "x":I
    :goto_414
    const/4 v6, 0x3

    if-ge v0, v6, :cond_430

    .line 377
    const/4 v6, 0x0

    .end local v17    # "y":I
    .local v6, "y":I
    :goto_418
    const/16 v8, 0x101

    if-ge v6, v8, :cond_42b

    .line 378
    iget-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I

    aget-object v8, v8, v0

    add-int/lit8 v17, v25, 0x1

    .end local v25    # "i":I
    .local v17, "i":I
    aget v25, v2, v25

    aput v25, v8, v6

    .line 377
    add-int/lit8 v6, v6, 0x1

    move/from16 v25, v17

    goto :goto_418

    .line 376
    .end local v17    # "i":I
    .restart local v25    # "i":I
    :cond_42b
    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v6

    goto :goto_414

    .line 382
    .end local v6    # "y":I
    .local v17, "y":I
    :cond_430
    const/4 v6, 0x0

    .line 383
    .end local v25    # "i":I
    .local v6, "i":I
    const/4 v0, 0x0

    .line 384
    const/4 v8, 0x0

    .line 385
    .end local v17    # "y":I
    .local v8, "y":I
    move/from16 v25, v0

    move-object/from16 v17, v2

    const/4 v2, 0x2

    .end local v0    # "x":I
    .end local v2    # "coprRoiTableArray":[I
    .local v17, "coprRoiTableArray":[I
    .local v25, "x":I
    new-array v0, v2, [I

    fill-array-data v0, :array_7ac

    const-class v2, I

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mXrgbTable:[[I

    .line 386
    const/4 v0, 0x0

    .end local v25    # "x":I
    .restart local v0    # "x":I
    :goto_448
    const/4 v2, 0x3

    if-ge v0, v2, :cond_463

    .line 387
    const/4 v2, 0x0

    move v8, v2

    :goto_44d
    const/16 v2, 0x100

    if-ge v8, v2, :cond_460

    .line 388
    iget-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mXrgbTable:[[I

    aget-object v2, v2, v0

    add-int/lit8 v25, v6, 0x1

    .end local v6    # "i":I
    .local v25, "i":I
    aget v6, v3, v6

    aput v6, v2, v8

    .line 387
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v25

    goto :goto_44d

    .line 386
    .end local v25    # "i":I
    .restart local v6    # "i":I
    :cond_460
    add-int/lit8 v0, v0, 0x1

    goto :goto_448

    .line 392
    :cond_463
    const/4 v2, 0x0

    .line 393
    .end local v6    # "i":I
    .local v2, "i":I
    const/4 v0, 0x0

    .line 394
    const/4 v6, 0x0

    .line 395
    .end local v8    # "y":I
    .local v6, "y":I
    const/4 v8, 0x0

    .line 396
    .end local v22    # "z":I
    .local v8, "z":I
    move/from16 v20, v0

    move/from16 v22, v2

    const/4 v0, 0x3

    .end local v0    # "x":I
    .end local v2    # "i":I
    .local v20, "x":I
    .local v22, "i":I
    new-array v2, v0, [I

    fill-array-data v2, :array_7b4

    const-class v0, I

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcTable:[[[I

    .line 397
    const/4 v0, 0x0

    move/from16 v2, v22

    .end local v20    # "x":I
    .end local v22    # "i":I
    .restart local v0    # "x":I
    .restart local v2    # "i":I
    :goto_47e
    move/from16 v20, v2

    const/4 v2, 0x4

    .end local v2    # "i":I
    .local v20, "i":I
    if-ge v0, v2, :cond_4af

    .line 398
    const/4 v2, 0x0

    move v6, v2

    move/from16 v2, v20

    .end local v20    # "i":I
    .restart local v2    # "i":I
    :goto_487
    move/from16 v20, v2

    const/16 v2, 0xb

    .end local v2    # "i":I
    .restart local v20    # "i":I
    if-ge v6, v2, :cond_4aa

    .line 399
    const/4 v8, 0x0

    :goto_48e
    const/16 v2, 0x168

    if-ge v8, v2, :cond_4a5

    .line 400
    iget-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcTable:[[[I

    aget-object v2, v2, v0

    aget-object v2, v2, v6

    add-int/lit8 v22, v20, 0x1

    .end local v20    # "i":I
    .restart local v22    # "i":I
    aget v20, v5, v20

    aput v20, v2, v8

    .line 399
    add-int/lit8 v8, v8, 0x1

    move/from16 v20, v22

    const/16 v2, 0xb

    goto :goto_48e

    .line 398
    .end local v22    # "i":I
    .restart local v20    # "i":I
    :cond_4a5
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v20

    goto :goto_487

    .line 397
    :cond_4aa
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v20

    goto :goto_47e

    .line 406
    :cond_4af
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v2, "xy_copr_roi":Ljava/lang/StringBuilder;
    move/from16 v22, v0

    const/16 v18, 0x0

    .end local v0    # "x":I
    .local v22, "x":I
    aget v0, v9, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    const/4 v0, 0x1

    .end local v20    # "i":I
    .local v0, "i":I
    :goto_4be
    move-object/from16 v18, v3

    .end local v3    # "xrgbTableArray":[I
    .local v18, "xrgbTableArray":[I
    array-length v3, v9

    if-ge v0, v3, :cond_4d2

    .line 409
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    aget v3, v9, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v18

    goto :goto_4be

    .line 412
    :cond_4d2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v0

    .end local v0    # "i":I
    .restart local v20    # "i":I
    const-string v0, "COPR ROI XY - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->update_check_panel_id()V

    .line 418
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_500

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z

    .line 420
    :cond_500
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->makeInitEfsFile()V

    .line 422
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z

    if-nez v0, :cond_524

    .line 423
    const-string v0, "1 255 255 255 255 255 255 255 255 255 255 255 255"

    invoke-direct {v1, v11, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 424
    const-string v0, "AFC Data Write 1 255 255 255 255 255 255 255 255 255 255 255 255"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->initLoggingData()V

    goto :goto_524

    .line 369
    .end local v8    # "z":I
    .end local v17    # "coprRoiTableArray":[I
    .end local v18    # "xrgbTableArray":[I
    .end local v20    # "i":I
    .end local v22    # "x":I
    .end local v24    # "mAfcSupport":Z
    .local v2, "coprRoiTableArray":[I
    .restart local v3    # "xrgbTableArray":[I
    .local v6, "mAfcSupport":Z
    :cond_515
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v24, v6

    .end local v2    # "coprRoiTableArray":[I
    .end local v3    # "xrgbTableArray":[I
    .end local v6    # "mAfcSupport":Z
    .restart local v17    # "coprRoiTableArray":[I
    .restart local v18    # "xrgbTableArray":[I
    .restart local v24    # "mAfcSupport":Z
    goto :goto_524

    .end local v16    # "intentFilter":Landroid/content/IntentFilter;
    .end local v17    # "coprRoiTableArray":[I
    .end local v18    # "xrgbTableArray":[I
    .restart local v2    # "coprRoiTableArray":[I
    .restart local v3    # "xrgbTableArray":[I
    .restart local v6    # "mAfcSupport":Z
    .local v24, "intentFilter":Landroid/content/IntentFilter;
    :cond_51c
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v16, v24

    move/from16 v24, v6

    .line 430
    .end local v2    # "coprRoiTableArray":[I
    .end local v3    # "xrgbTableArray":[I
    .end local v6    # "mAfcSupport":Z
    .restart local v16    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v17    # "coprRoiTableArray":[I
    .restart local v18    # "xrgbTableArray":[I
    .local v24, "mAfcSupport":Z
    :cond_524
    :goto_524
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    if-eqz v0, :cond_71f

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "mPocData":I
    const/4 v2, 0x0

    .line 433
    .local v2, "mTimeData":I
    const/4 v3, 0x0

    .line 435
    .local v3, "mDiffData":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->update_check_panel_id()V

    .line 437
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_53c

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z

    .line 438
    :cond_53c
    new-instance v6, Ljava/io/File;

    const-string v8, "/efs/afc/poc_data"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_54a

    const/4 v0, 0x1

    :cond_54a
    move v6, v0

    .line 439
    .end local v0    # "mPocData":I
    .local v6, "mPocData":I
    new-instance v0, Ljava/io/File;

    const-string v8, "/efs/afc/time_data"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_559

    const/4 v2, 0x1

    .line 440
    :cond_559
    new-instance v0, Ljava/io/File;

    const-string v8, "/efs/afc/diff_data"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_567

    const/4 v3, 0x1

    .line 442
    :cond_567
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    iget v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcModelNumber:I

    iget v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    iget v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcHeight:I

    move-object/from16 v20, v5

    .end local v5    # "afcTableArray":[I
    .local v20, "afcTableArray":[I
    iget v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcWidth:I

    move/from16 v25, v0

    move/from16 v26, v8

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v2

    move/from16 v32, v3

    invoke-static/range {v25 .. v32}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataInit(IIIIIIII)I

    move-result v0

    if-nez v0, :cond_717

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->processApplyData()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->processStateData()V

    .line 446
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_5bb

    .line 447
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcModelNumber:I

    const v5, 0x30da5

    if-lt v0, v5, :cond_5bb

    const v5, 0x30da7

    if-gt v0, v5, :cond_5bb

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "mExistMdnieBlock":I
    new-instance v5, Ljava/io/File;

    const-string v8, "/efs/afc/mdnie_block"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5af

    const/4 v0, 0x1

    .line 450
    :cond_5af
    iget-boolean v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    if-eqz v5, :cond_5bb

    .line 451
    const/4 v5, 0x1

    if-ne v0, v5, :cond_5bb

    .line 452
    iget v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataApply(I)I

    .line 458
    .end local v0    # "mExistMdnieBlock":I
    :cond_5bb
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcModelNumber:I

    const v5, 0x2e6f9

    if-eq v0, v5, :cond_5c7

    const v5, 0x2e6fa

    if-ne v0, v5, :cond_5cb

    :cond_5c7
    const/16 v0, 0x64

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    .line 460
    :cond_5cb
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_68b

    .line 461
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_688

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_688

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_688

    .line 462
    const-string v0, "AFPC_V2 Update"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, "cmd":Ljava/lang/String;
    invoke-direct {v1, v12, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 465
    invoke-static {v15, v14}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_61d

    .line 467
    const-string v0, "AFPC_V2 Update RECOVERY_POC  delete"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_61d
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    const/4 v8, 0x1

    add-int/2addr v0, v8

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 471
    :try_start_623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.2f"
    :try_end_636
    .catch Ljava/lang/NumberFormatException; {:try_start_623 .. :try_end_636} :catch_66d

    move/from16 v19, v2

    const/4 v11, 0x1

    .end local v2    # "mTimeData":I
    .local v19, "mTimeData":I
    :try_start_639
    new-array v2, v11, [Ljava/lang/Object;

    iget v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/16 v21, 0x0

    aput-object v11, v2, v21

    invoke-static {v8, v10, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "str":Ljava/lang/String;
    const-string v2, "/efs/afc/apply_count"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "afpcDataWrite - str : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_669
    .catch Ljava/lang/NumberFormatException; {:try_start_639 .. :try_end_669} :catch_66b

    .line 477
    nop

    .end local v0    # "str":Ljava/lang/String;
    goto :goto_68d

    .line 474
    :catch_66b
    move-exception v0

    goto :goto_670

    .end local v19    # "mTimeData":I
    .restart local v2    # "mTimeData":I
    :catch_66d
    move-exception v0

    move/from16 v19, v2

    .line 475
    .end local v2    # "mTimeData":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v19    # "mTimeData":I
    :goto_670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    goto :goto_68d

    .line 461
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v19    # "mTimeData":I
    .restart local v2    # "mTimeData":I
    :cond_688
    move/from16 v19, v2

    .end local v2    # "mTimeData":I
    .restart local v19    # "mTimeData":I
    goto :goto_68d

    .line 460
    .end local v19    # "mTimeData":I
    .restart local v2    # "mTimeData":I
    :cond_68b
    move/from16 v19, v2

    .line 481
    .end local v2    # "mTimeData":I
    .restart local v19    # "mTimeData":I
    :goto_68d
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6f7

    .line 482
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcModelNumber:I

    const v2, 0x2e695

    if-lt v0, v2, :cond_69e

    const v2, 0x2e697

    if-le v0, v2, :cond_6aa

    :cond_69e
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcModelNumber:I

    const v2, 0x2e6f9

    if-lt v0, v2, :cond_6f7

    const v2, 0x2e6fa

    if-gt v0, v2, :cond_6f7

    .line 484
    :cond_6aa
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6f7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6f7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6f7

    .line 485
    const-string v0, "FOTA AFPC"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "cmd":Ljava/lang/String;
    invoke-direct {v1, v12, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 488
    invoke-static {v15, v14}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_6f7

    .line 490
    const-string v2, "FOTA AFPC RECOVERY_POC  delete"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_6f7
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/afc/org.vec"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_708

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mPocInitVector:Z

    goto :goto_709

    :cond_708
    const/4 v2, 0x1

    .line 497
    :goto_709
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_721

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    goto :goto_721

    .line 500
    .end local v19    # "mTimeData":I
    .restart local v2    # "mTimeData":I
    :cond_717
    move/from16 v19, v2

    .end local v2    # "mTimeData":I
    .restart local v19    # "mTimeData":I
    const-string v0, "mAFPC init Failed"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_721

    .line 430
    .end local v3    # "mDiffData":I
    .end local v6    # "mPocData":I
    .end local v19    # "mTimeData":I
    .end local v20    # "afcTableArray":[I
    .local v5, "afcTableArray":[I
    :cond_71f
    move-object/from16 v20, v5

    .line 504
    .end local v5    # "afcTableArray":[I
    .restart local v20    # "afcTableArray":[I
    :cond_721
    :goto_721
    return-void

    :array_722
    .array-data 4
        0x40e00000    # 7.0f
        0x41300000    # 11.0f
    .end array-data

    :array_72a
    .array-data 4
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40e00000    # 7.0f
        0x41100000    # 9.0f
        0x41300000    # 11.0f
    .end array-data

    :array_738
    .array-data 4
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    :array_764
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    :array_7a4
    .array-data 4
        0x3
        0x101
    .end array-data

    :array_7ac
    .array-data 4
        0x3
        0x100
    .end array-data

    :array_7b4
    .array-data 4
        0x4
        0xb
        0x168
    .end array-data
.end method

.method static synthetic access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    return v0
.end method

.method static synthetic access$1008(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    return v0
.end method

.method static synthetic access$1010(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Landroid/os/SemHqmManager;)Landroid/os/SemHqmManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # Landroid/os/SemHqmManager;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->writeLoggingDataEfs()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # I

    .line 71
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    return p1
.end method

.method static synthetic access$1308(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    return v0
.end method

.method static synthetic access$1400(I)I
    .registers 2
    .param p0, "x0"    # I

    .line 71
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataTerminate(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->updatePolicyScpm()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getBrightness()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    return v0
.end method

.method static synthetic access$2300(III)I
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 71
    invoke-static {p0, p1, p2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataRead(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    return v0
.end method

.method static synthetic access$2500(I)I
    .registers 2
    .param p0, "x0"    # I

    .line 71
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSave(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    return v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # F

    .line 71
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    return p1
.end method

.method static synthetic access$2700()F
    .registers 1

    .line 71
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->updateHWParam()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    return v0
.end method

.method static synthetic access$2908(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # Landroid/view/WindowManager;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    return v0
.end method

.method static synthetic access$3200(I)I
    .registers 2
    .param p0, "x0"    # I

    .line 71
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWriteV2(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # D

    .line 71
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    return-wide p1
.end method

.method static synthetic access$3500()D
    .registers 2

    .line 71
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadAvgLum()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # D

    .line 71
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    return-wide p1
.end method

.method static synthetic access$3700()D
    .registers 2

    .line 71
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadMaxBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    return-wide v0
.end method

.method static synthetic access$3802(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # D

    .line 71
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    return-wide p1
.end method

.method static synthetic access$3900()D
    .registers 2

    .line 71
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadNBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # D

    .line 71
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    return-wide p1
.end method

.method static synthetic access$4100()D
    .registers 2

    .line 71
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffAvgLum()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    return-wide v0
.end method

.method static synthetic access$4202(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # D

    .line 71
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    return-wide p1
.end method

.method static synthetic access$4300()D
    .registers 2

    .line 71
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffMaxBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    return-wide v0
.end method

.method static synthetic access$4402(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # D

    .line 71
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    return-wide p1
.end method

.method static synthetic access$4500()D
    .registers 2

    .line 71
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffNBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4600(I)I
    .registers 2
    .param p0, "x0"    # I

    .line 71
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataUpdate(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh:[F

    return-object v0
.end method

.method static synthetic access$4800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V3:[F

    return-object v0
.end method

.method static synthetic access$4900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getCoprRoiNBrightness()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # Ljava/lang/Thread;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    return-object v0
.end method

.method static synthetic access$5200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[[I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I

    return-object v0
.end method

.method static synthetic access$5300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D

    return-object v0
.end method

.method static synthetic access$5400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;IID)D
    .registers 7
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # D

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getAverage(IID)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    return-wide v0
.end method

.method static synthetic access$5502(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # D

    .line 71
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    return-wide p1
.end method

.method static synthetic access$5600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    return-object v0
.end method

.method static synthetic access$5702(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p1, "x1"    # I

    .line 71
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    return p1
.end method

.method static synthetic access$5800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 71
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    return v0
.end method

.method private display_compensation(I)V
    .registers 22
    .param p1, "display_on_time"    # I

    .line 570
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AfcThread display_compensation - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AfterimageCompensationService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    if-lez v1, :cond_254

    const/4 v2, 0x4

    if-gt v1, v2, :cond_254

    .line 573
    const/4 v4, 0x0

    .line 574
    .local v4, "i":I
    const/16 v5, 0xc

    new-array v6, v5, [I

    .line 575
    .local v6, "mXRGB":[I
    new-array v7, v5, [I

    .line 576
    .local v7, "mAFC":[I
    const/4 v8, 0x0

    .line 577
    .local v8, "mLuminance":I
    const/4 v9, 0x0

    .line 578
    .local v9, "enable":I
    const/4 v10, 0x1

    .line 580
    .local v10, "mDataValid":Z
    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    .line 582
    iget v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v13, 0x0

    aget v14, v12, v13

    const/4 v15, 0x2

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x1

    const/4 v13, 0x6

    if-lt v11, v14, :cond_43

    aget v12, v12, v18

    if-ge v11, v12, :cond_43

    .line 583
    const/4 v8, 0x0

    goto/16 :goto_da

    .line 585
    :cond_43
    iget v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v14, v12, v18

    if-lt v11, v14, :cond_52

    aget v12, v12, v15

    if-ge v11, v12, :cond_52

    .line 586
    const/4 v8, 0x1

    goto/16 :goto_da

    .line 588
    :cond_52
    iget v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v14, v12, v15

    const/16 v18, 0x3

    if-lt v11, v14, :cond_63

    aget v12, v12, v18

    if-ge v11, v12, :cond_63

    .line 589
    const/4 v8, 0x2

    goto/16 :goto_da

    .line 591
    :cond_63
    iget v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v14, v12, v18

    if-lt v11, v14, :cond_72

    aget v12, v12, v2

    if-ge v11, v12, :cond_72

    .line 592
    const/4 v8, 0x3

    goto/16 :goto_da

    .line 594
    :cond_72
    iget v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v14, v12, v2

    const/16 v18, 0x5

    if-lt v11, v14, :cond_82

    aget v12, v12, v18

    if-ge v11, v12, :cond_82

    .line 595
    const/4 v8, 0x4

    goto :goto_da

    .line 597
    :cond_82
    iget v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v14, v12, v18

    if-lt v11, v14, :cond_90

    aget v12, v12, v13

    if-ge v11, v12, :cond_90

    .line 598
    const/4 v8, 0x5

    goto :goto_da

    .line 600
    :cond_90
    iget v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v14, v12, v13

    if-lt v11, v14, :cond_9e

    aget v12, v12, v17

    if-ge v11, v12, :cond_9e

    .line 601
    const/4 v8, 0x6

    goto :goto_da

    .line 603
    :cond_9e
    iget v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v14, v12, v17

    if-lt v11, v14, :cond_ac

    aget v12, v12, v16

    if-ge v11, v12, :cond_ac

    .line 604
    const/4 v8, 0x7

    goto :goto_da

    .line 606
    :cond_ac
    iget v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v14, v12, v16

    const/16 v18, 0x9

    if-lt v11, v14, :cond_bd

    aget v12, v12, v18

    if-ge v11, v12, :cond_bd

    .line 607
    const/16 v8, 0x8

    goto :goto_da

    .line 609
    :cond_bd
    iget v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v14, v12, v18

    const/16 v18, 0xa

    if-lt v11, v14, :cond_ce

    aget v12, v12, v18

    if-ge v11, v12, :cond_ce

    .line 610
    const/16 v8, 0x9

    goto :goto_da

    .line 612
    :cond_ce
    iget v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v12, v12, v18

    if-lt v11, v12, :cond_d9

    .line 613
    const/16 v8, 0xa

    goto :goto_da

    .line 616
    :cond_d9
    const/4 v8, 0x0

    .line 619
    :goto_da
    const-string v11, "/sys/class/mdnie/mdnie/afc"

    if-eqz v10, :cond_242

    .line 620
    const/4 v4, 0x0

    :goto_df
    if-ge v4, v5, :cond_168

    .line 621
    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v14, v12, v4

    const/16 v5, 0xff

    if-ltz v14, :cond_15e

    aget v14, v12, v4

    if-gt v14, v5, :cond_15e

    .line 622
    rem-int/lit8 v14, v4, 0x3

    .line 623
    .local v14, "index":I
    iget-object v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mXrgbTable:[[I

    aget-object v2, v2, v14

    aget v12, v12, v4

    aget v2, v2, v12

    aput v2, v6, v4

    .line 625
    aget v2, v6, v4

    const/16 v12, 0x88

    if-lt v2, v12, :cond_15b

    aget v2, v6, v4

    if-gt v2, v5, :cond_15b

    .line 626
    aget v2, v6, v4

    sub-int/2addr v2, v5

    neg-int v2, v2

    .line 627
    .end local v14    # "index":I
    .local v2, "index":I
    rem-int/lit8 v14, v4, 0x3

    mul-int/lit8 v14, v14, 0x78

    add-int/2addr v2, v14

    .line 628
    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcTable:[[[I

    add-int/lit8 v19, v1, -0x1

    aget-object v14, v14, v19

    aget-object v14, v14, v8

    aget v14, v14, v2

    aput v14, v7, v4

    .line 629
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AFC i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", mLuminance  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", mXRGB -  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v15, v6, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", index  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", mAFC  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    aget v14, v7, v4

    if-lt v14, v12, :cond_158

    aget v12, v7, v4

    if-le v12, v5, :cond_15d

    .line 631
    :cond_158
    aput v5, v7, v4

    goto :goto_15d

    .line 635
    .end local v2    # "index":I
    .restart local v14    # "index":I
    :cond_15b
    aput v5, v7, v4

    .line 637
    .end local v14    # "index":I
    :cond_15d
    :goto_15d
    goto :goto_160

    .line 639
    :cond_15e
    aput v5, v7, v4

    .line 620
    :goto_160
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x4

    const/16 v5, 0xc

    const/4 v15, 0x2

    goto/16 :goto_df

    .line 643
    :cond_168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .local v2, "afc":Ljava/lang/StringBuilder;
    iget-boolean v5, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPCVersion1:Z

    const-string v12, "1 "

    const-string v14, " "

    if-eqz v5, :cond_1e7

    .line 646
    const/4 v5, 0x0

    .line 647
    .local v5, "min":I
    aget v15, v7, v13

    aget v13, v7, v17

    if-lt v15, v13, :cond_17f

    aget v5, v7, v17

    goto :goto_182

    .line 648
    :cond_17f
    const/4 v13, 0x6

    aget v5, v7, v13

    .line 649
    :goto_182
    aget v13, v7, v16

    if-lt v5, v13, :cond_188

    aget v5, v7, v16

    .line 651
    :cond_188
    mul-int/lit16 v13, v5, 0xff

    const/4 v15, 0x6

    aget v18, v7, v15

    const/16 v19, 0x2

    mul-int/lit8 v18, v18, 0x2

    add-int v13, v13, v18

    aget v15, v7, v15

    div-int/2addr v13, v15

    .line 652
    .local v13, "mR":I
    mul-int/lit16 v15, v5, 0xff

    aget v18, v7, v17

    mul-int/lit8 v18, v18, 0x2

    add-int v15, v15, v18

    aget v17, v7, v17

    div-int v15, v15, v17

    .line 653
    .local v15, "mG":I
    mul-int/lit16 v1, v5, 0xff

    aget v17, v7, v16

    mul-int/lit8 v17, v17, 0x2

    add-int v1, v1, v17

    aget v16, v7, v16

    div-int v1, v1, v16

    .line 655
    .local v1, "mB":I
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 667
    const-string v12, " 255 255 255 "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    .end local v1    # "mB":I
    .end local v5    # "min":I
    .end local v13    # "mR":I
    .end local v15    # "mG":I
    goto :goto_21d

    .line 675
    :cond_1e7
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const/4 v1, 0x3

    .end local v4    # "i":I
    .local v1, "i":I
    :goto_1eb
    const/4 v4, 0x6

    if-ge v1, v4, :cond_1f9

    .line 677
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    aget v4, v7, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_1eb

    .line 680
    :cond_1f9
    const/4 v1, 0x3

    :goto_1fa
    const/4 v4, 0x6

    if-ge v1, v4, :cond_208

    .line 681
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    aget v4, v7, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_1fa

    .line 684
    :cond_208
    const-string v4, " 255 255 255"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    const/4 v1, 0x3

    :goto_20e
    const/4 v4, 0x6

    if-ge v1, v4, :cond_21c

    .line 686
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    aget v5, v7, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_20e

    :cond_21c
    move v4, v1

    .line 691
    .end local v1    # "i":I
    .restart local v4    # "i":I
    :goto_21d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AFC - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 693
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/efs/afc/afc_data"

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 694
    .end local v2    # "afc":Ljava/lang/StringBuilder;
    goto :goto_24c

    .line 696
    :cond_242
    const-string v1, "0"

    invoke-direct {v0, v11, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 697
    const-string v1, "AFC Data - 0"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :goto_24c
    iget v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_254

    .line 702
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 705
    .end local v4    # "i":I
    .end local v6    # "mXRGB":[I
    .end local v7    # "mAFC":[I
    .end local v8    # "mLuminance":I
    .end local v9    # "enable":I
    .end local v10    # "mDataValid":Z
    :cond_254
    return-void
.end method

.method private static fileCopy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .line 1501
    const/4 v0, 0x0

    .line 1502
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 1503
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 1504
    .local v2, "in":Ljava/nio/channels/FileChannel;
    const/4 v3, 0x0

    .line 1506
    .local v3, "out":Ljava/nio/channels/FileChannel;
    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 1507
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 1508
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object v2, v4

    .line 1509
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object v3, v4

    .line 1510
    const-wide/16 v6, 0x0

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    move-object v5, v2

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_25} :catch_41
    .catchall {:try_start_4 .. :try_end_25} :catchall_3f

    .line 1515
    if-eqz v3, :cond_2d

    .line 1516
    :try_start_27
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_2d

    .line 1523
    :catch_2b
    move-exception v4

    goto :goto_3b

    .line 1517
    :cond_2d
    :goto_2d
    if-eqz v2, :cond_32

    .line 1518
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1519
    :cond_32
    nop

    .line 1520
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1521
    nop

    .line 1522
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3a} :catch_2b

    .line 1525
    :cond_3a
    :goto_3a
    goto :goto_5a

    .line 1524
    .local v4, "e":Ljava/io/IOException;
    :goto_3b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1526
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5a

    .line 1514
    :catchall_3f
    move-exception v4

    goto :goto_5b

    .line 1511
    :catch_41
    move-exception v4

    .line 1512
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_42
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    .line 1515
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_4a

    .line 1516
    :try_start_47
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 1517
    :cond_4a
    if-eqz v2, :cond_4f

    .line 1518
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1519
    :cond_4f
    if-eqz v0, :cond_54

    .line 1520
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1521
    :cond_54
    if-eqz v1, :cond_3a

    .line 1522
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_59} :catch_2b

    goto :goto_3a

    .line 1527
    :goto_5a
    return-void

    .line 1515
    :goto_5b
    if-eqz v3, :cond_63

    .line 1516
    :try_start_5d
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_63

    .line 1523
    :catch_61
    move-exception v5

    goto :goto_73

    .line 1517
    :cond_63
    :goto_63
    if-eqz v2, :cond_68

    .line 1518
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1519
    :cond_68
    if-eqz v0, :cond_6d

    .line 1520
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1521
    :cond_6d
    if-eqz v1, :cond_77

    .line 1522
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_72} :catch_61

    goto :goto_77

    .line 1524
    .local v5, "e":Ljava/io/IOException;
    :goto_73
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_78

    .line 1525
    .end local v5    # "e":Ljava/io/IOException;
    :cond_77
    :goto_77
    nop

    .line 1526
    :goto_78
    throw v4
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 1593
    const/4 v0, 0x0

    .line 1594
    .local v0, "out":Ljava/io/FileOutputStream;
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    const-string v2, "AfterimageCompensationService"

    if-eqz v1, :cond_23

    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileWriteString : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  value : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_23
    const/4 v1, 0x0

    :try_start_24
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_3d

    move-object v0, v3

    .line 1603
    nop

    .line 1605
    :try_start_30
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1606
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1615
    nop

    .line 1616
    const/4 v1, 0x1

    return v1

    .line 1607
    :catch_3d
    move-exception v2

    goto :goto_55

    .line 1600
    :catch_3f
    move-exception v3

    .line 1601
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileWriteString : file not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_54} :catch_3d

    .line 1602
    return v1

    .line 1608
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .local v2, "e":Ljava/io/IOException;
    :goto_55
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1610
    :try_start_58
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 1613
    goto :goto_60

    .line 1611
    :catch_5c
    move-exception v3

    .line 1612
    .local v3, "err":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1614
    .end local v3    # "err":Ljava/lang/Exception;
    :goto_60
    return v1
.end method

.method private getAfcLoggingData()Z
    .registers 10

    .line 1041
    const-string v0, "AfterimageCompensationService"

    const/4 v1, 0x0

    .line 1042
    .local v1, "raw":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1045
    .local v2, "interpolationValueValid":Z
    :try_start_4
    const-string v3, "/efs/afc/logging_data"

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1046
    if-eqz v1, :cond_d5

    .line 1047
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_d6

    .line 1049
    .local v3, "rawDatas":[Ljava/lang/String;
    :try_start_17
    array-length v4, v3

    const/16 v5, 0xf

    if-ne v4, v5, :cond_be

    .line 1050
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    .line 1051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAfcState - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    .line 1053
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interpolationCount - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    .line 1055
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interpolationLuminance - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/4 v4, 0x0

    .line 1057
    .local v4, "j":I
    const/4 v6, 0x3

    .local v6, "i":I
    :goto_87
    if-ge v6, v5, :cond_bc

    .line 1058
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget-object v8, v3, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v4

    .line 1059
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "interpolationCoprRoi_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " value - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_b7} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_b7} :catch_d6

    .line 1060
    add-int/lit8 v4, v4, 0x1

    .line 1057
    add-int/lit8 v6, v6, 0x1

    goto :goto_87

    .line 1062
    .end local v6    # "i":I
    :cond_bc
    const/4 v0, 0x1

    move v2, v0

    .line 1067
    .end local v4    # "j":I
    :cond_be
    goto :goto_d5

    .line 1064
    :catch_bf
    move-exception v4

    .line 1065
    .local v4, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    .line 1066
    :try_start_c1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_d5} :catch_d6

    .line 1072
    .end local v3    # "rawDatas":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_d5
    :goto_d5
    goto :goto_db

    .line 1069
    :catch_d6
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1071
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1074
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_db
    return v2
.end method

.method private getAverage(IID)D
    .registers 11
    .param p1, "count"    # I
    .param p2, "data"    # I
    .param p3, "d_avg"    # D

    .line 1174
    int-to-double v0, p1

    .line 1175
    .local v0, "d_count":D
    int-to-double v2, p2

    .line 1177
    .local v2, "d_data":D
    if-lez p1, :cond_11

    const v4, 0x10c8e0

    if-gt p1, v4, :cond_11

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v4

    mul-double/2addr v4, p3

    add-double/2addr v4, v2

    div-double/2addr v4, v0

    .local v4, "average":D
    goto :goto_12

    .line 1178
    .end local v4    # "average":D
    :cond_11
    move-wide v4, v2

    .line 1179
    .restart local v4    # "average":D
    :goto_12
    return-wide v4
.end method

.method private getBrightness()Z
    .registers 7

    .line 1148
    const/4 v0, 0x0

    .line 1149
    .local v0, "raw":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1150
    .local v1, "mBrightnessValueValid":Z
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/lcd/panel/brt_avg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1152
    :try_start_f
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_39

    move-object v0, v2

    .line 1153
    if-eqz v0, :cond_38

    .line 1155
    :try_start_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1c} :catch_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_39

    .line 1156
    if-ltz v2, :cond_1f

    .line 1157
    const/4 v1, 0x1

    .line 1162
    :cond_1f
    goto :goto_38

    .line 1159
    :catch_20
    move-exception v2

    .line 1160
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .line 1161
    :try_start_22
    const-string v3, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_38} :catch_39

    .line 1167
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_38
    :goto_38
    goto :goto_3e

    .line 1164
    :catch_39
    move-exception v2

    .line 1165
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1166
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1169
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return v1
.end method

.method private getCoprRoiNBrightness()Z
    .registers 12

    .line 1078
    const-string v0, "NumberFormatException : "

    const-string v1, "AfterimageCompensationService"

    const/4 v2, 0x0

    .line 1079
    .local v2, "raw":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1080
    .local v3, "mCoprValueValid":Z
    const/4 v4, 0x0

    .line 1083
    .local v4, "mBrightnessValueValid":Z
    const/4 v5, 0x1

    :try_start_8
    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a} :catch_ba

    const-string v7, "CoprRoi = "

    const/16 v8, 0xc

    if-ne v6, v5, :cond_63

    .line 1084
    :try_start_10
    const-string v6, "/sys/class/sensors/light_sensor/copr_roix"

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1085
    if-eqz v2, :cond_b9

    .line 1086
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1087
    .local v6, "rawDatas":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_35} :catch_ba

    .line 1089
    :try_start_35
    array-length v7, v6

    if-ne v7, v8, :cond_4d

    .line 1090
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_39
    if-ge v7, v8, :cond_4c

    .line 1091
    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    aget-object v10, v6, v7

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v7
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_49} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_49} :catch_ba

    .line 1090
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 1093
    .end local v7    # "i":I
    :cond_4c
    const/4 v3, 0x1

    .line 1098
    :cond_4d
    goto :goto_62

    .line 1095
    :catch_4e
    move-exception v7

    .line 1096
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .line 1097
    :try_start_50
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    .end local v6    # "rawDatas":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :goto_62
    goto :goto_b9

    .line 1101
    :cond_63
    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    if-nez v6, :cond_b9

    .line 1102
    const-string v6, "/sys/class/lcd/panel/copr_roi"

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1103
    if-eqz v2, :cond_b9

    .line 1104
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1105
    .restart local v6    # "rawDatas":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_8c} :catch_ba

    .line 1107
    :try_start_8c
    array-length v7, v6

    if-ne v7, v8, :cond_a4

    .line 1108
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_90
    if-ge v7, v8, :cond_a3

    .line 1109
    iget-object v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    aget-object v10, v6, v7

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v7
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_8c .. :try_end_a0} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a0} :catch_ba

    .line 1108
    add-int/lit8 v7, v7, 0x1

    goto :goto_90

    .line 1111
    .end local v7    # "i":I
    :cond_a3
    const/4 v3, 0x1

    .line 1116
    :cond_a4
    goto :goto_b9

    .line 1113
    :catch_a5
    move-exception v7

    .line 1114
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .line 1115
    :try_start_a7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b9} :catch_ba

    .line 1122
    .end local v6    # "rawDatas":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_b9
    :goto_b9
    goto :goto_bf

    .line 1119
    :catch_ba
    move-exception v6

    .line 1120
    .local v6, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1121
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1125
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_bf
    :try_start_bf
    const-string v6, "/sys/class/lcd/panel/brt_avg"

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1126
    if-eqz v2, :cond_fa

    .line 1127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BRIGHTNESS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_dc} :catch_fb

    .line 1129
    :try_start_dc
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    :try_end_e2
    .catch Ljava/lang/NumberFormatException; {:try_start_dc .. :try_end_e2} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e2} :catch_fb

    .line 1130
    if-ltz v6, :cond_e5

    .line 1131
    const/4 v4, 0x1

    .line 1136
    :cond_e5
    goto :goto_fa

    .line 1133
    :catch_e6
    move-exception v6

    .line 1134
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    .line 1135
    :try_start_e8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_fa} :catch_fb

    .line 1142
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_fa
    :goto_fa
    goto :goto_100

    .line 1139
    :catch_fb
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 1141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_100
    if-eqz v3, :cond_105

    if-eqz v4, :cond_105

    goto :goto_106

    :cond_105
    const/4 v5, 0x0

    :goto_106
    return v5
.end method

.method private getPolicyVersionFromScpm()Ljava/lang/String;
    .registers 10

    .line 1331
    const/4 v0, 0x0

    .line 1332
    .local v0, "policyVersion":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1334
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string v2, "policyVersion"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 1335
    .local v5, "POLICY_LIST_PROJECTION":[Ljava/lang/String;
    const-string v2, "policyName=?"

    .line 1336
    .local v2, "POLICY_LIST_SELECTION":Ljava/lang/String;
    const-string v3, "AFPC"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    .line 1337
    .local v7, "POLICY_LIST_SELECTION_ARGS":[Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->POLICY_LIST_URI:Landroid/net/Uri;

    const-string v6, "policyName=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 1339
    if-eqz v1, :cond_34

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_34

    .line 1340
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1341
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_41
    .catchall {:try_start_2 .. :try_end_33} :catchall_3a

    move-object v0, v3

    .line 1347
    .end local v2    # "POLICY_LIST_SELECTION":Ljava/lang/String;
    .end local v5    # "POLICY_LIST_PROJECTION":[Ljava/lang/String;
    .end local v7    # "POLICY_LIST_SELECTION_ARGS":[Ljava/lang/String;
    :cond_34
    if-eqz v1, :cond_45

    .line 1348
    :goto_36
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_45

    .line 1347
    :catchall_3a
    move-exception v2

    if-eqz v1, :cond_40

    .line 1348
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1350
    :cond_40
    throw v2

    .line 1345
    :catch_41
    move-exception v2

    .line 1347
    if-eqz v1, :cond_45

    .line 1348
    goto :goto_36

    .line 1351
    :cond_45
    :goto_45
    return-object v0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1464
    const-string v0, "File Close error"

    const-string v1, "AfterimageCompensationService"

    const/4 v2, 0x0

    .line 1465
    .local v2, "in":Ljava/io/InputStream;
    const/16 v3, 0x80

    .line 1466
    .local v3, "MAX_BUFFER_SIZE":I
    const/16 v4, 0x80

    new-array v5, v4, [B

    .line 1467
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .line 1468
    .local v6, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1470
    .local v7, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_e
    const/4 v9, 0x0

    if-ge v8, v4, :cond_16

    .line 1471
    aput-byte v9, v5, v8

    .line 1470
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 1474
    .end local v8    # "i":I
    :cond_16
    :try_start_16
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 1475
    nop

    .line 1476
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v7, v4

    .line 1477
    if-eqz v7, :cond_33

    .line 1478
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v8, v7, -0x1

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v9, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v6, v4

    .line 1480
    :cond_33
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_36} :catch_61
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_36} :catch_42
    .catchall {:try_start_16 .. :try_end_36} :catchall_40

    .line 1489
    nop

    .line 1491
    :try_start_37
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 1494
    :goto_3a
    goto :goto_7d

    .line 1492
    :catch_3b
    move-exception v4

    .line 1493
    .local v4, "ee":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "ee":Ljava/io/IOException;
    goto :goto_3a

    .line 1489
    :catchall_40
    move-exception v4

    goto :goto_7e

    .line 1485
    :catch_42
    move-exception v4

    .line 1486
    .local v4, "e":Ljava/io/IOException;
    :try_start_43
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1487
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_40

    .line 1489
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_7d

    .line 1491
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_3b

    goto :goto_3a

    .line 1482
    :catch_61
    move-exception v4

    .line 1484
    .local v4, "ex":Ljava/io/FileNotFoundException;
    :try_start_62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_40

    .line 1489
    nop

    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_7d

    .line 1491
    :try_start_79
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_3b

    goto :goto_3a

    .line 1497
    :cond_7d
    :goto_7d
    return-object v6

    .line 1489
    :goto_7e
    if-eqz v2, :cond_88

    .line 1491
    :try_start_80
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    .line 1494
    goto :goto_88

    .line 1492
    :catch_84
    move-exception v8

    .line 1493
    .local v8, "ee":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    .end local v8    # "ee":Ljava/io/IOException;
    :cond_88
    :goto_88
    throw v4
.end method

.method private handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "feat"    # Ljava/lang/String;
    .param p2, "customdataset"    # Ljava/lang/String;

    .line 1421
    move-object/from16 v0, p0

    const/4 v11, 0x0

    .line 1422
    .local v11, "type":I
    const-string v12, "Display"

    .line 1423
    .local v12, "compID":Ljava/lang/String;
    move-object/from16 v4, p1

    .line 1424
    .local v4, "feature":Ljava/lang/String;
    const-string v13, "sm"

    .line 1425
    .local v13, "hitType":Ljava/lang/String;
    const-string v14, "0.0"

    .line 1426
    .local v14, "compVer":Ljava/lang/String;
    const-string v15, "sec"

    .line 1427
    .local v15, "compManuFacture":Ljava/lang/String;
    const-string v16, ""

    .line 1428
    .local v16, "dev_customDataSet":Ljava/lang/String;
    move-object/from16 v9, p2

    .line 1429
    .local v9, "basic_customDataSet":Ljava/lang/String;
    const-string v17, ""

    .line 1431
    .local v17, "pri_customDataSet":Ljava/lang/String;
    iget-object v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v2, "AfterimageCompensationService"

    if-eqz v1, :cond_2d

    .line 1432
    const-string v1, "sendBroadcastToHWParam() mSemHqmManager.sendHWParamToHQM"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    move v2, v11

    move-object v3, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_32

    .line 1436
    :cond_2d
    const-string v1, "sendBroadcastToHWParam() mSemHqmManager is null"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :goto_32
    return-void
.end method

.method private initLoggingData()V
    .registers 10

    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, "i":I
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/afc/logging_data"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 977
    .local v1, "mLogginFileExist":Z
    const/16 v2, 0xc

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v1, :cond_3d

    .line 978
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getAfcLoggingData()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 979
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-ltz v5, :cond_3d

    if-gt v5, v3, :cond_3d

    .line 980
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    if-ltz v5, :cond_3d

    const v6, 0x10c8e0

    if-gt v5, v6, :cond_3d

    .line 981
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    .line 982
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    int-to-double v5, v5

    iput-wide v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    .line 983
    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v2, :cond_3d

    .line 984
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v6, v6, v0

    int-to-double v6, v6

    aput-wide v6, v5, v0

    .line 983
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 991
    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLogginFileExist =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mAfcState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", interpolationCount - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mAfcLoggingDataValid - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "AfterimageCompensationService"

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    if-nez v5, :cond_86

    .line 994
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    .line 995
    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    .line 996
    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    .line 997
    const/4 v0, 0x0

    :goto_7d
    if-ge v0, v2, :cond_86

    .line 998
    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aput v5, v8, v0

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 1002
    :cond_86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAfcState - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-ge v2, v3, :cond_ab

    .line 1005
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    goto :goto_c1

    .line 1008
    :cond_ab
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAfcState is already done - mAfcState - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :goto_c1
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    if-eqz v2, :cond_fb

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-lez v2, :cond_fb

    if-gt v2, v3, :cond_fb

    .line 1012
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/afc_data"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 1014
    :try_start_d8
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1015
    .local v2, "afc_reg_data":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AFC registe data is - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const-string v3, "/sys/class/mdnie/mdnie/afc"

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_f5} :catch_f7

    .line 1020
    nop

    .end local v2    # "afc_reg_data":Ljava/lang/String;
    goto :goto_fb

    .line 1018
    :catch_f7
    move-exception v2

    .line 1019
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1023
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_fb
    :goto_fb
    return-void
.end method

.method private static isLDUModel()Z
    .registers 3

    .line 1583
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1584
    .local v0, "salesCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EncNeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AfterimageCompensationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const-string v1, "PAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "FOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "LDU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_35

    :cond_33
    const/4 v1, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v1, 0x1

    :goto_36
    return v1
.end method

.method private static isShopDemo(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1589
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "shopdemo"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method private makeInitEfsFile()V
    .registers 3

    .line 1287
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc/display_on_time"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1288
    const-string v0, "0"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1289
    const-string v0, "AfterimageCompensationService"

    const-string v1, "Init AFC_DISPLAY_ON_TIME EFS"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_1c
    return-void
.end method

.method private static native nativeDataApply(I)I
.end method

.method private static native nativeDataEvaluate()F
.end method

.method private static native nativeDataInit(IIIIIIII)I
.end method

.method private static native nativeDataOff()I
.end method

.method private static native nativeDataRead(III)I
.end method

.method private static native nativeDataReadAvgLum()D
.end method

.method private static native nativeDataReadEffAvgLum()D
.end method

.method private static native nativeDataReadEffMaxBDI()D
.end method

.method private static native nativeDataReadEffNBDI()D
.end method

.method private static native nativeDataReadMaxBDI()D
.end method

.method private static native nativeDataReadNBDI()D
.end method

.method private static native nativeDataSave(I)I
.end method

.method private static native nativeDataStart(I)I
.end method

.method private static native nativeDataTerminate(I)I
.end method

.method private static native nativeDataUpdate(I)I
.end method

.method private static native nativeDataVerify()I
.end method

.method private static native nativeDataWrite(I)I
.end method

.method private static native nativeDataWriteV2(I)I
.end method

.method private parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "length"    # I

    .line 1443
    const/4 v0, 0x0

    .line 1445
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1446
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p3, :cond_14

    .line 1447
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_11} :catch_15

    .line 1446
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1452
    .end local v1    # "i":I
    :cond_14
    goto :goto_19

    .line 1450
    :catch_15
    move-exception v1

    .line 1451
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1454
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_19
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1455
    .local v1, "customDataSet":Ljava/lang/String;
    const-string v2, "\\{"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1456
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    if-eqz v2, :cond_45

    .line 1457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customDataSet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AfterimageCompensationService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_45
    return-object v1
.end method

.method private processApplyData()V
    .registers 7

    .line 1295
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc/apply_count"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "AfterimageCompensationService"

    if-eqz v0, :cond_60

    .line 1296
    const/4 v0, 0x0

    .line 1298
    .local v0, "raw":Ljava/lang/String;
    :try_start_10
    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1299
    if-eqz v0, :cond_5b

    .line 1300
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_5c

    .line 1302
    .local v1, "rawDatas":[Ljava/lang/String;
    :try_start_21
    array-length v3, v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_40

    .line 1303
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 1304
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    goto :goto_45

    .line 1307
    :cond_40
    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 1308
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_45} :catch_46
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_45} :catch_5c

    .line 1312
    :goto_45
    goto :goto_5b

    .line 1310
    :catch_46
    move-exception v3

    .line 1311
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_5b} :catch_5c

    .line 1316
    .end local v1    # "rawDatas":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_5b
    :goto_5b
    goto :goto_60

    .line 1314
    :catch_5c
    move-exception v1

    .line 1315
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1318
    .end local v0    # "raw":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_60
    :goto_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processApplyData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return-void
.end method

.method private processStateData()V
    .registers 3

    .line 1322
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc/afc_state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    goto :goto_14

    .line 1325
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    .line 1327
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processStateData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AfterimageCompensationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    return-void
.end method

.method private static readOMCSalesCode()Ljava/lang/String;
    .registers 5

    .line 1564
    const-string v0, ""

    const-string v1, ""

    .line 1566
    .local v1, "sales_code":Ljava/lang/String;
    :try_start_4
    const-string v2, "persist.omc.sales_code"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1567
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    if-nez v1, :cond_29

    .line 1568
    :cond_13
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1569
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    if-nez v1, :cond_29

    .line 1570
    :cond_22
    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_2a

    move-object v1, v2

    .line 1575
    :cond_29
    goto :goto_32

    .line 1573
    :catch_2a
    move-exception v2

    .line 1574
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AfterimageCompensationService"

    const-string v4, "readOMCSalesCode failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_32
    if-nez v1, :cond_35

    .line 1577
    return-object v0

    .line 1579
    :cond_35
    return-object v1
.end method

.method private static readStrFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;

    .line 1530
    const-string v0, "FileReader Close IOException : "

    const-string v1, "BufferedReader Close IOException : "

    const/4 v2, 0x0

    .line 1531
    .local v2, "fr":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 1532
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1533
    .local v4, "str":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1535
    .local v5, "flag":I
    :try_start_8
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 1536
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v6

    .line 1537
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_8f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_5b
    .catchall {:try_start_8 .. :try_end_18} :catchall_58

    move-object v4, v6

    .line 1544
    nop

    .line 1545
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 1549
    goto :goto_37

    .line 1547
    :catch_1e
    move-exception v6

    .line 1548
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1552
    .end local v6    # "e":Ljava/io/IOException;
    :goto_37
    nop

    .line 1553
    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3d

    .line 1557
    :cond_3b
    :goto_3b
    goto/16 :goto_c3

    .line 1555
    :catch_3d
    move-exception v1

    .line 1556
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_45
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1558
    .end local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_c3

    .line 1543
    :catchall_58
    move-exception v6

    goto/16 :goto_c4

    .line 1540
    :catch_5b
    move-exception v6

    .line 1541
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_5c
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_58

    .line 1544
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_7f

    .line 1545
    :try_start_61
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_7f

    .line 1547
    :catch_65
    move-exception v6

    .line 1548
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_80

    .line 1549
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7f
    :goto_7f
    nop

    .line 1552
    :goto_80
    if-eqz v2, :cond_3b

    .line 1553
    :try_start_82
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_3b

    .line 1555
    :catch_86
    move-exception v1

    .line 1556
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_45

    .line 1538
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8f
    move-exception v6

    .line 1539
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_90
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_58

    .line 1544
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_b3

    .line 1545
    :try_start_95
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_b3

    .line 1547
    :catch_99
    move-exception v6

    .line 1548
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b4

    .line 1549
    .end local v6    # "e":Ljava/io/IOException;
    :cond_b3
    :goto_b3
    nop

    .line 1552
    :goto_b4
    if-eqz v2, :cond_3b

    .line 1553
    :try_start_b6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_3b

    .line 1555
    :catch_ba
    move-exception v1

    .line 1556
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_45

    .line 1560
    .end local v1    # "e":Ljava/io/IOException;
    :goto_c3
    return-object v4

    .line 1544
    :goto_c4
    if-eqz v3, :cond_e4

    .line 1545
    :try_start_c6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_e4

    .line 1547
    :catch_ca
    move-exception v7

    .line 1548
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e5

    .line 1549
    .end local v7    # "e":Ljava/io/IOException;
    :cond_e4
    :goto_e4
    nop

    .line 1552
    :goto_e5
    if-eqz v2, :cond_105

    .line 1553
    :try_start_e7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_105

    .line 1555
    :catch_eb
    move-exception v1

    .line 1556
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_106

    .line 1557
    .end local v1    # "e":Ljava/io/IOException;
    :cond_105
    :goto_105
    nop

    .line 1558
    :goto_106
    throw v6
.end method

.method private receive_screen_off_intent()V
    .registers 2

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    .line 566
    return-void
.end method

.method private receive_screen_on_intent()V
    .registers 3

    .line 554
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    if-eqz v0, :cond_1a

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    .line 556
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1a

    .line 557
    monitor-enter v0

    .line 558
    :try_start_10
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 559
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v1

    .line 562
    :cond_1a
    :goto_1a
    return-void
.end method

.method private updateHWParam()V
    .registers 4

    .line 1415
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1416
    .local v0, "values":[Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPC_KEYS:[Ljava/lang/String;

    array-length v2, v1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1417
    .local v1, "dataset":Ljava/lang/String;
    const-string v2, "DIQE"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    return-void
.end method

.method private updatePolicyScpm()V
    .registers 16

    .line 1355
    const-string v0, "AfterimageCompensationService"

    const/4 v1, 0x0

    .line 1357
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1359
    .local v2, "policyVersion":I
    :try_start_4
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getPolicyVersionFromScpm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_11
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    move v2, v3

    .line 1362
    goto :goto_26

    .line 1408
    .end local v2    # "policyVersion":I
    :catchall_e
    move-exception v0

    goto/16 :goto_107

    .line 1360
    .restart local v2    # "policyVersion":I
    :catch_11
    move-exception v3

    .line 1361
    .local v3, "e":Ljava/lang/Exception;
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScpmData: fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScpmData: PolicyVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " LastPolicyVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mPolicyVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mPolicyVersion:I

    if-ge v3, v2, :cond_e7

    .line 1366
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->POLICY_ITEM_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 1368
    if-eqz v1, :cond_e7

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_e7

    .line 1369
    :goto_61
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 1370
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1371
    .local v4, "afpcCategory":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1372
    .local v5, "afpcMasterOnOff":Ljava/lang/String;
    const-string v6, "afpc_master_on_off"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_77} :catch_ed
    .catchall {:try_start_12 .. :try_end_77} :catchall_e

    const-string v7, "AFC_STATE delete"

    const-string v8, "0"

    const-string v9, "updateScpmData: afpcMasterOff - on"

    const/4 v10, 0x0

    const-string v11, "updateScpmData: afpcMasterOff - off"

    const-string v12, "on"

    const-string v13, "off"

    const-string v14, "/efs/afc/afc_state"

    if-eqz v6, :cond_b0

    .line 1373
    :try_start_88
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 1374
    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iput-boolean v10, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    .line 1376
    invoke-direct {p0, v14, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_b0

    .line 1378
    :cond_97
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 1379
    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    .line 1381
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 1382
    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_b0
    :goto_b0
    const-string v6, "mafpc_master_on_off"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e3

    .line 1387
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 1388
    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iput-boolean v10, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    .line 1390
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataOff()Z

    .line 1391
    invoke-direct {p0, v14, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_e3

    .line 1393
    :cond_ca
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e3

    .line 1394
    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    .line 1396
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 1397
    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    .end local v4    # "afpcCategory":Ljava/lang/String;
    .end local v5    # "afpcMasterOnOff":Ljava/lang/String;
    :cond_e3
    :goto_e3
    goto/16 :goto_61

    .line 1402
    :cond_e5
    iput v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mPolicyVersion:I
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_e7} :catch_ed
    .catchall {:try_start_88 .. :try_end_e7} :catchall_e

    .line 1408
    .end local v2    # "policyVersion":I
    :cond_e7
    if-eqz v1, :cond_106

    .line 1409
    :goto_e9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_106

    .line 1405
    :catch_ed
    move-exception v2

    .line 1406
    .local v2, "e":Ljava/lang/Exception;
    :try_start_ee
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScpmData: fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catchall {:try_start_ee .. :try_end_102} :catchall_e

    .line 1408
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_106

    .line 1409
    goto :goto_e9

    .line 1412
    :cond_106
    :goto_106
    return-void

    .line 1408
    :goto_107
    if-eqz v1, :cond_10c

    .line 1409
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1411
    :cond_10c
    throw v0
.end method

.method private update_check_panel_id()V
    .registers 8

    .line 1183
    const/4 v0, 0x0

    .line 1184
    .local v0, "USER_PANEL_INFO":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1185
    .local v1, "EFS_PANEL_INFO":Ljava/lang/String;
    const-string v2, "AfterimageCompensationService"

    const-string v3, "update_cell_id() function call"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :try_start_9
    const-string v3, "/sys/class/lcd/panel/cell_id"

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_11

    move-object v0, v3

    .line 1192
    goto :goto_15

    .line 1190
    :catch_11
    move-exception v3

    .line 1191
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1193
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USER_PANEL_INFO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/afc/cell_id"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v5, " , EFS_PANEL_INFO : "

    if-eqz v3, :cond_1ed

    .line 1196
    :try_start_38
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EFS_PANEL_INFO : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_51} :catch_52

    .line 1201
    goto :goto_56

    .line 1199
    :catch_52
    move-exception v3

    .line 1200
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1202
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_56
    if-eqz v1, :cond_1c8

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c8

    .line 1204
    const-string v3, "EFS_PANEL_INFO , USER_PANEL_INFO Diff O"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-direct {p0, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 1207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileWriteString success_1 USER_PANEL_INFO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_83
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/afc/afc_data"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 1211
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 1212
    const-string v3, "AFC_REG_DATA.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_a0
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/afc/logging_data"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 1217
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 1218
    const-string v3, "AFC_LOGGING_DATA.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_bd
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/afc/display_on_time"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 1222
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 1223
    const-string v3, "0"

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1224
    const-string v3, "AFC_DISPLAY_ON_TIME.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_df
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/afc/rewrited"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 1228
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 1229
    const-string v3, "MCA_REWRITED.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_fc
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/afc/original.vec"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_119

    .line 1233
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_119

    .line 1234
    const-string v3, "MCA_ORG_VEC.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_119
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/afc/org.vec"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_136

    .line 1238
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_136

    .line 1239
    const-string v3, "AFC_ORIGINAL_VEC.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_136
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/afc/time_data"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_153

    .line 1243
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_153

    .line 1244
    const-string v3, "AFC_TIME_DATA.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_153
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/afc/diff_data"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_170

    .line 1248
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_170

    .line 1249
    const-string v3, "AFC_DIFF_DATA.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_170
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/afc/poc_data"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18d

    .line 1253
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_18d

    .line 1254
    const-string v3, "AFC_POC_DATA.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_18d
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/afc/apply_count"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 1258
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 1259
    const-string v3, "AFC_APPLY_COUNT.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_1aa
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/afc/mdnie_block"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_218

    .line 1263
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_218

    .line 1264
    const-string v3, "AFC_MDNIE_BLOCK.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_218

    .line 1269
    :cond_1c8
    if-nez v1, :cond_1e7

    .line 1270
    const-string v3, "EFS_PANEL_INFO value is NULL"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-direct {p0, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE EFS_PANEL_INFO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_218

    .line 1275
    :cond_1e7
    const-string v3, "EFS_PANEL_INFO , USER_PANEL_INFO Diff X"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_218

    .line 1279
    :cond_1ed
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_218

    .line 1280
    invoke-direct {p0, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_218

    .line 1281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileWriteString success_2 USER_PANEL_INFO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_218
    :goto_218
    return-void
.end method

.method private writeLoggingDataEfs()V
    .registers 5

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    .local v0, "afc_logging":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1028
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1032
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    const/16 v3, 0xc

    if-ge v2, v3, :cond_2e

    .line 1033
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1032
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1036
    .end local v2    # "i":I
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AFC Loggin Data - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AfterimageCompensationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/efs/afc/logging_data"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1038
    return-void
.end method


# virtual methods
.method public afpcDataApply()Z
    .registers 4

    .line 1685
    const-string v0, "AfterimageCompensationService"

    const-string v1, "afpcDataApply"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    const/4 v2, 0x5

    if-lt v1, v2, :cond_29

    .line 1687
    :cond_f
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/afc/mdnie_block"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1688
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataApply(I)I

    move-result v0

    .line 1689
    .local v0, "ret":I
    const/4 v1, 0x1

    return v1

    .line 1692
    .end local v0    # "ret":I
    :cond_24
    const-string v1, "afpcDataApply - AFC_MDNIE_BLOCK not exist"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public afpcDataOff()Z
    .registers 3

    .line 1700
    const-string v0, "AfterimageCompensationService"

    const-string v1, "afpcDataOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const/4 v1, 0x5

    if-lt v0, v1, :cond_10

    goto :goto_12

    .line 1705
    :cond_10
    const/4 v0, 0x0

    return v0

    .line 1702
    :cond_12
    :goto_12
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataOff()I

    move-result v0

    .line 1703
    .local v0, "ret":I
    const/4 v1, 0x1

    return v1
.end method

.method public afpcDataVerify()Z
    .registers 3

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afpcDataVerify - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AfterimageCompensationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataVerify()I

    move-result v0

    .line 1623
    .local v0, "ret":I
    if-nez v0, :cond_2a

    const/4 v1, 0x1

    return v1

    .line 1624
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method public afpcDataWrite()Z
    .registers 12

    .line 1629
    const-string v0, "AfterimageCompensationService"

    const-string v1, "afpcDataWrite"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_ac

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    if-eqz v1, :cond_ac

    .line 1631
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    if-eqz v1, :cond_ac

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRef:[F

    array-length v3, v3

    if-ge v1, v3, :cond_ac

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    if-eqz v1, :cond_ac

    .line 1632
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F

    move-result v1

    .line 1633
    .local v1, "nFloat":F
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%.2f"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1634
    .local v3, "str_format":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 1635
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRef:[F

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    aget v7, v7, v8

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_ac

    .line 1636
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWrite(I)I

    move-result v5

    .line 1637
    .local v5, "ret":I
    if-nez v5, :cond_ac

    .line 1638
    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 1640
    :try_start_52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v4, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v8, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1641
    .local v2, "str":Ljava/lang/String;
    const-string v6, "/efs/afc/apply_count"

    invoke-direct {p0, v6, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1642
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "afpcDataWrite - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_91} :catch_93

    .line 1646
    nop

    .end local v2    # "str":Ljava/lang/String;
    goto :goto_ab

    .line 1643
    :catch_93
    move-exception v2

    .line 1644
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 1647
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_ab
    return v4

    .line 1652
    .end local v1    # "nFloat":F
    .end local v3    # "str_format":Ljava/lang/String;
    .end local v5    # "ret":I
    :cond_ac
    return v2
.end method

.method public afpcDeviceWrite()Z
    .registers 12

    .line 1657
    const-string v0, "AfterimageCompensationService"

    const-string v1, "afpcDeviceWrite"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_b0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    if-eqz v1, :cond_b0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SUPPORT_ONTIME_SUPPORT:Z

    if-eqz v1, :cond_b0

    .line 1659
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    if-eqz v1, :cond_b0

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    array-length v3, v3

    if-ge v1, v3, :cond_b0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z

    if-eqz v1, :cond_b0

    .line 1660
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F

    move-result v1

    .line 1661
    .local v1, "nFloat":F
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%.2f"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1662
    .local v3, "str_format":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 1663
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    aget v7, v7, v8

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_b0

    .line 1664
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWrite(I)I

    move-result v5

    .line 1665
    .local v5, "ret":I
    if-nez v5, :cond_b0

    .line 1666
    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 1668
    :try_start_56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v4, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v8, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1669
    .local v2, "str":Ljava/lang/String;
    const-string v6, "/efs/afc/apply_count"

    invoke-direct {p0, v6, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1670
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "afpcDataWrite - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_95} :catch_97

    .line 1674
    nop

    .end local v2    # "str":Ljava/lang/String;
    goto :goto_af

    .line 1671
    :catch_97
    move-exception v2

    .line 1672
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 1675
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_af
    return v4

    .line 1680
    .end local v1    # "nFloat":F
    .end local v3    # "str_format":Ljava/lang/String;
    .end local v5    # "ret":I
    :cond_b0
    return v2
.end method

.method public afpcWorkOff()Z
    .registers 3

    .line 1709
    const-string v0, "AfterimageCompensationService"

    const-string v1, "afpcWorkOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 1711
    const/4 v0, 0x1

    return v0
.end method
