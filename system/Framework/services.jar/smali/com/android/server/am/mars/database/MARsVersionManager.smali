.class public Lcom/android/server/am/mars/database/MARsVersionManager;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;,
        Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;,
        Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;,
        Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;,
        Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;,
        Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;
    }
.end annotation


# static fields
.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_ALARM:I = 0x13

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_ASYNC_BINDER:I = 0x9

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_ASYNC_BINDER_FGS:I = 0x11

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_CHINESE_APP:I = 0x1

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_ESSENTIAL_INTENT:I = 0x3

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_FOREGROUND_APP:I = 0x7

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_PROCESS_FREEZE:I = 0x12

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_RAGEBIRD:I = 0x14

.field public static final ADJUST_RESTRICTION_TYPE_ALLOW_VIDEO_CACHING_APP:I = 0x6

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_ALARM:I = 0xb

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_BLOCKLIST:I = 0xa

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_CHINESE_APP:I = 0x2

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_DEEPSLEEP:I = 0x15

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_ESSENTIAL_INTENT:I = 0x4

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_FAKETOP_ACTIVITY:I = 0x8

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_FOREGROUND_SERVICE:I = 0xf

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_OLAF_BLOCKLIST:I = 0x10

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_ROGUE_INSTRUMENT_APP:I = 0xe

.field public static final ADJUST_RESTRICTION_TYPE_BLOCK_TOP_ACTIVITY:I = 0x5

.field public static final ADJUST_RESTRICTION_TYPE_BROADCAST_PENDING_BLOCKLIST:I = 0xc

.field public static final ADJUST_RESTRICTION_TYPE_GPS_PENDING_BLOCKLIST:I = 0xd

.field static final TAG:Ljava/lang/String; = "MARsVersionManager"

