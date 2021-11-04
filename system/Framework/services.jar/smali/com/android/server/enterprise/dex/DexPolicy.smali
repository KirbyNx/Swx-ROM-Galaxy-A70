.class public Lcom/android/server/enterprise/dex/DexPolicy;
.super Lcom/samsung/android/knox/dex/IDexPolicy$Stub;
.source "DexPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/dex/DexPolicy$Injector;
    }
.end annotation


# static fields
.field private static final ACTION_DESK_MODE_ENTER:Ljava/lang/String; = "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

.field private static final ACTION_KNOX_DESKTOP_EXIT:Ljava/lang/String; = "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

.field private static final DEX_POLCY_ETHERNET_ONLY_NOTIFICATION_ID:I = 0x11cd

.field private static final TAG:Ljava/lang/String; = "DexPolicyService"

.field private static isBlockerRegistered:Z


# instance fields
.field private final blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

.field private mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private final mContext:Landroid/content/Context;

.field private mContext_temp:Lcom/samsung/android/knox/ContextInfo;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

.field private restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

.field private wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 132
    new-instance v0, Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/dex/DexPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dex/DexPolicy;-><init>(Lcom/android/server/enterprise/dex/DexPolicy$Injector;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/dex/DexPolicy$Injector;)V
    .registers 5
    .param p1, "injector"    # Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/IDexPolicy$Stub;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 73
    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 74
    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 75
    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 81
    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 88
    new-instance v0, Lcom/android/server/enterprise/dex/DexPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/dex/DexPolicy$1;-><init>(Lcom/android/server/enterprise/dex/DexPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    .line 136
    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    .line 138
    iget-object v0, p1, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {p1}, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 140
    invoke-virtual {p1}, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->getRestrictionPolicy()Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 141
    invoke-virtual {p1}, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->getWifiPolicy()Lcom/android/server/enterprise/wifi/WifiPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/android/server/enterprise/dex/DexPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/dex/DexPolicy$2;-><init>(Lcom/android/server/enterprise/dex/DexPolicy;)V

    .line 174
    .local v1, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/dex/DexPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/dex/DexPolicy;

    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/samsung/android/knox/ContextInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/dex/DexPolicy;

    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/dex/DexPolicy;
    .param p1, "x1"    # Lcom/samsung/android/knox/ContextInfo;

    .line 67
    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/dex/DexPolicy;
    .param p1, "x1"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "x2"    # Z

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/dex/DexPolicy;

    .line 67
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->exitDexModeSetPackageState()V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 67
    sget-boolean v0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/dex/DexPolicy;

    .line 67
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->registerDexBlocker()V

    return-void
.end method

.method private applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .line 496
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getRestrictionPolicy()V

    .line 497
    :cond_7
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getWifiPolicy()V

    .line 498
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyEthernetOnly - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_44

    .line 501
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->storeCurrentPolicy(Lcom/samsung/android/knox/ContextInfo;)V

    .line 502
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->storeNetworkStatus(Lcom/samsung/android/knox/ContextInfo;)V

    .line 503
    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 504
    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 505
    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 506
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 507
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    goto :goto_84

    .line 509
    :cond_44
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 510
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    .line 511
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevCellDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 512
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 514
    :cond_55
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 515
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 517
    :cond_60
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevWifiTetheringEnabled()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 518
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 520
    :cond_6b
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevUsbTetheringEnabled()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 521
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 523
    :cond_76
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isPrevBtTetheringEnabled()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 524
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 526
    :cond_81
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->restoreNetworkStatus(Lcom/samsung/android/knox/ContextInfo;)V

    .line 528
    :goto_84
    return-void
.end method

.method private disablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 810
    :try_start_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 811
    .local v0, "adminUid":I
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageDisabled(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 812
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 813
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->updatePackageControlState(Ljava/lang/String;IZ)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 818
    .end local v0    # "adminUid":I
    :cond_18
    goto :goto_38

    .line 815
    :catch_19
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setControlStateMask : failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_38
    return-void
.end method

.method private enablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 823
    :try_start_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 824
    .local v0, "adminUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->isPackageDisabledInControlState(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 825
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 827
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->updatePackageControlState(Ljava/lang/String;IZ)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    .line 831
    nop

    .end local v0    # "adminUid":I
    goto :goto_35

    .line 828
    :catch_16
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setControlStateMask : failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 832
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method private enforceDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 228
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_DEX"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 228
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceDexPermission()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_DEX"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 223
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    .line 225
    return-void
.end method

.method private enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 233
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_DEX"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enterDexModeSetPackageState()V
    .registers 14

    .line 687
    const-string v0, "adminUid"

    const-string v1, "DexPolicyService"

    const-string v2, "enterDexModeSetPackageState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 691
    .local v2, "token":J
    :try_start_d
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, "returnColumns":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 695
    .local v5, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_5a

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5a

    .line 696
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 697
    .local v7, "cv":Landroid/content/ContentValues;
    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 698
    .local v8, "adminUid":Ljava/lang/Integer;
    if-nez v8, :cond_38

    .line 699
    goto :goto_25

    .line 701
    :cond_38
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 702
    .local v9, "cxtInfo_temp":Lcom/samsung/android/knox/ContextInfo;
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v10

    .line 703
    .local v10, "dexDisableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_49
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_59

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 704
    .local v12, "packageName":Ljava/lang/String;
    invoke-direct {p0, v9, v12}, Lcom/android/server/enterprise/dex/DexPolicy;->disablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_58} :catch_60
    .catchall {:try_start_d .. :try_end_58} :catchall_5e

    .line 705
    .end local v12    # "packageName":Ljava/lang/String;
    goto :goto_49

    .line 706
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "adminUid":Ljava/lang/Integer;
    .end local v9    # "cxtInfo_temp":Lcom/samsung/android/knox/ContextInfo;
    .end local v10    # "dexDisableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_59
    goto :goto_25

    .line 713
    .end local v4    # "returnColumns":[Ljava/lang/String;
    .end local v5    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_5a
    :goto_5a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    goto :goto_7d

    .line 713
    :catchall_5e
    move-exception v0

    goto :goto_7e

    .line 709
    :catch_60
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/Exception;
    :try_start_61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enterDexModeSetPackageState : failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_61 .. :try_end_7c} :catchall_5e

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_5a

    .line 715
    :goto_7d
    return-void

    .line 713
    :goto_7e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    throw v0
