.class Lcom/android/server/aod/AODSettingHelper;
.super Ljava/lang/Object;
.source "AODSettingHelper.java"


# static fields
.field private static final AOD_CHARGING_MODE:Ljava/lang/String; = "aod_charging_mode"

.field private static final AOD_MODE_ON:Ljava/lang/String; = "aod_mode"

.field private static final AOD_SHOW_STATE:Ljava/lang/String; = "aod_show_state"

.field private static final AOD_TAP_TO_SHOW:Ljava/lang/String; = "aod_tap_to_show_mode"

.field private static final DOZE_ALWAYS_ON:Ljava/lang/String; = "doze_always_on"

.field private static final FINGERPRINT_SCREEN_LOCK:Ljava/lang/String; = "fingerprint_screen_lock"

.field private static final FINGERPRINT_SCREEN_OFF_ICON_AOD:Ljava/lang/String; = "fingerprint_screen_off_icon_aod"

.field private static final MPSM_MODE:Ljava/lang/String; = "low_power"

.field private static final UPSM_MODE:Ljava/lang/String; = "ultra_powersaving_mode"


# instance fields
.field private mAODDefaultSetting:I

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/aod/AODSettingHelper;->mAODDefaultSetting:I

    .line 27
    iput-object p1, p0, Lcom/android/server/aod/AODSettingHelper;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    .line 30
    const-string v1, "aod_mode"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 32
    .local v0, "aodSettingValue":I
    sget-boolean v4, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD:Z

    if-eqz v4, :cond_28

    .line 33
    if-ne v0, v2, :cond_2e

    .line 34
    invoke-static {}, Lcom/android/server/aod/AODConfig;->isAODDefaultOn()Z

    move-result v2

    iput v2, p0, Lcom/android/server/aod/AODSettingHelper;->mAODDefaultSetting:I

    .line 35
    iget-object v4, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2e

    .line 38
    :cond_28
    iget-object v2, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 40
    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public clearAODShowState()V
    .registers 5

    .line 57
    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_show_state"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 58
    return-void
.end method

.method public isAODChargingMode()Z
    .registers 5

    .line 80
    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_charging_mode"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    move v0, v2

    .line 81
    .local v0, "isAODChargingMode":Z
    return v0
.end method

.method public isAODEnabled()Z
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/aod/AODSettingHelper;->mAODDefaultSetting:I

    const-string v2, "aod_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    move v0, v1

    .line 44
    .local v0, "isAODEnabled":Z
    return v0
.end method

.method public isAODShowState()Z
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_show_state"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 53
    .local v0, "aodState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    move v2, v1

    :cond_e
    return v2
.end method

.method public isAODTapToShow()Z
    .registers 6

    .line 61
    sget-boolean v0, Lcom/android/server/aod/AODConfig;->isTapToShowDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 62
    return v1

    .line 64
    :cond_6
    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x2

    const-string v3, "aod_tap_to_show_mode"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 65
    .local v0, "aodTapToShow":I
    if-ne v0, v4, :cond_13

    move v1, v4

    :cond_13
    return v1
.end method

.method public isDozeAlwaysOn()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x1

    .line 75
    .local v0, "isDozeAlwaysOn":Z
    iget-object v1, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "doze_always_on"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    move v0, v2

    .line 76
    return v0
.end method

.method public isFingerScreenLock()Z
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "fingerprint_screen_lock"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 70
    .local v0, "fingerScreenLock":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    move v2, v1

    :cond_e
    return v2
.end method

.method public isFingerScreenOffIconAOD()Z
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "fingerprint_screen_off_icon_aod"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 91
    .local v0, "fingerScreenOffIconAOD":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isMPSMEnabled()Z
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    move v2, v1

    :cond_e
    return v2
.end method

.method public isUPSMEnabled()Z
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public setAODChargingMode(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 86
    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    const-string v2, "aod_charging_mode"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 87
    return-void
.end method

.method public setAODEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 48
    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    const-string v2, "aod_mode"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 49
    return-void
.end method