.field static final mAdjustRestrictionDefault:[[Ljava/lang/String;

.field static final mAutoRunParameterDefault:[Ljava/lang/String;

.field static final mCurrentImportantDefault:[[Ljava/lang/String;

.field static final mExcludePackageDefault:[[Ljava/lang/String;

.field static final mMARsSettingsInfoDefault:[[Ljava/lang/String;

.field static final mPolicyInfoDefault:[[Ljava/lang/String;

.field public static mPolicyInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mApplicationSizeIncreased:J

.field mContext:Landroid/content/Context;

.field public mExcludeTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurrentImportantList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurrentImportantMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMARsSettingsInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mNotifiUpdatedCount:J

.field public mRestrictionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;",
            ">;"
        }
    .end annotation
.end field

.field public mTrafficAmount:J

.field public mTrafficInterval:J

.field public mUnusedTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 217
    const/4 v0, 0x5

    new-array v1, v0, [[Ljava/lang/String;

    const-string/jumbo v2, "marsversion"

    const-string v3, "1020210706"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "skipratio"

    const-string v4, "90"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "killthreshold"

    const-string v5, "100"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v1, v6

    const-string/jumbo v2, "restrictionthreshold"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string/jumbo v2, "unused_app_period_days"

    const-string v7, "32"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 225
    new-array v1, v7, [[Ljava/lang/String;

    const-string v8, "1"

    const-string v9, "1"

    const-string v10, "13"

    const-string v11, "354255120"

    const-string v12, "12"

    const-string v13, "10"

    const-string v14, "10"

    const-string v15, "337379600"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v8, "2"

    const-string v9, "0"

    const-string v10, "21"

    const-string v11, "270272648"

    const-string v12, "10"

    const-string v13, "10"

    const-string v14, "5"

    const-string v15, "270272640"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v8, "4"

    const-string v9, "0"

    const-string v10, "25"

    const-string v11, "270272648"

    const-string v12, "26"

    const-string v13, "5"

    const-string v14, "1"

    const-string v15, "270272640"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v8, "8"

    const-string v9, "1"

    const-string v10, "26"

    const-string v11, "0"

    const-string v12, "2"

    const-string v13, "5"

    const-string v14, "0"

    const-string v15, "0"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    .line 232
    const-string v1, "2"

    const-string v2, "15"

    const-string v8, "300"

    const-string v9, "1"

    filled-new-array {v1, v2, v8, v9, v9}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    .line 235
    const/4 v2, 0x7

    new-array v8, v2, [[Ljava/lang/String;

    const-string v10, "0"

    const-string v11, "24"

    const-string v12, "contains"

    const-string v13, ".cts."

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v3

    const-string v12, "endsWith"

    const-string v13, ".cts"

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v4

    const-string v12, "equals"

    const-string v13, "com.samsung.accessory"

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v6

    const-string v11, "com.sec.android.app.shealth"

    filled-new-array {v1, v9, v12, v11}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v5

    const-string v11, "10"

    const-string v13, "com.sec.aecmonitor"

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v7

    const-string v13, "com.salab.act"

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v0

    const-string v11, "4"

    const-string v13, "com.samsung.android.app.cocktailbarservice"

    filled-new-array {v11, v10, v12, v13}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v8, v13

    sput-object v8, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludePackageDefault:[[Ljava/lang/String;

    .line 242
    const/16 v8, 0x9

    new-array v12, v8, [[Ljava/lang/String;

    const-string v14, "8000"

    filled-new-array {v10, v14}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v3

    const-string v10, "18284"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v4

    const-string v9, "65529"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v6

    const-string v1, "24032"

    filled-new-array {v11, v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v5

    const-string v1, "5"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v7

    const-string v1, "6"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    const-string v1, "7"

    const-string v9, "20251"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v13

    const-string v1, "8"

    const-string v9, "20264"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v2

    const-string v1, "9"

    const-string v9, "24446"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x8

    aput-object v1, v12, v9

    sput-object v12, Lcom/android/server/am/mars/database/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    .line 250
    const/16 v1, 0x83

    new-array v1, v1, [[Ljava/lang/String;

    const-string v14, "1"

    const-string v15, "allow"

    const-string v16, "com.eg.android.AlipayGphone"

    const/16 v17, 0x0

    const-string v18, "equals"

    const-string v19, "com.eg.android.AlipayGphone.IAlixPay"

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    const-string v14, "1"

    const-string v15, "allow"

    const-string v16, "com.alipay.android.app"

    const-string v18, "equals"

    const-string v19, "com.eg.android.AlipayGphone.IAlixPay"

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v14, "1"

    const-string v15, "allow"

    const-string v16, "com.tencent.mobileqq"

    const/16 v18, 0x0

    const/16 v19, 0x0

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    const-string v14, "1"

    const-string v15, "allow"

    const-string v16, "com.tencent.mm"

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v14, "1"

    const-string v15, "allow"

    const-string v16, "com.cmcc.sso"

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    const-string v14, "1"

    const-string v15, "allow"

    const-string v16, "com.cmdm.rcs"

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v14, "2"

    const-string v15, "block"

    const-string v16, "com.baidu.netdisk_ss"

    const-string v17, "com.sec.android.cloudagent"

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v13

    const-string v14, "2"

    const-string v15, "block"

    const/16 v16, 0x0

    const-string v17, "com.samsung.android.opencalendar"

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v10, "3"

    const-string v11, "allow"

    const/4 v12, 0x0

    const-string v13, "com.samsung.accessory"

    const-string v14, "equals"

    const-string v15, "android.accessory.service.action.ACCESSORY_SERVICE_CONNECTION_IND"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    const-string v2, "3"

    const-string v3, "allow"

    const/4 v4, 0x0

    const-string v5, "com.samsung.accessory"

    const-string v6, "equals"

    const-string v7, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    const-string v2, "3"

    const-string v3, "allow"

    const-string v5, "com.samsung.accessory"

    const-string v6, "equals"

    const-string v7, "android.accessory.device.action.REGISTER_AFTER_INSTALL"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const/4 v5, 0x0

    const-string v6, "com.samsung.accessory"

    const-string v7, "equals"

    const-string v8, "com.samsung.accessory.action.REGISTER_AGENT"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const/4 v6, 0x0

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.samsung.android.cocktail.action.COCKTAIL"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.samsung.android.cocktail.v2.action.COCKTAIL"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.samsung.android.app.memo.EDGE_"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "com.wssnps"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.sec.android.intent.action.REQUEST_BACKUP_"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "com.wssnps"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.sec.android.intent.action.REQUEST_RESTORE_"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "com.wssnps"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.samsung.android.intent.action.REQUEST_BACKUP_"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "com.wssnps"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.samsung.android.intent.action.REQUEST_RESTORE_"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "com.wssnps"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.samsung.android.intent.action.REQUEST_VERIFY"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "com.wssnps"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.samsung.android.intent.action.RESPONSE_VERIFY"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "com.sec.android.easyMover"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.sec.android.intent.action.REQUEST_BACKUP_"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "com.sec.android.easyMover"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.sec.android.intent.action.REQUEST_RESTORE_"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "com.sec.android.easyMover"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.samsung.android.intent.action.REQUEST_BACKUP_"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "com.sec.android.easyMover"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.samsung.android.intent.action.REQUEST_RESTORE_"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "com.sec.android.easyMover"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.samsung.android.intent.action.REQUEST_VERIFY"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v6, "com.sec.android.easyMover"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.samsung.android.intent.action.RESPONSE_VERIFY"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const/4 v6, 0x0

    const-string v7, "equals"

    const-string v8, "android.intent.action.MEDIA_BUTTON"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "com.samsung.android.intent.action.MEDIA_BUTTON"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "com.sec.android.app.dictionary.SEARCH"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "com.sec.android.app.dictionary.SEARCH_WORD"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "com.sec.android.app.dictionary.CLOSE"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "com.sec.android.contextaware.HEADSET_PLUG"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "com.samsung.android.intent.action.PACKAGE_NEEDS_VERIFICATION2"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v5, "com.samsung.android.app.music.chn"

    const-string v6, "com.samsung.android.app.sreminder"

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.sec.android.app.music"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v5, "com.samsung.android.scloud"

    const-string v6, "com.sec.spp.push"

    const-string v7, "equals"

    const-string v8, "com.sec.spp.RegistrationChangedAction"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v5, "com.samsung.android.scloud"

    const-string v6, "com.sec.spp.push"

    const-string v7, "equals"

    const-string/jumbo v8, "tj9u972o46"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "equals"

    const-string v8, "com.samsung.app.highlightvideo.Analyse"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v5, "com.samsung.android.galaxycontinuity"

    const-string v6, "com.sec.spp.push"

    const-string v7, "equals"

    const-string v8, "8bf1f59dc1d6217c"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const-string v3, "3"

    const-string v4, "allow"

    const-string v5, "com.samsung.android.galaxycontinuity"

    const-string v6, "com.sec.spp.push"

    const-string v7, "equals"

    const-string v8, "com.sec.spp.RegistrationChangedAction"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const-string v3, "5"

    const-string v4, "block"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.and.games505.Terraria"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const-string v3, "5"

    const-string v4, "block"

    const-string v5, "com.tencent.mtt"

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const-string v3, "5"

    const-string v4, "block"

    const-string v5, "com.maiya.weather"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const-string v3, "6"

    const-string v4, "allow"

    const-string v5, "com.youku.phone"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const-string v3, "6"

    const-string v4, "allow"

    const-string v5, "com.sohu.sohuvideo"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const-string v3, "6"

    const-string v4, "allow"

    const-string v5, "com.letv.android.client"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const-string v3, "6"

    const-string v4, "allow"

    const-string v5, "com.qiyi.video"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const-string v3, "6"

    const-string v4, "allow"

    const-string v5, "com.tencent.qqlive"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const-string v3, "7"

    const-string v4, "allow"

    const-string v5, "com.sina.weibo"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const-string v3, "7"

    const-string v4, "allow"

    const-string v5, "com.tencent.mm"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const-string v3, "7"

    const-string v4, "allow"

    const-string v5, "com.tencent.mobileqq"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const-string v3, "8"

    const-string v4, "block"

    const-string v5, "com.igexin.sdk.GActivity"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x34

    aput-object v0, v1, v2

    const-string v3, "9"

    const-string v4, "allow"

    const/4 v5, 0x0

    const-string v7, "contains"

    const-string v8, "Accessibility"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x35

    aput-object v0, v1, v2

    const-string v3, "9"

    const-string v4, "allow"

    const-string v7, "contains"

    const-string v8, "ISessionCallback"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x36

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "com.codoon.gps"

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "com.traffic.panda"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x38

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string/jumbo v5, "me.ele.crowdsource"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x39

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "com.ludashi.benchmark"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3a

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "com.dada.mobile.android"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3b

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "com.filemagic"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "com.tencent.tmgp.yys.zqb"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3d

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "com.baidu.carlife"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "com.supercleaner.lite"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    aput-object v0, v1, v2

    const-string v3, "10"

    const-string v4, "block"

    const-string v5, "com.ijinshan.browser_fast"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x40

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.ss.android.ugc.trill"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x41

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "cheehoon.ha.particulateforecaster"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x42

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.smg.spbs"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x43

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.lottemembers.android"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x44

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.cleanmaster.mguard"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x45

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.fitnesskeeper.runkeeper.pro"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x46

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.welstory.welhc"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x47

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string/jumbo v5, "net.rgruet.android.g3watchdog"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x48

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string/jumbo v5, "kr.co.d2.dominos"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x49

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.kt.gigagenie.mobile"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4a

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.northghost.touchvpn"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4b

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.gion.android.GnMemoG"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4c

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.nhn.android.band"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4d

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.ktcs.whowho"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4e

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.skt.tmap.ku"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4f

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.linkedin.android"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x50

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string/jumbo v5, "net.daum.android.daum"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x51

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.campmobile.snow"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x52

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.estsoft.alyac"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x53

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.nhn.android.nmap"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x54

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "de.axelspringer.yana.zeropage"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x55

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.imo.android.imoim"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x56

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.life360.android.safetymapd"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x57

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.bmwgroup.connected.bmw"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x58

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "fast.phone.clean"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x59

    aput-object v0, v1, v2

    const-string v3, "11"

    const-string v4, "block"

    const-string v5, "com.nhn.android.navercafe"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5a

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const/4 v5, 0x0

    const-string v7, "equals"

    const-string v8, "android.intent.action.ANY_DATA_STATE"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5b

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "android.intent.action.TIME_TICK"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5c

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "android.net.wifi.SCAN_RESULTS"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5d

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5e

    aput-object v0, v1, v2

    const-string v3, "12"

    const-string v4, "block"

    const-string v7, "equals"

    const-string/jumbo v8, "net.rgruet.android.g3watchdog.ACTION_CHECK_SERVICE_ALIVE"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5f

    aput-object v0, v1, v2

    const-string v3, "13"

    const-string v4, "block"

    const-string v5, "com.codoon.gps"

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x60

    aput-object v0, v1, v2

    const-string v3, "13"

    const-string v4, "block"

    const-string v5, "com.traffic.panda"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x61

    aput-object v0, v1, v2

    const-string v3, "13"

    const-string v4, "block"

    const-string/jumbo v5, "me.ele.crowdsource"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x62

    aput-object v0, v1, v2

    const-string v3, "13"

    const-string v4, "block"

    const-string v5, "com.accurate.live.weather.forecast"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x63

    aput-object v0, v1, v2

    const-string v3, "13"

    const-string v4, "block"

    const-string v5, "com.accurate.live.weather.forecast.pro"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x64

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "com.tencent.android.qqdownloader"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x65

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const/4 v5, 0x0

    const-string/jumbo v7, "startsWith"

    const-string v8, "com.qihoo"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x66

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "com.ludashi.benchmark"

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x67

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "com.filemagic"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x68

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "com.icoolme.android.weather"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x69

    aput-object v0, v1, v2

    const-string v3, "14"

    const-string v4, "block"

    const-string v5, "com.xunmeng.pinduoduo"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6a

    aput-object v0, v1, v2

    const-string v3, "15"

    const-string v4, "block"

    const/4 v5, 0x0

    const-string v6, "com.tencent.qqlive"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6b

    aput-object v0, v1, v2

    const-string v3, "16"

    const-string v4, "block"

    const-string v5, "com.DubaiLiveWallpaperHQ"

    const/4 v6, 0x0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6c

    aput-object v0, v1, v2

    const-string v3, "17"

    const-string v4, "allow"

    const/4 v5, 0x0

    const-string v7, "contains"

    const-string v8, "com.android.internal.telephony.IPhoneState"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6d

    aput-object v0, v1, v2

    const-string v3, "17"

    const-string v4, "allow"

    const-string v7, "equals"

    const-string v8, "android.media.IAudioFocusDispatcher"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6e

    aput-object v0, v1, v2

    const-string v3, "19"

    const-string v4, "allow"

    const-string v5, "com.kt.ktauth"

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    aput-object v0, v1, v2

    const-string v3, "19"

    const-string v4, "allow"

    const-string v5, "com.sktelecom.tauth"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x70

    aput-object v0, v1, v2

    const-string v3, "19"

    const-string v4, "allow"

    const-string v5, "com.lguplus.smartotp"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x71

    aput-object v0, v1, v2

    const-string v3, "20"

    const-string v4, "allow"

    const-string v5, "com.whatsapp"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x72

    aput-object v0, v1, v2

    const-string v3, "20"

    const-string v4, "allow"

    const-string v5, "com.sec.android.app.shealth"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x73

    aput-object v0, v1, v2

    const-string v3, "20"

    const-string v4, "allow"

    const-string v5, "com.amazon.mp3"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x74

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "com.google.android.play.games"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x75

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "com.google.android.apps.chromecast.app"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x76

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "com.samsung.android.app.watchmanager"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x77

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "com.rocketshipapps.adblockfast"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x78

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "com.betafish.adblocksbrowser"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x79

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string/jumbo v5, "org.adblockplus.adblockplussbrowser"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7a

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "com.seven.adclear.fsb"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7b

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "com.adguard.android.contentblocker"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7c

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "co.crystalapp.crystal"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7d

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "com.disconnect.samsungcontentblocker"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7e

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string/jumbo v5, "kr.co.lylstudio.unicorn"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7f

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "com.spear_adblocker"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string/jumbo v5, "org.adblockplus.adblockplussbrowser.cn"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81

    aput-object v0, v1, v2

    const-string v3, "21"

    const-string v4, "block"

    const-string v5, "com.samsung.android.app.routines"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mAdjustRestrictionDefault:[[Ljava/lang/String;

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    .line 421
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 426
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mTrafficInterval:J

    .line 427
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mUnusedTime:J

    .line 428
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mTrafficAmount:J

    .line 429
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mNotifiUpdatedCount:J

    .line 430
    iput-wide v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mApplicationSizeIncreased:J

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/database/MARsVersionManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/database/MARsVersionManager$1;

    .line 20
    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;-><init>()V

    return-void
.end method

.method private convertListToMap(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;)V"
        }
    .end annotation

    .line 543
    .local p1, "isCurrentImportantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;>;"
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2f

    .line 544
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 547
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v2, v2, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->policyNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->importantValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_2e
    goto :goto_37

    .line 550
    :cond_2f
    const-string v0, "MARsVersionManager"

    const-string/jumbo v1, "mIsCurrentImportantMap is null! "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :goto_37
    return-void
.end method

.method private convertRestrictionTypeToName(I)Ljava/lang/String;
    .registers 3
    .param p1, "restrictionType"    # I

    .line 493
    const/4 v0, 0x1

    if-eq p1, v0, :cond_24

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x7

    if-ne p1, v0, :cond_a

    goto :goto_24

    .line 497
    :cond_a
    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    goto :goto_21

    .line 500
    :cond_11
    const/16 v0, 0xe

    if-ne p1, v0, :cond_18

    .line 501
    const-string v0, "Rogue app"

    return-object v0

    .line 502
    :cond_18
    const/16 v0, 0xf

    if-ne p1, v0, :cond_1f

    .line 503
    const-string v0, "Foreground Service"

    return-object v0

    .line 505
    :cond_1f
    const/4 v0, 0x0

    return-object v0

    .line 499
    :cond_21
    :goto_21
    const-string v0, "Essential intent"

    return-object v0

    .line 496
    :cond_24
    :goto_24
    const-string v0, "CHN app"

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;
    .registers 1

    .line 31
    # getter for: Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->access$100()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    return-object v0
.end method

.method private isActionMatch(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;)Z
    .registers 6
    .param p1, "restriction"    # Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;
    .param p2, "action"    # Ljava/lang/String;

    .line 697
    const/4 v0, 0x0

    .line 699
    .local v0, "match":Z
    iget-object v1, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v2, "equals"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 700
    iget-object v1, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_56

    .line 701
    :cond_12
    iget-object v1, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v2, "equalsIgnoreCase"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 702
    iget-object v1, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_56

    .line 703
    :cond_23
    iget-object v1, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v2, "contains"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 704
    iget-object v1, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_56

    .line 705
    :cond_34
    iget-object v1, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "startsWith"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 706
    iget-object v1, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_56

    .line 707
    :cond_46
    iget-object v1, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string v2, "endsWith"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 708
    iget-object v1, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 711
    :cond_56
    :goto_56
    return v0
.end method

.method private isAdjustRestrictionMatchInternal(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "restriction"    # Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .line 715
    iget-object v0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    iget-object v0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_e
    iget-object v0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    if-nez v0, :cond_36

    :cond_12
    iget-object v0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-eqz v0, :cond_20

    if-eqz p3, :cond_20

    iget-object v0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    .line 716
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_20
    iget-object v0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-nez v0, :cond_36

    :cond_24
    iget-object v0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    if-eqz v0, :cond_30

    if-eqz p4, :cond_30

    .line 717
    invoke-direct {p0, p1, p4}, Lcom/android/server/am/mars/database/MARsVersionManager;->isActionMatch(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_30
    iget-object v0, p1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    if-nez v0, :cond_36

    .line 718
    :cond_34
    const/4 v0, 0x1

    return v0

    .line 721
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method private isRestrictionTypeAllowed(I)Z
    .registers 4
    .param p1, "restrictionType"    # I

    .line 509
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_b

    const/4 v1, 0x7

    if-eq p1, v1, :cond_b

    .line 521
    const/4 v0, 0x0

    return v0

    .line 513
    :cond_b
    return v0
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public convertPolicyNameToNum(Ljava/lang/String;)I
    .registers 4
    .param p1, "policyName"    # Ljava/lang/String;

    .line 455
    const-string v0, "force"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 456
    return v1

    .line 457
    :cond_a
    const-string v0, "applocker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 458
    const/4 v0, 0x1

    return v0

    .line 459
    :cond_14
    const-string v0, "autorun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 460
    const/4 v0, 0x2

    return v0

    .line 461
    :cond_1e
    const-string/jumbo v0, "freecess"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 462
    const/4 v0, 0x4

    return v0

    .line 463
    :cond_29
    const-string/jumbo v0, "udspolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 464
    const/4 v0, 0x5

    return v0

    .line 465
    :cond_34
    const-string/jumbo v0, "sbikepolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 466
    const/4 v0, 0x6

    return v0

    .line 467
    :cond_3f
    const-string v0, "disablepolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 468
    const/16 v0, 0x8

    return v0

    .line 470
    :cond_4a
    return v1
.end method

.method convertPolicyNumToName(I)Ljava/lang/String;
    .registers 3
    .param p1, "policyNum"    # I

    .line 474
    if-nez p1, :cond_5

    .line 475
    const-string v0, "force"

    return-object v0

    .line 476
    :cond_5
    const/4 v0, 0x1

    if-ne v0, p1, :cond_b

    .line 477
    const-string v0, "applocker"

    return-object v0

    .line 478
    :cond_b
    const/4 v0, 0x2

    if-ne v0, p1, :cond_11

    .line 479
    const-string v0, "autorun"

    return-object v0

    .line 480
    :cond_11
    const/4 v0, 0x4

    if-ne v0, p1, :cond_18

    .line 481
    const-string/jumbo v0, "freecesspolicy"

    return-object v0

    .line 482
    :cond_18
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1f

    .line 483
    const-string/jumbo v0, "udspolicy"

    return-object v0

    .line 484
    :cond_1f
    const/4 v0, 0x6

    if-ne v0, p1, :cond_26

    .line 485
    const-string/jumbo v0, "sbikepolicy"

    return-object v0

    .line 486
    :cond_26
    const/16 v0, 0x8

    if-ne v0, p1, :cond_2d

    .line 487
    const-string v0, "disablepolicy"

    return-object v0

    .line 489
    :cond_2d
    const/4 v0, 0x0

    return-object v0
.end method

.method public deInit()V
    .registers 1

    .line 47
    return-void
.end method

.method public dumpMARsDefaultValue()V
    .registers 6

    .line 675
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "dumpMARsDefaultValue----> "

    const-string v3, "MARsVersionManager"

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 676
    .local v1, "policy":Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v4, :cond_2c

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v1    # "policy":Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;
    :cond_2c
    goto :goto_6

    .line 680
    :cond_2d
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 681
    .local v1, "excludeTarget":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v4, :cond_55

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v1    # "excludeTarget":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;
    :cond_55
    goto :goto_33

    .line 685
    :cond_56
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    .line 686
    .local v1, "isCurrentImportant":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v4, :cond_7e

    .line 687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v1    # "isCurrentImportant":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;
    :cond_7e
    goto :goto_5c

    .line 690
    :cond_7f
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 691
    .local v1, "restriction":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v4, :cond_a7

    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    .end local v1    # "restriction":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;
    :cond_a7
    goto :goto_85

    .line 694
    :cond_a8
    return-void
.end method

.method public getAdjustRestrictionFromDefaultValue()V
    .registers 21

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v0, "adjustRestrictionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;>;"
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mAdjustRestrictionDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_85

    aget-object v5, v1, v4

    .line 644
    .local v5, "adjustRestrictionString":[Ljava/lang/String;
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 645
    .local v6, "restrictionType":I
    const/4 v7, 0x1

    aget-object v15, v5, v7

    .line 646
    .local v15, "isAllowed":Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v14, v5, v7

    .line 647
    .local v14, "callee":Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v16, v5, v7

    .line 648
    .local v16, "caller":Ljava/lang/String;
    const/4 v7, 0x4

    aget-object v13, v5, v7

    .line 649
    .local v13, "actionMatchType":Ljava/lang/String;
    const/4 v7, 0x5

    aget-object v12, v5, v7

    .line 651
    .local v12, "action":Ljava/lang/String;
    const/16 v7, 0xc

    if-eq v6, v7, :cond_73

    const/16 v7, 0xd

    if-eq v6, v7, :cond_67

    const/16 v7, 0x10

    if-eq v6, v7, :cond_5b

    const/16 v7, 0x12

    if-eq v6, v7, :cond_4c

    .line 665
    new-instance v17, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    move-object/from16 v7, v17

    move-object/from16 v8, p0

    move v9, v6

    move-object v10, v15

    move-object v11, v14

    move-object/from16 v18, v12

    .end local v12    # "action":Ljava/lang/String;
    .local v18, "action":Ljava/lang/String;
    move-object/from16 v12, v16

    move-object/from16 v19, v13

    .end local v13    # "actionMatchType":Ljava/lang/String;
    .local v19, "actionMatchType":Ljava/lang/String;
    move-object v3, v14

    .end local v14    # "callee":Ljava/lang/String;
    .local v3, "callee":Ljava/lang/String;
    move-object/from16 v14, v18

    invoke-direct/range {v7 .. v14}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .local v7, "restriction":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 662
    .end local v3    # "callee":Ljava/lang/String;
    .end local v7    # "restriction":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;
    .end local v18    # "action":Ljava/lang/String;
    .end local v19    # "actionMatchType":Ljava/lang/String;
    .restart local v12    # "action":Ljava/lang/String;
    .restart local v13    # "actionMatchType":Ljava/lang/String;
    .restart local v14    # "callee":Ljava/lang/String;
    :cond_4c
    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v3, v14

    .end local v12    # "action":Ljava/lang/String;
    .end local v13    # "actionMatchType":Ljava/lang/String;
    .end local v14    # "callee":Ljava/lang/String;
    .restart local v3    # "callee":Ljava/lang/String;
    .restart local v18    # "action":Ljava/lang/String;
    .restart local v19    # "actionMatchType":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v7

    move-object/from16 v8, v19

    .end local v19    # "actionMatchType":Ljava/lang/String;
    .local v8, "actionMatchType":Ljava/lang/String;
    invoke-virtual {v7, v3, v8}, Lcom/android/server/am/FreecessController;->setProcessAllowList(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    goto :goto_81

    .line 659
    .end local v3    # "callee":Ljava/lang/String;
    .end local v8    # "actionMatchType":Ljava/lang/String;
    .end local v18    # "action":Ljava/lang/String;
    .restart local v12    # "action":Ljava/lang/String;
    .restart local v13    # "actionMatchType":Ljava/lang/String;
    .restart local v14    # "callee":Ljava/lang/String;
    :cond_5b
    move-object/from16 v18, v12

    move-object v8, v13

    move-object v3, v14

    .end local v12    # "action":Ljava/lang/String;
    .end local v13    # "actionMatchType":Ljava/lang/String;
    .end local v14    # "callee":Ljava/lang/String;
    .restart local v3    # "callee":Ljava/lang/String;
    .restart local v8    # "actionMatchType":Ljava/lang/String;
    .restart local v18    # "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/am/FreecessController;->setOLAFBlockList(Ljava/lang/String;)V

    .line 660
    goto :goto_81

    .line 656
    .end local v3    # "callee":Ljava/lang/String;
    .end local v8    # "actionMatchType":Ljava/lang/String;
    .end local v18    # "action":Ljava/lang/String;
    .restart local v12    # "action":Ljava/lang/String;
    .restart local v13    # "actionMatchType":Ljava/lang/String;
    .restart local v14    # "callee":Ljava/lang/String;
    :cond_67
    move-object/from16 v18, v12

    move-object v8, v13

    move-object v3, v14

    .end local v12    # "action":Ljava/lang/String;
    .end local v13    # "actionMatchType":Ljava/lang/String;
    .end local v14    # "callee":Ljava/lang/String;
    .restart local v3    # "callee":Ljava/lang/String;
    .restart local v8    # "actionMatchType":Ljava/lang/String;
    .restart local v18    # "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/am/FreecessController;->setPendingBlocklistForGPS(Ljava/lang/String;)V

    .line 657
    goto :goto_81

    .line 653
    .end local v3    # "callee":Ljava/lang/String;
    .end local v8    # "actionMatchType":Ljava/lang/String;
    .end local v18    # "action":Ljava/lang/String;
    .restart local v12    # "action":Ljava/lang/String;
    .restart local v13    # "actionMatchType":Ljava/lang/String;
    .restart local v14    # "callee":Ljava/lang/String;
    :cond_73
    move-object/from16 v18, v12

    move-object v8, v13

    move-object v3, v14

    .end local v12    # "action":Ljava/lang/String;
    .end local v13    # "actionMatchType":Ljava/lang/String;
    .end local v14    # "callee":Ljava/lang/String;
    .restart local v3    # "callee":Ljava/lang/String;
    .restart local v8    # "actionMatchType":Ljava/lang/String;
    .restart local v18    # "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v7

    move-object/from16 v9, v18

    .end local v18    # "action":Ljava/lang/String;
    .local v9, "action":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lcom/android/server/am/FreecessController;->setPendingIntentList(Ljava/lang/String;)V

    .line 654
    nop

    .line 643
    .end local v3    # "callee":Ljava/lang/String;
    .end local v5    # "adjustRestrictionString":[Ljava/lang/String;
    .end local v6    # "restrictionType":I
    .end local v8    # "actionMatchType":Ljava/lang/String;
    .end local v9    # "action":Ljava/lang/String;
    .end local v15    # "isAllowed":Ljava/lang/String;
    .end local v16    # "caller":Ljava/lang/String;
    :goto_81
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_a

    .line 671
    :cond_85
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustRestriction(Ljava/util/ArrayList;)V

    .line 672
    return-void
.end method

.method public getExcludeTargetFromDefaultValue()V
    .registers 18

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v0, "excludeTargetValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;>;"
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludePackageDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_34

    aget-object v5, v1, v4

    .line 618
    .local v5, "excludePackageString":[Ljava/lang/String;
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 619
    .local v6, "policyNum":I
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 620
    .local v13, "condition":I
    const/4 v7, 0x2

    aget-object v14, v5, v7

    .line 621
    .local v14, "pkgNameMatchType":Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v15, v5, v7

    .line 623
    .local v15, "packageName":Ljava/lang/String;
    new-instance v16, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    move-object/from16 v7, v16

    move-object/from16 v8, p0

    move v9, v6

    move v10, v13

    move-object v11, v14

    move-object v12, v15

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 624
    .local v7, "excludeTarget":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    .end local v5    # "excludePackageString":[Ljava/lang/String;
    .end local v6    # "policyNum":I
    .end local v7    # "excludeTarget":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;
    .end local v13    # "condition":I
    .end local v14    # "pkgNameMatchType":Ljava/lang/String;
    .end local v15    # "packageName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 626
    :cond_34
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V

    .line 627
    return-void
.end method

.method public getIsCurrentImportantFromDefaultValue()V
    .registers 10

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v0, "isCurrentImportantValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;>;"
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_26

    aget-object v5, v1, v4

    .line 632
    .local v5, "currentImportantString":[Ljava/lang/String;
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 633
    .local v6, "policyNum":I
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 635
    .local v7, "currentImportantValue":I
    new-instance v8, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    invoke-direct {v8, p0, v6, v7}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;II)V

    .line 636
    .local v8, "importantValue":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v5    # "currentImportantString":[Ljava/lang/String;
    .end local v6    # "policyNum":I
    .end local v7    # "currentImportantValue":I
    .end local v8    # "importantValue":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 638
    :cond_26
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    .line 639
    return-void
.end method

.method getMARsLocalVersionFromDefaultValue()Ljava/lang/String;
    .registers 9

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "mMARsVersion":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_1b

    aget-object v5, v1, v4

    .line 574
    .local v5, "settingsString":[Ljava/lang/String;
    aget-object v6, v5, v3

    const-string/jumbo v7, "marsversion"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 575
    const/4 v6, 0x1

    aget-object v0, v5, v6

    .line 573
    .end local v5    # "settingsString":[Ljava/lang/String;
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 578
    :cond_1b
    return-object v0
.end method

.method public getMARsSettingsInfoFromDefaultValue()V
    .registers 10

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v0, "marsSettingsDefinitionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;>;"
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_1e

    aget-object v5, v1, v4

    .line 561
    .local v5, "settingsString":[Ljava/lang/String;
    aget-object v6, v5, v3

    .line 562
    .local v6, "key":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v5, v7

    .line 564
    .local v7, "value":Ljava/lang/String;
    new-instance v8, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    invoke-direct {v8, p0, v6, v7}, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .local v8, "settings":Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .end local v5    # "settingsString":[Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "settings":Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 568
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setMARsSettingsInfoList(Ljava/util/ArrayList;)V

    .line 569
    return-void
.end method

.method public getPolicyFromDefaultValue()V
    .registers 33

    .line 596
    move-object/from16 v13, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 597
    .local v14, "policyDefinitionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;>;"
    sget-object v15, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    array-length v12, v15

    const/16 v16, 0x0

    move/from16 v10, v16

    :goto_f
    if-ge v10, v12, :cond_76

    aget-object v17, v15, v10

    .line 598
    .local v17, "policyString":[Ljava/lang/String;
    aget-object v0, v17, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 599
    .local v11, "policyNum":I
    const/4 v0, 0x1

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 600
    .local v18, "isPolicyEnabled":I
    const/4 v0, 0x2

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 601
    .local v19, "targetCategory":I
    const/4 v0, 0x3

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 602
    .local v20, "restriction":I
    const/4 v0, 0x4

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 603
    .local v21, "killType":I
    const/4 v0, 0x5

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 604
    .local v22, "firstTriggerTime":J
    const/4 v0, 0x6

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 605
    .local v24, "repeatTriggerTime":J
    const/4 v0, 0x7

    aget-object v0, v17, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 606
    .local v26, "bigdataRestriction":I
    invoke-virtual {v13, v11}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v27

    .line 608
    .local v27, "policyName":Ljava/lang/String;
    new-instance v28, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move v3, v11

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-wide/from16 v8, v22

    move/from16 v29, v10

    move/from16 v30, v11

    .end local v11    # "policyNum":I
    .local v30, "policyNum":I
    move-wide/from16 v10, v24

    move/from16 v31, v12

    move/from16 v12, v26

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;Ljava/lang/String;IIIIIJJI)V

    .line 610
    .local v0, "policy":Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .end local v0    # "policy":Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;
    .end local v17    # "policyString":[Ljava/lang/String;
    .end local v18    # "isPolicyEnabled":I
    .end local v19    # "targetCategory":I
    .end local v20    # "restriction":I
    .end local v21    # "killType":I
    .end local v22    # "firstTriggerTime":J
    .end local v24    # "repeatTriggerTime":J
    .end local v26    # "bigdataRestriction":I
    .end local v27    # "policyName":Ljava/lang/String;
    .end local v30    # "policyNum":I
    add-int/lit8 v10, v29, 0x1

    move/from16 v12, v31

    goto :goto_f

    .line 612
    :cond_76
    invoke-virtual {v13, v14}, Lcom/android/server/am/mars/database/MARsVersionManager;->setPolicy(Ljava/util/ArrayList;)V

    .line 613
    return-void
.end method

.method public getUnusedAppPeriodDaysValue()I
    .registers 7

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, "mUnusedAppPeriodDays":I
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    .line 584
    .local v2, "info":Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;
    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;->key:Ljava/lang/String;

    const-string/jumbo v4, "unused_app_period_days"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 586
    :try_start_1e
    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_24} :catch_26

    move v0, v3

    .line 589
    goto :goto_3d

    .line 587
    :catch_26
    move-exception v3

    .line 588
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MARsVersionManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v2    # "info":Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_3d
    :goto_3d
    goto :goto_7

    .line 592
    :cond_3e
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/database/MARsVersionManager;->setContext(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "restrictionType"    # I
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .line 725
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 726
    .local v1, "restriction":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;
    iget v2, v1, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->restrictionType:I

    if-ne p1, v2, :cond_60

    .line 727
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatchInternal(Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 728
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v0, :cond_5e

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " restrictionType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertRestrictionTypeToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isAllowed = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/am/mars/database/MARsVersionManager;->isRestrictionTypeAllowed(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callee = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " caller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " action = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MARsVersionManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_5e
    const/4 v0, 0x1

    return v0

    .line 734
    .end local v1    # "restriction":Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;
    :cond_60
    goto :goto_6

    .line 736
    :cond_61
    const/4 v0, 0x0

    return v0
.end method

.method public setAdjustRestriction(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;",
            ">;)V"
        }
    .end annotation

    .line 555
    .local p1, "restrictionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;>;"
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 556
    return-void
.end method

.method public setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;)V"
        }
    .end annotation

    .line 538
    .local p1, "isCurrentImportantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;>;"
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    .line 539
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertListToMap(Ljava/util/ArrayList;)V

    .line 540
    return-void
.end method

.method public setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;",
            ">;)V"
        }
    .end annotation

    .line 534
    .local p1, "excludeTargetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;>;"
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    .line 535
    return-void
.end method

.method public setMARsSettingsInfoList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;",
            ">;)V"
        }
    .end annotation

    .line 526
    .local p1, "marsSettingsInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;>;"
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    .line 527
    return-void
.end method

.method public setPolicy(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;",
            ">;)V"
        }
    .end annotation

    .line 530
    .local p1, "policyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;>;"
    sput-object p1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 531
    return-void
.end method
