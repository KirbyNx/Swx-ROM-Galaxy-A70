.class public Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;
.super Ljava/lang/Object;
.source "GlobalActionFeatures.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/Features;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingsWrapper"    # Lcom/samsung/android/globalactions/util/SettingsWrapper;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    .line 29
    return-void
.end method

.method private isCapturedBlurSupported()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method private isDataModeSupported()Z
    .registers 3

    .line 50
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDesktopModeSupported()Z
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method private isEffectSupported()Z
    .registers 2

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method private isForceRestartMessageSupported()Z
    .registers 3

    .line 55
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_SupportForceRestartGlobalAction"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNaviBarSupported()Z
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isRBMSupported()Z
    .registers 3

    .line 60
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_20

    const-string/jumbo v1, "powerplanning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "reserve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method


# virtual methods
.method public isEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 65
    const-string v0, "SF_EFFECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 66
    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEffectSupported()Z

    move-result v0

    return v0

    .line 67
    :cond_d
    const-string v0, "NAV_BAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 68
    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isNaviBarSupported()Z

    move-result v0

    return v0

    .line 69
    :cond_1a
    const-string v0, "DESKTOP_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 70
    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isDesktopModeSupported()Z

    move-result v0

    return v0

    .line 71
    :cond_27
    const-string v0, "DATA_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 72
    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isDataModeSupported()Z

    move-result v0

    return v0

    .line 73
    :cond_34
    const-string v0, "LOCKDOWN_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 74
    const/4 v0, 0x1

    return v0

    .line 75
    :cond_3e
    const-string v0, "FORCE_RESTART_MESSAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 76
    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isForceRestartMessageSupported()Z

    move-result v0

    return v0

    .line 77
    :cond_4b
    const-string v0, "RESERVE_BATTERY_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 78
    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isRBMSupported()Z

    move-result v0

    return v0

    .line 81
    :cond_58
    const/4 v0, 0x0

    return v0
.end method
