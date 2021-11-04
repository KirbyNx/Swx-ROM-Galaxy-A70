.class public Lcom/android/server/biometrics/SemAnalyticsManager;
.super Ljava/lang/Object;
.source "SemAnalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;,
        Lcom/android/server/biometrics/SemAnalyticsManager$EventData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final EVT_TYPE_ALL:I = 0x3

.field public static final EVT_TYPE_DQA:I = 0x2

.field public static final EVT_TYPE_SA:I = 0x1

.field private static final FACE_APP_ID:Ljava/lang/String; = "com.samsung.android.bio.face.service"

.field public static final FACE_FEATURE_AUTH_ACCEPT:Ljava/lang/String; = "FAIS"

.field public static final FACE_FEATURE_AUTH_REJECT:Ljava/lang/String; = "FAIF"

.field public static final FACE_FEATURE_ENROLL:Ljava/lang/String; = "FAEN"

.field public static final FACE_FEATURE_LOCKOUT:Ljava/lang/String; = "FAIB"

.field public static final FACE_FEATURE_ONLY_NON_FACE:Ljava/lang/String; = "FANF"

.field public static final FACE_FEATURE_QUALITY_BIG_FACE:Ljava/lang/String; = "FAQB"

.field public static final FACE_FEATURE_QUALITY_FAKE_FACE:Ljava/lang/String; = "FAQF"

.field public static final FACE_FEATURE_QUALITY_LOW:Ljava/lang/String; = "FAQL"

.field public static final FACE_FEATURE_QUALITY_MIS_ALIGNED:Ljava/lang/String; = "FAQM"

.field public static final FACE_FEATURE_QUALITY_NO_FACE:Ljava/lang/String; = "FAQN"

.field public static final FACE_FEATURE_QUALITY_SMALL_FACE:Ljava/lang/String; = "FAQS"

.field public static final FACE_FEATURE_REMOVE:Ljava/lang/String; = "FARM"

.field public static final FACE_FEATURE_TIMEOUT:Ljava/lang/String; = "FATO"

.field private static final FACE_TRACKING_ID:Ljava/lang/String; = "4G3-399-5448102"

.field private static final FINGERPRINT_APP_ID:Ljava/lang/String; = "com.samsung.android.fingerprint.service"

.field private static final FINGERPRINT_TRACKING_ID:Ljava/lang/String; = "4G2-399-4810151"

.field public static final FP_EXTRA_GESTURE_COLLAPSE_NOTI_PANEL:Ljava/lang/String; = "CollapseNotificationPanel"

.field public static final FP_EXTRA_GESTURE_EXPAND_NOTI_PANEL:Ljava/lang/String; = "ExpandNotificationPanel"

.field public static final FP_EXTRA_GESTURE_EXPAND_QUICK_SETTING_PANEL:Ljava/lang/String; = "ExpandQuickSettingsPanel"

.field public static final FP_EXTRA_GESTURE_SIMPLE_SPAY:Ljava/lang/String; = "SimpleSamsungPay"

.field public static final FP_FEATURE_ACCEPT_TIME:Ljava/lang/String; = "FPTS"

.field public static final FP_FEATURE_AUTH_ACCEPT:Ljava/lang/String; = "FPIS"

.field public static final FP_FEATURE_AUTH_REJECT:Ljava/lang/String; = "FPIF"

.field public static final FP_FEATURE_DQA_DAEMON_VERSION:Ljava/lang/String; = "FPDA"

.field public static final FP_FEATURE_DQA_MOVE_EVENT:Ljava/lang/String; = "FPMV"

.field public static final FP_FEATURE_DQA_PATTERN_DETECTED:Ljava/lang/String; = "FPPD"

.field public static final FP_FEATURE_DQA_SENSOR_STATUS:Ljava/lang/String; = "FPST"

.field public static final FP_FEATURE_DQA_SERIAL_NUMBER:Ljava/lang/String; = "FPDS"

.field public static final FP_FEATURE_ENROLL_FAIL:Ljava/lang/String; = "FPEF"