.end method

.method private exitDexModeSetPackageState()V
    .registers 14

    .line 718
    const-string v0, "adminUid"

    const-string v1, "DexPolicyService"

    const-string v2, "exitDexModeSetPackageState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 721
    .local v2, "token":J
    :try_start_d
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 722
    .local v4, "returnColumns":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 724
    .local v5, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exitDexModeSetPackageState : Admin list size() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_96

    .line 727
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_96

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 728
    .local v7, "cv":Landroid/content/ContentValues;
    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 729
    .local v8, "adminUid":Ljava/lang/Integer;
    if-nez v8, :cond_4e

    .line 730
    goto :goto_3b

    .line 732
    :cond_4e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 733
    .local v9, "cxtInfo_temp":Lcom/samsung/android/knox/ContextInfo;
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v10

    .line 734
    .local v10, "dexDisableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 735
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_63
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_73

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 736
    .local v12, "packageName":Ljava/lang/String;
    invoke-direct {p0, v9, v12}, Lcom/android/server/enterprise/dex/DexPolicy;->enablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 737
    .end local v12    # "packageName":Ljava/lang/String;
    goto :goto_63

    .line 738
    :cond_73
    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_76} :catch_7a
    .catchall {:try_start_d .. :try_end_76} :catchall_78

    .line 739
    nop

    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "adminUid":Ljava/lang/Integer;
    .end local v9    # "cxtInfo_temp":Lcom/samsung/android/knox/ContextInfo;
    .end local v10    # "dexDisableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3b

    .line 745
    .end local v4    # "returnColumns":[Ljava/lang/String;
    .end local v5    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catchall_78
    move-exception v0

    goto :goto_9b

    .line 741
    :catch_7a
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitDexModeSetPackageState : failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_7b .. :try_end_96} :catchall_78

    .line 745
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_96
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    nop

    .line 747
    return-void

    .line 745
    :goto_9b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    throw v0
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v0, :cond_c

    .line 276
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 278
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private getControlState(Ljava/lang/String;I)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adminUid"    # I

    .line 800
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string/jumbo v3, "packageName"

    const-string v5, "controlStateOnDex"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 804
    .local v0, "controlState":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    .line 805
    :cond_13
    return v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 239
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->getEnterpriseDeviceManager()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 241
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRestrictionPolicy()V
    .registers 2

    .line 270
    nop

    .line 271
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 272
    return-void
