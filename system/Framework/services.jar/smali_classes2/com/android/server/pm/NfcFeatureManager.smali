.class Lcom/android/server/pm/NfcFeatureManager;
.super Ljava/lang/Object;
.source "NfcFeatureManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcFeatureManager"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static supportEse(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "sku"    # Ljava/lang/String;
    .param p1, "factory"    # Z

    .line 119
    invoke-static {p1}, Lcom/android/server/pm/NfcFeatureManager;->supportEse(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "ese"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static supportEse(Z)Z
    .registers 4
    .param p0, "factory"    # Z

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "ese":Z
    if-eqz v0, :cond_12

    if-nez p0, :cond_12

    .line 142
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_DisableEseCardMode"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 144
    :cond_12
    return v0
.end method

.method private static supportNfc()Z
    .registers 3

    .line 123
    const-string v0, "NXP_PN553"

    .line 124
    .local v0, "nfcChipName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 125
    .local v1, "nfc":Z
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 126
    const/4 v1, 0x1

    .line 128
    :cond_a
    return v1
.end method

.method private static supportSim(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "sku"    # Ljava/lang/String;
    .param p1, "factory"    # Z

    .line 115
    invoke-static {p1}, Lcom/android/server/pm/NfcFeatureManager;->supportSim(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "sim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private static supportSim(Z)Z
    .registers 4
    .param p0, "factory"    # Z

    .line 132
    const/4 v0, 0x1

    .line 133
    .local v0, "sim":Z
    if-eqz v0, :cond_12

    if-nez p0, :cond_12

    .line 134
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_DisableUiccCardMode"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 136
    :cond_12
    return v0
.end method

.method public static updateFeatureAndPackage(Landroid/util/ArrayMap;Lcom/android/server/pm/SkippingApks;Z)V
    .registers 14
    .param p1, "skippingApks"    # Lcom/android/server/pm/SkippingApks;
    .param p2, "factory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;",
            "Lcom/android/server/pm/SkippingApks;",
            "Z)V"
        }
    .end annotation

    .line 27
    .local p0, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    const-string/jumbo v0, "ro.boot.product.hardware.sku"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "sku":Ljava/lang/String;
    const-string/jumbo v1, "hcesimese"

    const-string/jumbo v2, "hceese"

    const-string/jumbo v3, "hcesim"

    const-string/jumbo v4, "hce"

    const-string v5, "disabled"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "definedNfcValues":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "removed eSE feature"

    const-string v4, "cannot remove eSE feature"

    const-string/jumbo v6, "removed SIM feature"

    const-string v7, "cannot remove SIM feature"

    const-string v8, "android.hardware.nfc.ese"

    const-string v9, "android.hardware.nfc.uicc"

    const-string v10, "NfcFeatureManager"

    if-eqz v2, :cond_ce

    .line 34
    :try_start_35
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 35
    if-eqz p0, :cond_62

    .line 36
    const-string v2, "android.hardware.nfc"

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v2, "android.hardware.nfc.hce"

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v2, "android.hardware.nfc.hcef"

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v2, "android.hardware.nfc.any"

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v2, "android.sofware.nfc.beam"

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v2, "com.nxp.mifare"

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    .line 46
    :cond_62
    const-string v2, "cannot remove NFC features"

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_67
    if-eqz p1, :cond_95

    .line 50
    invoke-virtual {p1}, Lcom/android/server/pm/SkippingApks;->getSkippingApkList()Ljava/util/ArrayList;

    .line 51
    const-string v2, "Nfc.apk"

    invoke-virtual {p1, v2}, Lcom/android/server/pm/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    .line 52
    const-string v2, "NfcNci.apk"

    invoke-virtual {p1, v2}, Lcom/android/server/pm/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    .line 53
    const-string v2, "NfcFn.apk"

    invoke-virtual {p1, v2}, Lcom/android/server/pm/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    .line 54
    const-string v2, "NfcTest.apk"

    invoke-virtual {p1, v2}, Lcom/android/server/pm/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    .line 55
    const-string v2, "NfcTag.apk"

    invoke-virtual {p1, v2}, Lcom/android/server/pm/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    .line 56
    const-string v2, "Tag.apk"

    invoke-virtual {p1, v2}, Lcom/android/server/pm/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    .line 57
    const-string v2, "SamsungNfcTag.apk"

    invoke-virtual {p1, v2}, Lcom/android/server/pm/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    .line 58
    const-string v2, "NfcFactoryCard.apk"

    invoke-virtual {p1, v2}, Lcom/android/server/pm/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    goto :goto_9a

    .line 61
    :cond_95
    const-string v2, "cannot remove NFC packages"

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_9a
    const-string/jumbo v2, "removed NFC features and packages"

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    .line 66
    :cond_a1
    invoke-static {v0, p2}, Lcom/android/server/pm/NfcFeatureManager;->supportSim(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b3

    .line 67
    if-eqz p0, :cond_b0

    .line 68
    invoke-virtual {p0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 72
    :cond_b0
    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_b3
    :goto_b3
    invoke-static {v0, p2}, Lcom/android/server/pm/NfcFeatureManager;->supportEse(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_cc

    .line 76
    if-eqz p0, :cond_c2

    .line 77
    invoke-virtual {p0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    .line 81
    :cond_c2
    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_c5} :catch_c6

    goto :goto_cc

    .line 85
    :catch_c6
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Unexpected exception: "

    invoke-static {v10, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_cc
    :goto_cc
    nop

    .line 112
    return-void

    .line 90
    :cond_ce
    invoke-static {}, Lcom/android/server/pm/NfcFeatureManager;->supportNfc()Z

    move-result v2

    if-nez v2, :cond_d5

    .line 91
    return-void

    .line 93
    :cond_d5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-single binary (sku: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {p2}, Lcom/android/server/pm/NfcFeatureManager;->supportSim(Z)Z

    move-result v2

    if-nez v2, :cond_100

    .line 95
    if-eqz p0, :cond_fd

    .line 96
    invoke-virtual {p0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    .line 99
    :cond_fd
    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_100
    :goto_100
    invoke-static {p2}, Lcom/android/server/pm/NfcFeatureManager;->supportEse(Z)Z

    move-result v2

    if-nez v2, :cond_112

    .line 103
    if-eqz p0, :cond_10f

    .line 104
    invoke-virtual {p0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_112

    .line 107
    :cond_10f
    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_112
    :goto_112
    return-void
.end method
