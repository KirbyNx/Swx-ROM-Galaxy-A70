.class Lcom/android/server/pm/SeServiceFeatureManager;
.super Ljava/lang/Object;
.source "SeServiceFeatureManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static isEseCardSupported:Z

.field private static isGpFelicaSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/SeServiceFeatureManager;->isEseCardSupported:Z

    .line 24
    sput-boolean v0, Lcom/android/server/pm/SeServiceFeatureManager;->isGpFelicaSupported:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static initVariableForEseFeature(Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p0, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    const-string v0, "android.hardware.nfc.ese"

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/FeatureInfo;

    .line 80
    .local v0, "feat":Landroid/content/pm/FeatureInfo;
    const/4 v1, 0x1

    const-string v2, "PackageManager"

    if-eqz v0, :cond_15

    .line 81
    const-string/jumbo v3, "support eSE card mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sput-boolean v1, Lcom/android/server/pm/SeServiceFeatureManager;->isEseCardSupported:Z

    .line 85
    :cond_15
    const-string v3, "com.samsung.android.nfc.gpfelica"

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/pm/FeatureInfo;

    .line 86
    if-eqz v0, :cond_28

    .line 87
    const-string/jumbo v3, "support GP Felica"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sput-boolean v1, Lcom/android/server/pm/SeServiceFeatureManager;->isGpFelicaSupported:Z

    .line 90
    :cond_28
    return-void
.end method

.method private static supportEse()Z
    .registers 3

    .line 93
    sget-boolean v0, Lcom/android/server/pm/SeServiceFeatureManager;->isEseCardSupported:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/pm/SeServiceFeatureManager;->isGpFelicaSupported:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 94
    .local v0, "support":Z
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "support eSE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v0
.end method

.method private static supportSim()Z
    .registers 5

    .line 69
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 70
    .local v0, "isLDU":Z
    const-string/jumbo v1, "ro.carrier"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi-only"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3c

    .line 71
    const-string/jumbo v1, "ro.radio.noril"

    const-string/jumbo v4, "no"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_3c

    :cond_3a
    move v1, v2

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v1, v3

    .line 72
    .local v1, "isWifiOnly":Z
    :goto_3d
    if-nez v0, :cond_42

    if-nez v1, :cond_42

    move v2, v3

    .line 74
    .local v2, "support":Z
    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "support SIM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v2
.end method

.method public static updateFeatureAndPackage(Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p0, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    const-string v0, "PackageManager"

    if-nez p0, :cond_a

    .line 31
    const-string v1, "cannot update secure element features"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 35
    :cond_a
    invoke-static {}, Lcom/android/server/pm/SeServiceFeatureManager;->supportSim()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 37
    const-string v1, "android.hardware.se.omapi.uicc"

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/FeatureInfo;

    .line 38
    .local v3, "fi":Landroid/content/pm/FeatureInfo;
    if-nez v3, :cond_25

    .line 39
    new-instance v4, Landroid/content/pm/FeatureInfo;

    invoke-direct {v4}, Landroid/content/pm/FeatureInfo;-><init>()V

    move-object v3, v4

    .line 40
    iput-object v1, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 41
    iput v2, v3, Landroid/content/pm/FeatureInfo;->version:I

    .line 43
    :cond_25
    invoke-virtual {p0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "add UICC secure element feature"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v3    # "fi":Landroid/content/pm/FeatureInfo;
    :cond_2d
    invoke-static {p0}, Lcom/android/server/pm/SeServiceFeatureManager;->initVariableForEseFeature(Landroid/util/ArrayMap;)V

    .line 49
    invoke-static {}, Lcom/android/server/pm/SeServiceFeatureManager;->supportEse()Z

    move-result v1

    const-string v3, "android.hardware.se.omapi.ese"

    if-eqz v1, :cond_52

    .line 50
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/FeatureInfo;

    .line 51
    .local v1, "fi":Landroid/content/pm/FeatureInfo;
    if-nez v1, :cond_4a

    .line 52
    new-instance v4, Landroid/content/pm/FeatureInfo;

    invoke-direct {v4}, Landroid/content/pm/FeatureInfo;-><init>()V

    move-object v1, v4

    .line 53
    iput-object v3, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 54
    iput v2, v1, Landroid/content/pm/FeatureInfo;->version:I

    .line 56
    :cond_4a
    invoke-virtual {p0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v2, "add eSE secure element feature"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v1    # "fi":Landroid/content/pm/FeatureInfo;
    :cond_52
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SmartcardSvc_HideTerminalCapability"

    const-string v4, "NONE"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "mHideTerminal":Ljava/lang/String;
    const-string v2, "ESE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_77

    sget-boolean v2, Lcom/android/server/pm/SeServiceFeatureManager;->isGpFelicaSupported:Z

    if-nez v2, :cond_77

    .line 63
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v2, "removed eSE secure element feature"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_77
    return-void
.end method
