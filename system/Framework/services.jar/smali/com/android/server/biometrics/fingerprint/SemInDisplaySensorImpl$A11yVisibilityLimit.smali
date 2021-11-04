.class public Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;
.super Ljava/lang/Object;
.source "SemInDisplaySensorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "A11yVisibilityLimit"
.end annotation


# static fields
.field private static final DB_DIRECT_ACCESS_COLOR_ADJUSTMENT:Ljava/lang/String; = "direct_color_adjustment"

.field private static final DB_DIRECT_ACCESS_COLOR_LENS:Ljava/lang/String; = "direct_color_lens"


# instance fields
.field private ismNeedToRestoreColorNegativeOrGrayScale:Z

.field private mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field private mContext:Landroid/content/Context;

.field private mDbColorAdjustment:I

.field private mDbColorAdjustmentType:I

.field private mDbColorAdjustmentUseParameter:F

.field private mDbColorGrayScale:I

.field private mDbColorLens:I

.field private mDbColorLensFilterOpacity:I

.field private mDbColorLensFilterType:I

.field private mDbColorNegative:I

.field private mDbColourCorrection:I

.field private mDbColourInversion:I

.field private mDbDirectAccessColorAdjustment:I

.field private mDbDirectAccessColorLens:I

.field private mDbDirectAccessColorNegative:I

.field private mIsDisabled:Z

.field private mNeedToRestoreColorAdjustment:Z

.field private mNeedToRestoreColorLens:Z

.field private mNeedToRestoreColourCorrection:Z

.field private mNeedToRestoreColourInversion:Z

.field private mNeedToRestoreDirectAccessColorAdjustment:Z

.field private mNeedToRestoreDirectAccessColorLens:Z

.field private mNeedToRestoreDirectAccessColorNegative:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1232
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    .line 1233
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1234
    return-void
.end method