.field public static final FP_FEATURE_ENROLL_SUCCESS:Ljava/lang/String; = "FPEN"

.field public static final FP_FEATURE_ERROR_CODE:Ljava/lang/String; = "FPER"

.field public static final FP_FEATURE_GESTURE:Ljava/lang/String; = "FPGT"

.field public static final FP_FEATURE_LOCKOUT:Ljava/lang/String; = "FPIB"

.field public static final FP_FEATURE_NUMBER_OF_QUALITY:Ljava/lang/String; = "FPSQ"

.field public static final FP_FEATURE_NUMBER_OF_REJECT:Ljava/lang/String; = "FPSF"

.field public static final FP_FEATURE_QUALITY_IMAGER_DIRTY:Ljava/lang/String; = "FPQD"

.field public static final FP_FEATURE_QUALITY_INSUFFICIENT:Ljava/lang/String; = "FPQI"

.field public static final FP_FEATURE_QUALITY_LIGHT_TOUCH:Ljava/lang/String; = "FPQL"

.field public static final FP_FEATURE_QUALITY_PARTIAL:Ljava/lang/String; = "FPQP"

.field public static final FP_FEATURE_QUALITY_TOO_FAST:Ljava/lang/String; = "FPQF"

.field public static final FP_FEATURE_QUALITY_TOO_SLOW:Ljava/lang/String; = "FPQS"

.field public static final FP_FEATURE_QUALITY_WET_FINGER:Ljava/lang/String; = "FPQW"

.field public static final FP_FEATURE_REJECT_TIME:Ljava/lang/String; = "FPTF"

.field public static final FP_FEATURE_REMOVE:Ljava/lang/String; = "FPRM"

.field private static final TAG:Ljava/lang/String; = "BiometricService.AM"

.field private static mIsSupportDMA:Z

.field private static sInstance:Lcom/android/server/biometrics/SemAnalyticsManager;


# instance fields
.field private final FACE_FEATURE_HAL:Z

.field private mContext:Landroid/content/Context;

.field private mDqaMgr:Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

.field private mFaceQualityBigFace:I

.field private mFaceQualityFakeFace:I

.field private mFaceQualityLow:I

.field private mFaceQualityMisAligned:I

.field private mFaceQualityNoFace:I

.field private mFaceQualitySmallFace:I

.field private mFingerprintDaemonVersion:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasGestureEventForDQA:Z

.field private mIsFirstSensorCheckForDQA:Z

.field private mIsSensorErrorForDQA:Z

