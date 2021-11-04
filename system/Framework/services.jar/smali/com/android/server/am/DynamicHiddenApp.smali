.class public Lcom/android/server/am/DynamicHiddenApp;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;,
        Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;
    }
.end annotation


# static fields
.field static final AL_SLOT_FOR_MEM_12G:I = 0x3

.field static AMSExceptionProviderUpgradeAdjEnable:Z = false

.field static final BG_COUNT_CACHED:I = 0x1

.field static final BG_COUNT_CACHED_HIDDEN:I = 0x3

.field static final BG_COUNT_EMPTY:I = 0x2

.field static final BG_COUNT_NON_CACHED:I = 0x4

.field static final BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

.field static BOOTING_EMPTY_KILL_SKIP_ENABLE:Z = false

.field static BORA_POLICY_ENABLE:Z = false

.field static CAMERA_DHA_VER:I = 0x0

.field static CHN_REDUCE_CACHED:I = 0x0

.field public static CLEANUP_WEBVIEW_ENABLE:Z = false

.field static DEBUG:Z = false

.field public static final DEFAULT_MAX_TASK_SNAPSHOT:I = 0x5

.field static final DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

.field static DHA_PACKAGE_ENABLE:Z = false

.field static final DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

.field static DIALER_EXCEPTION_TH:I = 0x0

.field static EXTRA_OVER_MEMORY_TH_FOR_TUNING:I = 0x0

.field static EXTRA_TUNING_LMK_CUSTOM_SW_LIMIT:I = 0x0

.field static EXTRA_TUNING_LMK_FREELIMIT_VAL:I = 0x0

.field static EXTRA_TUNING_LMK_UPGRADE_PRESSURE:I = 0x0

.field static EXTRA_TUNING_MAX_CACHED_APPS:I = 0x0

.field static EXTRA_TUNING_MAX_EMPTY_APPS:I = 0x0

.field static EXTRA_TUNING_MIN_CACHED_APPS:I = 0x0

.field static EXTRA_TUNING_mLMKScale:F = 0.0f

.field static EXTRA_UNDER_MEMORY_TH_FOR_TUNING:I = 0x0

.field static FALL_PREVENT_ENABLE:Z = false

.field static FARND_NODE:Ljava/lang/String; = null

.field static FHA_ENABLE:Z = false

.field private static final FHD:I = 0x1fa400

.field private static final HD:I = 0xe1000

.field static HRT_MaxCached_Enable:Z = false

.field static INIT_CACHED_APPS:I = 0x0

.field static INIT_EMPTY_APPS:I = 0x0

.field static final IS_CHINA_MODEL:Z

.field public static final IS_HIGH_CAPACITY_RAM:Z

.field static LDHA_SPC_ENABLE:Z = false

.field static LIMITATION_RECENT_CACHED_SLOT:Z = false

