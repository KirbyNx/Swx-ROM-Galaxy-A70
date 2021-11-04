.class public final Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;
.super Ljava/lang/Object;
.source "SemInDisplaySensorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OpticalSensorHelper"
.end annotation


# static fields
.field private static final MAX_BRIGHTNESS_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/mask_brightness"


# instance fields
.field private mA11yVisibilityLimit:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;

.field private mBrightnessColor:Ljava/lang/String;

.field private mBrightnessColorForLowBrightness:Ljava/lang/String;

.field private mCalibrationClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

.field private mCurClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

.field private mDisplayAdjManager:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mMaskClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxBrightness:F

.field private mNits:I

.field private mRunnableDisableFunctionForLightSource:Ljava/lang/Runnable;

.field private mRunnableRestoreFunctionForLightSource:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    .line 832
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaxBrightness:F

    .line 817
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mNits:I

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    .line 833
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-nez v0, :cond_24

    .line 834
    new-instance v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$OpticalSensorHelper$cl5bi-rsa6WpLtiB0BZP2RDCZyk;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$OpticalSensorHelper$cl5bi-rsa6WpLtiB0BZP2RDCZyk;-><init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mRunnableDisableFunctionForLightSource:Ljava/lang/Runnable;

    .line 838
    new-instance v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$OpticalSensorHelper$dudKSVqT6OioOHBGPXp5gBN5MFA;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$OpticalSensorHelper$dudKSVqT6OioOHBGPXp5gBN5MFA;-><init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mRunnableRestoreFunctionForLightSource:Ljava/lang/Runnable;

    .line 843
    :cond_24
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    .line 812
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->updateOpticalBundle()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    .line 812
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaxBrightness:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    .line 812
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mBrightnessColorForLowBrightness:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    .line 812
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mNits:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    .line 812
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mBrightnessColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    .line 812
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->init()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    .line 812
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private disableA11yVisibilityOpt()V
    .registers 3

    .line 883
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mA11yVisibilityLimit:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;

    if-nez v0, :cond_11

    .line 884
    new-instance v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1500(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mA11yVisibilityLimit:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;

    .line 886
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mA11yVisibilityLimit:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->disable()V

    .line 887
    return-void
.end method

.method private disableDisplayAdjustFunc()V
    .registers 3

    .line 862
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;

    if-nez v0, :cond_11

    .line 863
    new-instance v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1500(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;

    .line 865
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->disable()V

    .line 866
    return-void
.end method

.method private getBrightnessCorrespondingToNits()F
    .registers 5

    .line 1013
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaxBrightness:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const-string v2, "FingerprintService"

    if-gtz v0, :cond_43

    .line 1014
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    .line 1015
    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1500(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1016
    .local v0, "displaySolutionManager":Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    if-eqz v0, :cond_21

    .line 1017
    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mNits:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getFingerPrintBacklightValue(I)F

    move-result v3

    iput v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaxBrightness:F

    .line 1019
    :cond_21
    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaxBrightness:F

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_43

    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBrightnessCorrespondingToNits: use default value, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaxBrightness:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const v1, 0x439f8000    # 319.0f

    iput v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaxBrightness:F

    .line 1024
    .end local v0    # "displaySolutionManager":Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    :cond_43
    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1600()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {}, Lcom/android/server/biometrics/Utils;->isDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1025
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getBrightnessCorrespondingToNits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_66
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaxBrightness:F

    return v0
.end method

.method private getBrightnessNitsValue(Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;)I
    .registers 11
    .param p1, "injector"    # Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 1031
    monitor-enter p0

    .line 1032
    const/16 v0, 0x20d

    .line 1034
    .local v0, "retNits":I
    const/16 v1, 0x100

    :try_start_5
    new-array v1, v1, [B

    .line 1035
    .local v1, "tempOutput":[B
    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v2

    .line 1038
    .local v2, "result":I
    if-lez v2, :cond_89

    .line 1039
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 1040
    .local v3, "raw":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1041
    .local v5, "values":[Ljava/lang/String;
    array-length v6, v5

    if-lez v6, :cond_47

    .line 1042
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBrightnessNitsValue: node = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 1045
    :cond_47
    array-length v4, v5

    const/4 v6, 0x3

    if-le v4, v6, :cond_68

    .line 1046
    const-string v4, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBrightnessNitsColor: node = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    aget-object v4, v5, v6

    iput-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mBrightnessColor:Ljava/lang/String;

    .line 1049
    :cond_68
    array-length v4, v5

    const/4 v6, 0x4

    if-le v4, v6, :cond_88

    .line 1050
    const-string v4, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": getBrightnessNitsColor for calibration in low brightness = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    aget-object v4, v5, v6

    iput-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mBrightnessColorForLowBrightness:Ljava/lang/String;

    .line 1053
    .end local v3    # "raw":[B
    .end local v5    # "values":[Ljava/lang/String;
    :cond_88
    goto :goto_bf

    .line 1054
    :cond_89
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBrightnessNitsValue: failed to read from HAL, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    .line 1056
    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1500(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1058
    .local v3, "brightnessNitsValueStringArray":[Ljava/lang/String;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_ba} :catch_c2
    .catchall {:try_start_5 .. :try_end_ba} :catchall_c0

    .line 1059
    .local v4, "max_nits":I
    const/16 v5, 0x20d

    if-ge v4, v5, :cond_bf

    .line 1060
    move v0, v4

    .line 1065
    .end local v1    # "tempOutput":[B
    .end local v2    # "result":I
    .end local v3    # "brightnessNitsValueStringArray":[Ljava/lang/String;
    .end local v4    # "max_nits":I
    :cond_bf
    :goto_bf
    goto :goto_de

    .line 1070
    .end local v0    # "retNits":I
    :catchall_c0
    move-exception v0

    goto :goto_102

    .line 1063
    .restart local v0    # "retNits":I
    :catch_c2
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/lang/Exception;
    :try_start_c3
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBrightnessNitsValue: failure to read nits info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_de
    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 1067
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBrightnessNitsValue: nits = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_100
    monitor-exit p0

    return v0

    .line 1070
    .end local v0    # "retNits":I
    :goto_102
    monitor-exit p0
    :try_end_103
    .catchall {:try_start_c3 .. :try_end_103} :catchall_c0

    throw v0
.end method

.method private getMaskClient(Landroid/os/IBinder;)Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 899
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    .line 900
    .local v1, "c":Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->getToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_19

    .line 901
    return-object v1

    .line 903
    .end local v1    # "c":Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    :cond_19
    goto :goto_6

    .line 904
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasMaskClient(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 890
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    .line 891
    .local v1, "c":Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->getToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_1a

    .line 892
    const/4 v0, 0x1

    return v0

    .line 894
    .end local v1    # "c":Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    :cond_1a
    goto :goto_6

    .line 895
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private init()V
    .registers 1

    .line 1000
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->updateOpticalBundle()V

    .line 1001
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->writeMaxBrightnessInfo()V

    .line 1002
    return-void
.end method

.method private restoreA11yVisibilityOpt()V
    .registers 2

    .line 876
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mA11yVisibilityLimit:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;

    if-eqz v0, :cond_a

    .line 877
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->restore()V

    .line 878
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mA11yVisibilityLimit:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;

    .line 880
    :cond_a
    return-void
.end method

.method private restoreDisplayAdjustFunc()V
    .registers 2

    .line 869
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;

    if-eqz v0, :cond_a

    .line 870
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->restore()V

    .line 871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;

    .line 873
    :cond_a
    return-void
.end method

.method private updateOpticalBundle()V
    .registers 2

    .line 994
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mNits:I

    if-nez v0, :cond_e

    .line 995
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->getBrightnessNitsValue(Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mNits:I

    .line 997
    :cond_e
    return-void
.end method

.method private writeMaxBrightnessInfo()V
    .registers 3

    .line 1005
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->getBrightnessCorrespondingToNits()F

    .line 1006
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$OpticalSensorHelper$8333exrakmkjxDSLRaWF5BEf_3E;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$OpticalSensorHelper$8333exrakmkjxDSLRaWF5BEf_3E;-><init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1008
    return-void
.end method


# virtual methods
.method public addMaskView(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 932
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 933
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->hasMaskClient(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 934
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMaskView: already registered client: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "], ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 936
    :cond_2d
    new-instance v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;-><init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;Landroid/os/IBinder;Ljava/lang/String;ZI)V

    .line 937
    .local v1, "newClient":Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mCurClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    .line 940
    .end local v1    # "newClient":Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    :goto_40
    monitor-exit v0

    .line 941
    return-void

    .line 940
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public disableFunctionForLightSource()V
    .registers 3

    .line 846
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_5

    .line 847
    return-void

    .line 849
    :cond_5
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mRunnableRestoreFunctionForLightSource:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 850
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mRunnableDisableFunctionForLightSource:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 851
    return-void
.end method

.method public handleCalibrationMode(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "param"    # I

    .line 966
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p3, v1, :cond_1c

    .line 967
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mCalibrationClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    if-eqz v1, :cond_d

    .line 968
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->destroy()V

    .line 969
    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mCalibrationClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    .line 971
    :cond_d
    new-instance v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    const/4 v6, 0x1

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;-><init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;Landroid/os/IBinder;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mCalibrationClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    goto :goto_2e

    .line 973
    :cond_1c
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mCalibrationClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    if-nez v1, :cond_29

    .line 974
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "handleCalibrationMode: No Calibration Client"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 976
    :cond_29
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->destroy()V

    .line 977
    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mCalibrationClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    .line 980
    :goto_2e
    return-void
.end method

.method public hasKeyguardMaskClient()Z
    .registers 5

    .line 983
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 984
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    .line 985
    .local v2, "c":Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    invoke-virtual {v2}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->isKeyguard()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 986
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 988
    .end local v2    # "c":Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    :cond_1e
    goto :goto_9

    .line 989
    :cond_1f
    monitor-exit v0

    .line 990
    const/4 v0, 0x0

    return v0

    .line 989
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public isActivatedMaskByClient()Z
    .registers 3

    .line 925
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 926
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mCurClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 927
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public synthetic lambda$new$0$SemInDisplaySensorImpl$OpticalSensorHelper()V
    .registers 1

    .line 835
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->disableDisplayAdjustFunc()V

    .line 836
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->disableA11yVisibilityOpt()V

    .line 837
    return-void
.end method

.method public synthetic lambda$new$1$SemInDisplaySensorImpl$OpticalSensorHelper()V
    .registers 1

    .line 839
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->restoreDisplayAdjustFunc()V

    .line 840
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->restoreA11yVisibilityOpt()V

    .line 841
    return-void
.end method

.method public synthetic lambda$writeMaxBrightnessInfo$2$SemInDisplaySensorImpl$OpticalSensorHelper()V
    .registers 3

    .line 1006
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/lcd/panel/mask_brightness"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaxBrightness:F

    float-to-int v1, v1

    .line 1007
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1006
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)Z

    return-void
.end method

.method public removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 944
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 945
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->getMaskClient(Landroid/os/IBinder;)Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    move-result-object v1

    .line 946
    .local v1, "c":Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    if-eqz v1, :cond_51

    .line 947
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 948
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 949
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->destroy()V

    .line 950
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mCurClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    goto :goto_68

    .line 952
    :cond_1d
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->destroy()V

    .line 953
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mCurClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    invoke-virtual {v2}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->getToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_68

    .line 954
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mCurClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    .line 955
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeMaskView: new current client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mCurClient:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    invoke-virtual {v4}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 959
    :cond_51
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeMaskView: No registered client:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    .end local v1    # "c":Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    :cond_68
    :goto_68
    monitor-exit v0

    .line 962
    return-void

    .line 961
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public restoreFunctionForLightSource(J)V
    .registers 5
    .param p1, "delayMs"    # J

    .line 854
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_5

    .line 855
    return-void

    .line 857
    :cond_5
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mRunnableDisableFunctionForLightSource:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 858
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mRunnableRestoreFunctionForLightSource:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 859
    return-void
.end method

.method setDisplayStateLimit(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_e

    .line 910
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 912
    :cond_e
    if-eqz p1, :cond_17

    .line 914
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateLimit(I)V

    goto :goto_1d

    .line 917
    :cond_17
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateLimit(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 921
    :goto_1d
    goto :goto_27

    .line 919
    :catch_1e
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "setDisplayStateLimit: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    return-void
.end method