.field private mLatestAuthenticatedForDQA:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/SemAnalyticsManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    .line 300
    iput-object p1, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mContext:Landroid/content/Context;

    .line 301
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->get()Lcom/android/server/biometrics/Utils$BioBgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/Utils$BioBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mHandler:Landroid/os/Handler;

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 303
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->FACE_FEATURE_HAL:Z

    .line 304
    iget-object v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->isSupportDMALogging(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/biometrics/SemAnalyticsManager;->mIsSupportDMA:Z

    .line 305
    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;-><init>(Lcom/android/server/biometrics/SemAnalyticsManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/SemAnalyticsManager;Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/SemAnalyticsManager;
    .param p1, "x1"    # Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpHandleData(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/SemAnalyticsManager;Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/SemAnalyticsManager;
    .param p1, "x1"    # Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceHandleData(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/SemAnalyticsManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/SemAnalyticsManager;

    .line 27
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->FACE_FEATURE_HAL:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/SemAnalyticsManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/SemAnalyticsManager;

    .line 27
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 27
    sget-boolean v0, Lcom/android/server/biometrics/SemAnalyticsManager;->DEBUG:Z

    return v0
.end method

.method private faceHandleData(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V
    .registers 9
    .param p1, "ed"    # Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    .line 610
    if-nez p1, :cond_3

    .line 611
    return-void

    .line 613
    :cond_3
    sget-boolean v0, Lcom/android/server/biometrics/SemAnalyticsManager;->DEBUG:Z

    const-string v1, "BiometricService.AM"

    if-eqz v0, :cond_21

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SA: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_21
    iget v0, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2c

    .line 618
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->faceHandleDqaData(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 622
    :cond_2c
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    if-eqz v0, :cond_bc

    iget v0, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_bc

    .line 624
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 626
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/server/biometrics/SemAnalyticsManager;->mIsSupportDMA:Z

    const-string v3, "extra"

    const-string v4, "feature"

    if-eqz v2, :cond_74

    .line 628
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 629
    .local v2, "b":Landroid/os/Bundle;
    const-string/jumbo v5, "tracking_id"

    const-string v6, "4G3-399-5448102"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v5, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v4, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    if-eqz v4, :cond_5e

    .line 632
    iget-object v4, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_5e
    const-string/jumbo v3, "type"

    const-string v4, "ev"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 638
    const-string v3, "com.sec.android.diagmonagent"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    .end local v2    # "b":Landroid/os/Bundle;
    goto :goto_9d

    .line 641
    :cond_74
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 642
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "app_id"

    const-string v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v5, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v4, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    if-eqz v4, :cond_8e

    .line 645
    iget-object v4, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_8e
    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 650
    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    .end local v2    # "cv":Landroid/content/ContentValues;
    :goto_9d
    :try_start_9d
    iget-object v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a2} :catch_a3

    .line 656
    goto :goto_bc

    .line 654
    :catch_a3
    move-exception v2

    .line 655
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemAnalyticsManager.insertLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_bc
    :goto_bc
    return-void
.end method

.method private fpHandleData(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V
    .registers 9
    .param p1, "ed"    # Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    .line 549
    if-nez p1, :cond_3

    .line 550
    return-void

    .line 552
    :cond_3
    sget-boolean v0, Lcom/android/server/biometrics/SemAnalyticsManager;->DEBUG:Z

    const-string v1, "BiometricService.AM"

    if-eqz v0, :cond_21

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SA: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_21
    iget v0, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2c

    .line 557
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->fpHandleDqaData(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 559
    :cond_2c
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_41

    .line 560
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mHasGestureEventForDQA:Z

    if-nez v0, :cond_41

    iget-object v0, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    const-string v3, "FPGT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 561
    iput-boolean v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mHasGestureEventForDQA:Z

    .line 564
    :cond_41
    iget-object v0, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    const-string v3, "FPIS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 565
    iput v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mLatestAuthenticatedForDQA:I

    goto :goto_5b

    .line 566
    :cond_4e
    iget-object v0, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    const-string v3, "FPIF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 567
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mLatestAuthenticatedForDQA:I

    .line 571
    :cond_5b
    :goto_5b
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    if-eqz v0, :cond_ea

    iget v0, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mType:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_ea

    .line 573
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/server/biometrics/SemAnalyticsManager;->mIsSupportDMA:Z

    const-string v3, "extra"

    const-string v4, "feature"

    if-eqz v2, :cond_a2

    .line 577
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 578
    .local v2, "b":Landroid/os/Bundle;
    const-string/jumbo v5, "tracking_id"

    const-string v6, "4G2-399-4810151"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v5, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v4, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    if-eqz v4, :cond_8c

    .line 581
    iget-object v4, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_8c
    const-string/jumbo v3, "type"

    const-string v4, "ev"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 587
    const-string v3, "com.sec.android.diagmonagent"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    .end local v2    # "b":Landroid/os/Bundle;
    goto :goto_cb

    .line 590
    :cond_a2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 591
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "app_id"

    const-string v6, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v5, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v4, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    if-eqz v4, :cond_bc

    .line 594
    iget-object v4, p1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_bc
    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 599
    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    .end local v2    # "cv":Landroid/content/ContentValues;
    :goto_cb
    :try_start_cb
    iget-object v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d0} :catch_d1

    .line 605
    goto :goto_ea

    .line 603
    :catch_d1
    move-exception v2

    .line 604
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemAnalyticsManager.insertLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_ea
    :goto_ea
    return-void
.end method

.method public static get()Lcom/android/server/biometrics/SemAnalyticsManager;
    .registers 1

    .line 296
    sget-object v0, Lcom/android/server/biometrics/SemAnalyticsManager;->sInstance:Lcom/android/server/biometrics/SemAnalyticsManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/SemAnalyticsManager;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/biometrics/SemAnalyticsManager;

    monitor-enter v0

    .line 288
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/SemAnalyticsManager;->sInstance:Lcom/android/server/biometrics/SemAnalyticsManager;

    if-nez v1, :cond_e

    .line 289
    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/SemAnalyticsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/biometrics/SemAnalyticsManager;->sInstance:Lcom/android/server/biometrics/SemAnalyticsManager;

    .line 291
    :cond_e
    sget-object v1, Lcom/android/server/biometrics/SemAnalyticsManager;->sInstance:Lcom/android/server/biometrics/SemAnalyticsManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 287
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isSupportDMALogging(Landroid/content/Context;)Z
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .line 538
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 539
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_16

    .line 540
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_17

    const v3, 0x202fbf00

    if-lt v2, v3, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0

    .line 544
    :cond_16
    goto :goto_33

    .line 542
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_17
    move-exception v1

    .line 543
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSupportDMALogging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricService.AM"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_33
    return v0
.end method


# virtual methods
.method public faceCountHelpEvent(II)V
    .registers 6
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "feature":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_49

    const/16 v2, 0xb

    if-eq p1, v2, :cond_43

    const/16 v2, 0x16

    if-eq p1, v2, :cond_22

    packed-switch p1, :pswitch_data_50

    goto :goto_4f

    .line 453
    :pswitch_10
    iget v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityMisAligned:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityMisAligned:I

    .line 454
    goto :goto_4f

    .line 447
    :pswitch_16
    iget v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualitySmallFace:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualitySmallFace:I

    .line 448
    goto :goto_4f

    .line 444
    :pswitch_1c
    iget v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityBigFace:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityBigFace:I

    .line 445
    goto :goto_4f

    .line 456
    :cond_22
    const/16 v2, 0x3ed

    if-eq p1, v2, :cond_3d

    const/16 v2, 0x3ee

    if-eq p1, v2, :cond_37

    const/16 v2, 0x3f0

    if-eq p1, v2, :cond_37

    const/16 v2, 0x3f4

    if-eq p1, v2, :cond_37

    const/16 v2, 0x3f6

    if-eq p1, v2, :cond_37

    goto :goto_4f

    .line 464
    :cond_37
    iget v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityMisAligned:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityMisAligned:I

    goto :goto_4f

    .line 458
    :cond_3d
    iget v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityFakeFace:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityFakeFace:I

    .line 459
    goto :goto_4f

    .line 438
    :cond_43
    iget v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityNoFace:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityNoFace:I

    .line 439
    goto :goto_4f

    .line 441
    :cond_49
    iget v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityLow:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityLow:I

    .line 442
    nop

    .line 469
    :goto_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x4
        :pswitch_1c
        :pswitch_16
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public faceInitHelpEvent()V
    .registers 2

    .line 425
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityNoFace:I

    .line 426
    iput v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityLow:I

    .line 427
    iput v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityFakeFace:I

    .line 428
    iput v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityBigFace:I

    .line 429
    iput v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualitySmallFace:I

    .line 430
    iput v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityMisAligned:I

    .line 431
    return-void
.end method

.method public faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V
    .registers 4
    .param p1, "ed"    # Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    .line 472
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/SemAnalyticsManager$2;-><init>(Lcom/android/server/biometrics/SemAnalyticsManager;Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    return-void
.end method

.method public faceInsertLog(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "type"    # I

    .line 481
    new-instance v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 482
    return-void
.end method

.method public faceLockout(Ljava/lang/String;)V
    .registers 6
    .param p1, "owner"    # Ljava/lang/String;

    .line 530
    new-instance v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const-string v1, "FAIB"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 531
    return-void
.end method

.method public faceOnAuthenticatedFailure(Ljava/lang/String;)V
    .registers 6
    .param p1, "owner"    # Ljava/lang/String;

    .line 490
    new-instance v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const-string v1, "FAIF"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 491
    return-void
.end method

.method public faceOnAuthenticatedSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "owner"    # Ljava/lang/String;

    .line 486
    new-instance v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const-string v1, "FAIS"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 487
    return-void
.end method

.method public faceOnEnrollmentSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "owner"    # Ljava/lang/String;

    .line 522
    new-instance v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const-string v1, "FAEN"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 523
    return-void
.end method

.method public faceOnRemoved(Ljava/lang/String;)V
    .registers 6
    .param p1, "owner"    # Ljava/lang/String;

    .line 526
    new-instance v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const-string v1, "FARM"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 527
    return-void
.end method

.method public faceOnTimeout(Ljava/lang/String;)V
    .registers 7
    .param p1, "owner"    # Ljava/lang/String;

    .line 494
    new-instance v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const-string v1, "FATO"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 496
    iget v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityNoFace:I

    if-lez v0, :cond_1a

    .line 497
    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const-string v4, "FAQN"

    invoke-direct {v1, v4, p1, v0, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 499
    :cond_1a
    iget v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityLow:I

    if-lez v0, :cond_28

    .line 500
    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const-string v4, "FAQL"

    invoke-direct {v1, v4, p1, v0, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 502
    :cond_28
    iget v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityFakeFace:I

    if-lez v0, :cond_36

    .line 503
    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const-string v4, "FAQF"

    invoke-direct {v1, v4, p1, v0, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 505
    :cond_36
    iget v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityBigFace:I

    if-lez v0, :cond_44

    .line 506
    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const-string v4, "FAQB"

    invoke-direct {v1, v4, p1, v0, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 508
    :cond_44
    iget v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualitySmallFace:I

    if-lez v0, :cond_52

    .line 509
    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const-string v4, "FAQS"

    invoke-direct {v1, v4, p1, v0, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 511
    :cond_52
    iget v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityMisAligned:I

    if-lez v0, :cond_60

    .line 512
    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const-string v4, "FAQM"

    invoke-direct {v1, v4, p1, v0, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 515
    :cond_60
    iget v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityNoFace:I

    if-lez v0, :cond_83

    iget v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityLow:I

    if-nez v0, :cond_83

    iget v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityFakeFace:I

    if-nez v0, :cond_83

    iget v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityBigFace:I

    if-nez v0, :cond_83

    iget v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualitySmallFace:I

    if-nez v0, :cond_83

    iget v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFaceQualityMisAligned:I

    if-nez v0, :cond_83

    .line 517
    new-instance v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const/4 v1, 0x1

    const-string v3, "FANF"

    invoke-direct {v0, v3, p1, v2, v1}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 519
    :cond_83
    return-void
.end method

.method public fpInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V
    .registers 4
    .param p1, "ed"    # Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    .line 310
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/SemAnalyticsManager$1;-><init>(Lcom/android/server/biometrics/SemAnalyticsManager;Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method public fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "type"    # I

    .line 319
    const-string v0, "FPDA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 320
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    .line 322
    :cond_f
    new-instance v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 323
    return-void
.end method

.method public fpInsertLogError(IILjava/lang/String;)V
    .registers 9
    .param p1, "errCode"    # I
    .param p2, "vendorCode"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "ed":Lcom/android/server/biometrics/SemAnalyticsManager$EventData;
    const-string v1, "FPER"

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq p1, v3, :cond_33

    const/4 v4, 0x7

    if-eq p1, v4, :cond_23

    if-eq p1, v2, :cond_12

    const/16 v1, 0x9

    if-eq p1, v1, :cond_23

    goto :goto_44

    .line 378
    :cond_12
    new-instance v4, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    invoke-direct {v4}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>()V

    move-object v0, v4

    .line 379
    iput-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 380
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 381
    iput v3, v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mType:I

    goto :goto_44

    .line 366
    :cond_23
    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    invoke-direct {v1}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>()V

    move-object v0, v1

    .line 367
    const-string v1, "FPIB"

    iput-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 368
    iput-object p3, v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 369
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mType:I

    .line 370
    goto :goto_44

    .line 372
    :cond_33
    new-instance v4, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    invoke-direct {v4}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>()V

    move-object v0, v4

    .line 373
    iput-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 375
    iput v3, v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mType:I

    .line 376
    nop

    .line 384
    :goto_44
    if-eqz v0, :cond_49

    .line 385
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 387
    :cond_49
    if-ne p1, v2, :cond_62

    const/16 v1, 0x3ef

    if-ne p2, v1, :cond_62

    .line 389
    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    invoke-direct {v1}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>()V

    move-object v0, v1

    .line 390
    const-string v1, "FPPD"

    iput-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 391
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 392
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;->mType:I

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 395
    :cond_62
    return-void
.end method

.method public fpInsertLogHelp(IILjava/lang/String;I)V
    .registers 8
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "type"    # I

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "feature":Ljava/lang/String;
    packed-switch p1, :pswitch_data_2e

    goto :goto_22

    .line 344
    :pswitch_5
    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_c

    .line 345
    const-string v0, "FPQW"

    goto :goto_22

    .line 346
    :cond_c
    const/16 v1, 0x3eb

    if-ne p2, v1, :cond_22

    .line 347
    const-string v0, "FPQL"

    goto :goto_22

    .line 341
    :pswitch_13
    const-string v0, "FPQF"

    .line 342
    goto :goto_22

    .line 338
    :pswitch_16
    const-string v0, "FPQS"

    .line 339
    goto :goto_22

    .line 335
    :pswitch_19
    const-string v0, "FPQD"

    .line 336
    goto :goto_22

    .line 332
    :pswitch_1c
    const-string v0, "FPQI"

    .line 333
    goto :goto_22

    .line 329
    :pswitch_1f
    const-string v0, "FPQP"

    .line 330
    nop

    .line 351
    :cond_22
    :goto_22
    if-eqz v0, :cond_2d

    .line 352
    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const/4 v2, -0x1

    invoke-direct {v1, v0, p3, v2, p4}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 354
    :cond_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_5
    .end packed-switch
.end method

.method public fpInsertLogRemove(I)V
    .registers 7
    .param p1, "fingerId"    # I

    .line 357
    new-instance v0, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_8

    const-string v2, "ALL"

    goto :goto_c

    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_c
    const/4 v3, 0x3

    const-string v4, "FPRM"

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 359
    return-void
.end method

.method public fpInsertLogSensorStatus(I)V
    .registers 8
    .param p1, "status"    # I

    .line 399
    const/4 v0, 0x0

    const v1, 0x186ca

    if-ne p1, v1, :cond_61

    .line 400
    iget-boolean v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mIsSensorErrorForDQA:Z

    if-nez v1, :cond_63

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pre:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mLatestAuthenticatedForDQA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";gesture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mHasGestureEventForDQA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";first:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "strLog":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fpInsertLogSensorStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricService.AM"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v2, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const/4 v3, -0x1

    const/4 v4, 0x2

    const-string v5, "FPST"

    invoke-direct {v2, v5, v1, v3, v4}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 407
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mIsSensorErrorForDQA:Z

    goto :goto_63

    .line 410
    .end local v1    # "strLog":Ljava/lang/String;
    :cond_61
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mIsSensorErrorForDQA:Z

    .line 412
    :cond_63
    :goto_63
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    .line 413
    return-void
.end method

.method public fpSendDaemonVersion()V
    .registers 6

    .line 416
    iget-object v0, p0, Lcom/android/server/biometrics/SemAnalyticsManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 417
    new-instance v1, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;

    const/4 v2, -0x1

    const/4 v3, 0x2

    const-string v4, "FPDA"

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/android/server/biometrics/SemAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemAnalyticsManager$EventData;)V

    .line 419
    :cond_10
    return-void
.end method