.field static final LMKD_CAM_CLIENT_EXCEPT_ARRAY:[Ljava/lang/String;

.field static LMKD_CRIC_NODE:Ljava/lang/String; = null

.field static LMKD_NODE:Ljava/lang/String; = null

.field static final LMKD_ONLY_KILL_SKIP_ARRAY:[Ljava/lang/String;

.field public static LMK_CRITICAL_ADJ:I = 0x0

.field public static LMK_CRITICAL_UPGRADE:Z = false

.field public static LMK_CUSTOM_SW_LIMIT:I = 0x0

.field public static LMK_CUSTOM_TM_LIMIT:I = 0x0

.field public static LMK_DEBUG:Z = false

.field public static LMK_DOWNGRADE_PRESSURE:I = 0x0

.field public static LMK_ENABLE_CMARBINFREE_SUB:Z = false

.field public static LMK_ENABLE_REENTRY_LMK:Z = false

.field public static LMK_ENABLE_UPGRADE_CRIADJ:Z = false

.field public static LMK_ENABLE_USERSPACE_LMK:Z = false

.field public static LMK_FREELIMIT_ENABLE:Z = false

.field public static LMK_FREELIMIT_VAL:I = 0x0

.field public static LMK_KILL_HEAVIEST_TASK:Z = false

.field public static LMK_KILL_TIMEOUT_MS:I = 0x0

.field public static LMK_LOW_ADJ:I = 0x0

.field public static LMK_LOW_MEM_KEEP_ENABLE:Z = false

.field public static LMK_LOW_RAM_DEVICE:Z = false

.field public static LMK_MEDIUM_ADJ:I = 0x0

.field static LMK_NODE:Ljava/lang/String; = null

.field public static LMK_PSI_CRITICAL_TH:I = 0x0

.field public static LMK_PSI_LOW_TH:I = 0x0

.field public static LMK_PSI_MEDIUM_TH:I = 0x0

.field public static LMK_UPGRADE_PRESSURE:I = 0x0

.field public static LMK_USE_MINFREE_LEVELS:Z = false

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field public static final MAX_NEVERKILLEDAPP_NUM:I

.field static MAX_REC_CACHED_APPS:I = 0x0

.field static MIN_CACHED_APPS:I = 0x0

.field static MIN_EMPTY_APPS:I = 0x0

.field static final ML_SLOT_FOR_MEM_12G:I = 0x5

.field static final ML_SLOT_FOR_MEM_6G:I = 0x1

.field static final ML_SLOT_FOR_MEM_8G:I = 0x3

.field static final ML_SLOT_FOR_MEM_DEFAULT:I = 0x1

.field static MMAP_NODE:Ljava/lang/String; = null

.field public static NEVERKILL_SQETOOL_ENABLE:Z = false

.field static PICKED_ADJ_ENABLE:Z = false

.field static final PRELOADNUM:I = 0x2

.field static final PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

.field static RECENT_CACHED_ENABLE:Z = false

.field static final STATIC_MAX_EMPTY_APPS_8G:I = 0x24

.field static SWAP_NODE:Ljava/lang/String; = null

.field private static final SYSTEM_PROPERTY_BUB_ONOFF:Ljava/lang/String; = "persist.sys.bub_onoff"

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_DHA:Ljava/lang/String; = "DynamicHiddenApp"

.field static final TAG_SNAPSHOT:Ljava/lang/String; = "DynamicHiddenApp_TASK_SNAPSHOT"

.field static TOTAL_MEMORY:I = 0x0

.field public static WEBVIEW_ADJ_THRESHOLD:I = 0x0

.field private static final WQHD:I = 0x384000

.field static beks_package_key_bit:I

.field static dha_MLexcept_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static dha_amsexcept_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static dha_camera_map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static dha_cameraclientexcept_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static dha_keepempty_chn_key:I

.field static dha_keepempty_key:I

.field static dha_keepempty_key_knox:I

.field static dha_keepempty_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static dha_lmkdonlykillexcept_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static dha_neverkillexcept_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static highRes_MaxCached:I

.field static mAMSExceptionEnable:Z

.field static mDhaKeepEmptyEnable:I

.field static mDhaKeepEmptyEnableKnox:I

.field static mKnoxAMSExceptionEnable:Z

.field static mLMKArray:Ljava/lang/String;

.field static mLMKScale:F

.field static mLmkdOnlyKillExceptionEnable:Z

.field private static mMinFreeMax:F

.field private static final mTotalMemMb:J

.field public static max_neverkilledapp_num_12g:I

.field public static max_neverkilledapp_num_16g:I

.field public static max_neverkilledapp_num_8g:I

.field public static max_neverkilledapp_num_default:I

.field static normalRes_MaxCached:I

.field private static originCachedMin:I

.field private static originEmptyMax:I

.field static perfTunedRamSize:Ljava/lang/String;

.field private static prevCameraState:I

.field static removeContactExceptList:Z

.field static sBEKS_processList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaxTaskSnapshot:I

.field private static sMaxTaskSnapshotNum:I

.field private static sMaxTaskSnapshotNum2nd:I

.field static sProvider_lifeguard_key:I

.field static sProvider_lifeguard_memory_TH:I


# instance fields
.field ActiveLaunchCount:I

.field ActiveLaunchLimit:I

.field ActiveLaunchSlot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field MlLaunchCount:I

.field MlLaunchLimit:I

.field MlLaunchSlot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field MlSlotDefault:Lcom/android/server/am/ProcessRecord;

.field appUss:J

.field isDhaKeepEmpty:Z

.field private isOriginBG:Z

.field killingProcessesUss:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field killingProcessesUssTotal:J

.field lastCachedGroup:I

.field lastCachedGroupUid:I

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/internal/util/MemInfoReader;

.field mMaxCached:I

.field mMaxEmpty:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field private final mOomAdj:[I

.field mProcessList:Lcom/android/server/am/ProcessList;

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field now:J

.field numCached:I

.field numCachedExtraGroup:I

.field numEmpty:I

.field numRecCached:I

.field oldTime:J

.field recentActivityProcessLimit:I

.field private recentActivityProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 88
    const-string/jumbo v1, "ro.slmk.fha_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    .line 91
    const-string v1, "/proc/lmkd_debug/lmkd_count"

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->LMKD_NODE:Ljava/lang/String;

    .line 92
    const-string v1, "/proc/lmkd_debug/lmkd_cricount"

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->LMKD_CRIC_NODE:Ljava/lang/String;

    .line 93
    const-string v1, "/sys/module/lowmemorykiller/parameters/lmkcount"

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_NODE:Ljava/lang/String;

    .line 94
    const-string v1, "/proc/sys/vm/swappiness"

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->SWAP_NODE:Ljava/lang/String;

    .line 95
    const-string v1, "/proc/sys/vm/mmap_readaround_limit"

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->MMAP_NODE:Ljava/lang/String;

    .line 96
    const-string v1, "/sys/kernel/debug/fault_around_bytes"

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->FARND_NODE:Ljava/lang/String;

    .line 105
    const-string/jumbo v1, "ro.boot.perftune.ramsize"

    const-string v3, "0,0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->perfTunedRamSize:Ljava/lang/String;

    .line 115
    const-string/jumbo v1, "ro.slmk.dha_2ndprop_thMB"

    const-string v3, "4096"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->TOTAL_MEMORY:I

    .line 120
    const-string/jumbo v1, "ro.slmk.3rd.under_thMB"

    const-string v4, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_UNDER_MEMORY_TH_FOR_TUNING:I

    .line 121
    const-string/jumbo v1, "ro.slmk.3rd.over_thMB"

    const-string v5, "9999999"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_OVER_MEMORY_TH_FOR_TUNING:I

    .line 122
    const-string/jumbo v1, "ro.slmk.3rd.dha_cached_min"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_MIN_CACHED_APPS:I

    .line 123
    const-string/jumbo v1, "ro.slmk.3rd.dha_cached_max"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_MAX_CACHED_APPS:I

    .line 124
    const-string/jumbo v1, "ro.slmk.3rd.dha_empty_max"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_MAX_EMPTY_APPS:I

    .line 125
    const-string/jumbo v1, "ro.slmk.3rd.dha_lmk_scale"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_mLMKScale:F

    .line 126
    const-string/jumbo v1, "ro.slmk.3rd.upgrade_pressure"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_LMK_UPGRADE_PRESSURE:I

    .line 127
    const-string/jumbo v1, "ro.slmk.3rd.custom_sw_limit"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_LMK_CUSTOM_SW_LIMIT:I

    .line 128
    const-string/jumbo v1, "ro.slmk.3rd.freelimit_val"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_LMK_FREELIMIT_VAL:I

    .line 132
    const-string/jumbo v1, "ro.slmk.dha_cached_max"

    const-string v5, "16"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/server/am/DynamicHiddenApp;->INIT_CACHED_APPS:I

    .line 135
    const-string/jumbo v6, "ro.slmk.dha_cached_min"

    const-string v7, "4"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    .line 145
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    .line 147
    const-string/jumbo v1, "ro.slmk.dha_empty_init"

    const-string v5, "24"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    .line 149
    const-string/jumbo v1, "ro.slmk.dha_empty_min"

    const-string v6, "8"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    .line 151
    const-string/jumbo v1, "ro.slmk.dha_empty_max"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    .line 161
    const-string/jumbo v1, "ro.slmk.ldha_spc_enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    .line 165
    const-string/jumbo v1, "ro.slmk.dha_rec_cch_enable"

    const-string v5, "false"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->RECENT_CACHED_ENABLE:Z

    .line 167
    const-string/jumbo v1, "ro.slmk.dha_rec_cch_limit"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LIMITATION_RECENT_CACHED_SLOT:Z

    .line 169
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "ro.slmk.dha_rec_cch_max"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_REC_CACHED_APPS:I

    .line 176
    const-string/jumbo v1, "ro.csc.country_code"

    const-string v6, ""

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "china"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->IS_CHINA_MODEL:Z

    .line 177
    const-string/jumbo v1, "ro.slmk.reduce_chn_cached_max"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "ro.slmk.2nd.reduce_chn_cached_max"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->CHN_REDUCE_CACHED:I

    .line 180
    const-string/jumbo v1, "ro.slmk.dha_hrt_max_enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->HRT_MaxCached_Enable:Z

    .line 181
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MaxCached:I

    .line 182
    const/4 v6, 0x4

    sub-int/2addr v1, v6

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->highRes_MaxCached:I

    .line 189
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->originCachedMin:I

    .line 190
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->originEmptyMax:I

    .line 192
    const-string/jumbo v1, "ro.slmk.cam_dha_ver"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->CAMERA_DHA_VER:I

    .line 197
    const-string/jumbo v1, "ro.slmk.remove_contact_except_list"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->removeContactExceptList:Z

    .line 199
    const-string/jumbo v1, "ro.slmk.dha_pwhitelist_enable"

    const-string v7, "1"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    .line 201
    const-string/jumbo v1, "ro.slmk.dha_knox_plist_enable"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    .line 203
    const-string/jumbo v1, "ro.slmk.dha_lmk_scale"

    const-string v8, "-1"

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    .line 205
    const-string/jumbo v1, "ro.slmk.dha_lmk_array"

    const-string/jumbo v8, "none"

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    .line 207
    const-string/jumbo v1, "ro.slmk.ams_exception_enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    .line 209
    const-string/jumbo v1, "ro.slmk.provider_upgrade_adj"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->AMSExceptionProviderUpgradeAdjEnable:Z

    .line 211
    const-string/jumbo v1, "ro.slmk.ams_knoxexpt_enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    .line 213
    const-string/jumbo v1, "ro.slmk.fall_prevent_enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    .line 215
    const-string/jumbo v1, "ro.slmk.dha_package_enable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    .line 217
    const-string/jumbo v1, "ro.slmk.dha_dialer_except_th"

    const-string v8, "3072"

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->DIALER_EXCEPTION_TH:I

    .line 220
    const-string/jumbo v1, "ro.slmk.bora_policy_enable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    .line 222
    const-string/jumbo v1, "ro.slmk.cleanup_webview_enable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->CLEANUP_WEBVIEW_ENABLE:Z

    .line 224
    const/16 v1, 0x398

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "ro.slmk.webview_adj_th"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->WEBVIEW_ADJ_THRESHOLD:I

    .line 226
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x1

    if-lez v1, :cond_269

    goto :goto_276

    .line 227
    :cond_269
    const-string/jumbo v1, "ro.slmk.enable_picked_adj"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_278

    :goto_276
    move v1, v8

    goto :goto_279

    :cond_278
    move v1, v0

    :goto_279
    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    .line 229
    const-string/jumbo v1, "ro.slmk.neverkill_sqetool_enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->NEVERKILL_SQETOOL_ENABLE:Z

    .line 231
    const-string/jumbo v1, "ro.slmk.beks_enable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    .line 233
    const-string/jumbo v1, "ro.slmk.lmkd_killexcept_enable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mLmkdOnlyKillExceptionEnable:Z

    .line 235
    const-string/jumbo v1, "ro.slmk.beks_key"

    const-string v9, "31"

    invoke-static {v1, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->beks_package_key_bit:I

    .line 241
    const-wide/32 v9, 0x200000

    sput-wide v9, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    .line 243
    const-string v11, "com.google.process.gapps"

    const-string v12, "com.sec.android.gallery3d"

    const-string v13, "com.sec.android.app.sbrowser"

    const-string v14, "com.google.android.gm"

    const-string v15, "com.google.android.apps.maps"

    const-string v16, "com.samsung.android.app.notes"

    const-string v17, "com.android.vending"

    const-string v18, "Reserved"

    const-string v19, "INCALLUI"

    const-string v20, "com.sec.android.app.camera"

    const-string v21, "MMS"

    const-string v22, "com.baidu.BaiduMap"

    const-string v23, "Reserved"

    filled-new-array/range {v11 .. v23}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    .line 259
    const/4 v1, 0x5

    new-array v1, v1, [[Ljava/lang/String;

    const-string v9, "android.process.acore"

    const-string v10, "2"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v0

    const-string v9, "CONTACTS"

    filled-new-array {v9, v4}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    const-string v9, "DIALER"

    filled-new-array {v9, v4}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v1, v11

    const-string v9, "android.process.media"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v1, v11

    const-string v9, "com.samsung.cmh:CMH"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v6

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    .line 267
    const-string v11, "com.google.process.gapps"

    const-string v12, "com.samsung.android.mobileservice"

    const-string v13, "com.osp.app.signin"

    const-string v14, "com.google.process.gservices"

    const-string v15, "com.sec.android.provider.badge"

    const-string v16, "com.samsung.ipservice"

    const-string v17, "com.sec.android.app.soundalive"

    const-string v18, "com.google.android.googlequicksearchbox:search"

    const-string v19, "com.verizon.messaging.vzmsgs"

    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    .line 278
    const/4 v1, 0x3

    new-array v1, v1, [[Ljava/lang/String;

    const-string v6, "com.salab.act"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    const-string v6, "com.sec.android.app.tinym"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v8

    const-string v6, "com.sec.aecmonitor"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v1, v9

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

    .line 284
    const-string v10, "com.sec.android.app.myfiles"

    const-string v11, "com.sec.android.app.sbrowser"

    const-string v12, "com.android.settings"

    const-string v13, "com.sec.android.gallery3d"

    const-string v14, "com.samsung.android.dialer"

    const-string v15, "com.samsung.android.messaging"

    const-string v16, "com.sec.android.app.camera"

    const-string v17, "com.samsung.android.calendar"

    filled-new-array/range {v10 .. v17}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

    .line 295
    const-string v9, "com.samsung.ipservice"

    const-string v10, "com.samsung.storyservice"

    const-string v11, "com.samsung.mlp"

    const-string v12, "com.google.android.syncadapters.contacts"

    const-string v13, "com.google.process.gservices"

    const-string v14, "com.google.process.gapps"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->LMKD_ONLY_KILL_SKIP_ARRAY:[Ljava/lang/String;

    .line 304
    const-string v1, "com.samsung.adaptivebrightnessgo"

    const-string v6, "android.system"

    const-string v9, "com.samsung.android.smartface"

    filled-new-array {v1, v6, v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->LMKD_CAM_CLIENT_EXCEPT_ARRAY:[Ljava/lang/String;

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->sBEKS_processList:Ljava/util/ArrayList;

    .line 312
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_camera_map:Ljava/util/LinkedHashMap;

    .line 313
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    .line 314
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    .line 315
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_MLexcept_map:Ljava/util/HashMap;

    .line 316
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_neverkillexcept_map:Ljava/util/HashMap;

    .line 317
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_lmkdonlykillexcept_map:Ljava/util/HashMap;

    .line 318
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_cameraclientexcept_map:Ljava/util/HashMap;

    .line 320
    const-string/jumbo v1, "ro.slmk.dha_pwhl_key"

    const-string v6, "512"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    .line 322
    const-string/jumbo v1, "ro.slmk.dha_pwhl_key_knox"

    const-string v6, "1539"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key_knox:I

    .line 324
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "ro.slmk.dha_pwhl_chn_key"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_chn_key:I

    .line 326
    const-string/jumbo v1, "ro.slmk.plg_memory_th"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->sProvider_lifeguard_memory_TH:I

    .line 327
    const-string/jumbo v1, "ro.slmk.plg_key"

    const-string v3, "3"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->sProvider_lifeguard_key:I

    .line 362
    const-string/jumbo v1, "ro.slmk.max_snapshot_num"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshotNum:I

    .line 363
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "ro.slmk.2nd.max_snapshot_num"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshotNum2nd:I

    .line 366
    const-string/jumbo v1, "ro.slmk.neverkill_num_lowram"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_default:I

    .line 367
    const-string/jumbo v1, "ro.slmk.neverkill_num_8G"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_8g:I

    .line 368
    const-string/jumbo v1, "ro.slmk.neverkill_num_12G"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_12g:I

    .line 369
    const-string/jumbo v1, "ro.slmk.neverkill_num_16G"

    const-string v3, "5"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_16g:I

    .line 374
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v6

    const-wide/32 v9, 0x100000

    div-long/2addr v6, v9

    sput-wide v6, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    .line 375
    const-wide/16 v9, 0x2800

    cmp-long v1, v6, v9

    if-lez v1, :cond_45c

    move v1, v8

    goto :goto_45d

    :cond_45c
    move v1, v0

    :goto_45d
    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->IS_HIGH_CAPACITY_RAM:Z

    .line 377
    sget-wide v6, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v9, 0x3000

    cmp-long v1, v6, v9

    if-lez v1, :cond_46c

    .line 378
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_16g:I

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_486

    .line 379
    :cond_46c
    const-wide/16 v9, 0x2000

    cmp-long v1, v6, v9

    if-lez v1, :cond_477

    .line 380
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_12g:I

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_486

    .line 381
    :cond_477
    const-wide/16 v9, 0x1800

    cmp-long v1, v6, v9

    if-lez v1, :cond_482

    .line 382
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_8g:I

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_486

    .line 384
    :cond_482
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->max_neverkilledapp_num_default:I

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    .line 421
    :goto_486
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->prevCameraState:I

    .line 1604
    const-string/jumbo v0, "ro.slmk.low"

    const-string v1, "1001"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_ADJ:I

    .line 1605
    const-string/jumbo v0, "ro.slmk.medium"

    const-string v1, "850"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_MEDIUM_ADJ:I

    .line 1606
    const-string/jumbo v0, "ro.slmk.critical"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_ADJ:I

    .line 1607
    const-string/jumbo v0, "ro.slmk.debug"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_DEBUG:Z

    .line 1608
    const-string/jumbo v0, "ro.slmk.critical_upgrade"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_UPGRADE:Z

    .line 1609
    const-string/jumbo v0, "ro.slmk.upgrade_pressure"

    const-string v1, "80"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    .line 1610
    const-string/jumbo v0, "ro.slmk.downgrade_pressure"

    const-string v1, "100"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    .line 1611
    const-string/jumbo v0, "ro.slmk.kill_heaviest_task"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_HEAVIEST_TASK:Z

    .line 1612
    const-string/jumbo v0, "ro.config.low_ram"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_RAM_DEVICE:Z

    .line 1613
    const-string/jumbo v0, "ro.slmk.kill_timeout_ms"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_TIMEOUT_MS:I

    .line 1614
    const-string/jumbo v0, "ro.slmk.use_minfree_levels"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    .line 1615
    const-string/jumbo v0, "ro.slmk.enable_userspace_lmk"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    .line 1616
    sput-boolean v8, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    .line 1617
    const-string/jumbo v0, "ro.slmk.enable_cmarbinfree_sub"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_CMARBINFREE_SUB:Z

    .line 1618
    const-string/jumbo v0, "ro.slmk.enable_upgrade_criadj"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    .line 1619
    const-string/jumbo v0, "ro.slmk.freelimit_enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    .line 1620
    const-string/jumbo v0, "ro.slmk.use_lowmem_keep_except"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_MEM_KEEP_ENABLE:Z

    .line 1621
    const-string/jumbo v0, "ro.slmk.freelimit_val"

    const-string v1, "11"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    .line 1622
    const-string/jumbo v0, "ro.slmk.custom_sw_limit"

    const-string v1, "500"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    .line 1623
    const-string/jumbo v0, "ro.slmk.custom_tm_limit"

    const-string v1, "1000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    .line 1624
    const-string/jumbo v0, "ro.slmk.psi_low"

    const-string v1, "70"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_LOW_TH:I

    .line 1625
    const-string/jumbo v0, "ro.slmk.psi_medium"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    .line 1626
    const-string/jumbo v0, "ro.slmk.psi_critical"

    const-string v1, "120"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/DynamicHiddenApp;->isOriginBG:Z

    .line 107
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_88

    iput-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mOomAdj:[I

    .line 112
    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 155
    const-wide/32 v2, 0x2000000

    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    .line 157
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    .line 159
    const/high16 v2, 0x40000000    # 2.0f

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    .line 171
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    .line 173
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->INIT_CACHED_APPS:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    .line 329
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    .line 330
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/DynamicHiddenApp;->now:J

    .line 333
    const-wide/32 v6, 0x1b7740

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/am/DynamicHiddenApp;->oldTime:J

    .line 335
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    .line 336
    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    .line 337
    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    .line 338
    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    .line 339
    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    .line 341
    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroupUid:I

    .line 343
    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->numCachedExtraGroup:I

    .line 345
    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    .line 346
    iput-boolean v4, p0, Lcom/android/server/am/DynamicHiddenApp;->isDhaKeepEmpty:Z

    .line 348
    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 349
    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    .line 350
    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    .line 351
    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    .line 352
    const-string/jumbo v1, "ro.slmk.bora_cached_num"

    const-string v2, "3"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->recentActivityProcessLimit:I

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->recentActivityProcessList:Ljava/util/ArrayList;

    .line 356
    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 422
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/DynamicHiddenApp$1;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;

    .line 390
    return-void

    nop

    :array_88
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x3e7
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/server/am/DynamicHiddenApp$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/DynamicHiddenApp$1;

    .line 64
    invoke-direct {p0}, Lcom/android/server/am/DynamicHiddenApp;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/DynamicHiddenApp;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/DynamicHiddenApp;

    .line 64
    iget-boolean v0, p0, Lcom/android/server/am/DynamicHiddenApp;->isOriginBG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/am/DynamicHiddenApp;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/DynamicHiddenApp;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/android/server/am/DynamicHiddenApp;->isOriginBG:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/am/DynamicHiddenApp;)Lcom/android/internal/util/MemInfoReader;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/DynamicHiddenApp;

    .line 64
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    return-object v0
.end method

.method static synthetic access$300()F
    .registers 1

    .line 64
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->mMinFreeMax:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/DynamicHiddenApp;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/DynamicHiddenApp;

    .line 64
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    return v0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 64
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->originCachedMin:I

    return v0
.end method

.method static synthetic access$502(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 64
    sput p0, Lcom/android/server/am/DynamicHiddenApp;->originCachedMin:I

    return p0
.end method

.method static synthetic access$600()I
    .registers 1

    .line 64
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->originEmptyMax:I

    return v0
.end method

.method static synthetic access$602(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 64
    sput p0, Lcom/android/server/am/DynamicHiddenApp;->originEmptyMax:I

    return p0
.end method

.method static synthetic access$700()I
    .registers 1

    .line 64
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->prevCameraState:I

    return v0
.end method

.method static synthetic access$702(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 64
    sput p0, Lcom/android/server/am/DynamicHiddenApp;->prevCameraState:I

    return p0
.end method

.method public static checkIsCameraProcess(Ljava/lang/String;I)V
    .registers 4
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "pid"    # I

    .line 868
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->CAMERA_DHA_VER:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 869
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :cond_16
    return-void
.end method

.method private dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V
    .registers 10
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 900
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v0, "INCALLUI"

    const-string v1, "DIALER"

    const-string v2, "CONTACTS"

    const-string v3, "MMS"

    if-eqz p4, :cond_23

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_22
    goto :goto_83

    .line 902
    :cond_23
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 903
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/DynamicHiddenApp;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    .line 904
    :cond_37
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->removeContactExceptList:Z

    if-nez v2, :cond_4f

    .line 905
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/am/DynamicHiddenApp;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    .line 906
    :cond_4f
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 907
    sget-wide v0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->DIALER_EXCEPTION_TH:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_83

    .line 908
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.dialer"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    .line 913
    :cond_68
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 914
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/DynamicHiddenApp;->getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    .line 916
    :cond_7c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_83
    :goto_83
    return-void
.end method

.method private dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V
    .registers 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 921
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v0, "INCALLUI"

    const-string v1, "DIALER"

    const-string v2, "CONTACTS"

    const-string v3, "MMS"

    if-eqz p3, :cond_23

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_22
    goto :goto_62

    .line 923
    :cond_23
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 924
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/DynamicHiddenApp;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 925
    :cond_33
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 926
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/am/DynamicHiddenApp;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 927
    :cond_43
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 928
    const-string v0, "com.samsung.android.dialer"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 929
    :cond_4f
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 930
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/DynamicHiddenApp;->getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 932
    :cond_5f
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    :goto_62
    return-void
.end method

.method public static getCurFaultAroundBytes()I
    .registers 6

    .line 549
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x2020

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 552
    .local v1, "SINGLE_LONG_FORMAT":[I
    new-array v0, v0, [J

    .line 553
    .local v0, "longTmp":[J
    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    .line 554
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->FARND_NODE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 555
    aget-wide v2, v0, v3

    long-to-int v2, v2

    return v2
.end method

.method public static getCurMmapLimit()I
    .registers 6

    .line 539
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x2020

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 542
    .local v1, "SINGLE_LONG_FORMAT":[I
    new-array v0, v0, [J

    .line 543
    .local v0, "longTmp":[J
    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    .line 544
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->MMAP_NODE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 545
    aget-wide v2, v0, v3

    long-to-int v2, v2

    return v2
.end method

.method public static getCurSwappiness()I
    .registers 6

    .line 529
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x2020

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 532
    .local v1, "SINGLE_LONG_FORMAT":[I
    new-array v0, v0, [J

    .line 533
    .local v0, "longTmp":[J
    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    .line 534
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->SWAP_NODE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 535
    aget-wide v2, v0, v3

    long-to-int v2, v2

    return v2
.end method

.method private getInCallUIPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 2006
    const-string v0, "com.android.incallui"

    .line 2007
    .local v0, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2008
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2009
    return-object v0

    .line 2014
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2015
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1f} :catch_21

    .line 2018
    nop

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_23

    .line 2016
    :catch_21
    move-exception v2

    .line 2017
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v0

    .line 2019
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_23
    return-object v1
.end method

.method public static getInstance()Lcom/android/server/am/DynamicHiddenApp;
    .registers 1

    .line 397
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    return-object v0
.end method

.method public static getLMKCountInfo()J
    .registers 6

    .line 579
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x2020

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 582
    .local v1, "SINGLE_LONG_FORMAT":[I
    new-array v0, v0, [J

    .line 583
    .local v0, "longTmp":[J
    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    .line 584
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_NODE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 585
    aget-wide v2, v0, v3

    return-wide v2
.end method

.method public static getLMKDCountInfo()J
    .registers 6

    .line 559
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x2020

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 562
    .local v1, "SINGLE_LONG_FORMAT":[I
    new-array v0, v0, [J

    .line 563
    .local v0, "longTmp":[J
    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    .line 564
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->LMKD_NODE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 565
    aget-wide v2, v0, v3

    return-wide v2
.end method

.method public static getLMKDCricCountInfo()J
    .registers 6

    .line 569
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x2020

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 572
    .local v1, "SINGLE_LONG_FORMAT":[I
    new-array v0, v0, [J

    .line 573
    .local v0, "longTmp":[J
    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    .line 574
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->LMKD_CRIC_NODE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 575
    aget-wide v2, v0, v3

    return-wide v2
.end method

.method private getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1961
    const-string v0, "com.android.mms"

    .line 1962
    .local v0, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1963
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1964
    return-object v0

    .line 1969
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1970
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1f} :catch_21

    .line 1973
    nop

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_23

    .line 1971
    :catch_21
    move-exception v2

    .line 1972
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v0

    .line 1974
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_23
    return-object v1
.end method

.method public static getPhysicalMemory()I
    .registers 4

    .line 2024
    sget-wide v0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v2, 0x3000

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    .line 2025
    const/16 v0, 0x10

    return v0

    .line 2026
    :cond_b
    const-wide/16 v2, 0x2000

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    .line 2027
    const/16 v0, 0xc

    return v0

    .line 2028
    :cond_14
    const-wide/16 v2, 0x1800

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    .line 2029
    const/16 v0, 0x8

    return v0

    .line 2030
    :cond_1d
    const-wide/16 v2, 0x1000

    cmp-long v2, v0, v2

    if-lez v2, :cond_25

    .line 2031
    const/4 v0, 0x6

    return v0

    .line 2032
    :cond_25
    const-wide/16 v2, 0xc00

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    .line 2033
    const/4 v0, 0x4

    return v0

    .line 2034
    :cond_2d
    const-wide/16 v2, 0x800

    cmp-long v2, v0, v2

    if-lez v2, :cond_35

    .line 2035
    const/4 v0, 0x3

    return v0

    .line 2036
    :cond_35
    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-lez v0, :cond_3d

    .line 2037
    const/4 v0, 0x2

    return v0

    .line 2039
    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method public static getRAMsizeGB()I
    .registers 8

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "mem_gb":I
    const/4 v1, 0x0

    .line 591
    .local v1, "mem_total":I
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_30

    .line 592
    .local v2, "ram_array":[I
    new-instance v3, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v3}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 593
    .local v3, "minfo":Lcom/android/internal/util/MemInfoReader;
    nop

    .line 594
    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 595
    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 596
    div-int/lit16 v1, v1, 0x400

    .line 598
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    array-length v5, v2

    if-ge v4, v5, :cond_29

    .line 599
    aget v5, v2, v4

    if-gt v1, v5, :cond_26

    .line 600
    aget v0, v2, v4

    .line 601
    return v0

    .line 598
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 604
    .end local v4    # "i":I
    :cond_29
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget v4, v2, v4

    return v4

    nop

    :array_30
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
    .end array-data
.end method

.method public static isAMSExceptionProcess(Ljava/lang/String;)I
    .registers 2
    .param p0, "processName"    # Ljava/lang/String;

    .line 799
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 800
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public static isBlockedRecentCached()Z
    .registers 1

    .line 877
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->RECENT_CACHED_ENABLE:Z

    if-nez v0, :cond_a

    .line 878
    const/4 v0, 0x1

    return v0

    .line 880
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static isDhaKeepEmptyProcess(Ljava/lang/String;)I
    .registers 2
    .param p0, "processName"    # Ljava/lang/String;

    .line 794
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 795
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public static isLmkdOnlyKillProcess(Ljava/lang/String;)Z
    .registers 2
    .param p0, "processName"    # Ljava/lang/String;

    .line 804
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mLmkdOnlyKillExceptionEnable:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_lmkdonlykillexcept_map:Ljava/util/HashMap;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    .line 805
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static isMLExceptionProcess(Ljava/lang/String;I)I
    .registers 4
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "appinfo":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_MLexcept_map:Ljava/util/HashMap;

    if-eqz v1, :cond_2f

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 862
    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_MLexcept_map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 864
    :cond_2f
    const/4 v1, -0x1

    return v1
.end method

.method public static isNeverKillExceptionProcess(Ljava/lang/String;)I
    .registers 2
    .param p0, "processName"    # Ljava/lang/String;

    .line 809
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_neverkillexcept_map:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_neverkillexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 810
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public static isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I
    .registers 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 813
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 814
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check webview name : "

    const-string v2, "ActivityManager"

    if-eqz v0, :cond_3b

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "check hostingname webview : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 817
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "check hostingname webview : null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_54
    const/4 v0, 0x2

    return v0

    .line 820
    :cond_56
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, ":sandboxed_process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 821
    const/4 v0, 0x4

    return v0

    .line 822
    :cond_62
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 823
    const/4 v0, 0x6

    return v0

    .line 826
    :cond_6e
    const/4 v0, -0x1

    return v0
.end method

.method public static makeMLLists(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;",
            ">;)V"
        }
    .end annotation

    .line 786
    .local p0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;>;"
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_MLexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 787
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;

    .line 788
    .local v1, "info":Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "appinfo":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->dha_MLexcept_map:Ljava/util/HashMap;

    iget v4, v1, Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .end local v1    # "info":Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
    .end local v2    # "appinfo":Ljava/lang/String;
    goto :goto_9

    .line 791
    :cond_39
    return-void
.end method

.method private removeProviderLifeguardProcs()V
    .registers 6

    .line 768
    sget-wide v0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->sProvider_lifeguard_memory_TH:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 769
    const/4 v0, 0x0

    .local v0, "idx":I
    const/4 v1, 0x1

    .local v1, "bitFlag":I
    :goto_b
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_22

    .line 770
    sget v3, Lcom/android/server/am/DynamicHiddenApp;->sProvider_lifeguard_key:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_1d

    .line 771
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    aget-object v2, v2, v0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/am/DynamicHiddenApp;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 773
    :cond_1d
    shl-int/lit8 v1, v1, 0x1

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 776
    .end local v0    # "idx":I
    .end local v1    # "bitFlag":I
    :cond_22
    return-void
.end method

.method public static setTaskSnapshot(II)V
    .registers 13
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 2044
    const/4 v0, 0x0

    .line 2045
    .local v0, "isUpdateSnapshot":Z
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getPhysicalMemory()I

    move-result v1

    .line 2046
    .local v1, "ram":I
    mul-int v2, p0, p1

    .line 2047
    .local v2, "resolution":I
    const/4 v3, 0x0

    .line 2048
    .local v3, "curRes":I
    const/4 v4, 0x7

    new-array v4, v4, [[I

    const/4 v5, 0x4

    new-array v6, v5, [I

    fill-array-data v6, :array_118

    const/4 v7, 0x0

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_124

    const/4 v8, 0x1

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_130

    const/4 v8, 0x2

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_13c

    const/4 v8, 0x3

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_148

    aput-object v6, v4, v5

    new-array v6, v5, [I

    fill-array-data v6, :array_154

    const/4 v8, 0x5

    aput-object v6, v4, v8

    new-array v5, v5, [I

    fill-array-data v5, :array_160

    const/4 v6, 0x6

    aput-object v5, v4, v6

    .line 2059
    .local v4, "snapshot":[[I
    const-string/jumbo v5, "physical memory: "

    const-string v6, "DynamicHiddenApp_TASK_SNAPSHOT"

    if-eqz v2, :cond_b7

    if-eqz v1, :cond_b7

    .line 2060
    const-string/jumbo v9, "start update max task snapshot number"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const v9, 0x384000

    if-lt v2, v9, :cond_59

    const/4 v3, 0x3

    goto :goto_61

    .line 2062
    :cond_59
    const v9, 0x1fa400

    if-lt v2, v9, :cond_60

    const/4 v3, 0x2

    goto :goto_61

    .line 2063
    :cond_60
    const/4 v3, 0x1

    .line 2065
    :goto_61
    const/4 v9, 0x0

    .local v9, "idx":I
    :goto_62
    array-length v10, v4

    if-ge v9, v10, :cond_93

    .line 2066
    aget-object v10, v4, v9

    aget v10, v10, v7

    if-ne v1, v10, :cond_90

    .line 2067
    aget-object v7, v4, v9

    aget v7, v7, v3

    sput v7, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshot:I

    .line 2068
    const/4 v0, 0x1

    .line 2069
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "update max task snapshot number, physical memory: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", current resolution : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    goto :goto_93

    .line 2065
    :cond_90
    add-int/lit8 v9, v9, 0x1

    goto :goto_62

    .line 2073
    .end local v9    # "idx":I
    :cond_93
    :goto_93
    if-nez v0, :cond_d8

    .line 2074
    sput v8, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshot:I

    .line 2075
    const-string v7, "can not update max task snapshot number, due to unidentified physical memory"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", current resolution: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    .line 2079
    :cond_b7
    sput v8, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshot:I

    .line 2080
    const-string v7, "can not update max task snapshot number, due to resolution or physical memory"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", resolution: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :cond_d8
    :goto_d8
    sget-wide v7, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    sget v5, Lcom/android/server/am/DynamicHiddenApp;->TOTAL_MEMORY:I

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-lez v5, :cond_eb

    .line 2086
    sget v5, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshotNum2nd:I

    if-lez v5, :cond_e6

    goto :goto_e8

    :cond_e6
    sget v5, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshot:I

    :goto_e8
    sput v5, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshot:I

    goto :goto_f4

    .line 2088
    :cond_eb
    sget v5, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshotNum:I

    if-lez v5, :cond_f0

    goto :goto_f2

    :cond_f0
    sget v5, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshot:I

    :goto_f2
    sput v5, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshot:I

    .line 2090
    :goto_f4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TaskSnapShot : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshot:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", CurRes : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    sget v5, Lcom/android/server/am/DynamicHiddenApp;->sMaxTaskSnapshot:I

    invoke-static {v5}, Lcom/android/server/wm/TaskSnapshotCache;->setMaxSnapshot(I)V

    .line 2092
    return-void

    :array_118
    .array-data 4
        0x2
        0x3
        0x3
        0x3
    .end array-data

    :array_124
    .array-data 4
        0x3
        0x5
        0x3
        0x3
    .end array-data

    :array_130
    .array-data 4
        0x4
        0x8
        0x4
        0x3
    .end array-data

    :array_13c
    .array-data 4
        0x6
        0xa
        0x6
        0x3
    .end array-data

    :array_148
    .array-data 4
        0x8
        0xa
        0x8
        0x4
    .end array-data

    :array_154
    .array-data 4
        0xc
        0xa
        0xa
        0xa
    .end array-data

    :array_160
    .array-data 4
        0x10
        0xa
        0xa
        0xa
    .end array-data
.end method


# virtual methods
.method public MLLaunchKillCheck(Lcom/android/server/am/ProcessRecord;)V
    .registers 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1145
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    packed-switch v0, :pswitch_data_c0

    .line 1152
    const-wide/16 v0, 0x0

    .line 1153
    .local v0, "mlLaunchTimeout":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    sub-long/2addr v2, v4

    .line 1155
    .end local v0    # "mlLaunchTimeout":J
    .local v2, "mlLaunchTimeout":J
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    const/16 v4, 0xd

    const-string v5, " slots kill a"

    const/16 v6, 0x35c

    const/16 v7, 0x13

    const-wide/16 v8, -0x1

    if-eqz v0, :cond_68

    .line 1156
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    if-eqz v0, :cond_65

    iget-wide v10, p1, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    iget-wide v12, v0, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    cmp-long v0, v10, v12

    if-lez v0, :cond_65

    .line 1157
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    .line 1158
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/server/am/ProcessRecord;->setMlLaunch(Z)V

    .line 1159
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-lt v0, v7, :cond_65

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 1160
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    if-le v0, v6, :cond_65

    .line 1161
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ML_Kill: over "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v4, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    goto :goto_65

    .line 1149
    .end local v2    # "mlLaunchTimeout":J
    :pswitch_64
    goto :goto_be

    .line 1164
    .restart local v2    # "mlLaunchTimeout":J
    :cond_65
    :goto_65
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    goto :goto_87

    .line 1166
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "app launch time is "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p1, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " tmp time is "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "ActivityManager"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 1169
    :goto_87
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    if-eqz v0, :cond_be

    iget-wide v10, p1, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    cmp-long v0, v10, v8

    if-eqz v0, :cond_be

    const-wide/32 v8, 0x1b7740

    cmp-long v0, v2, v8

    if-lez v0, :cond_be

    .line 1170
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-lt v0, v7, :cond_be

    .line 1171
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    if-le v0, v6, :cond_be

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ML_Kill: timeout "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    .line 1174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 1179
    .end local v2    # "mlLaunchTimeout":J
    :cond_be
    :goto_be
    return-void

    nop

    :pswitch_data_c0
    .packed-switch 0x10
        :pswitch_64
        :pswitch_64
        :pswitch_64
    .end packed-switch
.end method

.method public activeLaunchKillCheck(Lcom/android/server/am/ProcessRecord;)V
    .registers 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1111
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    packed-switch v0, :pswitch_data_ae

    .line 1118
    const-wide/16 v0, 0x0

    .line 1119
    .local v0, "activeLaunchTimeout":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    sub-long/2addr v2, v4

    .line 1120
    .end local v0    # "activeLaunchTimeout":J
    .local v2, "activeLaunchTimeout":J
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    const-string v1, "ActivityManager"

    const/16 v6, 0xd

    const/16 v7, 0x35c

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_58

    const-wide/16 v10, 0xbb8

    cmp-long v0, v2, v10

    if-lez v0, :cond_58

    sget-wide v10, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v12, 0x2af8

    cmp-long v0, v10, v12

    if-gtz v0, :cond_58

    .line 1121
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-lt v0, v7, :cond_51

    .line 1122
    const-string v0, "AL_Kill : over 3 sec"

    invoke-virtual {p1, v0, v6, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    .line 1123
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AL_Kill : over 3 sec: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 1115
    .end local v2    # "activeLaunchTimeout":J
    :pswitch_50
    goto :goto_ac

    .line 1125
    .restart local v2    # "activeLaunchTimeout":J
    :cond_51
    :goto_51
    invoke-virtual {p1, v9}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 1126
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    .line 1127
    goto :goto_ac

    .line 1129
    :cond_58
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    iget v10, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    if-ge v0, v10, :cond_9d

    .line 1130
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1131
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 1132
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_ac

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active App Launch process < 2 : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 1134
    :cond_9d
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-lt v0, v7, :cond_a6

    .line 1135
    const-string v0, "AL_Kill : over 1 slots"

    invoke-virtual {p1, v0, v6, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    .line 1137
    :cond_a6
    invoke-virtual {p1, v9}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 1138
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    .line 1142
    .end local v2    # "activeLaunchTimeout":J
    :cond_ac
    :goto_ac
    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x10
        :pswitch_50
        :pswitch_50
        :pswitch_50
    .end packed-switch
.end method

.method public addBEKSList(Z)V
    .registers 6
    .param p1, "isFirst"    # Z

    .line 756
    if-nez p1, :cond_7

    .line 757
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->sBEKS_processList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 759
    :cond_7
    const/4 v0, 0x0

    .local v0, "idx":I
    const/4 v1, 0x1

    .local v1, "bitFlag":I
    :goto_9
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->BOOTING_EMPTY_KILL_SKIP_ARRAY:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1f

    .line 760
    sget v3, Lcom/android/server/am/DynamicHiddenApp;->beks_package_key_bit:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_1a

    .line 761
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->sBEKS_processList:Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_1a
    shl-int/lit8 v1, v1, 0x1

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 765
    .end local v0    # "idx":I
    .end local v1    # "bitFlag":I
    :cond_1f
    return-void
.end method

.method addRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 843
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->recentActivityProcessLimit:I

    if-ge v0, v1, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/server/am/DynamicHiddenApp;->isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 844
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_15
    return-void
.end method

.method public addWhitelistList(Z)V
    .registers 9
    .param p1, "isFirst"    # Z

    .line 711
    if-nez p1, :cond_16

    .line 712
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 713
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 714
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_neverkillexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 715
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_lmkdonlykillexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 717
    :cond_16
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_17
    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v2, :cond_32

    .line 718
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    aget-object v5, v1, v0

    aget-object v3, v5, v3

    aget-object v1, v1, v0

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 721
    .end local v0    # "idx":I
    :cond_32
    sget-wide v0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->sProvider_lifeguard_memory_TH:I

    int-to-long v5, v2

    cmp-long v0, v0, v5

    if-lez v0, :cond_53

    .line 722
    const/4 v0, 0x0

    .restart local v0    # "idx":I
    const/4 v1, 0x1

    .local v1, "bitFlag":I
    :goto_3d
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->PROVIDER_LIFEGUARD_ARRAY:[Ljava/lang/String;

    array-length v5, v2

    if-ge v0, v5, :cond_53

    .line 723
    sget v5, Lcom/android/server/am/DynamicHiddenApp;->sProvider_lifeguard_key:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_4e

    .line 724
    sget-object v5, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-direct {p0, v5, v2, v4, p1}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 726
    :cond_4e
    shl-int/lit8 v1, v1, 0x1

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 730
    .end local v0    # "idx":I
    .end local v1    # "bitFlag":I
    :cond_53
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->NEVERKILL_SQETOOL_ENABLE:Z

    if-eqz v0, :cond_71

    .line 731
    const/4 v0, 0x0

    .restart local v0    # "idx":I
    :goto_58
    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_NEVERKILLEXCEPT_ARRAY:[[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_71

    .line 732
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->dha_neverkillexcept_map:Ljava/util/HashMap;

    aget-object v5, v1, v0

    aget-object v5, v5, v3

    aget-object v1, v1, v0

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v2, v5, v1, p1}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 736
    .end local v0    # "idx":I
    :cond_71
    const/4 v0, 0x0

    .restart local v0    # "idx":I
    const/4 v1, 0x1

    .restart local v1    # "bitFlag":I
    :goto_73
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_a0

    .line 737
    sget v3, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    if-ne v3, v4, :cond_89

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key_knox:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_89

    .line 738
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    aget-object v2, v2, v0

    const/4 v5, 0x2

    invoke-direct {p0, v3, v2, v5, p1}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 740
    :cond_89
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    if-ne v2, v4, :cond_9b

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_9b

    .line 741
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3, v4, p1}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 743
    :cond_9b
    shl-int/lit8 v1, v1, 0x1

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 746
    .end local v0    # "idx":I
    .end local v1    # "bitFlag":I
    :cond_a0
    const/4 v0, 0x0

    .restart local v0    # "idx":I
    :goto_a1
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mLmkdOnlyKillExceptionEnable:Z

    if-eqz v1, :cond_b4

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->LMKD_ONLY_KILL_SKIP_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_b4

    .line 747
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->dha_lmkdonlykillexcept_map:Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-direct {p0, v2, v1, v4, p1}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 750
    .end local v0    # "idx":I
    :cond_b4
    const/4 v0, 0x0

    .restart local v0    # "idx":I
    :goto_b5
    if-eqz p1, :cond_ce

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->CAMERA_DHA_VER:I

    if-le v1, v4, :cond_ce

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->LMKD_CAM_CLIENT_EXCEPT_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_ce

    .line 751
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->dha_cameraclientexcept_map:Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 753
    .end local v0    # "idx":I
    :cond_ce
    return-void
.end method

.method public checkKeptProcess(Lcom/android/server/am/ProcessRecord;)I
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1055
    const/4 v0, 0x0

    .line 1056
    .local v0, "isKillSkip":I
    const/4 v1, 0x0

    .line 1057
    .local v1, "isDhaKeepEmpty":Z
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    if-eqz v2, :cond_33

    .line 1058
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x2

    if-ge v2, v3, :cond_1b

    .line 1059
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v2, :cond_33

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-gt v2, v4, :cond_33

    .line 1060
    const/4 v0, 0x1

    goto :goto_33

    .line 1062
    :cond_1b
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    if-eqz v2, :cond_33

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v2, :cond_33

    .line 1063
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-lt v2, v4, :cond_2e

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2e

    .line 1064
    const/4 v0, 0x1

    goto :goto_33

    .line 1065
    :cond_2e
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-nez v2, :cond_33

    .line 1066
    const/4 v1, 0x1

    .line 1070
    :cond_33
    :goto_33
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3c

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    if-ne v2, v3, :cond_41

    :cond_3c
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez v2, :cond_41

    .line 1071
    const/4 v1, 0x1

    .line 1074
    :cond_41
    if-eq v0, v3, :cond_46

    if-eqz v1, :cond_46

    const/4 v0, 0x2

    .line 1076
    :cond_46
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    const/16 v4, 0x11

    if-eq v2, v4, :cond_4f

    goto :goto_59

    .line 1078
    :cond_4f
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v2, :cond_59

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_59

    .line 1079
    const/4 v0, 0x1

    .line 1086
    :cond_59
    :goto_59
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-ne v2, v3, :cond_5e

    const/4 v0, 0x3

    .line 1087
    :cond_5e
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    if-ne v2, v3, :cond_63

    const/4 v0, 0x4

    .line 1089
    :cond_63
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isMLException:Z

    if-ne v2, v3, :cond_68

    const/4 v0, 0x5

    .line 1090
    :cond_68
    invoke-virtual {p0, p1}, Lcom/android/server/am/DynamicHiddenApp;->isForKeepingCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const/4 v0, 0x6

    .line 1092
    :cond_6f
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    if-eqz v2, :cond_74

    const/4 v0, 0x7

    .line 1094
    :cond_74
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    if-ne v2, v3, :cond_7a

    const/16 v0, 0x8

    .line 1096
    :cond_7a
    return v0
.end method

.method clearRecentActivityProcess()V
    .registers 2

    .line 839
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 840
    return-void
.end method

.method decrementEmptyAppCount(II)I
    .registers 6
    .param p1, "empty"    # I
    .param p2, "cached"    # I

    .line 1015
    move v0, p1

    .line 1017
    .local v0, "ret":I
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    if-gt v0, v1, :cond_16

    .line 1018
    add-int/lit8 v1, p2, -0x1

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    .line 1019
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    if-ge v1, v2, :cond_f

    .line 1020
    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    .line 1022
    :cond_f
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    if-ge v0, v1, :cond_15

    .line 1023
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    .line 1025
    :cond_15
    return v0

    .line 1028
    :cond_16
    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    sub-int/2addr v0, v2

    .line 1030
    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    if-le v2, v0, :cond_22

    .line 1031
    if-ge v0, v1, :cond_24

    .line 1032
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    goto :goto_24

    .line 1036
    :cond_22
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    .line 1038
    :cond_24
    :goto_24
    return v0
.end method

.method public destroyKeptProcessActivity(Lcom/android/server/am/ProcessRecord;II)Z
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "numCached"    # I
    .param p3, "cachedProcessLimit"    # I

    .line 1182
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_e

    const/16 v1, 0x11

    if-eq v0, v1, :cond_e

    .line 1202
    const/4 v0, 0x0

    return v0

    .line 1185
    :cond_e
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-le v0, p3, :cond_74

    .line 1186
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    const-string v2, " in Cached"

    const-string v3, "ActivityManager"

    if-ne v0, v1, :cond_48

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PWHL - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "Convert from hidden to empty"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(IILjava/lang/String;)V

    goto :goto_74

    .line 1193
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PWHL_KNOX - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "Convert from hidden to empty knox"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(IILjava/lang/String;)V

    .line 1198
    :cond_74
    :goto_74
    return v1
.end method

.method public dhaProcessesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 25
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v2

    if-gtz v2, :cond_13

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 1257
    return-void

    .line 1260
    :cond_13
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/DynamicHiddenApp;->isDhaKeepEmpty:Z

    .line 1262
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_45

    .line 1263
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 1264
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v3, :cond_45

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-gt v3, v5, :cond_45

    .line 1265
    return-void

    .line 1267
    :cond_2e
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    if-eqz v3, :cond_45

    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v3, :cond_45

    .line 1268
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-lt v3, v5, :cond_3f

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-gt v3, v4, :cond_3f

    .line 1269
    return-void

    .line 1270
    :cond_3f
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-nez v3, :cond_45

    .line 1271
    iput-boolean v6, v0, Lcom/android/server/am/DynamicHiddenApp;->isDhaKeepEmpty:Z

    .line 1275
    :cond_45
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/DynamicHiddenApp;->isForKeepingCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1276
    return-void

    .line 1278
    :cond_4c
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isMLException:Z

    if-nez v3, :cond_6ee

    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    if-eqz v3, :cond_56

    goto/16 :goto_6ee

    .line 1282
    :cond_56
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    if-eqz v3, :cond_5b

    .line 1283
    return-void

    .line 1286
    :cond_5b
    sget v3, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    if-eq v3, v6, :cond_63

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    if-ne v3, v6, :cond_69

    :cond_63
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez v3, :cond_69

    .line 1287
    iput-boolean v6, v0, Lcom/android/server/am/DynamicHiddenApp;->isDhaKeepEmpty:Z

    .line 1290
    :cond_69
    const/4 v3, 0x0

    .line 1291
    .local v3, "isDhaKill":Z
    const/4 v7, 0x0

    .line 1292
    .local v7, "killedBy":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v8

    const-string v9, "AL_Kill : over 3 sec: "

    const-string v10, "AL_Kill : over 3 sec"

    const-string v12, "ML_Kill: over "

    const-string v13, "AL_Kill : over 1 slots"

    const-wide/16 v16, 0xbb8

    const-string v11, " K"

    const-string v2, "] : "

    const-string v5, "KPU : put ["

    const-string v14, ", "

    move-object/from16 v19, v5

    const-wide/16 v20, 0x400

    const-string v15, "ActivityManager"

    const/16 v4, 0xd

    packed-switch v8, :pswitch_data_6f0

    .line 1458
    move-object/from16 v22, v7

    move-object/from16 v8, v19

    .end local v7    # "killedBy":Ljava/lang/String;
    .local v22, "killedBy":Ljava/lang/String;
    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    .line 1460
    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    if-eqz v5, :cond_6eb

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x384

    if-lt v5, v6, :cond_6eb

    .line 1461
    iget-boolean v5, v0, Lcom/android/server/am/DynamicHiddenApp;->isDhaKeepEmpty:Z

    if-eqz v5, :cond_499

    .line 1462
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    .line 1463
    goto/16 :goto_6eb

    .line 1292
    .end local v22    # "killedBy":Ljava/lang/String;
    .restart local v7    # "killedBy":Ljava/lang/String;
    :pswitch_ab
    move-object/from16 v8, v19

    goto/16 :goto_158

    .line 1358
    :pswitch_af
    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->RECENT_CACHED_ENABLE:Z

    if-eqz v5, :cond_156

    .line 1359
    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    .line 1360
    iget v8, v0, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    add-int/2addr v8, v6

    iput v8, v0, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    .line 1361
    sget-boolean v9, Lcom/android/server/am/DynamicHiddenApp;->LIMITATION_RECENT_CACHED_SLOT:Z

    if-eqz v9, :cond_152

    .line 1362
    iget-boolean v9, v0, Lcom/android/server/am/DynamicHiddenApp;->isDhaKeepEmpty:Z

    if-eqz v9, :cond_cf

    .line 1363
    sub-int/2addr v5, v6

    iput v5, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    .line 1364
    sub-int/2addr v8, v6

    iput v8, v0, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    move-object/from16 v22, v7

    goto/16 :goto_6eb

    .line 1366
    :cond_cf
    sget v5, Lcom/android/server/am/DynamicHiddenApp;->MAX_REC_CACHED_APPS:I

    if-le v8, v5, :cond_14e

    .line 1367
    const-string v7, "DHA"

    .line 1368
    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v5, :cond_128

    iget-object v5, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_128

    .line 1369
    iget-wide v8, v1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    mul-long v8, v8, v20

    iput-wide v8, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    .line 1370
    iget-object v5, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    iget-wide v8, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-wide v12, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    add-long/2addr v8, v12

    iput-wide v8, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    .line 1372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v19

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    div-long v8, v8, v20

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":REC_cached #"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 1379
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sub-int/2addr v2, v6

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    .line 1380
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    sub-int/2addr v2, v6

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    goto/16 :goto_6ed

    .line 1366
    :cond_14e
    move-object/from16 v22, v7

    goto/16 :goto_6eb

    .line 1361
    :cond_152
    move-object/from16 v22, v7

    goto/16 :goto_6eb

    .line 1358
    :cond_156
    move-object/from16 v8, v19

    .line 1387
    :goto_158
    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v4, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v5, v4, :cond_198

    iget-wide v4, v1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-object/from16 v22, v7

    .end local v7    # "killedBy":Ljava/lang/String;
    .restart local v22    # "killedBy":Ljava/lang/String;
    iget-wide v6, v0, Lcom/android/server/am/DynamicHiddenApp;->oldTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_196

    .line 1389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "empty for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/am/DynamicHiddenApp;->oldTime:J

    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    iget-wide v6, v1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/16 v5, 0xd

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v5, v4, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    goto/16 :goto_6eb

    .line 1387
    :cond_196
    const/4 v6, 0x1

    goto :goto_19a

    .end local v22    # "killedBy":Ljava/lang/String;
    .restart local v7    # "killedBy":Ljava/lang/String;
    :cond_198
    move-object/from16 v22, v7

    .line 1396
    .end local v7    # "killedBy":Ljava/lang/String;
    .restart local v22    # "killedBy":Ljava/lang/String;
    :goto_19a
    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-ne v4, v6, :cond_243

    .line 1397
    const-wide/16 v4, 0x0

    .line 1398
    .local v4, "activeLaunchTimeout":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v11, v1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    sub-long/2addr v6, v11

    .line 1399
    .end local v4    # "activeLaunchTimeout":J
    .local v6, "activeLaunchTimeout":J
    iget-wide v4, v1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    const-wide/16 v11, -0x1

    cmp-long v2, v4, v11

    if-eqz v2, :cond_1e8

    cmp-long v2, v6, v16

    if-lez v2, :cond_1e8

    sget-wide v4, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v11, 0x2af8

    cmp-long v2, v4, v11

    if-gtz v2, :cond_1e8

    .line 1400
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v4, 0x35c

    if-lt v2, v4, :cond_1dd

    .line 1401
    const/16 v2, 0xd

    const/4 v4, 0x1

    invoke-virtual {v1, v10, v2, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    .line 1402
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_1dd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_1dd
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 1405
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    .line 1406
    goto/16 :goto_6eb

    .line 1408
    :cond_1e8
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    if-ge v2, v4, :cond_22c

    .line 1409
    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1410
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 1411
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_6eb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active App Launch process < 2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6eb

    .line 1413
    :cond_22c
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v4, 0x35c

    if-lt v2, v4, :cond_238

    .line 1414
    const/16 v2, 0xd

    const/4 v4, 0x1

    invoke-virtual {v1, v13, v2, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    .line 1416
    :cond_238
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 1417
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    .line 1419
    goto/16 :goto_6eb

    .line 1420
    .end local v6    # "activeLaunchTimeout":J
    :cond_243
    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28d

    .line 1421
    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_28b

    .line 1422
    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    if-eqz v4, :cond_288

    iget-wide v4, v1, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    iget-object v6, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    iget-wide v6, v6, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_288

    .line 1423
    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord;->setMlLaunch(Z)V

    .line 1424
    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    const-wide/16 v5, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    .line 1425
    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " slots kill b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    .line 1426
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 1428
    :cond_288
    iput-object v1, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    goto :goto_28d

    .line 1430
    :cond_28b
    iput-object v1, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 1433
    :cond_28d
    :goto_28d
    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    .line 1435
    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    if-le v4, v5, :cond_29a

    const/16 v18, 0x1

    goto :goto_29c

    :cond_29a
    const/16 v18, 0x0

    :goto_29c
    move/from16 v3, v18

    .line 1437
    if-eqz v3, :cond_2a3

    const-string v7, "DHA"

    .end local v22    # "killedBy":Ljava/lang/String;
    .restart local v7    # "killedBy":Ljava/lang/String;
    goto :goto_2a5

    .end local v7    # "killedBy":Ljava/lang/String;
    .restart local v22    # "killedBy":Ljava/lang/String;
    :cond_2a3
    move-object/from16 v7, v22

    .line 1439
    .end local v22    # "killedBy":Ljava/lang/String;
    .restart local v7    # "killedBy":Ljava/lang/String;
    :goto_2a5
    iget-boolean v4, v0, Lcom/android/server/am/DynamicHiddenApp;->isDhaKeepEmpty:Z

    if-eqz v4, :cond_2b1

    .line 1440
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_6ed

    .line 1442
    :cond_2b1
    if-eqz v7, :cond_6ed

    .line 1443
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v4, :cond_304

    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_304

    .line 1444
    iget-wide v4, v1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    mul-long v4, v4, v20

    iput-wide v4, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    .line 1445
    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v9, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    iget-wide v4, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-wide v9, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    add-long/2addr v4, v9

    iput-wide v4, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    .line 1447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    div-long v5, v5, v20

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":empty #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    const/16 v5, 0xd

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v5, v4, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 1453
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sub-int/2addr v2, v6

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_6ed

    .line 1294
    :pswitch_328
    move-object/from16 v22, v7

    move-object/from16 v8, v19

    .end local v7    # "killedBy":Ljava/lang/String;
    .restart local v22    # "killedBy":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    if-eqz v4, :cond_337

    .line 1295
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    .line 1296
    goto/16 :goto_6eb

    .line 1298
    :cond_337
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v5, "sandboxed_process0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34d

    .line 1299
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    .line 1300
    goto/16 :goto_6eb

    .line 1292
    .end local v22    # "killedBy":Ljava/lang/String;
    .restart local v7    # "killedBy":Ljava/lang/String;
    :pswitch_349
    move-object/from16 v22, v7

    move-object/from16 v8, v19

    .line 1303
    .end local v7    # "killedBy":Ljava/lang/String;
    .restart local v22    # "killedBy":Ljava/lang/String;
    :cond_34d
    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    .line 1304
    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    .line 1306
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v4, :cond_37b

    .line 1307
    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroupUid:I

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_370

    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroup:I

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v4, v5, :cond_370

    .line 1312
    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numCachedExtraGroup:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numCachedExtraGroup:I

    goto :goto_380

    .line 1314
    :cond_370
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroupUid:I

    .line 1315
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroup:I

    goto :goto_380

    .line 1318
    :cond_37b
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroup:I

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroupUid:I

    .line 1321
    :goto_380
    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->numCachedExtraGroup:I

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v4, v5, :cond_38c

    const/16 v18, 0x1

    goto :goto_38e

    :cond_38c
    const/16 v18, 0x0

    :goto_38e
    move/from16 v3, v18

    .line 1323
    if-eqz v3, :cond_395

    const-string v7, "DHA"

    .end local v22    # "killedBy":Ljava/lang/String;
    .restart local v7    # "killedBy":Ljava/lang/String;
    goto :goto_397

    .end local v7    # "killedBy":Ljava/lang/String;
    .restart local v22    # "killedBy":Ljava/lang/String;
    :cond_395
    move-object/from16 v7, v22

    .line 1325
    .end local v22    # "killedBy":Ljava/lang/String;
    .restart local v7    # "killedBy":Ljava/lang/String;
    :goto_397
    if-eqz v7, :cond_6ed

    .line 1333
    iget-boolean v4, v0, Lcom/android/server/am/DynamicHiddenApp;->isDhaKeepEmpty:Z

    if-eqz v4, :cond_41f

    .line 1334
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    const-string v4, " in Cached"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3e2

    .line 1335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PWHL - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v2, :cond_3df

    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":Convert from hidden to empty"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(IILjava/lang/String;)V

    :cond_3df
    const/4 v6, 0x1

    goto/16 :goto_48d

    .line 1338
    :cond_3e2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PWHL_KNOX - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v2, :cond_41d

    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":Convert from hidden to empty knox"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(IILjava/lang/String;)V

    :cond_41d
    const/4 v6, 0x1

    goto :goto_48d

    .line 1342
    :cond_41f
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v4, :cond_470

    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_470

    .line 1343
    iget-wide v4, v1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    mul-long v4, v4, v20

    iput-wide v4, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    .line 1344
    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v9, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    iget-wide v4, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-wide v9, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    add-long/2addr v4, v9

    iput-wide v4, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    .line 1346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    div-long v5, v5, v20

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":cached #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    const/16 v5, 0xd

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v5, v4, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 1353
    :goto_48d
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    sub-int/2addr v2, v6

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    .line 1354
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sub-int/2addr v2, v6

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    goto/16 :goto_6ed

    .line 1465
    .end local v7    # "killedBy":Ljava/lang/String;
    .restart local v22    # "killedBy":Ljava/lang/String;
    :cond_499
    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v6

    if-eqz v6, :cond_562

    .line 1466
    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    .line 1468
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v4, :cond_4c9

    .line 1469
    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroupUid:I

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_4be

    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroup:I

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v4, v5, :cond_4be

    .line 1474
    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numCachedExtraGroup:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numCachedExtraGroup:I

    goto :goto_4ce

    .line 1476
    :cond_4be
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroupUid:I

    .line 1477
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroup:I

    goto :goto_4ce

    .line 1480
    :cond_4c9
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroup:I

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroupUid:I

    .line 1483
    :goto_4ce
    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->numCachedExtraGroup:I

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v4, v5, :cond_4da

    const/16 v18, 0x1

    goto :goto_4dc

    :cond_4da
    const/16 v18, 0x0

    :goto_4dc
    move/from16 v3, v18

    .line 1485
    if-eqz v3, :cond_4e3

    const-string v7, "DHA"

    .end local v22    # "killedBy":Ljava/lang/String;
    .restart local v7    # "killedBy":Ljava/lang/String;
    goto :goto_4e5

    .end local v7    # "killedBy":Ljava/lang/String;
    .restart local v22    # "killedBy":Ljava/lang/String;
    :cond_4e3
    move-object/from16 v7, v22

    .line 1487
    .end local v22    # "killedBy":Ljava/lang/String;
    .restart local v7    # "killedBy":Ljava/lang/String;
    :goto_4e5
    if-eqz v7, :cond_6ed

    .line 1496
    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    .line 1497
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v4, :cond_53e

    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_53e

    .line 1498
    iget-wide v4, v1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    mul-long v4, v4, v20

    iput-wide v4, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    .line 1499
    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v9, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    iget-wide v4, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-wide v9, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    add-long/2addr v4, v9

    iput-wide v4, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    .line 1501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    div-long v5, v5, v20

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_53e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":SPC_cached #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    const/16 v5, 0xd

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v5, v4, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 1508
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sub-int/2addr v2, v6

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    goto/16 :goto_6ed

    .line 1511
    .end local v7    # "killedBy":Ljava/lang/String;
    .restart local v22    # "killedBy":Ljava/lang/String;
    :cond_562
    move v6, v5

    iget-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-ne v5, v6, :cond_60e

    .line 1512
    const-wide/16 v4, 0x0

    .line 1513
    .restart local v4    # "activeLaunchTimeout":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v11, v1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    sub-long/2addr v6, v11

    .line 1514
    .end local v4    # "activeLaunchTimeout":J
    .restart local v6    # "activeLaunchTimeout":J
    iget-wide v4, v1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    const-wide/16 v11, -0x1

    cmp-long v2, v4, v11

    if-eqz v2, :cond_5b1

    cmp-long v2, v6, v16

    if-lez v2, :cond_5b1

    sget-wide v4, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v11, 0x2af8

    cmp-long v2, v4, v11

    if-gtz v2, :cond_5b1

    .line 1515
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v4, 0x35c

    if-lt v2, v4, :cond_5a6

    .line 1516
    const/16 v2, 0xd

    const/4 v4, 0x1

    invoke-virtual {v1, v10, v2, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    .line 1517
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_5a6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_5a6
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 1520
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    .line 1521
    goto/16 :goto_6eb

    .line 1523
    :cond_5b1
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    if-ge v2, v4, :cond_5f7

    .line 1524
    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1525
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 1526
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v2, :cond_6eb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active App Launch process < 2 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6eb

    .line 1528
    :cond_5f7
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v4, 0x35c

    if-lt v2, v4, :cond_603

    .line 1529
    const/16 v2, 0xd

    const/4 v4, 0x1

    invoke-virtual {v1, v13, v2, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    .line 1531
    :cond_603
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 1532
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    .line 1534
    goto/16 :goto_6eb

    .line 1535
    .end local v6    # "activeLaunchTimeout":J
    :cond_60e
    iget-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_65b

    .line 1536
    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_657

    .line 1537
    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    if-eqz v2, :cond_653

    iget-wide v4, v1, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_653

    .line 1538
    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->setMlLaunch(Z)V

    .line 1539
    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    .line 1540
    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " slots kill c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    .line 1541
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 1543
    :cond_653
    iput-object v1, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_6eb

    .line 1545
    :cond_657
    iput-object v1, v0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 1547
    goto/16 :goto_6eb

    .line 1549
    :cond_65b
    const/4 v5, 0x0

    iget v6, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    .line 1551
    iget v7, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    if-le v6, v7, :cond_667

    const/4 v5, 0x1

    :cond_667
    move v3, v5

    .line 1553
    if-eqz v3, :cond_66d

    const-string v7, "DHA"

    .end local v22    # "killedBy":Ljava/lang/String;
    .restart local v7    # "killedBy":Ljava/lang/String;
    goto :goto_66f

    .end local v7    # "killedBy":Ljava/lang/String;
    .restart local v22    # "killedBy":Ljava/lang/String;
    :cond_66d
    move-object/from16 v7, v22

    .line 1555
    .end local v22    # "killedBy":Ljava/lang/String;
    .restart local v7    # "killedBy":Ljava/lang/String;
    :goto_66f
    if-eqz v7, :cond_6ed

    .line 1556
    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    .line 1557
    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v5, :cond_6c8

    iget-object v5, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6c8

    .line 1558
    iget-wide v5, v1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    mul-long v5, v5, v20

    iput-wide v5, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    .line 1559
    iget-object v5, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v9, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    iget-wide v5, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-wide v9, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    add-long/2addr v5, v9

    iput-wide v5, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    .line 1561
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    div-long v8, v8, v20

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_6c8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":SPC_empty #"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    const/16 v5, 0xd

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v5, v4, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 1567
    iget v2, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sub-int/2addr v2, v6

    iput v2, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto :goto_6ed

    .line 1573
    .end local v7    # "killedBy":Ljava/lang/String;
    .restart local v22    # "killedBy":Ljava/lang/String;
    :cond_6eb
    :goto_6eb
    move-object/from16 v7, v22

    .end local v22    # "killedBy":Ljava/lang/String;
    .restart local v7    # "killedBy":Ljava/lang/String;
    :cond_6ed
    :goto_6ed
    return-void

    .line 1279
    .end local v3    # "isDhaKill":Z
    .end local v7    # "killedBy":Ljava/lang/String;
    :cond_6ee
    :goto_6ee
    return-void

    nop

    :pswitch_data_6f0
    .packed-switch 0x10
        :pswitch_349
        :pswitch_328
        :pswitch_af
        :pswitch_ab
    .end packed-switch
.end method

.method public doPerfTunedByRamSize()V
    .registers 16

    .line 2164
    const-string v0, "[,]"

    const/4 v1, 0x0

    .local v1, "cached_max":I
    const/4 v2, 0x0

    .local v2, "cached_min":I
    const/4 v3, 0x0

    .local v3, "empty_max":I
    const/4 v4, 0x0

    .local v4, "dp":I
    const/4 v5, 0x0

    .local v5, "up":I
    const/4 v6, 0x0

    .line 2165
    .local v6, "freelimit":I
    const/4 v7, 0x0

    .local v7, "swappiness":I
    const/4 v8, 0x0

    .local v8, "readaround_page":I
    const/4 v9, 0x0

    .line 2166
    .local v9, "faultaround_kb":I
    const/4 v10, 0x0

    .local v10, "oriRamSize":I
    const/4 v11, 0x0

    .line 2167
    .local v11, "curRamSize":I
    const-string v12, "[,]"

    .line 2169
    .local v12, "SEPARATOR":Ljava/lang/String;
    const-string/jumbo v13, "ro.boot.perftune.ramsize"

    const-string v14, "0,0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/server/am/DynamicHiddenApp;->perfTunedRamSize:Ljava/lang/String;

    .line 2172
    :try_start_1a
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v10, v13

    .line 2173
    sget-object v13, Lcom/android/server/am/DynamicHiddenApp;->perfTunedRamSize:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x1

    aget-object v0, v0, v13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a .. :try_end_3b} :catch_3d

    move v11, v0

    .line 2176
    goto :goto_3e

    .line 2174
    :catch_3d
    move-exception v0

    .line 2178
    :goto_3e
    if-eqz v10, :cond_12e

    if-eqz v11, :cond_12e

    if-ne v10, v11, :cond_46

    goto/16 :goto_12e

    .line 2183
    :cond_46
    const/16 v0, 0xc

    if-lt v11, v0, :cond_5d

    .line 2184
    const/16 v0, 0x18

    .line 2185
    .end local v1    # "cached_max":I
    .local v0, "cached_max":I
    const/4 v1, 0x6

    .line 2186
    .end local v2    # "cached_min":I
    .local v1, "cached_min":I
    const/16 v2, 0x30

    .line 2187
    .end local v3    # "empty_max":I
    .local v2, "empty_max":I
    const/16 v3, 0x41

    .line 2188
    .end local v4    # "dp":I
    .local v3, "dp":I
    const/16 v4, 0x50

    .line 2189
    .end local v5    # "up":I
    .local v4, "up":I
    const/16 v5, 0xd

    .line 2190
    .end local v6    # "freelimit":I
    .local v5, "freelimit":I
    const/16 v6, 0x82

    .line 2191
    .end local v7    # "swappiness":I
    .local v6, "swappiness":I
    const/16 v7, 0x20

    .line 2192
    .end local v8    # "readaround_page":I
    .local v7, "readaround_page":I
    const/high16 v8, 0x10000

    .end local v9    # "faultaround_kb":I
    .local v8, "faultaround_kb":I
    goto/16 :goto_d8

    .line 2193
    .end local v0    # "cached_max":I
    .local v1, "cached_max":I
    .local v2, "cached_min":I
    .local v3, "empty_max":I
    .local v4, "dp":I
    .local v5, "up":I
    .local v6, "freelimit":I
    .local v7, "swappiness":I
    .local v8, "readaround_page":I
    .restart local v9    # "faultaround_kb":I
    :cond_5d
    const/16 v0, 0x8

    if-lt v11, v0, :cond_73

    .line 2194
    const/16 v0, 0x14

    .line 2195
    .end local v1    # "cached_max":I
    .restart local v0    # "cached_max":I
    const/4 v1, 0x6

    .line 2196
    .end local v2    # "cached_min":I
    .local v1, "cached_min":I
    const/16 v2, 0x24

    .line 2197
    .end local v3    # "empty_max":I
    .local v2, "empty_max":I
    const/16 v3, 0x41

    .line 2198
    .end local v4    # "dp":I
    .local v3, "dp":I
    const/16 v4, 0x50

    .line 2199
    .end local v5    # "up":I
    .local v4, "up":I
    const/16 v5, 0xd

    .line 2200
    .end local v6    # "freelimit":I
    .local v5, "freelimit":I
    const/16 v6, 0x82

    .line 2201
    .end local v7    # "swappiness":I
    .local v6, "swappiness":I
    const/16 v7, 0x20

    .line 2202
    .end local v8    # "readaround_page":I
    .local v7, "readaround_page":I
    const/high16 v8, 0x10000

    .end local v9    # "faultaround_kb":I
    .local v8, "faultaround_kb":I
    goto :goto_d8

    .line 2203
    .end local v0    # "cached_max":I
    .local v1, "cached_max":I
    .local v2, "cached_min":I
    .local v3, "empty_max":I
    .local v4, "dp":I
    .local v5, "up":I
    .local v6, "freelimit":I
    .local v7, "swappiness":I
    .local v8, "readaround_page":I
    .restart local v9    # "faultaround_kb":I
    :cond_73
    const/4 v0, 0x6

    if-lt v11, v0, :cond_88

    .line 2204
    const/16 v0, 0x14

    .line 2205
    .end local v1    # "cached_max":I
    .restart local v0    # "cached_max":I
    const/4 v1, 0x6

    .line 2206
    .end local v2    # "cached_min":I
    .local v1, "cached_min":I
    const/16 v2, 0x1e

    .line 2207
    .end local v3    # "empty_max":I
    .local v2, "empty_max":I
    const/16 v3, 0x3c

    .line 2208
    .end local v4    # "dp":I
    .local v3, "dp":I
    const/16 v4, 0x50

    .line 2209
    .end local v5    # "up":I
    .local v4, "up":I
    const/16 v5, 0xb

    .line 2210
    .end local v6    # "freelimit":I
    .local v5, "freelimit":I
    const/16 v6, 0x82

    .line 2211
    .end local v7    # "swappiness":I
    .local v6, "swappiness":I
    const/16 v7, 0x20

    .line 2212
    .end local v8    # "readaround_page":I
    .local v7, "readaround_page":I
    const/high16 v8, 0x10000

    .end local v9    # "faultaround_kb":I
    .local v8, "faultaround_kb":I
    goto :goto_d8

    .line 2213
    .end local v0    # "cached_max":I
    .local v1, "cached_max":I
    .local v2, "cached_min":I
    .local v3, "empty_max":I
    .local v4, "dp":I
    .local v5, "up":I
    .local v6, "freelimit":I
    .local v7, "swappiness":I
    .local v8, "readaround_page":I
    .restart local v9    # "faultaround_kb":I
    :cond_88
    const/4 v0, 0x4

    if-lt v11, v0, :cond_9d

    .line 2214
    const/16 v0, 0x10

    .line 2215
    .end local v1    # "cached_max":I
    .restart local v0    # "cached_max":I
    const/4 v1, 0x4

    .line 2216
    .end local v2    # "cached_min":I
    .local v1, "cached_min":I
    const/16 v2, 0x18

    .line 2217
    .end local v3    # "empty_max":I
    .local v2, "empty_max":I
    const/16 v3, 0x37

    .line 2218
    .end local v4    # "dp":I
    .local v3, "dp":I
    const/16 v4, 0x37

    .line 2219
    .end local v5    # "up":I
    .local v4, "up":I
    const/16 v5, 0xb

    .line 2220
    .end local v6    # "freelimit":I
    .local v5, "freelimit":I
    const/16 v6, 0x82

    .line 2221
    .end local v7    # "swappiness":I
    .local v6, "swappiness":I
    const/16 v7, 0x10

    .line 2222
    .end local v8    # "readaround_page":I
    .local v7, "readaround_page":I
    const/16 v8, 0x1000

    .end local v9    # "faultaround_kb":I
    .local v8, "faultaround_kb":I
    goto :goto_d8

    .line 2223
    .end local v0    # "cached_max":I
    .local v1, "cached_max":I
    .local v2, "cached_min":I
    .local v3, "empty_max":I
    .local v4, "dp":I
    .local v5, "up":I
    .local v6, "freelimit":I
    .local v7, "swappiness":I
    .local v8, "readaround_page":I
    .restart local v9    # "faultaround_kb":I
    :cond_9d
    const/4 v0, 0x3

    if-lt v11, v0, :cond_b2

    .line 2224
    const/16 v0, 0xa

    .line 2225
    .end local v1    # "cached_max":I
    .restart local v0    # "cached_max":I
    const/4 v1, 0x4

    .line 2226
    .end local v2    # "cached_min":I
    .local v1, "cached_min":I
    const/16 v2, 0x14

    .line 2227
    .end local v3    # "empty_max":I
    .local v2, "empty_max":I
    const/16 v3, 0x37

    .line 2228
    .end local v4    # "dp":I
    .local v3, "dp":I
    const/16 v4, 0x37

    .line 2229
    .end local v5    # "up":I
    .local v4, "up":I
    const/16 v5, 0xb

    .line 2230
    .end local v6    # "freelimit":I
    .local v5, "freelimit":I
    const/16 v6, 0x82

    .line 2231
    .end local v7    # "swappiness":I
    .local v6, "swappiness":I
    const/16 v7, 0x10

    .line 2232
    .end local v8    # "readaround_page":I
    .local v7, "readaround_page":I
    const/16 v8, 0x1000

    .end local v9    # "faultaround_kb":I
    .local v8, "faultaround_kb":I
    goto :goto_d8

    .line 2233
    .end local v0    # "cached_max":I
    .local v1, "cached_max":I
    .local v2, "cached_min":I
    .local v3, "empty_max":I
    .local v4, "dp":I
    .local v5, "up":I
    .local v6, "freelimit":I
    .local v7, "swappiness":I
    .local v8, "readaround_page":I
    .restart local v9    # "faultaround_kb":I
    :cond_b2
    const/4 v0, 0x2

    if-lt v11, v0, :cond_c6

    .line 2234
    const/4 v0, 0x6

    .line 2235
    .end local v1    # "cached_max":I
    .restart local v0    # "cached_max":I
    const/4 v1, 0x3

    .line 2236
    .end local v2    # "cached_min":I
    .local v1, "cached_min":I
    const/16 v2, 0x14

    .line 2237
    .end local v3    # "empty_max":I
    .local v2, "empty_max":I
    const/16 v3, 0x32

    .line 2238
    .end local v4    # "dp":I
    .local v3, "dp":I
    const/16 v4, 0x3c

    .line 2239
    .end local v5    # "up":I
    .local v4, "up":I
    const/16 v5, 0xb

    .line 2240
    .end local v6    # "freelimit":I
    .local v5, "freelimit":I
    const/16 v6, 0x82

    .line 2241
    .end local v7    # "swappiness":I
    .local v6, "swappiness":I
    const/16 v7, 0x10

    .line 2242
    .end local v8    # "readaround_page":I
    .local v7, "readaround_page":I
    const/16 v8, 0x1000

    .end local v9    # "faultaround_kb":I
    .local v8, "faultaround_kb":I
    goto :goto_d8

    .line 2244
    .end local v0    # "cached_max":I
    .local v1, "cached_max":I
    .local v2, "cached_min":I
    .local v3, "empty_max":I
    .local v4, "dp":I
    .local v5, "up":I
    .local v6, "freelimit":I
    .local v7, "swappiness":I
    .local v8, "readaround_page":I
    .restart local v9    # "faultaround_kb":I
    :cond_c6
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    .line 2245
    .end local v1    # "cached_max":I
    .restart local v0    # "cached_max":I
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    .line 2246
    .end local v2    # "cached_min":I
    .local v1, "cached_min":I
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    .line 2247
    .end local v3    # "empty_max":I
    .local v2, "empty_max":I
    sget v3, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    .line 2248
    .end local v4    # "dp":I
    .local v3, "dp":I
    sget v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    .line 2249
    .end local v5    # "up":I
    .local v4, "up":I
    sget v5, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    .line 2250
    .end local v6    # "freelimit":I
    .local v5, "freelimit":I
    const/16 v6, 0x82

    .line 2251
    .end local v7    # "swappiness":I
    .local v6, "swappiness":I
    const/16 v7, 0x10

    .line 2252
    .end local v8    # "readaround_page":I
    .local v7, "readaround_page":I
    const/16 v8, 0x1000

    .line 2255
    .end local v9    # "faultaround_kb":I
    .local v8, "faultaround_kb":I
    :goto_d8
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    .line 2256
    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    .line 2257
    sput v2, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    .line 2258
    sput v3, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    .line 2259
    mul-int/lit8 v9, v3, 0x5

    sput v9, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    .line 2260
    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    .line 2261
    sput v5, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    .line 2262
    sget-object v9, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DOWNGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v9}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v9

    sget v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    invoke-static {v9, v13}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 2263
    sget-object v9, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_UPGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v9}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v9

    sget v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    invoke-static {v9, v13}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 2264
    sget-object v9, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_FREELIMIT_VAL:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v9}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v9

    sget v13, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    invoke-static {v9, v13}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 2266
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->setResCached()V

    .line 2267
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->updateDefaultCachedMAX()V

    .line 2268
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v13, "sys.sysctl.swappiness"

    invoke-static {v13, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v13, "sys.sysctl.mmap_readaround_limit"

    invoke-static {v13, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v13, "sys.sysctl.fault_around_bytes"

    invoke-static {v13, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    return-void

    .line 2179
    .end local v0    # "cached_max":I
    .local v1, "cached_max":I
    .local v2, "cached_min":I
    .local v3, "empty_max":I
    .local v4, "dp":I
    .local v5, "up":I
    .local v6, "freelimit":I
    .local v7, "swappiness":I
    .local v8, "readaround_page":I
    .restart local v9    # "faultaround_kb":I
    :cond_12e
    :goto_12e
    return-void
.end method

.method public dumpLMKDParameter(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DHA_CACHE_MIN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DHA_CACHE_MAX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DHA_EMPTY_MIN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DHA_EMPTY_MAX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2105
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_enable_userspace_lmk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_use_minfree_levels "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_enable_upgrade_criadj "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_freelimit_enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_freelimit_val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_upgrade_pressure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_custom_sw_limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_custom_tm_limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_psi_medium_th "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_psi_critical_th "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LMKD_use_lowmem_keep_except "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_MEM_KEEP_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LOWMEMDETECTOR_ENABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    invoke-virtual {v1}, Lcom/android/server/am/LowMemDetector;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  APPCOMPACTOR_ENABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18d

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-boolean v1, v1, Lcom/android/server/am/CachedAppOptimizer;->isDebugable:Z

    if-nez v1, :cond_18d

    const/4 v1, 0x1

    goto :goto_18e

    :cond_18d
    const/4 v1, 0x0

    :goto_18e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2120
    return-void
.end method

.method public dumpMLList(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2123
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_MLexcept_map:Ljava/util/HashMap;

    if-eqz v0, :cond_1e

    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  MLList AUF Procname : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_MLexcept_map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2126
    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3b

    .line 2127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  MLList NAP Procname : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->MlSlotDefault:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_40

    .line 2129
    :cond_3b
    const-string v0, "  MLList NAP Procname : []"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2131
    :goto_40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2132
    return-void
.end method

.method protected getBgProcCount(I)I
    .registers 3
    .param p1, "kind"    # I

    .line 885
    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    .line 895
    const/4 v0, 0x0

    return v0

    .line 893
    :cond_e
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    return v0

    .line 891
    :cond_11
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    return v0

    .line 889
    :cond_14
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    return v0

    .line 887
    :cond_17
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    return v0
.end method

.method public getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1980
    const-string v0, "com.android.contacts"

    .line 1981
    .local v0, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v3, "com.android.contacts"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1982
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1984
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1985
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1987
    return-object v1

    .line 1990
    :cond_25
    return-object v0

    .line 1994
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1995
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_32} :catch_34

    .line 2000
    nop

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_36

    .line 1997
    :catch_34
    move-exception v2

    .line 1999
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v0

    .line 2001
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_36
    return-object v1
.end method

.method getIndexOfRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)I
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 856
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method incrementEmptyAppCount()I
    .registers 4

    .line 1042
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    .line 1044
    .local v0, "ret":I
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    .line 1046
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v1, :cond_13

    .line 1047
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1048
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    .line 1051
    :cond_13
    return v0
.end method

.method public initActiveLaunchParam()V
    .registers 2

    .line 1205
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    goto :goto_f

    .line 1208
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1210
    :goto_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 1211
    return-void
.end method

.method public initDhaProcessesLocked()V
    .registers 5

    .line 1234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->now:J

    .line 1235
    const-wide/32 v2, 0x1b7740

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->oldTime:J

    .line 1237
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    .line 1238
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    .line 1239
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    .line 1240
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    .line 1241
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    .line 1243
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroupUid:I

    .line 1244
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroupUid:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->lastCachedGroup:I

    .line 1245
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numCachedExtraGroup:I

    .line 1247
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/DynamicHiddenApp;->appUss:J

    .line 1248
    iput-boolean v0, p0, Lcom/android/server/am/DynamicHiddenApp;->isDhaKeepEmpty:Z

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initActiveLaunchParam()V

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initMLLaunchCountParam()V

    .line 1253
    return-void
.end method

.method public initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "constants"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 401
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    if-nez v0, :cond_50

    .line 402
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 403
    iput-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 404
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    .line 405
    :cond_e
    iput-object p3, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 406
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 407
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initProperty()V

    .line 408
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    .line 411
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 412
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;)V

    .line 413
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;

    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;Landroid/os/Handler;)V

    .line 414
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    long-to-float v0, v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mMinFreeMax:F

    .line 415
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_camera_map:Ljava/util/LinkedHashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_50
    return-void
.end method

.method public initMLLaunchCountParam()V
    .registers 2

    .line 1213
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    goto :goto_f

    .line 1216
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1218
    :goto_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchCount:I

    .line 1219
    return-void
.end method

.method public initProperty()V
    .registers 9

    .line 609
    sget-wide v0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->TOTAL_MEMORY:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const-string/jumbo v1, "ro.slmk.dha_th_rate"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_203

    .line 610
    const-string/jumbo v0, "ro.slmk.dha_cached_max"

    const-string v4, "16"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ro.slmk.2nd.dha_cached_max"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/am/DynamicHiddenApp;->INIT_CACHED_APPS:I

    .line 611
    const-string/jumbo v5, "ro.slmk.dha_cached_min"

    const-string v7, "4"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "ro.slmk.2nd.dha_cached_min"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    .line 612
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    .line 613
    const-string/jumbo v0, "ro.slmk.dha_empty_init"

    const-string v4, "24"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ro.slmk.2nd.dha_empty_init"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    .line 614
    const-string/jumbo v0, "ro.slmk.dha_empty_min"

    const-string v5, "8"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ro.slmk.2nd.dha_empty_min"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    .line 615
    const-string/jumbo v0, "ro.slmk.dha_empty_max"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "ro.slmk.2nd.dha_empty_max"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    .line 616
    const-string/jumbo v0, "ro.slmk.ldha_spc_enable"

    const-string/jumbo v4, "true"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ro.slmk.2nd.ldha_spc_enable"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    .line 618
    const-string/jumbo v0, "ro.slmk.dha_pwhitelist_enable"

    const-string v5, "1"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ro.slmk.2nd.dha_pwhitelist_enable"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    .line 619
    const-string/jumbo v0, "ro.slmk.dha_knox_plist_enable"

    const-string v6, "0"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    .line 620
    const-string/jumbo v0, "ro.slmk.dha_lmk_scale"

    const-string v6, "-1"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ro.slmk.2nd.dha_lmk_scale"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    .line 621
    const-string/jumbo v0, "ro.slmk.dha_lmk_array"

    const-string/jumbo v6, "none"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ro.slmk.2nd.dha_lmk_array"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    .line 622
    const-string/jumbo v0, "ro.slmk.ams_exception_enable"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ro.slmk.2nd.ams_exception_enable"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    .line 623
    const-string/jumbo v0, "ro.slmk.ams_knoxexpt_enable"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ro.slmk.2nd.ams_knoxexpt_enable"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    .line 624
    const-string/jumbo v0, "ro.slmk.fall_prevent_enable"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "ro.slmk.2nd.fall_prevent_enable"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    .line 625
    const-string/jumbo v0, "ro.slmk.dha_package_enable"

    const-string v4, "false"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ro.slmk.2nd.dha_package_enable"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    .line 627
    const-string/jumbo v0, "ro.slmk.dha_pwhl_key"

    const-string v6, "512"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ro.slmk.2nd.dha_pwhl_key"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    .line 628
    const-string/jumbo v0, "ro.slmk.dha_pwhl_key_knox"

    const-string v6, "1539"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ro.slmk.2nd.dha_pwhl_key_knox"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key_knox:I

    .line 629
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ro.slmk.dha_pwhl_chn_key"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ro.slmk.2nd.dha_pwhl_chn_key"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_chn_key:I

    .line 631
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.slmk.2nd.dha_th_rate"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    .line 633
    const-string/jumbo v0, "ro.slmk.dha_rec_cch_enable"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.slmk.2nd.dha_rec_cch_enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->RECENT_CACHED_ENABLE:Z

    .line 634
    const-string/jumbo v0, "ro.slmk.dha_rec_cch_limit"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.slmk.2nd.dha_rec_cch_limit"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LIMITATION_RECENT_CACHED_SLOT:Z

    .line 635
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.slmk.dha_rec_cch_max"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.slmk.2nd.dha_rec_cch_max"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_REC_CACHED_APPS:I

    .line 636
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1e9

    goto :goto_1fd

    .line 637
    :cond_1e9
    const-string/jumbo v0, "ro.slmk.enable_picked_adj"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.slmk.2nd.enable_picked_adj"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ff

    :goto_1fd
    move v0, v2

    goto :goto_200

    :cond_1ff
    move v0, v3

    :goto_200
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    goto :goto_213

    .line 639
    :cond_203
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    .line 642
    :goto_213
    sget-wide v0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    sget v4, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_UNDER_MEMORY_TH_FOR_TUNING:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    const/4 v5, 0x0

    if-gez v4, :cond_238

    .line 643
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_MIN_CACHED_APPS:I

    if-lez v0, :cond_223

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    .line 644
    :cond_223
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_MAX_CACHED_APPS:I

    if-lez v0, :cond_229

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    .line 645
    :cond_229
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_MAX_EMPTY_APPS:I

    if-lez v0, :cond_22f

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    .line 646
    :cond_22f
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_mLMKScale:F

    cmpl-float v1, v0, v5

    if-lez v1, :cond_259

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    goto :goto_259

    .line 647
    :cond_238
    sget v4, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_OVER_MEMORY_TH_FOR_TUNING:I

    int-to-long v6, v4

    cmp-long v0, v0, v6

    if-lez v0, :cond_259

    .line 648
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_MIN_CACHED_APPS:I

    if-lez v0, :cond_245

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    .line 649
    :cond_245
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_MAX_CACHED_APPS:I

    if-lez v0, :cond_24b

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    .line 650
    :cond_24b
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_MAX_EMPTY_APPS:I

    if-lez v0, :cond_251

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    .line 651
    :cond_251
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_mLMKScale:F

    cmpl-float v1, v0, v5

    if-lez v1, :cond_259

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    .line 654
    :cond_259
    :goto_259
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->IS_CHINA_MODEL:Z

    if-eqz v0, :cond_281

    .line 655
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->CHN_REDUCE_CACHED:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    .line 656
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_chn_key:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "is china model : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->IS_CHINA_MODEL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicHiddenApp"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_281
    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchLimit:I

    .line 662
    invoke-virtual {p0, v2}, Lcom/android/server/am/DynamicHiddenApp;->makeLists(Z)V

    .line 664
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    .line 666
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->setResCached()V

    .line 668
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->setLMKD2ndParameter()V

    .line 670
    sget-wide v0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v4, 0x1800

    cmp-long v0, v0, v4

    if-lez v0, :cond_2a1

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    const/16 v1, 0x24

    if-ge v0, v1, :cond_2a1

    .line 671
    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    .line 674
    :cond_2a1
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->IS_HIGH_CAPACITY_RAM:Z

    if-eqz v0, :cond_2af

    .line 675
    const/16 v0, 0x30

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    .line 677
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    if-nez v0, :cond_2af

    .line 678
    sput-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    .line 682
    :cond_2af
    sget-wide v0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->TOTAL_MEMORY:I

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_2d1

    .line 683
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    const-string/jumbo v1, "ro.slmk.2nd.cur_trim_empty_num"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerConstants;->setCurTrimEmptyProcesses(I)V

    .line 684
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    const-string/jumbo v1, "ro.slmk.2nd.cur_trim_cached_num"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerConstants;->setCurTrimCachedProcesses(I)V

    goto :goto_2e9

    .line 686
    :cond_2d1
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    const-string/jumbo v1, "ro.slmk.cur_trim_empty_num"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerConstants;->setCurTrimEmptyProcesses(I)V

    .line 687
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    const-string/jumbo v1, "ro.slmk.cur_trim_cached_num"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerConstants;->setCurTrimCachedProcesses(I)V

    .line 690
    :goto_2e9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DHA STEP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DHA_PROPERTY"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHA TH RATE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHA mSzDHAThreshold "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHA DHA_INCREASE_THRESHOLD "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method

.method isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 830
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v1, 0x352

    if-lt v0, v1, :cond_16

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v1, 0x3e7

    if-gt v0, v1, :cond_16

    .line 831
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_16

    .line 832
    const/4 v0, 0x1

    return v0

    .line 835
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public isForKeepingCheck(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1099
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isForKeeping()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 1100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/am/ProcessRecord;->appKeepingTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-lez v0, :cond_18

    .line 1101
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setIsforKeeping(Z)V

    .line 1102
    return v1

    .line 1104
    :cond_18
    const/4 v0, 0x1

    return v0

    .line 1108
    :cond_1a
    return v1
.end method

.method isRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 849
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/server/am/DynamicHiddenApp;->isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 850
    const/4 v0, 0x1

    return v0

    .line 852
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public killTimeOverEmptyProcess(Lcom/android/server/am/ProcessRecord;IJ)V
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "numEmpty"    # I
    .param p3, "oldTime"    # J

    .line 1221
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3c

    .line 1222
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le p2, v0, :cond_3c

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v0, v0, p3

    if-gez v0, :cond_3c

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "empty for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v1, 0x1b7740

    add-long/2addr v1, p3

    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 1232
    :cond_3c
    return-void
.end method

.method public makeLists(Z)V
    .registers 4
    .param p1, "isFirst"    # Z

    .line 697
    invoke-virtual {p0, p1}, Lcom/android/server/am/DynamicHiddenApp;->addWhitelistList(Z)V

    .line 699
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/server/am/DynamicHiddenApp;->addBEKSList(Z)V

    .line 701
    :cond_a
    const-string/jumbo v0, "persist.sys.bub_onoff"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1e

    if-nez p1, :cond_1e

    .line 702
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->removeWhitelistByBUB()V

    .line 705
    :cond_1e
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->CAMERA_DHA_VER:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2b

    if-nez p1, :cond_2b

    .line 706
    const/16 v0, 0x63

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/android/server/am/ProcessList;->setLmkdCameraKillBoost(III)V

    .line 708
    :cond_2b
    return-void
.end method

.method public postInitDhaProcessesLocked()V
    .registers 3

    .line 1575
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/DynamicHiddenApp;->updateHiddenAppNum(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    .line 1576
    return-void
.end method

.method public removeKillingProcessUss(ILjava/lang/String;)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .line 937
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 938
    iget-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    .line 939
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_29

    .line 940
    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    .line 943
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KPU : remove ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] , Remain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    :cond_5a
    return-void
.end method

.method public removeWhitelistByBUB()V
    .registers 4

    .line 779
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    const-string v1, "CONTACTS"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/DynamicHiddenApp;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 780
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    const-string v1, "DIALER"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/DynamicHiddenApp;->dhaDeletePackageName(Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 781
    invoke-direct {p0}, Lcom/android/server/am/DynamicHiddenApp;->removeProviderLifeguardProcs()V

    .line 782
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 783
    return-void
.end method

.method public resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2135
    const/4 v0, -0x1

    .line 2136
    .local v0, "dhatemp":I
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_27

    .line 2137
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    if-ne v1, v4, :cond_16

    if-ne v0, v4, :cond_16

    .line 2138
    iput v4, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto :goto_62

    .line 2139
    :cond_16
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    if-ne v1, v4, :cond_62

    if-ne v0, v2, :cond_62

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2140
    iput v2, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto :goto_62

    .line 2142
    :cond_27
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->isAMSExceptionProcess(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    if-eq v1, v3, :cond_35

    .line 2143
    iput-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 2144
    iput v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_62

    .line 2145
    :cond_35
    invoke-static {p1}, Lcom/android/server/am/DynamicHiddenApp;->isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    move v0, v1

    if-eq v1, v3, :cond_4f

    .line 2146
    const/4 v1, 0x4

    if-ne v0, v2, :cond_44

    .line 2147
    iput-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 2148
    iput v1, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_62

    .line 2149
    :cond_44
    if-ne v0, v1, :cond_49

    .line 2150
    iput v1, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_62

    .line 2151
    :cond_49
    const/4 v1, 0x6

    if-ne v0, v1, :cond_62

    .line 2152
    iput v1, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_62

    .line 2154
    :cond_4f
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->isLmkdOnlyKillProcess(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2155
    const/4 v1, 0x5

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_62

    .line 2157
    :cond_5b
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 2158
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 2159
    iput v3, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 2161
    :cond_62
    :goto_62
    return-void
.end method

.method setLMKD2ndParameter()V
    .registers 8

    .line 1629
    sget-wide v0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->TOTAL_MEMORY:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const-string v1, "11"

    const-string/jumbo v2, "ro.slmk.freelimit_val"

    const-string v3, "500"

    const-string/jumbo v4, "ro.slmk.custom_sw_limit"

    const-string v5, "80"

    const-string/jumbo v6, "ro.slmk.upgrade_pressure"

    if-lez v0, :cond_4c

    .line 1630
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ro.slmk.2nd.upgrade_pressure"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    .line 1631
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "ro.slmk.2nd.custom_sw_limit"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    .line 1632
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.slmk.2nd.freelimit_val"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    goto :goto_6a

    .line 1634
    :cond_4c
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    .line 1635
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    .line 1636
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    .line 1639
    :goto_6a
    sget-wide v0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_UNDER_MEMORY_TH_FOR_TUNING:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_86

    .line 1640
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_LMK_UPGRADE_PRESSURE:I

    if-lez v0, :cond_79

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    .line 1641
    :cond_79
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_LMK_CUSTOM_SW_LIMIT:I

    if-lez v0, :cond_7f

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    .line 1642
    :cond_7f
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_LMK_FREELIMIT_VAL:I

    if-lez v0, :cond_9f

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    goto :goto_9f

    .line 1643
    :cond_86
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_OVER_MEMORY_TH_FOR_TUNING:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_9f

    .line 1644
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_LMK_UPGRADE_PRESSURE:I

    if-lez v0, :cond_93

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    .line 1645
    :cond_93
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_LMK_CUSTOM_SW_LIMIT:I

    if-lez v0, :cond_99

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    .line 1646
    :cond_99
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->EXTRA_TUNING_LMK_FREELIMIT_VAL:I

    if-lez v0, :cond_9f

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    .line 1648
    :cond_9f
    :goto_9f
    return-void
.end method

.method public setResCached()V
    .registers 3

    .line 2095
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    add-int/lit8 v1, v0, -0x4

    if-lez v1, :cond_9

    add-int/lit8 v0, v0, -0x4

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->highRes_MaxCached:I

    .line 2096
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MaxCached:I

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "highRes_MaxCached : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->highRes_MaxCached:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " normalRes_MaxCached : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MaxCached:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DHA_PROPERTY"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    return-void
.end method

.method updateDefaultCachedMAX()V
    .registers 4

    .line 1954
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 1955
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    int-to-float v1, v0

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    .line 1956
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcessesNum()V

    .line 1957
    return-void
.end method

.method public updateHiddenAppNum(II)I
    .registers 27
    .param p1, "curCached"    # I
    .param p2, "curEmpty"    # I

    .line 952
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    .line 954
    .local v3, "ret":I
    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v4, :cond_16b

    .line 956
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 959
    iget-object v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v4

    .line 962
    .local v4, "szFreeMem":J
    iget-object v6, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v6

    .line 966
    .local v6, "szCachedMem":J
    iget-object v8, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getRbinTotalSize()J

    move-result-wide v8

    .line 967
    .local v8, "szRbinTotalMem":J
    iget-object v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getRbinAllocedSize()J

    move-result-wide v10

    .line 969
    .local v10, "szRbinAllocMem":J
    add-long v12, v4, v6

    sub-long v14, v8, v10

    sub-long/2addr v12, v14

    .line 971
    .local v12, "szAvailableMem":J
    sget-boolean v14, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    const-string v15, "ActivityManager"

    if-eqz v14, :cond_c4

    .line 972
    const/4 v14, 0x0

    .line 973
    .local v14, "maxBG":I
    move/from16 v16, v14

    .end local v14    # "maxBG":I
    .local v16, "maxBG":I
    iget v14, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v17, v3

    .end local v3    # "ret":I
    .local v17, "ret":I
    iget v3, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    add-int/2addr v14, v3

    .line 975
    .end local v16    # "maxBG":I
    .restart local v14    # "maxBG":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v15

    const-string v15, "AvailableMem = "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v18, 0x400

    move-wide/from16 v20, v10

    .end local v10    # "szRbinAllocMem":J
    .local v20, "szRbinAllocMem":J
    div-long v10, v12, v18

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB (Free: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v4, v18

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB, Cached: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v6, v18

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB) Threshold = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    div-long v10, v10, v18

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB [MaxHidden: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Current Hidden"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Current Empty"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "], Frag.Mem = 0KB, KPU Total = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    div-long v10, v10, v18

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB, RbinTotal = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v8, v18

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB, RbinAlloc = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v10, v20, v18

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "kB, RecCached = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/am/DynamicHiddenApp;->numRecCached:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v10, v16

    invoke-static {v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 971
    .end local v14    # "maxBG":I
    .end local v17    # "ret":I
    .end local v20    # "szRbinAllocMem":J
    .restart local v3    # "ret":I
    .restart local v10    # "szRbinAllocMem":J
    :cond_c4
    move/from16 v17, v3

    move-wide/from16 v20, v10

    move-object v10, v15

    .line 983
    .end local v3    # "ret":I
    .end local v10    # "szRbinAllocMem":J
    .restart local v17    # "ret":I
    .restart local v20    # "szRbinAllocMem":J
    :goto_c9
    const-wide/16 v14, 0x0

    cmp-long v3, v4, v14

    if-gtz v3, :cond_d0

    .line 984
    return v17

    .line 986
    :cond_d0
    iget v3, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    .line 988
    .local v3, "mFinalDHAThresholdRate":F
    iget-wide v14, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    long-to-float v11, v14

    mul-float/2addr v11, v3

    .line 990
    .local v11, "mFinalDHAThreshold":F
    const/4 v14, 0x0

    .line 991
    .local v14, "curProcess":I
    const/4 v15, 0x0

    .line 993
    .local v15, "bgLimit":I
    move/from16 v14, p2

    .line 994
    iget v15, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    .line 997
    move-wide/from16 v18, v4

    move v5, v3

    .end local v3    # "mFinalDHAThresholdRate":F
    .end local v4    # "szFreeMem":J
    .local v5, "mFinalDHAThresholdRate":F
    .local v18, "szFreeMem":J
    iget-wide v3, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    add-long/2addr v3, v12

    long-to-float v3, v3

    cmpg-float v3, v3, v11

    if-gez v3, :cond_131

    .line 998
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/DynamicHiddenApp;->decrementEmptyAppCount(II)I

    move-result v3

    .line 999
    .end local v17    # "ret":I
    .local v3, "ret":I
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v4, :cond_12c

    .line 1000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v5

    .end local v5    # "mFinalDHAThresholdRate":F
    .local v16, "mFinalDHAThresholdRate":F
    const-string v5, "Decrease Slot Value : cached - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v22, v6

    .end local v6    # "szCachedMem":J
    .local v22, "szCachedMem":J
    iget v6, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-lt v6, v1, :cond_10b

    const/4 v6, 0x0

    goto :goto_10c

    :cond_10b
    sub-int/2addr v6, v1

    :goto_10c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), empty - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16f

    .line 999
    .end local v16    # "mFinalDHAThresholdRate":F
    .end local v22    # "szCachedMem":J
    .restart local v5    # "mFinalDHAThresholdRate":F
    .restart local v6    # "szCachedMem":J
    :cond_12c
    move/from16 v16, v5

    move-wide/from16 v22, v6

    .end local v5    # "mFinalDHAThresholdRate":F
    .end local v6    # "szCachedMem":J
    .restart local v16    # "mFinalDHAThresholdRate":F
    .restart local v22    # "szCachedMem":J
    goto :goto_16f

    .line 1004
    .end local v3    # "ret":I
    .end local v16    # "mFinalDHAThresholdRate":F
    .end local v22    # "szCachedMem":J
    .restart local v5    # "mFinalDHAThresholdRate":F
    .restart local v6    # "szCachedMem":J
    .restart local v17    # "ret":I
    :cond_131
    move/from16 v16, v5

    move-wide/from16 v22, v6

    .end local v5    # "mFinalDHAThresholdRate":F
    .end local v6    # "szCachedMem":J
    .restart local v16    # "mFinalDHAThresholdRate":F
    .restart local v22    # "szCachedMem":J
    long-to-float v3, v12

    sget-wide v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    long-to-float v4, v4

    add-float/2addr v4, v11

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16d

    if-ge v14, v15, :cond_144

    iget v3, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-lt v1, v3, :cond_16d

    .line 1005
    :cond_144
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->incrementEmptyAppCount()I

    move-result v3

    .line 1006
    .end local v17    # "ret":I
    .restart local v3    # "ret":I
    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v4, :cond_16f

    .line 1007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Increase Slot Max : cached - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", empty - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16f

    .line 954
    .end local v8    # "szRbinTotalMem":J
    .end local v11    # "mFinalDHAThreshold":F
    .end local v12    # "szAvailableMem":J
    .end local v14    # "curProcess":I
    .end local v15    # "bgLimit":I
    .end local v16    # "mFinalDHAThresholdRate":F
    .end local v18    # "szFreeMem":J
    .end local v20    # "szRbinAllocMem":J
    .end local v22    # "szCachedMem":J
    :cond_16b
    move/from16 v17, v3

    .line 1011
    .end local v3    # "ret":I
    .restart local v17    # "ret":I
    :cond_16d
    move/from16 v3, v17

    .end local v17    # "ret":I
    .restart local v3    # "ret":I
    :cond_16f
    :goto_16f
    return v3
.end method

.method public updateParamsFile()V
    .registers 12

    .line 1677
    const-string v0, "[=:]"

    const-string v1, "ActivityManager"

    const-string v2, ""

    .line 1678
    .local v2, "result":Ljava/lang/String;
    const-string v3, ""

    .line 1679
    .local v3, "name":Ljava/lang/String;
    const-string v4, ""

    .line 1680
    .local v4, "value":Ljava/lang/String;
    const-string v5, "[=:]"

    .line 1681
    .local v5, "SEPATOR":Ljava/lang/String;
    const-string v6, "/data/log/dha_parameter.dat"

    .line 1682
    .local v6, "filepath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1683
    .local v7, "buf":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 1686
    .local v8, "filereader":Ljava/io/FileReader;
    :try_start_10
    const-string v9, "Start updateParamsFile"

    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    .line 1688
    const-string/jumbo v9, "updateParamsFile dha_parameter.dat exist"

    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v9

    .line 1690
    :cond_27
    :goto_27
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    if-eqz v9, :cond_69

    .line 1691
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 1692
    goto :goto_27

    .line 1694
    :cond_4d
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 1695
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 1697
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/DynamicHiddenApp;->updateTuningParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_68} :catch_89
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_68} :catch_81
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_68} :catch_79
    .catchall {:try_start_10 .. :try_end_68} :catchall_77

    goto :goto_27

    .line 1707
    :cond_69
    :try_start_69
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_72
    .catch Ljava/lang/NullPointerException; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 1714
    :goto_6c
    goto :goto_93

    .line 1711
    :catch_6d
    move-exception v0

    .line 1712
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1715
    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_93

    .line 1708
    :catch_72
    move-exception v0

    .line 1709
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_6c

    .line 1706
    :catchall_77
    move-exception v0

    goto :goto_94

    .line 1703
    :catch_79
    move-exception v0

    .line 1704
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_7a
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_77

    .line 1707
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_7d
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_72
    .catch Ljava/lang/NullPointerException; {:try_start_7d .. :try_end_80} :catch_6d

    goto :goto_6c

    .line 1701
    :catch_81
    move-exception v0

    .line 1702
    .local v0, "e":Ljava/io/IOException;
    :try_start_82
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_77

    .line 1707
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_85
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_72
    .catch Ljava/lang/NullPointerException; {:try_start_85 .. :try_end_88} :catch_6d

    goto :goto_6c

    .line 1699
    :catch_89
    move-exception v0

    .line 1700
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_8a
    const-string v9, "file does not exist"

    invoke-static {v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_77

    .line 1707
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :try_start_8f
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_72
    .catch Ljava/lang/NullPointerException; {:try_start_8f .. :try_end_92} :catch_6d

    goto :goto_6c

    .line 1716
    :goto_93
    return-void

    .line 1707
    :goto_94
    :try_start_94
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_9d
    .catch Ljava/lang/NullPointerException; {:try_start_94 .. :try_end_97} :catch_98

    .line 1714
    :goto_97
    goto :goto_a2

    .line 1711
    :catch_98
    move-exception v1

    .line 1712
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_a2

    .line 1708
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_9d
    move-exception v1

    .line 1709
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_97

    .line 1715
    :goto_a2
    throw v0
.end method

.method public updateParamsIntent(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "pExtras"    # Landroid/os/Bundle;

    .line 1719
    const-string v0, "ActivityManager"

    const-string v1, "Start updateParamsIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1722
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1723
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_29

    .line 1724
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/DynamicHiddenApp;->updateTuningParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 1726
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - value is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3d
    goto :goto_f

    .line 1729
    :cond_3e
    return-void
.end method

.method public updateTuningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1732
    const/4 v0, 0x0

    .line 1733
    .local v0, "refreshList":Z
    const/4 v1, 0x0

    .line 1734
    .local v1, "refreshLMK":Z
    const/4 v2, 0x0

    .line 1735
    .local v2, "maxC_changed":Z
    const/4 v3, 0x0

    .line 1737
    .local v3, "minC_changed":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name = [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ], value = [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :try_start_28
    const-string/jumbo v4, "ro.slmk.dha_cached_max"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_3b

    .line 1741
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    .line 1742
    const/4 v2, 0x1

    goto/16 :goto_4ed

    .line 1744
    :cond_3b
    const-string/jumbo v4, "ro.slmk.dha_cached_min"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1745
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    .line 1746
    const/4 v3, 0x1

    goto/16 :goto_4ed

    .line 1748
    :cond_4d
    const-string/jumbo v4, "ro.slmk.dha_empty_max"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1749
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    goto/16 :goto_4ed

    .line 1752
    :cond_5e
    const-string/jumbo v4, "ro.config.kpm_debug_trigger"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 1753
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    goto/16 :goto_4ed

    .line 1755
    :cond_6f
    const-string/jumbo v4, "ro.config.kpm_policy_trigger"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 1756
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    goto/16 :goto_4ed

    .line 1758
    :cond_80
    const-string/jumbo v4, "ro.config.kpm_debug_cycles"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 1759
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    goto/16 :goto_4ed

    .line 1761
    :cond_91
    const-string/jumbo v4, "ro.config.kpm_boot_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 1762
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    goto/16 :goto_4ed

    .line 1765
    :cond_a2
    const-string/jumbo v4, "ro.slmk.dha_empty_min"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 1766
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    goto/16 :goto_4ed

    .line 1768
    :cond_b3
    const-string/jumbo v4, "ro.slmk.dha_empty_init"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 1769
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    goto/16 :goto_4ed

    .line 1771
    :cond_c4
    const-string/jumbo v4, "ro.slmk.dha_th_rate"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 1772
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    goto/16 :goto_4ed

    .line 1774
    :cond_d5
    const-string/jumbo v4, "ro.slmk.dha_lmk_scale"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 1775
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    .line 1776
    const/4 v1, 0x1

    goto/16 :goto_4ed

    .line 1778
    :cond_e7
    const-string/jumbo v4, "ro.slmk.dha_lmk_array"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 1779
    sput-object p2, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    .line 1780
    const/4 v1, 0x1

    .line 1781
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dha_lmk_array mLMKArray ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4ed

    .line 1783
    :cond_10b
    const-string/jumbo v4, "ro.slmk.dha_pwhitelist_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 1784
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    .line 1785
    const/4 v0, 0x1

    goto/16 :goto_4ed

    .line 1787
    :cond_11d
    const-string/jumbo v4, "ro.slmk.dha_knox_plist_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 1788
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    .line 1789
    const/4 v0, 0x1

    goto/16 :goto_4ed

    .line 1791
    :cond_12f
    const-string/jumbo v4, "ro.slmk.dha_pwhl_key"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_141

    .line 1792
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    .line 1793
    const/4 v0, 0x1

    goto/16 :goto_4ed

    .line 1795
    :cond_141
    const-string/jumbo v4, "ro.slmk.dha_pwhl_key_knox"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_153

    .line 1796
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key_knox:I

    .line 1797
    const/4 v0, 0x1

    goto/16 :goto_4ed

    .line 1799
    :cond_153
    const-string/jumbo v4, "ro.slmk.ldha_spc_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_164

    .line 1800
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    goto/16 :goto_4ed

    .line 1802
    :cond_164
    const-string/jumbo v4, "ro.slmk.ams_exception_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_175

    .line 1803
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    goto/16 :goto_4ed

    .line 1805
    :cond_175
    const-string/jumbo v4, "ro.slmk.ams_knoxexpt_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_186

    .line 1806
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    goto/16 :goto_4ed

    .line 1808
    :cond_186
    const-string/jumbo v4, "ro.slmk.fha_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_198

    .line 1809
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    .line 1810
    const/4 v1, 0x1

    goto/16 :goto_4ed

    .line 1812
    :cond_198
    const-string/jumbo v4, "ro.slmk.fha_cached_max"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ac

    .line 1813
    iget-object v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcessesNumFHA(I)V

    goto/16 :goto_4ed

    .line 1815
    :cond_1ac
    const-string/jumbo v4, "ro.slmk.fha_empty_rate"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 1816
    iget-object v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerConstants;->updateEmptyRate(F)V

    goto/16 :goto_4ed

    .line 1818
    :cond_1c0
    const-string/jumbo v4, "ro.slmk.fall_prevent_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 1819
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    goto/16 :goto_4ed

    .line 1821
    :cond_1d1
    const-string/jumbo v4, "ro.slmk.dha_package_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e2

    .line 1822
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    goto/16 :goto_4ed

    .line 1824
    :cond_1e2
    const-string/jumbo v4, "ro.slmk.cam_dha_ver"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f3

    .line 1825
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->CAMERA_DHA_VER:I

    goto/16 :goto_4ed

    .line 1827
    :cond_1f3
    const-string/jumbo v4, "ro.slmk.low"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_211

    .line 1828
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_LOW_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1829
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_ADJ:I

    goto/16 :goto_4ed

    .line 1831
    :cond_211
    const-string/jumbo v4, "ro.slmk.medium"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 1832
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_MEDIUM_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1833
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_MEDIUM_ADJ:I

    goto/16 :goto_4ed

    .line 1835
    :cond_22f
    const-string/jumbo v4, "ro.slmk.critical"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24d

    .line 1836
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_CRITICAL_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1837
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_ADJ:I

    goto/16 :goto_4ed

    .line 1839
    :cond_24d
    const-string/jumbo v4, "ro.slmk.debug"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_270

    .line 1840
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DEBUG:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_264

    goto :goto_265

    :cond_264
    move v7, v6

    :goto_265
    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1841
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_DEBUG:Z

    goto/16 :goto_4ed

    .line 1843
    :cond_270
    const-string/jumbo v4, "ro.slmk.critical_upgrade"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_292

    .line 1844
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_CRITICAL_UPGRADE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_286

    goto :goto_287

    :cond_286
    move v7, v6

    :goto_287
    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1845
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_CRITICAL_UPGRADE:Z

    goto/16 :goto_4ed

    .line 1847
    :cond_292
    const-string/jumbo v4, "ro.slmk.upgrade_pressure"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b0

    .line 1848
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_UPGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1849
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    goto/16 :goto_4ed

    .line 1851
    :cond_2b0
    const-string/jumbo v4, "ro.slmk.downgrade_pressure"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d6

    .line 1852
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DOWNGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1853
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    .line 1854
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    goto/16 :goto_4ed

    .line 1856
    :cond_2d6
    const-string/jumbo v4, "ro.slmk.kill_heaviest_task"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f8

    .line 1857
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_HEAVIEST_TASK:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2ec

    goto :goto_2ed

    :cond_2ec
    move v7, v6

    :goto_2ed
    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1858
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_HEAVIEST_TASK:Z

    goto/16 :goto_4ed

    .line 1860
    :cond_2f8
    const-string/jumbo v4, "ro.slmk.kill_timeout_ms"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31e

    .line 1861
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_TIMEOUT_MS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1862
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_TIMEOUT_MS:I

    .line 1863
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    goto/16 :goto_4ed

    .line 1865
    :cond_31e
    const-string/jumbo v4, "ro.slmk.use_minfree_levels"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_340

    .line 1866
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_USE_MINFREE_LEVELS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_334

    goto :goto_335

    :cond_334
    move v7, v6

    :goto_335
    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1867
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    goto/16 :goto_4ed

    .line 1869
    :cond_340
    const-string/jumbo v4, "ro.slmk.enable_cmarbinfree_sub"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_362

    .line 1870
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_CMARBINFREE_SUB:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_356

    goto :goto_357

    :cond_356
    move v7, v6

    :goto_357
    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1871
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_CMARBINFREE_SUB:Z

    goto/16 :goto_4ed

    .line 1873
    :cond_362
    const-string/jumbo v4, "ro.slmk.enable_upgrade_criadj"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_384

    .line 1874
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_UPGRADE_CRIADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_378

    goto :goto_379

    :cond_378
    move v7, v6

    :goto_379
    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1875
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    goto/16 :goto_4ed

    .line 1877
    :cond_384
    const-string/jumbo v4, "ro.slmk.freelimit_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a6

    .line 1878
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_FREELIMIT_ENABLE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39a

    goto :goto_39b

    :cond_39a
    move v7, v6

    :goto_39b
    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1879
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    goto/16 :goto_4ed

    .line 1881
    :cond_3a6
    const-string/jumbo v4, "ro.slmk.freelimit_val"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c4

    .line 1882
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_FREELIMIT_VAL:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1883
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    goto/16 :goto_4ed

    .line 1885
    :cond_3c4
    const-string/jumbo v4, "ro.slmk.custom_sw_limit"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3ec

    .line 1886
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DOWNGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    div-int/lit8 v7, v7, 0x5

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1887
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_DOWNGRADE_PRESSURE:I

    .line 1888
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    goto/16 :goto_4ed

    .line 1890
    :cond_3ec
    const-string/jumbo v4, "ro.slmk.custom_tm_limit"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_414

    .line 1891
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_TIMEOUT_MS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1892
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_KILL_TIMEOUT_MS:I

    .line 1893
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    goto/16 :goto_4ed

    .line 1895
    :cond_414
    const-string/jumbo v4, "ro.slmk.psi_low"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_432

    .line 1896
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_PSI_LOW_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1897
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_LOW_TH:I

    goto/16 :goto_4ed

    .line 1899
    :cond_432
    const-string/jumbo v4, "ro.slmk.psi_medium"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_450

    .line 1900
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_PSI_MEDIUM_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1901
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    goto/16 :goto_4ed

    .line 1903
    :cond_450
    const-string/jumbo v4, "ro.slmk.psi_critical"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46e

    .line 1904
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_PSI_CRITICAL_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->ordinal()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v7}, Lcom/android/server/am/ProcessList;->setLmkdParameter(II)V

    .line 1905
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    goto/16 :goto_4ed

    .line 1907
    :cond_46e
    const-string/jumbo v4, "ro.slmk.dha_rec_cch_enable"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47e

    .line 1908
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->RECENT_CACHED_ENABLE:Z

    goto :goto_4ed

    .line 1910
    :cond_47e
    const-string/jumbo v4, "ro.slmk.dha_rec_cch_limit"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48e

    .line 1911
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->LIMITATION_RECENT_CACHED_SLOT:Z

    goto :goto_4ed

    .line 1913
    :cond_48e
    const-string/jumbo v4, "ro.slmk.dha_rec_cch_max"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49e

    .line 1914
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->MAX_REC_CACHED_APPS:I

    goto :goto_4ed

    .line 1916
    :cond_49e
    const-string/jumbo v4, "ro.slmk.enable_picked_adj"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4ae

    .line 1917
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    goto :goto_4ed

    .line 1919
    :cond_4ae
    const-string/jumbo v4, "ro.slmk.swappiness"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4be

    .line 1920
    const-string/jumbo v4, "sys.sysctl.swappiness"

    invoke-static {v4, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4ed

    .line 1922
    :cond_4be
    const-string/jumbo v4, "ro.slmk.mmap_readaround_limit"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4ce

    .line 1923
    const-string/jumbo v4, "sys.sysctl.mmap_readaround_limit"

    invoke-static {v4, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4ed

    .line 1925
    :cond_4ce
    const-string/jumbo v4, "ro.slmk.fault_around_bytes"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4de

    .line 1926
    const-string/jumbo v4, "sys.sysctl.fault_around_bytes"

    invoke-static {v4, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4ed

    .line 1928
    :cond_4de
    const-string/jumbo v4, "ro.slmk.dha_2ndprop_thMB"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51c

    .line 1929
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/DynamicHiddenApp;->TOTAL_MEMORY:I
    :try_end_4ed
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_4ed} :catch_531

    .line 1938
    :goto_4ed
    nop

    .line 1940
    if-eqz v0, :cond_4f3

    .line 1941
    invoke-virtual {p0, v6}, Lcom/android/server/am/DynamicHiddenApp;->makeLists(Z)V

    .line 1943
    :cond_4f3
    if-eqz v1, :cond_513

    .line 1944
    iget-object v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    .line 1945
    iget-object v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v5, 0x3e7

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ro.slmk.dha_th_level"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    .line 1947
    :cond_513
    if-eqz v2, :cond_518

    .line 1948
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->setResCached()V

    .line 1950
    :cond_518
    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->updateDefaultCachedMAX()V

    .line 1951
    return-void

    .line 1931
    :cond_51c
    :try_start_51c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - cannot matched parameter"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_530
    .catch Ljava/lang/NumberFormatException; {:try_start_51c .. :try_end_530} :catch_531

    .line 1932
    return-void

    .line 1934
    :catch_531
    move-exception v4

    .line 1935
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occurred not correct data format ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]  ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1937
    return-void
.end method