.end method

.method private getWifiPolicy()V
    .registers 2

    .line 282
    nop

    .line 283
    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->wifipolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 284
    return-void
.end method

.method private isPackageDisabledInControlState(ILjava/lang/String;)Z
    .registers 6
    .param p1, "adminUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 835
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getControlState(Ljava/lang/String;I)I

    move-result v0

    .line 836
    .local v0, "controlStateValue":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private isPrevBtTetheringEnabled()Z
    .registers 5

    .line 641
    const/4 v0, 0x1

    .line 643
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "prevBtTethering"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 646
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_26

    .line 647
    .local v3, "value":Z
    if-nez v3, :cond_24

    .line 648
    const/4 v0, 0x0

    .line 649
    goto :goto_25

    .line 651
    .end local v3    # "value":Z
    :cond_24
    goto :goto_10

    .line 655
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_25
    :goto_25
    goto :goto_45

    .line 652
    :catch_26
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPrevBtTetheringEnabled : failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexPolicyService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 656
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    return v0
.end method

.method private isPrevCellDataEnabled()Z
    .registers 5

    .line 565
    const/4 v0, 0x1

    .line 567
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "prevCellularData"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 570
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_26

    .line 571
    .local v3, "value":Z
    if-nez v3, :cond_24

    .line 572
    const/4 v0, 0x0

    .line 573
    goto :goto_25

    .line 575
    .end local v3    # "value":Z
    :cond_24
    goto :goto_10

    .line 579
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_25
    :goto_25
    goto :goto_45

    .line 576
    :catch_26
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPrevCellDataEnabled : failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexPolicyService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 580
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    return v0
.end method

.method private isPrevUsbTetheringEnabled()Z
    .registers 5

    .line 603
    const/4 v0, 0x1

    .line 605
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "prevUsbTethering"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 608
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_26

    .line 609
    .local v3, "value":Z
    if-nez v3, :cond_24

    .line 610
    const/4 v0, 0x0

    .line 611
    goto :goto_25

    .line 613
    .end local v3    # "value":Z
    :cond_24
    goto :goto_10

    .line 617
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_25
    :goto_25
    goto :goto_45

    .line 614
    :catch_26
    move-exception v1

    .line 615
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPrevUsbTetheringEnabled : failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexPolicyService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 618
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    return v0
.end method

.method private isPrevWifiEnabled()Z
    .registers 5

    .line 584
    const/4 v0, 0x1

    .line 586
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "prevWifi"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 589
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_26

    .line 590
    .local v3, "value":Z
    if-nez v3, :cond_24

    .line 591
    const/4 v0, 0x0

    .line 592
    goto :goto_25

    .line 594
    .end local v3    # "value":Z
    :cond_24
    goto :goto_10

    .line 598
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_25
    :goto_25
    goto :goto_45

    .line 595
    :catch_26
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPrevWifiEnabled : failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexPolicyService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 599
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    return v0
.end method

.method private isPrevWifiTetheringEnabled()Z
    .registers 5

    .line 622
    const/4 v0, 0x1

    .line 624
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "prevWifiTethering"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 627
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_26

    .line 628
    .local v3, "value":Z
    if-nez v3, :cond_24

    .line 629
    const/4 v0, 0x0

    .line 630
    goto :goto_25

    .line 632
    .end local v3    # "value":Z
    :cond_24
    goto :goto_10

    .line 636
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_25
    :goto_25
    goto :goto_45

    .line 633
    :catch_26
    move-exception v1

    .line 634
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPrevWifiTetheringEnabled : failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexPolicyService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 637
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    return v0
.end method

.method private registerDexBlocker()V
    .registers 6

    .line 304
    const-string v0, "DexPolicyService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 306
    .local v1, "token":J
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 307
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 309
    .local v3, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    iget-object v4, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 310
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    .line 311
    const-string/jumbo v4, "registerDexBlocker was registered"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22} :catch_24

    .line 314
    nop

    .end local v3    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    goto :goto_2b

    .line 312
    :catch_24
    move-exception v3

    .line 313
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "registerDexBlocker was failed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    return-void
.end method