.method private updateSettingDB()V
    .registers 6

    .line 1416
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_COLOR_ADJUSTMENT:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 1417
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    const-string v4, "color_blind"

    invoke-static {v0, v4, v2, v3}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorAdjustment:I

    .line 1419
    if-ne v0, v1, :cond_2e

    .line 1420
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v3, "color_adjustment_type"

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorAdjustmentType:I

    .line 1422
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "color_blind_user_parameter"

    invoke-static {v0, v4, v1, v3}, Lcom/android/server/biometrics/Utils;->getFloatDb(Landroid/content/Context;Ljava/lang/String;ZF)F

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorAdjustmentUseParameter:F

    .line 1427
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorAdjustmentType:I

    if-nez v0, :cond_2e

    .line 1428
    iput v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorGrayScale:I

    .line 1434
    :cond_2e
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_COLOR_LENS:Z

    if-eqz v0, :cond_52

    .line 1435
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v3, "color_lens_switch"

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorLens:I

    .line 1437
    if-ne v0, v1, :cond_52

    .line 1438
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v3, "color_lens_type"

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorLensFilterType:I

    .line 1440
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v3, "color_lens_opacity"

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorLensFilterOpacity:I

    .line 1446
    :cond_52
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_COLOR_NEGATIVE:Z

    if-eqz v0, :cond_61

    .line 1447
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "high_contrast"

    invoke-static {v0, v3, v2, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorNegative:I

    .line 1458
    :cond_61
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v3, "accessibility_display_inversion_enabled"

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColourInversion:I

    .line 1462
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v3, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColourCorrection:I

    .line 1470
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v1, "direct_negative"

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbDirectAccessColorNegative:I

    .line 1473
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v1, "direct_color_adjustment"

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbDirectAccessColorAdjustment:I

    .line 1476
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v1, "direct_color_lens"

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbDirectAccessColorLens:I

    .line 1482
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 8

    .line 1238
    const-class v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;

    monitor-enter v0

    .line 1239
    :try_start_3
    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1240
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A11yVisibilityLimit.disable: start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mIsDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mIsDisabled:Z

    if-eqz v1, :cond_27

    .line 1243
    monitor-exit v0

    return-void

    .line 1245
    :cond_27
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mIsDisabled:Z

    .line 1246
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->updateSettingDB()V

    .line 1248
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorAdjustment:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_57

    .line 1249
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreColorAdjustment:Z
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_154

    .line 1251
    :try_start_34
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    iget v4, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorAdjustmentUseParameter:F

    invoke-virtual {v2, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_3c
    .catchall {:try_start_34 .. :try_end_3b} :catchall_154

    .line 1254
    goto :goto_57

    .line 1252
    :catch_3c
    move-exception v2

    .line 1253
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3d
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_57
    :goto_57
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorLens:I

    if-ne v2, v1, :cond_7e

    .line 1258
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreColorLens:Z
    :try_end_5d
    .catchall {:try_start_3d .. :try_end_5d} :catchall_154

    .line 1260
    :try_start_5d
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->semDisableMdnieColorFilter()Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_62} :catch_63
    .catchall {:try_start_5d .. :try_end_62} :catchall_154

    .line 1263
    goto :goto_7e

    .line 1261
    :catch_63
    move-exception v2

    .line 1262
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_64
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7e
    :goto_7e
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorNegative:I

    if-eq v2, v1, :cond_86

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorGrayScale:I

    if-ne v2, v1, :cond_a9

    .line 1267
    :cond_86
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->ismNeedToRestoreColorNegativeOrGrayScale:Z
    :try_end_88
    .catchall {:try_start_64 .. :try_end_88} :catchall_154

    .line 1270
    :try_start_88
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v1, v3}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8d} :catch_8e
    .catchall {:try_start_88 .. :try_end_8d} :catchall_154

    .line 1273
    goto :goto_a9

    .line 1271
    :catch_8e
    move-exception v2

    .line 1272
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_8f
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a9
    :goto_a9
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColourInversion:I

    if-ne v2, v1, :cond_b6

    .line 1277
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreColourInversion:Z

    .line 1278
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v2, v4, v1, v3}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1280
    :cond_b6
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColourCorrection:I

    if-ne v2, v1, :cond_c3

    .line 1281
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreColourCorrection:Z

    .line 1282
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v4, "accessibility_display_daltonizer_enabled"

    invoke-static {v2, v4, v1, v3}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1287
    :cond_c3
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbDirectAccessColorNegative:I

    if-ne v2, v1, :cond_d0

    .line 1288
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v4, "direct_negative"

    invoke-static {v2, v4, v3, v3}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1290
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreDirectAccessColorNegative:Z

    .line 1292
    :cond_d0
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbDirectAccessColorAdjustment:I

    if-ne v2, v1, :cond_dd

    .line 1293
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v4, "direct_color_adjustment"

    invoke-static {v2, v4, v3, v3}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1295
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreDirectAccessColorAdjustment:Z

    .line 1297
    :cond_dd
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbDirectAccessColorLens:I

    if-ne v2, v1, :cond_ea

    .line 1298
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v4, "direct_color_lens"

    invoke-static {v2, v4, v3, v3}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1300
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreDirectAccessColorLens:Z

    .line 1304
    :cond_ea
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A11yVisibilityLimit.disable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorAdjustment:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorLens:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorNegative:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorGrayScale:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColourInversion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColourCorrection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbDirectAccessColorNegative:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbDirectAccessColorAdjustment:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbDirectAccessColorLens:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    monitor-exit v0

    .line 1316
    return-void

    .line 1314
    :catchall_154
    move-exception v1

    monitor-exit v0
    :try_end_156
    .catchall {:try_start_8f .. :try_end_156} :catchall_154

    throw v1
.end method

