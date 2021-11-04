.class public Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightnessObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
    }
.end annotation


# static fields
.field private static final INVALID:I = -0x1

.field private static final LFD_SCALABILITY_CMD_FOR_LUX:Ljava/lang/String; = "client=disp scope=normal,lpm scalability="

.field private static final LFD_SCALABILITY_FOR_LUX_DEFAULT:I = 0x0

.field private static final LFD_SCALABILITY_FOR_LUX_MAX:I = 0x6

.field private static final LFD_SCALABILITY_FOR_LUX_MID:I = 0x5

.field private static final LFD_SCALABILITY_FOR_LUX_MIN:I = 0x1

.field private static final LIGHT_SENSOR_RATE_MS:I = 0xfa

.field private static final VRR_LFD_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/vrr_lfd"


# instance fields
.field private mAmbientBrightnessThresholds:[I

.field private mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

.field private mAmbientLux:F

.field private mBrightness:I

.field private final mContext:Landroid/content/Context;

.field private final mDisplayBrightnessSetting:Landroid/net/Uri;

.field private mDisplayBrightnessThresholds:[I

.field private mHasLightSensorListener:Z

.field private mIsRegisteredWirelessChargeReceiver:Z

.field private mIsWirelessCharging:Z

.field private mLfd:Z

.field private mLfdScalabilityForLux:I

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

.field private mLowPowerModeEnabled:Z

.field private mPassive:Z

.field private mRefreshRateChangeable:Z

.field private mRefreshRateInZone:I

.field private mScreenOn:Z

.field private mSecAmbientBrightnessThresholds:I

.field private mSecAmbientRelativeThresholds:I

.field private mSecDisplayBrightnessThresholds:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorType:I

.field private mShouldObserveAmbientChange:Z

.field private mShouldObserveDisplayChange:Z

.field mWirelessChargeReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1749
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 1750
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1645
    nop

    .line 1646
    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessSetting:Landroid/net/Uri;

    .line 1656
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayModeDirector$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 1658
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 1666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    .line 1667
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 1668
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 1671
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHasLightSensorListener:Z

    .line 1672
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    .line 1673
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsRegisteredWirelessChargeReceiver:Z

    .line 1674
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorType:I

    .line 1675
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mWirelessChargeReceiver:Landroid/content/BroadcastReceiver;

    .line 1694
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalabilityForLux:I

    .line 1705
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mPassive:Z

    .line 1706
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfd:Z

    .line 1708
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecDisplayBrightnessThresholds:I

    .line 1709
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecAmbientBrightnessThresholds:I

    .line 1710
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecAmbientRelativeThresholds:I

    .line 1751
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 1752
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 1754
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    .line 1758
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_POLICY_RATE_SUPPORT_PASSIVE:Z

    if-eqz v0, :cond_62

    .line 1760
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->initSecBrightnessLimitation()V

    .line 1764
    :cond_62
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    array-length v1, v1

    if-ne v0, v1, :cond_6b

    .line 1768
    return-void

    .line 1765
    :cond_6b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "display brightness threshold array and ambient brightness threshold array have different length"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 1643
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .param p1, "x1"    # Z

    .line 1643
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 1643
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .param p1, "x1"    # F

    .line 1643
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 1643
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 1643
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 1643
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    return-void
.end method

.method private checkShouldObserve([I)Z
    .registers 6
    .param p1, "a"    # [I

    .line 2025
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY_SUPPORT_SEAMLESS:Z

    if-nez v0, :cond_a

    .line 2030
    return v1

    .line 2033
    :cond_a
    array-length v0, p1

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_17

    aget v3, p1, v2

    .line 2034
    .local v3, "d":I
    if-ltz v3, :cond_14

    .line 2035
    const/4 v0, 0x1

    return v0

    .line 2033
    .end local v3    # "d":I
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2039
    :cond_17
    return v1
.end method

.method private getVoteAsLfdScalabilityPolicy(I)Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 5
    .param p1, "lfdScalability"    # I

    .line 2161
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x6

    if-eq p1, v0, :cond_8

    .line 2175
    const/4 v0, 0x0

    return-object v0

    .line 2164
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRateMode()I

    move-result v0

    .line 2165
    .local v0, "refreshRateMode":I
    if-nez v0, :cond_1f

    .line 2167
    invoke-static {}, Landroid/view/Display$SeamlessRefreshRateConfig;->getNormalSpeedMaxRefreshRate()I

    move-result v1

    int-to-float v1, v1

    .line 2168
    invoke-static {}, Landroid/view/Display$SeamlessRefreshRateConfig;->getNormalSpeedMaxRefreshRate()I

    move-result v2

    int-to-float v2, v2

    .line 2166
    invoke-static {v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    return-object v1

    .line 2171
    :cond_1f
    invoke-static {}, Landroid/view/Display$SeamlessRefreshRateConfig;->getHighSpeedMaxRefreshRate()I

    move-result v1

    int-to-float v1, v1

    .line 2172
    invoke-static {}, Landroid/view/Display$SeamlessRefreshRateConfig;->getHighSpeedMaxRefreshRate()I

    move-result v2

    int-to-float v2, v2

    .line 2170
    invoke-static {v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    return-object v1
.end method

.method private initSecBrightnessLimitation()V
    .registers 6

    .line 1714
    const-string v0, "DisplayModeDirector"

    const-string v1, ""

    const/4 v2, -0x1

    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecDisplayBrightnessThresholds:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    .line 1719
    goto :goto_14

    .line 1716
    :catch_c
    move-exception v3

    .line 1717
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SEC_PRODUCT_FEATURE_LCD_CONFIG_SEAMLESS_BRT is empty"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iput v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecDisplayBrightnessThresholds:I

    .line 1722
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_14
    :try_start_14
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecAmbientBrightnessThresholds:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_1b

    .line 1727
    goto :goto_23

    .line 1724
    :catch_1b
    move-exception v1

    .line 1725
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SEC_PRODUCT_FEATURE_LCD_CONFIG_SEAMLESS_LUX is empty"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    iput v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecAmbientBrightnessThresholds:I

    .line 1729
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_23
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecDisplayBrightnessThresholds:I

    const-string/jumbo v1, "persist.dm.passive.display_brightness"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecDisplayBrightnessThresholds:I

    .line 1731
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecAmbientBrightnessThresholds:I

    const-string/jumbo v1, "persist.dm.passive.ambient_brightness"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecAmbientBrightnessThresholds:I

    .line 1733
    return-void
.end method

.method private isDefaultDisplayOn()Z
    .registers 6

    .line 2252
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2253
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 2254
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_28

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    .line 2255
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_28

    move v1, v3

    goto :goto_29

    :cond_28
    nop

    .line 2254
    :goto_29
    return v1
.end method

.method private isInsideZone(IF)Z
    .registers 9
    .param p1, "brightness"    # I
    .param p2, "lux"    # F

    .line 2043
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2d

    .line 2044
    aget v1, v1, v0

    .line 2045
    .local v1, "disp":I
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    aget v2, v2, v0

    .line 2047
    .local v2, "ambi":I
    const/4 v3, 0x1

    if-ltz v1, :cond_1b

    if-ltz v2, :cond_1b

    .line 2048
    if-gt p1, v1, :cond_2a

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2a

    .line 2049
    return v3

    .line 2051
    :cond_1b
    if-ltz v1, :cond_20

    .line 2052
    if-gt p1, v1, :cond_2a

    .line 2053
    return v3

    .line 2055
    :cond_20
    if-ltz v2, :cond_2a

    .line 2056
    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2a

    .line 2057
    return v3

    .line 2043
    .end local v1    # "disp":I
    .end local v2    # "ambi":I
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2062
    .end local v0    # "i":I
    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method private isLfd(IF)Z
    .registers 5
    .param p1, "brightness"    # I
    .param p2, "lux"    # F

    .line 2204
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecDisplayBrightnessThresholds:I

    if-lt p1, v0, :cond_7

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    :cond_7
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecAmbientBrightnessThresholds:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_12

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    if-eqz v0, :cond_1c

    :cond_12
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 2207
    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 2208
    return v1

    .line 2210
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private isPassiveMode(IF)Z
    .registers 5
    .param p1, "brightness"    # I
    .param p2, "lux"    # F

    .line 2195
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecDisplayBrightnessThresholds:I

    if-lt p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecAmbientBrightnessThresholds:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_15

    :cond_b
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 2197
    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRateMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 2198
    return v1

    .line 2200
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private onBrightnessChangedLocked()V
    .registers 10

    .line 2066
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2069
    .local v0, "brightness":I
    const/4 v1, 0x0

    .line 2071
    .local v1, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v2, :cond_10d

    .line 2072
    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v2, :cond_11d

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY_SUPPORT_SEAMLESS:Z

    if-eqz v2, :cond_11d

    .line 2073
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    .line 2074
    const/4 v2, 0x0

    .line 2075
    .local v2, "changed":Z
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorType:I

    const/4 v4, 0x5

    const-string v5, ", lux="

    const-string v6, "DisplayModeDirector"

    if-eq v3, v4, :cond_4d

    .line 2076
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SensorInfo, brightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mLfd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfd:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    :cond_4d
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_POLICY_RATE_SUPPORT_PASSIVE:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_aa

    .line 2080
    invoke-static {}, Landroid/view/Display$SeamlessRefreshRateConfig;->isSeamlessPlusType()Z

    move-result v3

    if-nez v3, :cond_aa

    .line 2081
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    iget v7, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-direct {p0, v3, v7}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isPassiveMode(IF)Z

    move-result v3

    .line 2082
    .local v3, "isPassive":Z
    iget-boolean v7, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mPassive:Z

    if-eq v3, v7, :cond_a9

    .line 2083
    iput-boolean v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mPassive:Z

    .line 2084
    const/4 v2, 0x1

    .line 2085
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPassiveMode, brightness="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", isPassive="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    const-string v5, "brightnessChanged"

    invoke-static {v3, v5}, Lcom/android/server/display/DisplayModeDirector;->setPassiveMode(ZLjava/lang/String;)V

    .line 2088
    iget-boolean v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mPassive:Z

    if-eqz v5, :cond_9a

    .line 2089
    const/4 v4, 0x3

    invoke-static {v4}, Landroid/view/SurfaceControl;->notifyHFRmode(I)V

    goto :goto_a9

    .line 2090
    :cond_9a
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    move-result-object v5

    # getter for: Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mRefreshRateMode:I
    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->access$2300(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)I

    move-result v5

    if-ne v5, v4, :cond_a9

    .line 2092
    invoke-static {v4}, Landroid/view/SurfaceControl;->notifyHFRmode(I)V

    .line 2095
    .end local v3    # "isPassive":Z
    :cond_a9
    :goto_a9
    goto :goto_109

    :cond_aa
    invoke-static {}, Landroid/view/Display$SeamlessRefreshRateConfig;->isSeamlessPlusType()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 2096
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    iget v7, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-direct {p0, v3, v7}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isLfd(IF)Z

    move-result v3

    .line 2097
    .local v3, "isLfd":Z
    iget-boolean v7, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfd:Z

    if-eq v3, v7, :cond_109

    .line 2098
    iput-boolean v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfd:Z

    .line 2099
    const/4 v2, 0x1

    .line 2100
    if-eqz v3, :cond_f3

    .line 2101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setLfd, brightness="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", mIsWirelessCharging="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isLfd="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    iput v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalabilityForLux:I

    goto :goto_f6

    .line 2106
    :cond_f3
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalabilityForLux:I

    .line 2108
    :goto_f6
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/display/-$$Lambda$DisplayModeDirector$BrightnessObserver$Sz_V6CJ5z61sWy5IMOJHseavkdg;

    invoke-direct {v5, p0}, Lcom/android/server/display/-$$Lambda$DisplayModeDirector$BrightnessObserver$Sz_V6CJ5z61sWy5IMOJHseavkdg;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2111
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 2112
    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalabilityForLux:I

    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getVoteAsLfdScalabilityPolicy(I)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 2115
    .end local v3    # "isLfd":Z
    :cond_109
    :goto_109
    if-nez v2, :cond_10c

    .line 2116
    return-void

    .line 2118
    .end local v2    # "changed":Z
    :cond_10c
    goto :goto_11d

    .line 2121
    :cond_10d
    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isInsideZone(IF)Z

    move-result v2

    .line 2122
    .local v2, "insideZone":Z
    if-eqz v2, :cond_11d

    .line 2123
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-static {v4, v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 2131
    .end local v2    # "insideZone":Z
    :cond_11d
    :goto_11d
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V
    invoke-static {v2, v3, v1}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2132
    return-void
.end method

.method private onScreenOn(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 2215
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    if-eq v0, p1, :cond_9

    .line 2216
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    .line 2217
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 2219
    :cond_9
    return-void
.end method

.method private restartObserver()V
    .registers 10

    .line 1939
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->checkShouldObserve([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayChange:Z

    .line 1940
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->checkShouldObserve([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientChange:Z

    .line 1942
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1943
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayChange:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 1946
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1947
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_27

    .line 1950
    :cond_24
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1953
    :goto_27
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientChange:Z

    if-eqz v1, :cond_b2

    .line 1954
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1955
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x10402da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1958
    .local v2, "lightSensorType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1960
    .local v3, "lightSensor":Landroid/hardware/Sensor;
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    const/4 v5, 0x5

    if-nez v4, :cond_70

    .line 1961
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 1962
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    .line 1963
    .local v4, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_67

    .line 1964
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    .line 1965
    .local v7, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v7}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 1966
    move-object v3, v7

    .line 1967
    goto :goto_67

    .line 1963
    .end local v7    # "sensor":Landroid/hardware/Sensor;
    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    .line 1972
    .end local v4    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v6    # "i":I
    :cond_67
    :goto_67
    if-nez v3, :cond_7c

    .line 1973
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    goto :goto_7c

    .line 1976
    :cond_70
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->registerLightSensor()Landroid/hardware/Sensor;

    move-result-object v3

    .line 1978
    if-nez v3, :cond_7c

    .line 1979
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 1983
    :cond_7c
    :goto_7c
    if-eqz v3, :cond_95

    .line 1984
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1986
    .local v4, "res":Landroid/content/res/Resources;
    const-string v5, "DisplayModeDirector"

    invoke-static {v5, v4}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 1987
    iput-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 1989
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isDefaultDisplayOn()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onScreenOn(Z)V

    .line 1992
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_95
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY_SUPPORT_SEAMLESS:Z

    if-eqz v4, :cond_b1

    iget-boolean v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsRegisteredWirelessChargeReceiver:Z

    if-nez v4, :cond_b1

    .line 1994
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1995
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1996
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mWirelessChargeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1997
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsRegisteredWirelessChargeReceiver:Z

    .line 2000
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "lightSensorType":Ljava/lang/String;
    .end local v3    # "lightSensor":Landroid/hardware/Sensor;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_b1
    goto :goto_c8

    .line 2001
    :cond_b2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 2002
    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 2004
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY_SUPPORT_SEAMLESS:Z

    if-eqz v1, :cond_c8

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsRegisteredWirelessChargeReceiver:Z

    if-eqz v1, :cond_c8

    .line 2006
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mWirelessChargeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2007
    iput-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsRegisteredWirelessChargeReceiver:Z

    .line 2012
    :cond_c8
    :goto_c8
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v1, :cond_de

    .line 2013
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 2014
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2015
    :try_start_d6
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 2016
    monitor-exit v1

    goto :goto_de

    :catchall_db
    move-exception v2

    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_db

    throw v2

    .line 2018
    :cond_de
    :goto_de
    return-void
.end method

.method private sysfsWrite(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "sysfs"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2180
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2181
    .local v0, "sysfsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 2182
    return-void

    .line 2185
    :cond_c
    :try_start_c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_26

    .line 2186
    .local v1, "writer":Ljava/io/FileOutputStream;
    :try_start_11
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 2187
    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_26

    .line 2189
    .end local v1    # "writer":Ljava/io/FileOutputStream;
    goto :goto_2a

    .line 2185
    .restart local v1    # "writer":Ljava/io/FileOutputStream;
    :catchall_1c
    move-exception v2

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v3

    :try_start_22
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "sysfsFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .end local p1    # "sysfs":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :goto_25
    throw v2
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_26

    .line 2187
    .end local v1    # "writer":Ljava/io/FileOutputStream;
    .restart local v0    # "sysfsFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .restart local p1    # "sysfs":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catch_26
    move-exception v1

    .line 2188
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2190
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2a
    return-void
.end method

.method private updateLfdScalabilityAsLuxPolicy(F)V
    .registers 7
    .param p1, "lux"    # F

    .line 2136
    const/4 v0, 0x0

    .line 2137
    .local v0, "maxAmbientBrightness":I
    const v1, 0x7fffffff

    .line 2138
    .local v1, "minAmbientBrightness":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_19

    .line 2139
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    aget v3, v3, v2

    .line 2140
    .local v3, "ambi":I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2141
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2138
    .end local v3    # "ambi":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2144
    .end local v2    # "i":I
    :cond_19
    const/4 v2, 0x5

    .line 2145
    .local v2, "lfdScalabilityForLux":I
    int-to-float v3, v1

    cmpg-float v3, p1, v3

    if-lez v3, :cond_2b

    iget-boolean v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    if-eqz v3, :cond_24

    goto :goto_2b

    .line 2147
    :cond_24
    int-to-float v3, v0

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_2c

    .line 2148
    const/4 v2, 0x6

    goto :goto_2c

    .line 2146
    :cond_2b
    :goto_2b
    const/4 v2, 0x1

    .line 2151
    :cond_2c
    :goto_2c
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalabilityForLux:I

    if-eq v3, v2, :cond_3f

    .line 2152
    iput v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalabilityForLux:I

    .line 2153
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/display/-$$Lambda$DisplayModeDirector$BrightnessObserver$yUArJiqyQxSCo-UzNZ32-nwo7ps;

    invoke-direct {v4, p0}, Lcom/android/server/display/-$$Lambda$DisplayModeDirector$BrightnessObserver$yUArJiqyQxSCo-UzNZ32-nwo7ps;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2156
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2158
    :cond_3f
    return-void
.end method

.method private updateSensorStatus()V
    .registers 6

    .line 2222
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    if-nez v0, :cond_9

    goto :goto_4f

    .line 2226
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientChange:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v0, :cond_3b

    :cond_19
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v0, :cond_3b

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY_SUPPORT_SEAMLESS:Z

    if-eqz v0, :cond_3b

    .line 2233
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0x3d090

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 2234
    # getter for: Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$2400(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v4

    .line 2233
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2236
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v0, :cond_4e

    .line 2237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHasLightSensorListener:Z

    goto :goto_4e

    .line 2241
    :cond_3b
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->removeCallbacks()V

    .line 2242
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2244
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v0, :cond_4e

    .line 2245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHasLightSensorListener:Z

    .line 2249
    :cond_4e
    :goto_4e
    return-void

    .line 2223
    :cond_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method public checkLfdOff()V
    .registers 1

    .line 1890
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 1891
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1895
    const-string v0, "  BrightnessObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    const-string v1, "    mAmbientLux: "

    if-eqz v0, :cond_a8

    .line 1898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mLowPowerModeEnabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mHasLightSensorListener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHasLightSensorListener:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsWirelessCharging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_POLICY_RATE_SUPPORT_PASSIVE:Z

    if-eqz v0, :cond_d2

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mPassive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mPassive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSecDisplayBrightnessThresholds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecDisplayBrightnessThresholds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSecAmbientBrightnessThresholds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecAmbientBrightnessThresholds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d2

    .line 1910
    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    :cond_d2
    :goto_d2
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d7
    if-ge v3, v1, :cond_f2

    aget v4, v0, v3

    .line 1915
    .local v4, "d":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    .end local v4    # "d":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_d7

    .line 1918
    :cond_f2
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    array-length v1, v0

    :goto_f5
    if-ge v2, v1, :cond_110

    aget v3, v0, v2

    .line 1919
    .local v3, "d":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mAmbientBrightnessThreshold: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    .end local v3    # "d":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_f5

    .line 1922
    :cond_110
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1923
    return-void
.end method

.method isSensorNeeded()Z
    .registers 3

    .line 1736
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY_SUPPORT_SEAMLESS:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecDisplayBrightnessThresholds:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSecAmbientBrightnessThresholds:I

    if-eq v0, v1, :cond_f

    .line 1739
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 1741
    :cond_f
    const-string v0, "DisplayModeDirector"

    const-string v1, "This model isn\'t limited by Brightness sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onBrightnessChangedLocked$0$DisplayModeDirector$BrightnessObserver()V
    .registers 3

    .line 2109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client=disp scope=normal,lpm scalability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalabilityForLux:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sys/class/lcd/panel/vrr_lfd"

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    return-void
.end method

.method public synthetic lambda$updateLfdScalabilityAsLuxPolicy$1$DisplayModeDirector$BrightnessObserver()V
    .registers 3

    .line 2154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client=disp scope=normal,lpm scalability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalabilityForLux:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sys/class/lcd/panel/vrr_lfd"

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    return-void
.end method

.method logCurrentState()Ljava/lang/String;
    .registers 4

    .line 1853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " BrightnessObserver mLowPowerModeEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasLightSensorListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHasLightSensorListener:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsWirelessCharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1856
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHasLightSensorListener:Z

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAmbientLux: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_47

    .line 1857
    :cond_45
    const-string v1, ""

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1853
    return-object v0
.end method

.method public observe(Landroid/hardware/SensorManager;)V
    .registers 6
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 1771
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1774
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getBrightnessThresholds()[I

    move-result-object v0

    .line 1775
    .local v0, "brightnessThresholds":[I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getAmbientThresholds()[I

    move-result-object v1

    .line 1777
    .local v1, "ambientThresholds":[I
    if-eqz v0, :cond_22

    if-eqz v1, :cond_22

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_22

    .line 1779
    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 1780
    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    .line 1783
    :cond_22
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInZone()I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    .line 1784
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1785
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->startListening()V

    .line 1786
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1933
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1934
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 1935
    monitor-exit v0

    .line 1936
    return-void

    .line 1935
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onDeviceConfigRefreshRateInZoneChanged(I)V
    .registers 3
    .param p1, "refreshRate"    # I

    .line 1845
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    if-eq p1, v0, :cond_9

    .line 1846
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    .line 1847
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1849
    :cond_9
    return-void
.end method

.method public onDeviceConfigThresholdsChanged([I[I)V
    .registers 5
    .param p1, "brightnessThresholds"    # [I
    .param p2, "ambientThresholds"    # [I

    .line 1814
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_d

    .line 1816
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 1817
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    goto :goto_45

    .line 1820
    :cond_d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v0, :cond_27

    .line 1821
    if-eqz p1, :cond_1c

    array-length v0, p1

    if-lez v0, :cond_1c

    .line 1822
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 1823
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1824
    return-void

    .line 1827
    :cond_1c
    if-eqz p2, :cond_27

    array-length v0, p2

    if-lez v0, :cond_27

    .line 1828
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    .line 1829
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1830
    return-void

    .line 1836
    :cond_27
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 1838
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    .line 1841
    :goto_45
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1842
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1926
    if-nez p1, :cond_9

    .line 1927
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isDefaultDisplayOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onScreenOn(Z)V

    .line 1929
    :cond_9
    return-void
.end method

.method public onLowPowerModeEnabledLocked(Z)V
    .registers 3
    .param p1, "b"    # Z

    .line 1801
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-eq v0, p1, :cond_10

    .line 1802
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 1803
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 1805
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v0, :cond_10

    .line 1806
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 1810
    :cond_10
    return-void
.end method

.method public onRefreshRateSettingChangedLocked(FF)V
    .registers 7
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 1789
    sub-float v0, p2, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1790
    .local v0, "changeable":Z
    :goto_11
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eq v1, v0, :cond_23

    .line 1791
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 1792
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 1793
    if-nez v0, :cond_23

    .line 1795
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v2, 0x2

    const/4 v3, 0x0

    # invokes: Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1798
    :cond_23
    return-void
.end method

.method registerLightSensor()Landroid/hardware/Sensor;
    .registers 7

    .line 1861
    const-string v0, "DisplayModeDirector"

    const/4 v1, 0x0

    .line 1863
    .local v1, "lightSensor":Landroid/hardware/Sensor;
    const/4 v2, 0x5

    .line 1864
    .local v2, "sensorCode":I
    const/4 v3, 0x0

    .line 1866
    .local v3, "seamlessSensor":Ljava/lang/reflect/Field;
    :try_start_5
    const-class v4, Landroid/hardware/Sensor;

    const-string v5, "SEM_TYPE_LIGHT_SEAMLESS"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v3, v4

    .line 1867
    if-eqz v3, :cond_16

    .line 1868
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_15} :catch_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_17

    move v2, v4

    .line 1871
    :cond_16
    goto :goto_1a

    .line 1881
    .end local v2    # "sensorCode":I
    .end local v3    # "seamlessSensor":Ljava/lang/reflect/Field;
    :catch_17
    move-exception v2

    goto :goto_66

    .line 1870
    .restart local v2    # "sensorCode":I
    .restart local v3    # "seamlessSensor":Ljava/lang/reflect/Field;
    :catch_19
    move-exception v4

    .line 1872
    :goto_1a
    if-eqz v3, :cond_48

    .line 1873
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    move-object v1, v4

    .line 1874
    iput v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorType:I

    .line 1875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sensor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_48
    if-nez v1, :cond_71

    .line 1878
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    move-object v1, v4

    .line 1879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register TYPE_LIGHT sensor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_65} :catch_17

    goto :goto_71

    .line 1882
    .end local v3    # "seamlessSensor":Ljava/lang/reflect/Field;
    .local v2, "ee":Ljava/lang/Exception;
    :goto_66
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1883
    const-string/jumbo v3, "request light sensor FAILED "

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const/4 v0, 0x0

    .end local v1    # "lightSensor":Landroid/hardware/Sensor;
    .local v0, "lightSensor":Landroid/hardware/Sensor;
    goto :goto_72

    .line 1885
    .end local v0    # "lightSensor":Landroid/hardware/Sensor;
    .end local v2    # "ee":Ljava/lang/Exception;
    .restart local v1    # "lightSensor":Landroid/hardware/Sensor;
    :cond_71
    :goto_71
    move-object v0, v1

    .line 1886
    .end local v1    # "lightSensor":Landroid/hardware/Sensor;
    .restart local v0    # "lightSensor":Landroid/hardware/Sensor;
    :goto_72
    return-object v0
.end method