.method private restoreNetworkStatus(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 470
    const-string v0, "DEX_POLICY"

    const-string v1, "DexPolicyService"

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 472
    .local v2, "mTelephony":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 473
    .local v3, "mWifiManager":Landroid/net/wifi/WifiManager;
    const/4 v4, 0x0

    .local v4, "isPrevData":Z
    const/4 v5, 0x0

    .line 476
    .local v5, "isPrevWifi":Z
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "prevDataStatus"

    invoke-virtual {v6, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    move v4, v6

    .line 478
    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "prevWifiStatus"

    invoke-virtual {v6, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_33} :catch_35

    move v5, v0

    .line 482
    goto :goto_4b

    .line 480
    :catch_35
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreNetworkStatus() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 485
    .local v6, "token":J
    const/4 v0, 0x1

    if-eqz v4, :cond_5a

    :try_start_52
    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_5a

    .line 491
    :catchall_56
    move-exception v0

    goto :goto_7d

    .line 487
    :catch_58
    move-exception v0

    goto :goto_60

    .line 486
    :cond_5a
    :goto_5a
    if-eqz v5, :cond_81

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5f} :catch_58
    .catchall {:try_start_52 .. :try_end_5f} :catchall_56

    goto :goto_81

    .line 488
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_60
    :try_start_60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreNetworkStatus : failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_60 .. :try_end_7c} :catchall_56

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_81

    .line 491
    :goto_7d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    throw v0

    .line 491
    :cond_81
    :goto_81
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    nop

    .line 493
    return-void
.end method

.method private setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEthernetOnlyApplied - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "DEX_POLICY"

    const-string v3, "ethernetOnlyApplied"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 664
    return-void
.end method

.method private showEthernetOnlyNotification(Z)V
    .registers 11
    .param p1, "enabled"    # Z

    .line 531
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const v1, 0x10403ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "comment":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 535
    .local v1, "notiMgr":Landroid/app/NotificationManager;
    const-string v2, "DexPolicyService"

    if-nez v1, :cond_1e

    .line 536
    const-string v3, "Failed to get NotificationManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 540
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 542
    .local v3, "token":J
    const/16 v5, 0x11cd

    if-eqz p1, :cond_5e

    .line 543
    :try_start_26
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string v8, "MDM_DEXPOLICY"

    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 545
    .local v6, "builder":Landroid/app/Notification$Builder;
    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 546
    const v7, 0x108066a

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 548
    const-string v7, "Dex Ethernet only mode"

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 549
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 550
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v7, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 551
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 552
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 554
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 555
    .end local v6    # "builder":Landroid/app/Notification$Builder;
    goto :goto_61

    .line 556
    :cond_5e
    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_61} :catch_62

    .line 560
    :goto_61
    goto :goto_69

    .line 558
    :catch_62
    move-exception v5

    .line 559
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "showEthernetOnlyNotification was failed"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_69
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 562
    return-void
.end method