.method public restore()V
    .registers 10

    .line 1320
    const-class v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;

    monitor-enter v0

    .line 1321
    :try_start_3
    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1322
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A11yVisibilityLimit.restore: start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mIsDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mIsDisabled:Z

    if-nez v1, :cond_27

    .line 1325
    monitor-exit v0

    return-void

    .line 1327
    :cond_27
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->updateSettingDB()V

    .line 1328
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreColorAdjustment:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5a

    .line 1329
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreColorAdjustment:Z

    .line 1330
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorAdjustment:I
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_187

    if-ne v1, v3, :cond_5a

    .line 1332
    :try_start_36
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    iget v4, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorAdjustmentUseParameter:F

    invoke-virtual {v1, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_187

    .line 1335
    goto :goto_5a

    .line 1333
    :catch_3e
    move-exception v1

    .line 1334
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3f
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5a
    :goto_5a
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreColorLens:Z

    if-eqz v1, :cond_ac

    .line 1340
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreColorLens:Z

    .line 1341
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorLens:I

    if-ne v1, v3, :cond_ac

    .line 1342
    const-string v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A11yVisibilityLimit.restore: COLOR LENS, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorLensFilterType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorLensFilterOpacity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_3f .. :try_end_86} :catchall_187

    .line 1345
    :try_start_86
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    iget v4, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorLensFilterType:I

    iget v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorLensFilterOpacity:I

    invoke-virtual {v1, v4, v5}, Landroid/view/accessibility/AccessibilityManager;->semEnableMdnieColorFilter(II)Z
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8f} :catch_90
    .catchall {:try_start_86 .. :try_end_8f} :catchall_187

    .line 1348
    goto :goto_ac

    .line 1346
    :catch_90
    move-exception v1

    .line 1347
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_91
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_ac
    :goto_ac
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->ismNeedToRestoreColorNegativeOrGrayScale:Z

    if-eqz v1, :cond_134

    .line 1353
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->ismNeedToRestoreColorNegativeOrGrayScale:Z

    .line 1354
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorGrayScale:I

    if-ne v1, v3, :cond_b8

    move v1, v3

    goto :goto_b9

    :cond_b8
    move v1, v2

    .line 1355
    .local v1, "isEnabledColorGrayScale":Z
    :goto_b9
    iget v4, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mDbColorNegative:I
    :try_end_bb
    .catchall {:try_start_91 .. :try_end_bb} :catchall_187

    if-ne v4, v3, :cond_bf

    move v4, v3

    goto :goto_c0

    :cond_bf
    move v4, v2

    .line 1356
    .local v4, "isEnabledColorNegative":Z
    :goto_c0
    if-eqz v1, :cond_e9

    if-eqz v4, :cond_e9

    .line 1358
    :try_start_c4
    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v3}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_ca} :catch_cb
    .catchall {:try_start_c4 .. :try_end_ca} :catchall_187

    .line 1361
    goto :goto_134

    .line 1359
    :catch_cb
    move-exception v5

    .line 1360
    .local v5, "e":Ljava/lang/Exception;
    :try_start_cc
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_cc .. :try_end_e7} :catchall_187

    .line 1361
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_134

    .line 1362
    :cond_e9
    if-eqz v1, :cond_110

    .line 1364
    :try_start_eb
    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v3}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f1} :catch_f2
    .catchall {:try_start_eb .. :try_end_f1} :catchall_187

    .line 1367
    goto :goto_134

    .line 1365
    :catch_f2
    move-exception v5

    .line 1366
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_f3
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catchall {:try_start_f3 .. :try_end_10e} :catchall_187

    .line 1367
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_134

    .line 1368
    :cond_110
    if-eqz v4, :cond_134

    .line 1370
    :try_start_112
    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5, v3, v3}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_117} :catch_118
    .catchall {:try_start_112 .. :try_end_117} :catchall_187

    .line 1373
    goto :goto_134

    .line 1371
    :catch_118
    move-exception v5

    .line 1372
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_119
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    .end local v1    # "isEnabledColorGrayScale":Z
    .end local v4    # "isEnabledColorNegative":Z
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_134
    :goto_134
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreColourInversion:Z

    if-eqz v1, :cond_148

    .line 1378
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreColourInversion:Z

    .line 1379
    const-string v1, "FingerprintService"

    const-string v4, "A11yVisibilityLimit.restore: COLOR Inversion"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v1, v4, v3, v3}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1383
    :cond_148
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreColourCorrection:Z

    if-eqz v1, :cond_15c

    .line 1384
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreColourCorrection:Z

    .line 1385
    const-string v1, "FingerprintService"

    const-string v4, "A11yVisibilityLimit.restore: COLOR Correction"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v4, "accessibility_display_daltonizer_enabled"

    invoke-static {v1, v4, v3, v3}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1391
    :cond_15c
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreDirectAccessColorNegative:Z

    if-eqz v1, :cond_169

    .line 1392
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v4, "direct_negative"

    invoke-static {v1, v4, v2, v3}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1394
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreDirectAccessColorNegative:Z

    .line 1396
    :cond_169
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreDirectAccessColorAdjustment:Z

    if-eqz v1, :cond_176

    .line 1397
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v4, "direct_color_adjustment"

    invoke-static {v1, v4, v2, v3}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1399
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreDirectAccessColorAdjustment:Z

    .line 1401
    :cond_176
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreDirectAccessColorLens:Z

    if-eqz v1, :cond_183

    .line 1402
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mContext:Landroid/content/Context;

    const-string v4, "direct_color_lens"

    invoke-static {v1, v4, v2, v3}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1404
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mNeedToRestoreDirectAccessColorLens:Z

    .line 1408
    :cond_183
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;->mIsDisabled:Z

    .line 1410
    monitor-exit v0

    .line 1411
    return-void

    .line 1410
    :catchall_187
    move-exception v1

    monitor-exit v0
    :try_end_189
    .catchall {:try_start_119 .. :try_end_189} :catchall_187

    throw v1
.end method
