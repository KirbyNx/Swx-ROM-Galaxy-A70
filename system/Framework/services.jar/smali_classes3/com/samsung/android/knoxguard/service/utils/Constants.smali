.class public Lcom/samsung/android/knoxguard/service/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knoxguard/service/utils/Constants$Rot;
    }
.end annotation


# static fields
.field public static final CSC_FEATURE_SUPPORT_KNOXGUARD:Ljava/lang/String; = "CscFeature_Knox_SupportKnoxGuard"

.field public static final EMMC_CID:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field public static final EMMC_NAME:Ljava/lang/String; = "/sys/block/mmcblk0/device/name"

.field public static final EMMC_UN:Ljava/lang/String; = "/sys/block/mmcblk0/device/unique_number"

.field public static final EMMC_UN_R:Ljava/lang/String; = "/sys/class/sec/mmc/un"

.field public static final ERROR_CLIENT_INTEGRITY:Ljava/lang/String; = "3020"

.field public static final INTENT_SECSETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field public static final INTENT_SETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

.field public static final IS_SUPPORT_KGTA:Z

.field public static final JSON_CLIENT_DATA_COMPANY:Ljava/lang/String; = "companyName"

.field public static final JSON_CLIENT_DATA_STATUS:Ljava/lang/String; = "status"

.field public static final JSON_KG_POLICY_COMPANY:Ljava/lang/String; = "companyName"

.field public static final JSON_KG_POLICY_GENERAL:Ljava/lang/String; = "generalInfo"

.field public static final KG_APP_TITLE:Ljava/lang/String; = "Payment Services"

.field public static final KG_LOG_URI:Landroid/net/Uri;

.field public static final KG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.kgclient"

.field public static final KG_PERMISSION:Ljava/lang/String; = "com.samsung.android.knoxguard.STATUS"

.field public static final KG_SERVICE_VERSION:I = 0xa21fe81

.field public static final KG_STATE_ACTIVE:I = 0x2

.field public static final KG_STATE_CHECKING:I = 0x1

.field public static final KG_STATE_COMPLETED:I = 0x4

.field public static final KG_STATE_ERROR:I = 0x5

.field public static final KG_STATE_LOCKED:I = 0x3

.field public static final KG_STATE_PRENORMAL:I = 0x0

.field public static final KG_SYSTEM_PROPERTY:Ljava/lang/String; = "knox.kg.state"

.field public static final MESSAGE_TYPE_COMPLETE:Ljava/lang/String; = "complete"

.field public static final RLC_STATE_BLINKED:Ljava/lang/String; = "Blink"

.field public static final RLC_STATE_CHECKING:Ljava/lang/String; = "Checking"

.field public static final RLC_STATE_COMPLETED:Ljava/lang/String; = "Completed"

.field public static final RLC_STATE_LOCKED:Ljava/lang/String; = "Locked"

.field public static final RLC_STATE_NORMAL:Ljava/lang/String; = "Normal"

.field public static final RLC_STATE_NULL:Ljava/lang/String; = ""

.field public static final RLC_STATE_PRENORMAL:Ljava/lang/String; = "Prenormal"

.field public static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final UFS_UN:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"

.field public static final UFS_UN_R:Ljava/lang/String; = "/sys/class/sec/ufs/un"

.field public static final strState:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 25
    const-string v0, "content://com.samsung.android.kgclient.statusprovider/CONTENT_LOG"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->KG_LOG_URI:Landroid/net/Uri;

    .line 48
    const-string v1, "Prenormal"

    const-string v2, "Checking"

    const-string v3, "Active"

    const-string v4, "Locked"

    const-string v5, "Completed"

    const-string v6, "Error"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    .line 75
    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_26

    const/4 v1, 0x1

    :cond_26
    sput-boolean v1, Lcom/samsung/android/knoxguard/service/utils/Constants;->IS_SUPPORT_KGTA:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