.method private storeCurrentPolicy(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 409
    const-string v0, "DexPolicyService"

    const-string v1, "RESTRICTION"

    const/4 v2, 0x1

    .local v2, "isCellularDataAllowed":Z
    const/4 v3, 0x1

    .local v3, "isWifiAllowed":Z
    const/4 v4, 0x1

    .line 410
    .local v4, "isUsbTetheringAllowed":Z
    const/4 v5, 0x1

    .local v5, "isWifiTetheringAllowed":Z
    const/4 v6, 0x1

    .line 413
    .local v6, "isBtTetheringAllowed":Z
    :try_start_9
    iget-object v7, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v9, "cellularDataEnabled"

    invoke-virtual {v7, v8, v1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    move v2, v7

    .line 416
    iget-object v7, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v9, "WIFI"

    const-string v10, "allowWifi"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    move v3, v7

    .line 418
    iget-object v7, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v9, "usbTetheringEnabled"

    invoke-virtual {v7, v8, v1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    move v4, v7

    .line 421
    iget-object v7, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v9, "wifiTetheringEnabled"

    invoke-virtual {v7, v8, v1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    move v5, v7

    .line 424
    iget-object v7, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v9, "bluetoothTetheringEnabled"

    invoke-virtual {v7, v8, v1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v6, v1

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "store current status - cell - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  wifi - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  usbTether - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  WifiTether - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  BtTether - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_79} :catch_7a

    .line 433
    goto :goto_90

    .line 431
    :catch_7a
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "storeCurrentPolicy() failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_90
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "DEX_POLICY"

    const-string/jumbo v8, "prevCellularData"

    invoke-virtual {v0, v1, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 437
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "prevWifi"

    invoke-virtual {v0, v1, v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 440
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "prevUsbTethering"

    invoke-virtual {v0, v1, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 443
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "prevWifiTethering"

    invoke-virtual {v0, v1, v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 446
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "prevBtTethering"

    invoke-virtual {v0, v1, v7, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 450
    return-void
.end method

.method private storeNetworkStatus(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 453
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 455
    .local v0, "mTelephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 456
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v2

    .line 457
    .local v2, "isDataEnabled":Z
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 459
    .local v3, "isWifiEnabled":Z
    iget-object v4, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "DEX_POLICY"

    const-string/jumbo v7, "prevDataStatus"

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 463
    iget-object v4, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v7, "prevWifiStatus"

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 467
    return-void
.end method

.method private unRegisterDexBlocker()V
    .registers 6

    .line 319
    const-string v0, "DexPolicyService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 321
    .local v1, "token":J
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 322
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 324
    .local v3, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    iget-object v4, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 325
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    .line 326
    const-string/jumbo v4, "registerDexBlocker was unregistered"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22} :catch_24

    .line 329
    nop

    .end local v3    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    goto :goto_2b

    .line 327
    :catch_24
    move-exception v3

    .line 328
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "unRegisterDexBlocker was failed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    return-void
.end method

.method private writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageList"    # Ljava/util/List;

    .line 750
    const-string v0, "adminUid"

    const-string v1, "DEX_POLICY"

    const-string v2, "DexPolicyService"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 751
    .local v3, "adminUID":I
    const/4 v4, 0x0

    .line 753
    .local v4, "ret":Z
    :try_start_9
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 754
    .local v5, "cvWhere":Landroid/content/ContentValues;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 756
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 757
    .local v6, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v7

    .line 758
    .local v7, "dexPackages":[B
    const-string v8, "dexApplicationDisableList"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 761
    iget-object v8, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    .line 762
    .local v8, "cnt":I
    if-lez v8, :cond_48

    .line 764
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v1, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    move v4, v0

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writePackageList(dexApplicationDisableList) : update : ret : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 768
    :cond_48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    move v4, v0

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writePackageList(dexApplicationDisableList) : insert : ret : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6b} :catch_6c

    .line 775
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "dexPackages":[B
    .end local v8    # "cnt":I
    :goto_6b
    goto :goto_89

    .line 772
    :catch_6c
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writePackageList : failed "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 777
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_89
    return v4
.end method


# virtual methods
.method public addPackageToDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 841
    const-string v0, "DexPolicyService"

    const-string v1, "addPackageToDisableList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 844
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    .line 845
    .local v1, "disabledPackagesByCurrentAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 846
    const-string v2, "addPackageToDisableList already blocked package"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v0, 0x3

    return v0

    .line 850
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPackageToDisableList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 v0, 0x2

    return v0

    .line 857
    :cond_41
    const/4 v2, 0x1

    :try_start_42
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 860
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->disablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 863
    :cond_4e
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_52} :catch_57

    .line 869
    .local v0, "ret":Z
    nop

    .line 870
    if-eqz v0, :cond_56

    const/4 v2, 0x0

    :cond_56
    return v2

    .line 865
    .end local v0    # "ret":Z
    :catch_57
    move-exception v3

    .line 866
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPackageToDisableList : failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 868
    return v2
.end method

.method public allowScreenTimeoutChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allow"    # Z

    .line 927
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 929
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "screenTimeoutChangeAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enforceEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enabled"    # Z

    .line 365
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 367
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "DEX_POLICY"

    const-string v3, "ethernetOnlyEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 371
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 372
    if-eqz p2, :cond_1d

    .line 373
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    goto :goto_21

    .line 375
    :cond_1d
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 379
    :cond_21
    :goto_21
    return v0
.end method

.method public enforceVirtualMacAddress(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "use"    # Z

    .line 954
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 956
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "useDexStationMacAddress"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAdminUidForEthernetOnly()I
    .registers 5

    .line 402
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 403
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 402
    const-string v2, "DEX_POLICY"

    const-string v3, "ethernetOnlyEnabled"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 404
    .local v0, "adminUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAdminUidForEthernetOnly - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return v0
.end method

.method public getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 901
    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "getPackagesFromDisableList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 905
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 907
    .local v1, "adminUID":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 908
    .local v2, "findCv":Landroid/content/ContentValues;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 909
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v3, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_21
    iget-object v4, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DEX_POLICY"

    const-string v6, "dexApplicationDisableList"

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 913
    .local v4, "blob":[B
    if-eqz v4, :cond_3b

    .line 914
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 915
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_39} :catch_3c

    move-object v0, v5

    move-object v3, v0

    .line 921
    .end local v4    # "blob":[B
    :cond_3b
    goto :goto_59

    .line 918
    :catch_3c
    move-exception v4

    .line 919
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackagesFromDisableList : failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 923
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_59
    return-object v3
.end method

.method public getVirtualMacAddress()Ljava/lang/String;
    .registers 10

    .line 981
    const-string v0, "DexPolicyService"

    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceDexPermission()V

    .line 982
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 983
    .local v1, "token":J
    const-string v3, ""

    .line 986
    .local v3, "result":Ljava/lang/String;
    :try_start_b
    const-string/jumbo v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 987
    .local v4, "iBinder":Landroid/os/IBinder;
    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 988
    .local v5, "mNMService":Landroid/os/INetworkManagementService;
    const-string v6, "eth0"

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    .line 990
    .local v6, "config":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 991
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getVirtualMacAddress : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_36} :catch_3a
    .catchall {:try_start_b .. :try_end_36} :catchall_38

    .line 997
    nop

    .end local v4    # "iBinder":Landroid/os/IBinder;
    .end local v5    # "mNMService":Landroid/os/INetworkManagementService;
    .end local v6    # "config":Landroid/net/InterfaceConfiguration;
    goto :goto_58

    :catchall_38
    move-exception v0

    goto :goto_5d

    .line 993
    :catch_3a
    move-exception v4

    .line 994
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getVirtualMacAddress : failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_38

    .line 997
    .end local v4    # "e":Ljava/lang/Exception;
    nop

    :goto_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 998
    nop

    .line 1000
    return-object v3

    .line 997
    :goto_5d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 998
    throw v0
.end method

.method public isDexActivated()Z
    .registers 5

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "isDesktopModeEnabled":Z
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 355
    const-string v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 356
    .local v1, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_17

    .line 358
    const/4 v0, 0x1

    .line 361
    :cond_17
    return v0
.end method

.method public isDexDisabled()Z
    .registers 5

    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string v3, "dexDisabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 339
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_25

    .line 340
    .local v3, "value":Z
    if-eqz v3, :cond_23

    .line 341
    const/4 v0, 0x1

    .line 342
    goto :goto_24

    .line 344
    .end local v3    # "value":Z
    :cond_23
    goto :goto_f

    .line 348
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_24
    :goto_24
    goto :goto_44

    .line 345
    :catch_25
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDexDisabled : failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexPolicyService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    return v0
.end method

.method public isEthernetOnlyApplied()Z
    .registers 6

    .line 667
    const-string v0, "DexPolicyService"

    const/4 v1, 0x0

    .line 669
    .local v1, "ret":Z
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DEX_POLICY"

    const-string v4, "ethernetOnlyApplied"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 672
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_27

    .line 673
    .local v4, "value":Z
    if-eqz v4, :cond_25

    .line 674
    const/4 v1, 0x1

    .line 675
    goto :goto_26

    .line 677
    .end local v4    # "value":Z
    :cond_25
    goto :goto_11

    .line 681
    .end local v2    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_26
    :goto_26
    goto :goto_44

    .line 678
    :catch_27
    move-exception v2

    .line 679
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isEthernetOnlyApplied : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 682
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEthernetOnlyApplied - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return v1
.end method

.method public isEthernetOnlyEnforced()Z
    .registers 5

    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string v3, "ethernetOnlyEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 388
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_25

    .line 389
    .local v3, "value":Z
    if-eqz v3, :cond_23

    .line 390
    const/4 v0, 0x1

    .line 391
    goto :goto_24

    .line 393
    .end local v3    # "value":Z
    :cond_23
    goto :goto_f

    .line 397
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_24
    :goto_24
    goto :goto_44

    .line 394
    :catch_25
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEthernetOnlyEnforced : failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexPolicyService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    return v0
.end method

.method public isScreenTimeoutChangeAllowed()Z
    .registers 5

    .line 935
    const/4 v0, 0x1

    .line 937
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "screenTimeoutChangeAllowed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 940
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_26

    .line 941
    .local v3, "value":Z
    if-nez v3, :cond_24

    .line 942
    const/4 v0, 0x0

    .line 943
    goto :goto_25

    .line 945
    .end local v3    # "value":Z
    :cond_24
    goto :goto_10

    .line 949
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_25
    :goto_25
    goto :goto_45

    .line 946
    :catch_26
    move-exception v1

    .line 947
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isScreenTimeoutChangeAllowed : failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexPolicyService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 950
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    return v0
.end method

.method public isVirtualMacAddressEnforced()Z
    .registers 5

    .line 962
    const/4 v0, 0x0

    .line 964
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "useDexStationMacAddress"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 967
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_26

    .line 968
    .local v3, "value":Z
    if-eqz v3, :cond_24

    .line 969
    const/4 v0, 0x1

    .line 970
    goto :goto_25

    .line 972
    .end local v3    # "value":Z
    :cond_24
    goto :goto_10

    .line 976
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_25
    :goto_25
    goto :goto_45

    .line 973
    :catch_26
    move-exception v1

    .line 974
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVirtualMacAddressEnforced : failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexPolicyService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 977
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 245
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 257
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 261
    sget-boolean v0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 262
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->unRegisterDexBlocker()V

    .line 264
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyApplied()Z

    move-result v0

    if-nez v0, :cond_17

    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    .line 267
    :cond_17
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 253
    return-void
.end method

.method public removePackageFromDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 874
    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "removePackageFromDisableList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 878
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    .line 880
    .local v1, "disabledPackagesByCurrentAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 881
    const-string/jumbo v2, "removePackageFromDisableList not find blocked package name"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v0, 0x4

    return v0

    .line 885
    :cond_1e
    const/4 v2, 0x1

    :try_start_1f
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 887
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v3

    .line 889
    .local v3, "ret":Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 890
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->enablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2f} :catch_34

    .line 896
    :cond_2f
    nop

    .line 897
    if-eqz v3, :cond_33

    const/4 v2, 0x0

    :cond_33
    return v2

    .line 892
    .end local v3    # "ret":Z
    :catch_34
    move-exception v3

    .line 893
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePackageFromDisableList : failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 895
    return v2
.end method

.method public setDexDisabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "value"    # Z

    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 289
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "DEX_POLICY"

    const-string v3, "dexDisabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 293
    .local v0, "ret":Z
    sget-boolean v1, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    if-nez v1, :cond_1b

    if-eqz p2, :cond_1b

    if-eqz v0, :cond_1b

    .line 294
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->registerDexBlocker()V

    .line 296
    :cond_1b
    sget-boolean v1, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 297
    invoke-direct {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->unRegisterDexBlocker()V

    .line 300
    :cond_2a
    return v0
.end method

.method public systemReady()V
    .registers 1

    .line 249
    return-void
.end method

.method public updatePackageControlState(Ljava/lang/String;IZ)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adminUid"    # I
    .param p3, "disable"    # Z

    .line 783
    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "updatePackageControlState - write dexControlState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->getControlState(Ljava/lang/String;I)I

    move-result v0

    .line 787
    .local v0, "controlStateOnDex":I
    if-eqz p3, :cond_11

    .line 788
    or-int/lit8 v0, v0, 0x2

    goto :goto_13

    .line 790
    :cond_11
    and-int/lit8 v0, v0, -0x3

    .line 793
    :goto_13
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 794
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "controlStateOnDex"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION"

    const-string/jumbo v5, "packageName"

    move v4, p2

    move-object v6, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    return v2
.end method
