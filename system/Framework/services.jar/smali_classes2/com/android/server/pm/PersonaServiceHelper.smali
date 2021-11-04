.class public Lcom/android/server/pm/PersonaServiceHelper;
.super Ljava/lang/Object;
.source "PersonaServiceHelper.java"


# static fields
.field private static final ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DUALDAR_TYPE_DO_ONLY:I = 0x2

.field public static final DUALDAR_TYPE_DO_PO:I = 0x1

.field public static final DUALDAR_TYPE_NONE:I = -0x1

.field public static final DUALDAR_TYPE_PO_ONLY:I = 0x0

.field private static final METADATA_DISALLOWED_MANAGED_PROFILE:Ljava/lang/String; = "com.samsung.android.multiuser.disallowed_managed_profile"

.field private static final METADATA_REQUIRED_MANAGED_PROFILE:Ljava/lang/String; = "com.samsung.android.multiuser.required_managed_profile"

.field static final STOCK_PM_FLAGS:I = 0x400

.field private static final TAG:Ljava/lang/String; = "PersonaServiceHelper"

.field private static mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field private static mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

.field private static mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field private static mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field private static mUserManager:Lcom/android/server/pm/UserManagerService;

.field static packagesForDual:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static packagesForPOP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static packagesForSF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.bluetooth/com.android.bluetooth.hfp.HeadsetService"

    const-string v2, "com.android.bluetooth/com.android.bluetooth.a2dp.A2dpService"

    const-string v3, "com.android.bluetooth/com.android.bluetooth.a2dp.A2dpSinkService"

    const-string v4, "com.android.bluetooth/com.android.bluetooth.hfpclient.HeadsetClientService"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 110
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 111
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 112
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 113
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 390
    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$1;

    invoke-direct {v0}, Lcom/android/server/pm/PersonaServiceHelper$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->packagesForPOP:Ljava/util/Map;

    .line 397
    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$2;

    invoke-direct {v0}, Lcom/android/server/pm/PersonaServiceHelper$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->packagesForSF:Ljava/util/Map;

    .line 405
    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$3;

    invoke-direct {v0}, Lcom/android/server/pm/PersonaServiceHelper$3;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->packagesForDual:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 1

    .line 74
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static addSecureFodlerImmeditateLockExceptionalCase(Ljava/util/List;)V
    .registers 3
    .param p0, "secureFodlerImmeditateLockExceptionalList"    # Ljava/util/List;

    .line 989
    if-nez p0, :cond_6a

    .line 990
    const-string v0, "PersonaServiceHelper"

    const-string/jumbo v1, "mSecureFodlerImmeditateLockExceptionalList == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 993
    const-string v0, "com.android.systemui.recents.RecentsActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    const-string v0, "com.android.systemui.recents.SeparatedRecentsActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    const-string v0, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    const-string v0, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    const-string v0, "com.android.settings.ConfirmLockPattern$InternalActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    const-string v0, "com.android.settings.ConfirmLockPassword$InternalActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    const-string v0, "com.android.settings.ChooseLockGeneric"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    const-string v0, "com.android.settings.ChooseLockPattern"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    const-string v0, "com.android.settings.ChooseLockPassword"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    const-string v0, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    const-string v0, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    const-string v0, "com.samsung.android.settings.notification.SecRedactionInterstitial"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    const-string v0, "com.samsung.android.voc.LauncherActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    const-string v0, "com.samsung.android.voc.disclaimer.DisclaimerActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    const-string v0, "com.samsung.android.app.syncmldm.ui.XUIInstallConfirmActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    const-string v0, "com.android.internal.app.ChooserActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    const-string v0, "com.samsung.knox.securefolder.foldercontainer.MultiwindowLockActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    const-string v0, "com.samsung.android.smartmirroring.CastingDialog"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    :cond_6a
    return-void
.end method

.method public static canAddMoreManagedProfiles(Landroid/content/Context;ZILjava/util/List;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "allowedToRemoveOne"    # Z
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1127
    .local p3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .line 1128
    .local v0, "userOwnedProfileCount":I
    const/4 v1, 0x0

    .line 1129
    .local v1, "enterpriseOwnedProfileCount":I
    const/4 v2, 0x0

    .line 1130
    .local v2, "legacyCLContainerCount":I
    const/4 v3, 0x0

    .line 1131
    .local v3, "bbcProfileCount":I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1132
    .local v5, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1133
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1134
    goto :goto_8

    .line 1135
    :cond_21
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isMyKnox()Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v6

    if-eqz v6, :cond_2e

    goto :goto_3b

    .line 1138
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    .line 1139
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1140
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1136
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    .line 1143
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    :cond_3d
    :goto_3d
    goto :goto_8

    .line 1145
    :cond_3e
    const/high16 v4, 0x20000

    and-int/2addr v4, p2

    const/4 v5, 0x0

    const-string v6, "PersonaServiceHelper"

    const/4 v7, 0x1

    if-nez v4, :cond_64

    const/high16 v4, 0x2000000

    and-int/2addr v4, p2

    if-eqz v4, :cond_4d

    goto :goto_64

    .line 1154
    :cond_4d
    const-string v4, "creating enterprise owned container"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    if-lt v2, v7, :cond_5a

    .line 1156
    const-string v4, "creation failed, cannot remove legacy CL/COM container"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return v5

    .line 1160
    :cond_5a
    if-lt v1, v7, :cond_71

    .line 1161
    if-nez p1, :cond_71

    .line 1162
    const-string v4, "creation failed when not allowed to remove PO"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    return v5

    .line 1147
    :cond_64
    :goto_64
    const-string v4, "creating user owned container"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    if-lt v0, v7, :cond_71

    .line 1150
    const-string v4, "creation failed when already exists user-owned container"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return v5

    .line 1167
    :cond_71
    return v7
.end method

.method public static comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1474
    const/4 v0, 0x0

    if-eqz p2, :cond_47

    if-eqz p1, :cond_47

    if-nez p3, :cond_8

    goto :goto_47

    .line 1478
    :cond_8
    const/4 v1, 0x0

    .line 1479
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1481
    .local v2, "token":J
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_17} :catch_1e
    .catchall {:try_start_d .. :try_end_17} :catchall_1c

    move-object v1, v4

    .line 1485
    :goto_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1486
    goto :goto_23

    .line 1485
    :catchall_1c
    move-exception v0

    goto :goto_43

    .line 1482
    :catch_1e
    move-exception v4

    .line 1483
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1f
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_18

    .line 1487
    :goto_23
    if-eqz v1, :cond_42

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_42

    .line 1488
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1489
    .local v4, "signs":[Landroid/content/pm/Signature;
    array-length v5, v4

    move v6, v0

    :goto_2d
    if-ge v6, v5, :cond_42

    aget-object v7, v4, v6

    .line 1490
    .local v7, "sign":Landroid/content/pm/Signature;
    if-eqz v7, :cond_3f

    .line 1491
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1492
    const/4 v0, 0x1

    return v0

    .line 1489
    .end local v7    # "sign":Landroid/content/pm/Signature;
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 1496
    .end local v4    # "signs":[Landroid/content/pm/Signature;
    :cond_42
    return v0

    .line 1485
    :goto_43
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1486
    throw v0

    .line 1475
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "token":J
    :cond_47
    :goto_47
    const-string v1, "PersonaServiceHelper"

    const-string v2, "Invalid arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return v0
.end method

.method static containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z
    .registers 6
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "installFlag"    # Z
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v0, "targetUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 419
    sget-object v1, Lcom/android/server/pm/PersonaServiceHelper;->packagesForDual:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_30

    .line 420
    :cond_11
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 421
    sget-object v1, Lcom/android/server/pm/PersonaServiceHelper;->packagesForSF:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_30

    .line 422
    :cond_1f
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 423
    sget-object v1, Lcom/android/server/pm/PersonaServiceHelper;->packagesForPOP:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 425
    :cond_30
    :goto_30
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_38

    .line 426
    return v2

    .line 428
    :cond_38
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_45

    const/4 v2, 0x1

    :cond_45
    return v2
.end method

.method static createKnoxContainer(ILcom/android/server/pm/UserManagerService;Landroid/util/SparseArray;)V
    .registers 6
    .param p0, "userId"    # I
    .param p1, "ums"    # Lcom/android/server/pm/UserManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 799
    .local p2, "baseUserRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 800
    .local v0, "emptyBundle":Landroid/os/Bundle;
    invoke-virtual {p2, p0, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 804
    const-string/jumbo v1, "no_outgoing_beam"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, p0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 805
    const-string/jumbo v1, "no_add_user"

    invoke-virtual {p1, v1, v2, p0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 806
    return-void
.end method

.method static deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;IILandroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Lcom/android/server/pm/Settings;ZZ)V
    .registers 26
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "settings"    # Lcom/android/server/pm/Settings;
    .param p8, "DEBUG_INSTALL"    # Z
    .param p9, "DEBUG_REMOVE"    # Z

    .line 712
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p4

    const-string/jumbo v0, "}\n"

    const-string/jumbo v1, "null"

    const-string v2, "START PACKAGE DELETE: observer{"

    const-string v3, "PersonaServiceHelper"

    if-eqz p8, :cond_48

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_27

    .line 714
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 713
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_28

    .line 714
    :cond_27
    nop

    :goto_28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\npkg{"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\nuser{"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 718
    :cond_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_5b

    .line 719
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 718
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5c

    .line 719
    :cond_5b
    nop

    :goto_5c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\npkg{<packageName>}\nuser{"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_72
    const/4 v0, 0x0

    const-string v1, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v13, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 729
    .local v14, "uid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deletePackageAsUser : uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, v12, :cond_b4

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deletePackage for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v13, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_b4
    const-string/jumbo v0, "no_uninstall_apps"

    move-object/from16 v15, p5

    invoke-virtual {v15, v12, v0}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 737
    if-eqz v11, :cond_c8

    .line 738
    const/4 v0, -0x3

    :try_start_c2
    invoke-interface {v11, v10, v0}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_c8

    .line 741
    :catch_c6
    move-exception v0

    goto :goto_c9

    .line 742
    :cond_c8
    :goto_c8
    nop

    .line 743
    :goto_c9
    return-void

    .line 746
    :cond_ca
    if-eqz p9, :cond_e8

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deletePackageAsUser: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_e8
    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$4;

    move-object v1, v0

    move-object/from16 v2, p6

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/PersonaServiceHelper$4;-><init>(Landroid/os/Handler;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Landroid/content/pm/IPackageDeleteObserver;Landroid/content/Context;)V

    move-object/from16 v1, p6

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 788
    return-void
.end method

.method static deletePackageForUsersAndFlags(Lcom/android/server/pm/PackageInstallerService;IILandroid/content/pm/IPackageDeleteObserver2;Landroid/content/pm/VersionedPackage;ILcom/android/server/pm/Settings;Lcom/android/server/pm/PackageManagerService;)Z
    .registers 23
    .param p0, "installerService"    # Lcom/android/server/pm/PackageInstallerService;
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p4, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p5, "modified_flags"    # I
    .param p6, "settings"    # Lcom/android/server/pm/Settings;
    .param p7, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 655
    move/from16 v1, p1

    const/4 v0, -0x3

    const-string v2, "PersonaServiceHelper"

    const/4 v3, 0x1

    if-eqz p0, :cond_36

    .line 656
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/PackageInstallerService;->isFromApprovedUnInstaller(II)Z

    move-result v4

    if-nez v4, :cond_33

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deletePackageAsUser deleting for Persona is not allowed for this caller:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :try_start_22
    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_2f

    const/4 v4, 0x0

    move-object/from16 v11, p3

    :try_start_29
    invoke-interface {v11, v2, v0, v4}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 664
    goto :goto_32

    .line 663
    :catch_2d
    move-exception v0

    goto :goto_32

    :catch_2f
    move-exception v0

    move-object/from16 v11, p3

    .line 665
    :goto_32
    return v3

    .line 656
    :cond_33
    move-object/from16 v11, p3

    goto :goto_38

    .line 655
    :cond_36
    move-object/from16 v11, p3

    .line 671
    :goto_38
    and-int/lit8 v4, p5, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_3f

    move v4, v3

    goto :goto_40

    :cond_3f
    move v4, v5

    .line 672
    .local v4, "deleteAllUsers":Z
    :goto_40
    if-eqz v4, :cond_60

    .line 673
    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v12, p7

    invoke-virtual {v12, v6, v5, v5}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 674
    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v7, 0x3e8

    if-ne v1, v7, :cond_5e

    and-int/lit8 v7, p5, 0x4

    if-eqz v7, :cond_5e

    if-eqz v6, :cond_5e

    .line 675
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 676
    const/4 v4, 0x1

    goto :goto_62

    .line 678
    :cond_5e
    const/4 v4, 0x0

    goto :goto_62

    .line 672
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_60
    move-object/from16 v12, p7

    .line 682
    :goto_62
    if-nez v4, :cond_71

    .line 683
    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.google.android.webview"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 684
    const/4 v4, 0x1

    .line 687
    :cond_71
    if-nez v4, :cond_df

    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_df

    .line 688
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    if-eqz v6, :cond_da

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_da

    .line 689
    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v13, p6

    invoke-static {v6, v13}, Lcom/android/server/pm/PersonaServiceHelper;->isPackageEnabledInAnyPersona(Ljava/lang/String;Lcom/android/server/pm/Settings;)Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 690
    const-string v5, "deletePackageAsUser deleting for ALL_USERS is not allowed, removing the flag"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    and-int/lit8 v0, p5, -0x3

    .line 694
    .end local p5    # "modified_flags":I
    .local v0, "modified_flags":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deletePackageAsUser- pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", userId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p2

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", flag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move/from16 v7, p2

    move v8, v0

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/PersonaServiceHelper;->deletePackageOnlyForUsers(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IILcom/android/server/pm/Settings;Lcom/android/server/pm/PackageManagerService;)V

    .line 699
    return v3

    .line 689
    .end local v0    # "modified_flags":I
    .restart local p5    # "modified_flags":I
    :cond_d7
    move/from16 v14, p2

    goto :goto_e3

    .line 688
    :cond_da
    move/from16 v14, p2

    move-object/from16 v13, p6

    goto :goto_e3

    .line 687
    :cond_df
    move/from16 v14, p2

    move-object/from16 v13, p6

    .line 702
    :goto_e3
    move/from16 v0, p5

    .line 703
    .local v0, "flag":I
    return v5
.end method

.method private static deletePackageOnlyForUsers(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IILcom/android/server/pm/Settings;Lcom/android/server/pm/PackageManagerService;)V
    .registers 14
    .param p0, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p1, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p2, "userId"    # I
    .param p3, "original_flags"    # I
    .param p4, "settings"    # Lcom/android/server/pm/Settings;
    .param p5, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 624
    const-string v0, "PersonaServiceHelper"

    const-string v1, "deletePackageOnlyForUsers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v1, 0x0

    .line 628
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_11} :catch_13

    move-object v1, v2

    .line 631
    goto :goto_1a

    .line 629
    :catch_13
    move-exception v2

    .line 630
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "user manager exception "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_1a
    if-eqz v1, :cond_a8

    .line 634
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 635
    .local v3, "user":Landroid/content/pm/UserInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " current user is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v4

    if-nez v4, :cond_a6

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_a6

    .line 637
    iget-object v4, p4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 638
    .local v4, "lPackageSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_a6

    .line 639
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    .line 640
    .local v5, "isInstalled":Z
    if-eqz v5, :cond_84

    .line 641
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleting given package for user :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p5, p0, p1, v6, p3}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    goto :goto_a6

    .line 644
    :cond_84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not installed in user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ". Do not try to uninstall this package."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "lPackageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "isInstalled":Z
    :cond_a6
    :goto_a6
    goto/16 :goto_20

    .line 650
    :cond_a8
    return-void
.end method

.method private static getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 1

    .line 933
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_11

    .line 934
    nop

    .line 935
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 934
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 937
    :cond_11
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object v0
.end method

.method private static getDualDARPolicyService()Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    .registers 1

    .line 925
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-nez v0, :cond_11

    .line 926
    nop

    .line 927
    const-string v0, "DualDARPolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 926
    invoke-static {v0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 929
    :cond_11
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    return-object v0
.end method

.method public static getDualDARType(I)I
    .registers 4
    .param p0, "userId"    # I

    .line 1319
    const/4 v0, -0x1

    .line 1320
    .local v0, "dualDarContainerType":I
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1321
    return v0

    .line 1323
    :cond_8
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1324
    if-nez p0, :cond_13

    .line 1325
    const/4 v0, 0x2

    goto :goto_16

    .line 1327
    :cond_13
    const/4 v0, 0x1

    goto :goto_16

    .line 1330
    :cond_15
    const/4 v0, 0x0

    .line 1332
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DualDAR Container Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaServiceHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return v0
.end method

.method public static getDualDARUser()I
    .registers 2

    .line 1337
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 1346
    .local v0, "userManager":Lcom/android/server/pm/UserManagerService;
    const/4 v1, -0x1

    return v1
.end method

.method private static getEdmService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .registers 1

    .line 917
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 918
    nop

    .line 919
    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 918
    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 921
    :cond_11
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-object v0
.end method

.method static getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/PackageManagerService;)Landroid/util/Pair;
    .registers 26
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 264
    move-object/from16 v10, p0

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isForKnoxNFC()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getLastChosenActivity NFC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "PersonaServiceHelper"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v0, "com.samsung.sec.knox.EXTRA_KNOX_ARRAY"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 267
    .local v13, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v13, :cond_c2

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v15, v0

    .end local v0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_2c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v16, 0x1

    if-eqz v0, :cond_b2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Integer;

    .line 270
    .local v9, "user":Ljava/lang/Integer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastChosenActivity NFC for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    nop

    .line 273
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 272
    move-object/from16 v8, p1

    move/from16 v7, p2

    move-object/from16 v6, p3

    invoke-virtual {v6, v10, v8, v7, v0}, Lcom/android/server/pm/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v17

    .line 274
    .local v17, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v17, :cond_65

    .line 275
    goto :goto_2c

    .line 277
    :cond_65
    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 278
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 277
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move-object v11, v9

    .end local v9    # "user":Ljava/lang/Integer;
    .local v11, "user":Ljava/lang/Integer;
    move/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;IZZZI)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pms.getLastChosenActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-eqz v15, :cond_b0

    .line 281
    new-instance v0, Landroid/util/Pair;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 283
    .end local v11    # "user":Ljava/lang/Integer;
    .end local v17    # "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_b0
    goto/16 :goto_2c

    .line 284
    :cond_b2
    const-string v0, "getLastChosenActivity NFC return null as no user has one"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Landroid/util/Pair;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 287
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_c2
    const-string v0, "getLastChosenActivity NFC null integer array"

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v13    # "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_c7
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getPersonaManager()Lcom/android/server/pm/PersonaManagerService;
    .registers 1

    .line 117
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_f

    .line 118
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 121
    :cond_f
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method public static getPlayForWorkProxy(Landroid/content/Context;I)Landroid/content/ComponentName;
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 1198
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    .line 1199
    .local v3, "debug":Z
    const-string v4, "PersonaServiceHelper"

    if-eqz v3, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PfW getPlayForWorkProxy() "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_1d
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    move-object v5, v0

    .line 1201
    .local v5, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string/jumbo v0, "packageName"

    const-string/jumbo v6, "signature"

    const-string v7, "flags"

    filled-new-array {v0, v6, v7}, [Ljava/lang/String;

    move-result-object v8

    .line 1202
    .local v8, "columns":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1203
    .local v9, "proxyComponent":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 1205
    .local v10, "status":Z
    :try_start_31
    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v12

    .line 1206
    .local v12, "ownerUid":I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_1a8

    if-ne v13, v2, :cond_3d

    const/4 v13, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v13, 0x0

    .line 1208
    .local v13, "isByod":Z
    :goto_3e
    const-string v15, ""

    if-eqz v13, :cond_57

    .line 1209
    :try_start_42
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_51} :catch_52

    .local v11, "combinedUid":Ljava/lang/String;
    goto :goto_69

    .line 1272
    .end local v11    # "combinedUid":Ljava/lang/String;
    .end local v12    # "ownerUid":I
    .end local v13    # "isByod":Z
    :catch_52
    move-exception v0

    move-object/from16 v20, v5

    goto/16 :goto_1ab

    .line 1211
    .restart local v12    # "ownerUid":I
    .restart local v13    # "isByod":Z
    :cond_57
    :try_start_57
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1214
    .restart local v11    # "combinedUid":Ljava/lang/String;
    :goto_69
    const/4 v15, 0x0

    .line 1215
    .local v15, "proxyPackageName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1216
    .local v16, "signature":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1217
    .local v17, "flags":I
    const-string v14, "PlayForWorkProxy"

    .line 1218
    invoke-virtual {v5, v14, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 1219
    .local v14, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v14, :cond_b9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_b9

    .line 1220
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_80
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/ContentValues;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_8c} :catch_1a8

    move-object/from16 v21, v20

    .line 1221
    .local v21, "values":Landroid/content/ContentValues;
    move-object/from16 v20, v5

    move-object/from16 v5, v21

    .end local v21    # "values":Landroid/content/ContentValues;
    .local v5, "values":Landroid/content/ContentValues;
    .local v20, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_start_92
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v15, v21

    .line 1222
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v21

    .line 1223
    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v17, v21

    .line 1224
    if-eqz v15, :cond_af

    .line 1225
    move-object/from16 v5, v16

    move/from16 v6, v17

    goto :goto_bf

    .line 1227
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_af
    move-object/from16 v5, v20

    goto :goto_80

    .line 1220
    .end local v20    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .local v5, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_b2
    move-object/from16 v20, v5

    .end local v5    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v20    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v5, v16

    move/from16 v6, v17

    goto :goto_bf

    .line 1219
    .end local v20    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v5    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_b9
    move-object/from16 v20, v5

    .line 1231
    .end local v5    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v20    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v5, v16

    move/from16 v6, v17

    .end local v16    # "signature":Ljava/lang/String;
    .end local v17    # "flags":I
    .local v5, "signature":Ljava/lang/String;
    .local v6, "flags":I
    :goto_bf
    if-eqz v3, :cond_d7

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PfW getPlayForWorkProxy() flags & FLAG_ALLOW_PROXY_FOR_PFW "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v7, v6, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_d7
    and-int/lit8 v0, v6, 0x1

    const/4 v7, 0x1

    if-eq v0, v7, :cond_f9

    .line 1234
    if-eqz v3, :cond_f7

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PfW getPlayForWorkProxy() flag "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " does not allow PfW"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_f7
    const/4 v4, 0x0

    return-object v4

    .line 1239
    :cond_f9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    move/from16 v16, v6

    .end local v6    # "flags":I
    .local v16, "flags":I
    const-string v6, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v6, 0x8080

    invoke-virtual {v0, v7, v6, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 1243
    .local v6, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_126

    .line 1244
    if-eqz v3, :cond_126

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PfW getPlayForWorkProxy() Admin *not found* in "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_126
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_12b} :catch_1a6

    move-object/from16 v17, v9

    move v9, v0

    .end local v0    # "i":I
    .local v7, "count":I
    .local v9, "i":I
    .local v17, "proxyComponent":Landroid/content/ComponentName;
    :goto_12e
    if-ge v9, v7, :cond_1a0

    .line 1249
    :try_start_130
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v18, v0

    .line 1250
    .local v18, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v19, v6

    move-object/from16 v6, v18

    .end local v18    # "ri":Landroid/content/pm/ResolveInfo;
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    .local v19, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    .line 1251
    .local v18, "ai":Landroid/content/pm/ActivityInfo;
    move/from16 v21, v7

    move-object/from16 v7, v18

    .end local v18    # "ai":Landroid/content/pm/ActivityInfo;
    .local v7, "ai":Landroid/content/pm/ActivityInfo;
    .local v21, "count":I
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1252
    .local v18, "packageName":Ljava/lang/String;
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    .line 1254
    .local v22, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v23, v7

    move-object/from16 v7, v18

    .end local v18    # "packageName":Ljava/lang/String;
    .local v7, "packageName":Ljava/lang/String;
    .local v23, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v7, :cond_153

    .line 1255
    goto :goto_193

    .line 1258
    :cond_153
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_157} :catch_19c

    if-eqz v0, :cond_193

    .line 1260
    :try_start_159
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v1, v6}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 1261
    .local v0, "dpi":Landroid/app/admin/DeviceAdminInfo;
    new-instance v1, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v1, v15, v5}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/server/pm/PersonaServiceHelper;->validatePfWProxySig(Lcom/samsung/android/knox/AppIdentity;I)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 1262
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v17, v1

    .line 1264
    :cond_16f
    if-eqz v3, :cond_188

    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    .end local v0    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .local v18, "dpi":Landroid/app/admin/DeviceAdminInfo;
    const-string v0, "PfW getPlayForWorkProxy() found activateAdmin for package  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_187} :catch_18b

    goto :goto_18a

    .line 1264
    .end local v18    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .restart local v0    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    :cond_188
    move-object/from16 v18, v0

    .line 1266
    .end local v0    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .restart local v18    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    :goto_18a
    goto :goto_1a4

    .line 1267
    .end local v18    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    :catch_18b
    move-exception v0

    .line 1268
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v3, :cond_193

    :try_start_18e
    const-string v1, "PfW getPlayForWorkProxy() Exception"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_193} :catch_19c

    .line 1248
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v22    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_193
    :goto_193
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, v19

    move/from16 v7, v21

    goto :goto_12e

    .line 1272
    .end local v5    # "signature":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "combinedUid":Ljava/lang/String;
    .end local v12    # "ownerUid":I
    .end local v13    # "isByod":Z
    .end local v14    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v15    # "proxyPackageName":Ljava/lang/String;
    .end local v16    # "flags":I
    .end local v19    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "count":I
    :catch_19c
    move-exception v0

    move-object/from16 v9, v17

    goto :goto_1ab

    .line 1248
    .restart local v5    # "signature":Ljava/lang/String;
    .local v6, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v7, "count":I
    .restart local v9    # "i":I
    .restart local v11    # "combinedUid":Ljava/lang/String;
    .restart local v12    # "ownerUid":I
    .restart local v13    # "isByod":Z
    .restart local v14    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v15    # "proxyPackageName":Ljava/lang/String;
    .restart local v16    # "flags":I
    :cond_1a0
    move-object/from16 v19, v6

    move/from16 v21, v7

    .line 1275
    .end local v5    # "signature":Ljava/lang/String;
    .end local v6    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "count":I
    .end local v9    # "i":I
    .end local v11    # "combinedUid":Ljava/lang/String;
    .end local v12    # "ownerUid":I
    .end local v13    # "isByod":Z
    .end local v14    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v15    # "proxyPackageName":Ljava/lang/String;
    .end local v16    # "flags":I
    :goto_1a4
    nop

    .line 1276
    return-object v17

    .line 1272
    .end local v17    # "proxyComponent":Landroid/content/ComponentName;
    .local v9, "proxyComponent":Landroid/content/ComponentName;
    :catch_1a6
    move-exception v0

    goto :goto_1ab

    .end local v20    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .local v5, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :catch_1a8
    move-exception v0

    move-object/from16 v20, v5

    .line 1273
    .end local v5    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v20    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :goto_1ab
    if-eqz v3, :cond_1c1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PfW getPlayForWorkProxy exception "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_1c1
    const/4 v1, 0x0

    return-object v1
.end method

.method static getPreferredInfoForUser(Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ResolveInfo;
    .registers 22
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 180
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual {v14, v10, v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v15

    .line 182
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v15, :cond_3a

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_3a

    .line 185
    :cond_1b
    const/4 v0, 0x0

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 186
    .local v9, "r0":Landroid/content/pm/ResolveInfo;
    iget v5, v9, Landroid/content/pm/ResolveInfo;->priority:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v15

    move-object/from16 v16, v9

    .end local v9    # "r0":Landroid/content/pm/ResolveInfo;
    .local v16, "r0":Landroid/content/pm/ResolveInfo;
    move/from16 v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;IZZZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    .line 183
    .end local v16    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 1

    .line 125
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_f

    .line 126
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 128
    :cond_f
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method public static hasPremiumContainer(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 1515
    const/4 v0, 0x0

    .line 1516
    .local v0, "hasPremium":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1518
    .local v1, "id":J
    :try_start_5
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    .line 1519
    .local v3, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSepLiteDevice(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1520
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1521
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1522
    .local v6, "ui":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_3b

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v7
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_43
    .catchall {:try_start_5 .. :try_end_38} :catchall_41

    if-nez v7, :cond_3b

    .line 1523
    const/4 v0, 0x1

    .line 1525
    .end local v6    # "ui":Landroid/content/pm/UserInfo;
    :cond_3b
    goto :goto_18

    .line 1530
    .end local v3    # "userManager":Lcom/android/server/pm/UserManagerService;
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3c
    nop

    :goto_3d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1531
    goto :goto_61

    .line 1530
    :catchall_41
    move-exception v3

    goto :goto_62

    .line 1527
    :catch_43
    move-exception v3

    .line 1528
    .local v3, "e":Ljava/lang/Exception;
    :try_start_44
    const-string v4, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasPremiumContainer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_41

    .line 1530
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_3d

    .line 1532
    :goto_61
    return v0

    .line 1530
    :goto_62
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1531
    throw v3
.end method

.method static installStageForKnox(Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageManagerService;)Z
    .registers 28
    .param p0, "stagedDir"    # Ljava/io/File;
    .param p1, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p2, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p3, "installerPackageName"    # Ljava/lang/String;
    .param p4, "installerUid"    # I
    .param p5, "user"    # Landroid/os/UserHandle;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "installerService"    # Lcom/android/server/pm/PackageInstallerService;
    .param p8, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 509
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installStageForKnox(user:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " installerUid:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "PersonaServiceHelper"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string/jumbo v7, "remote exception"

    const/16 v8, -0x6f

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_62

    iget v0, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_62

    .line 511
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 512
    .local v12, "targetUserId":I
    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    if-eqz v0, :cond_62

    if-eqz v12, :cond_62

    .line 513
    const-string/jumbo v0, "installStageForKnox INSTALL_FROM_ADB. Block installation."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-eqz v1, :cond_61

    .line 516
    :try_start_57
    invoke-interface {v1, v9, v8, v10, v10}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 519
    goto :goto_61

    .line 517
    :catch_5b
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 518
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_61
    :goto_61
    return v11

    .line 524
    .end local v12    # "targetUserId":I
    :cond_62
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 525
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_7d

    :cond_77
    move-object/from16 v15, p0

    move-object/from16 v13, p6

    goto/16 :goto_165

    :cond_7d
    :goto_7d
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_161

    .line 527
    iget v12, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 528
    .local v12, "origInstallerUid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Installer check name is "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " original uid "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    nop

    .line 537
    const-string v0, "com.sec.knox.container.permission.KNOX_SYSTEM_APP_UPGRADE_PERMISSION"

    move-object/from16 v13, p6

    invoke-virtual {v13, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v14

    .line 539
    .local v14, "permission":I
    if-nez v14, :cond_ac

    const/4 v0, 0x1

    goto :goto_ad

    :cond_ac
    move v0, v11

    .line 540
    .local v0, "isAllowedToInstall":Z
    :goto_ad
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check if installer "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isAllowedToInstall "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz v0, :cond_12e

    .line 547
    const/4 v8, 0x0

    .line 548
    .end local v0    # "isAllowedToInstall":Z
    .local v8, "isAllowedToInstall":Z
    const/4 v10, 0x0

    .line 550
    .local v10, "pkgLite":Landroid/content/pm/PackageParser$PackageLite;
    nop

    .line 551
    move-object/from16 v15, p0

    :try_start_d0
    invoke-static {v15, v11}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0
    :try_end_d4
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_d0 .. :try_end_d4} :catch_d6

    move-object v10, v0

    .line 554
    goto :goto_e0

    .line 552
    :catch_d6
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 553
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const-string v11, "Check Installer, PackageParserException "

    invoke-static {v6, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :goto_e0
    if-eqz v10, :cond_12b

    .line 556
    iget-object v0, v10, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 557
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_100

    .line 558
    nop

    .line 559
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    move-object/from16 v2, p8

    move/from16 v17, v8

    const/4 v8, 0x0

    .end local v8    # "isAllowedToInstall":Z
    .local v17, "isAllowedToInstall":Z
    invoke-virtual {v2, v0, v8, v11}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 560
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v11, :cond_104

    iget v8, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v18, 0x800000

    and-int v8, v8, v18

    if-eqz v8, :cond_104

    .line 562
    const/4 v8, 0x1

    .end local v17    # "isAllowedToInstall":Z
    .restart local v8    # "isAllowedToInstall":Z
    goto :goto_106

    .line 557
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_100
    move-object/from16 v2, p8

    move/from16 v17, v8

    .line 565
    .end local v8    # "isAllowedToInstall":Z
    .restart local v17    # "isAllowedToInstall":Z
    :cond_104
    move/from16 v8, v17

    .end local v17    # "isAllowedToInstall":Z
    .restart local v8    # "isAllowedToInstall":Z
    :goto_106
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installer "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Is allowed to install pkg "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ? "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_131

    .line 555
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_12b
    move/from16 v17, v8

    .end local v8    # "isAllowedToInstall":Z
    .restart local v17    # "isAllowedToInstall":Z
    goto :goto_131

    .line 546
    .end local v10    # "pkgLite":Landroid/content/pm/PackageParser$PackageLite;
    .end local v17    # "isAllowedToInstall":Z
    .local v0, "isAllowedToInstall":Z
    :cond_12e
    move-object/from16 v15, p0

    move v8, v0

    .line 570
    .end local v0    # "isAllowedToInstall":Z
    .restart local v8    # "isAllowedToInstall":Z
    :goto_131
    if-nez v8, :cond_165

    .line 571
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v5, v4, v0}, Lcom/android/server/pm/PackageInstallerService;->isFromApprovedInstaller(II)Z

    move-result v0

    if-eqz v0, :cond_14b

    const/4 v0, -0x1

    if-eq v12, v0, :cond_165

    .line 574
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v5, v12, v0, v2}, Lcom/android/server/pm/PackageInstallerService;->isFromApprovedInstaller(IIZ)Z

    move-result v0

    if-nez v0, :cond_165

    .line 579
    :cond_14b
    const-string v0, "Block installation either because the calling or the original installer is not approved"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz v1, :cond_15f

    .line 583
    const/16 v2, -0x6f

    const/4 v10, 0x0

    :try_start_155
    invoke-interface {v1, v9, v2, v10, v10}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_158
    .catch Landroid/os/RemoteException; {:try_start_155 .. :try_end_158} :catch_159

    .line 586
    goto :goto_15f

    .line 584
    :catch_159
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 585
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_15f
    :goto_15f
    const/4 v2, 0x1

    return v2

    .line 525
    .end local v8    # "isAllowedToInstall":Z
    .end local v12    # "origInstallerUid":I
    .end local v14    # "permission":I
    :cond_161
    move-object/from16 v15, p0

    move-object/from16 v13, p6

    .line 591
    :cond_165
    :goto_165
    const/4 v2, 0x0

    return v2
.end method

.method public static isCallerApprovedToInstall(Landroid/content/Context;IIZ)Z
    .registers 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "hasOrig"    # Z

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCallerApprovedToInstall(uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userHandle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v0, 0x1

    if-nez p3, :cond_41

    .line 1022
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v2, v3, :cond_41

    .line 1023
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_41

    .line 1024
    const-string v2, "caller is system_service process...."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return v0

    .line 1034
    :cond_41
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1035
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1036
    const-string v2, "Secure folder or BBD has no Knox app install enforcement"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    return v0

    .line 1040
    :cond_53
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-nez v2, :cond_79

    .line 1041
    const-string v2, "None premium contaienr. No Knox app install enforcement"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return v0

    .line 1044
    :cond_5f
    if-nez p2, :cond_79

    .line 1045
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 1046
    const-string v2, "DO is not enabled. no Knox app install enforcement"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return v0

    .line 1050
    :cond_6d
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-nez v2, :cond_79

    .line 1051
    const-string v2, "None premium DO. No Knox app install enforcement"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return v0

    .line 1056
    :cond_79
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-nez v0, :cond_86

    .line 1057
    const-string v0, "failed to find application policy service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v0, 0x0

    return v0

    .line 1061
    :cond_86
    const/4 v0, 0x0

    .line 1063
    .local v0, "result":Z
    :try_start_87
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isFromApprovedInstaller(II)Z

    move-result v1
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8f} :catch_91

    move v0, v1

    .line 1066
    goto :goto_95

    .line 1064
    :catch_91
    move-exception v1

    .line 1065
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1067
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_95
    return v0
.end method

.method public static isCallerApprovedToUninstall(Landroid/content/Context;II)Z
    .registers 15
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCallerApprovedToUnnstall: uid, userId, appid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_3b

    invoke-static {p0, p1, p2, v2}, Lcom/android/server/pm/PersonaServiceHelper;->isCallerApprovedToInstall(Landroid/content/Context;IIZ)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3b

    :cond_39
    move v0, v2

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    .line 1078
    .local v0, "isApproved":Z
    :goto_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCallerApprovedToUnnstall: isApproved : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1080
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1081
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_82

    if-nez v0, :cond_82

    .line 1082
    array-length v5, v4

    :goto_62
    if-ge v2, v5, :cond_82

    aget-object v6, v4, v2

    .line 1083
    .local v6, "packageInstaller":Ljava/lang/String;
    const-string v7, "com.android.packageinstaller"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7e

    .line 1084
    const-string v7, "com.google.android.packageinstaller"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7e

    .line 1085
    const-string v7, "com.samsung.android.packageinstaller"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 1086
    :cond_7e
    const/4 v0, 0x1

    .line 1082
    .end local v6    # "packageInstaller":Ljava/lang/String;
    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 1091
    :cond_82
    if-nez v0, :cond_c8

    .line 1092
    :try_start_84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    .local v2, "launcherList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v5, "homeIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const v6, 0x10040

    invoke-virtual {v3, v5, v6, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 1097
    .local v6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_c8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c8

    .line 1098
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1099
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1100
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1101
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v11, v10, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_ba} :catch_bf

    if-ne v11, p1, :cond_be

    .line 1102
    const/4 v0, 0x1

    .line 1103
    goto :goto_c8

    .line 1105
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_be
    goto :goto_a8

    .line 1108
    .end local v2    # "launcherList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "homeIntent":Landroid/content/Intent;
    .end local v6    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_bf
    move-exception v2

    .line 1109
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 1110
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_c8
    :goto_c8
    nop

    .line 1111
    :goto_c9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCallerApprovedToUnnstall: isApproved before exit: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return v0
.end method

.method public static isDERestrictionEnforced(I)Z
    .registers 7
    .param p0, "userId"    # I

    .line 1350
    const/4 v0, 0x0

    .line 1352
    .local v0, "isDERestriction":Z
    :try_start_1
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARPolicyService()Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v1

    .line 1353
    .local v1, "dualDARPolicy":Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 1354
    .local v2, "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    if-eqz v1, :cond_1f

    .line 1355
    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 1356
    .local v3, "dualDARConfig":Landroid/os/Bundle;
    if-nez v3, :cond_17

    .line 1357
    return v0

    .line 1359
    :cond_17
    const-string v4, "dualdar-config-de-restriction"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_20

    move v0, v4

    .line 1364
    .end local v1    # "dualDARPolicy":Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    .end local v2    # "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v3    # "dualDARConfig":Landroid/os/Bundle;
    :cond_1f
    goto :goto_3d

    .line 1361
    :catch_20
    move-exception v1

    .line 1362
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDERestrictionEnforced exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PersonaServiceHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v0, 0x0

    .line 1365
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3d
    return v0
.end method

.method static isDisallowedAppForKnox(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "userId"    # I

    .line 471
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isDisallowedAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z
    .registers 7
    .param p0, "metaData"    # Landroid/os/Bundle;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 491
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 493
    :cond_4
    :try_start_4
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "com.samsung.android.multiuser.disallowed_managed_profile"

    invoke-static {p0, v1}, Lcom/android/server/pm/PackageManagerSamsungUtils;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 494
    const-string v1, "PersonaServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDisallowedAppForKnox - METADATA_DISALLOWED_MANAGED_PROFILE is defined. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_31} :catch_34

    .line 495
    const/4 v0, 0x1

    return v0

    .line 497
    :cond_33
    return v0

    .line 499
    :catch_34
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 501
    return v0
.end method

.method static isDisallowedAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 4
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "userId"    # I

    .line 467
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerSamsungUtils;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isDisallowedAppForKnox(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 475
    const/4 v0, 0x0

    .line 477
    .local v0, "metaData":Landroid/os/Bundle;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 478
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    .line 479
    .local v2, "pms":Lcom/android/server/pm/PackageManagerService;
    const v3, 0xc0080

    invoke-virtual {v2, p0, v3, p1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 480
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_1b

    return v1

    .line 481
    :cond_1b
    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_24

    move-object v0, v1

    .line 486
    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1e
    nop

    .line 487
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 483
    :catch_24
    move-exception v2

    .line 484
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 485
    return v1
.end method

.method public static isDualDAREnabled()Z
    .registers 3

    .line 1300
    const/4 v0, 0x0

    .line 1311
    .local v0, "isDualDarEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDualDAREnabled result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaServiceHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return v0
.end method

.method public static isExternalStorageBlacklisted(ILjava/lang/String;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 954
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 956
    :try_start_6
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    .line 957
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationExternalStorageBlacklisted(ILjava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_13

    if-eqz v0, :cond_12

    .line 958
    const/4 v0, 0x1

    return v0

    .line 961
    :cond_12
    goto :goto_17

    .line 959
    :catch_13
    move-exception v0

    .line 960
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 963
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public static isExternalStorageWhitelisted(ILjava/lang/String;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 941
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 943
    :try_start_6
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    .line 944
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationExternalStorageWhitelisted(ILjava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_13

    if-eqz v0, :cond_12

    .line 945
    const/4 v0, 0x1

    return v0

    .line 948
    :cond_12
    goto :goto_17

    .line 946
    :catch_13
    move-exception v0

    .line 947
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 950
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method static isForKnoxContainerAndNFC(Landroid/content/pm/ResolveInfo;)Z
    .registers 3
    .param p0, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 791
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isForKnoxNFC()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " called from NFC, just return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v0, 0x1

    return v0

    .line 795
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method static isForKnoxNFC()Z
    .registers 3

    .line 160
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    .line 162
    .local v0, "isKnox24Supported":Z
    if-eqz v0, :cond_12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x403

    if-ne v1, v2, :cond_12

    .line 163
    const/4 v1, 0x1

    return v1

    .line 166
    .end local v0    # "isKnox24Supported":Z
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static isInDisplayFingerSensor(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1500
    const/4 v0, 0x0

    .line 1502
    .local v0, "isInDisplaySensor":Z
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    move-result-object v1

    .line 1503
    .local v1, "manager":Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
    if-eqz v1, :cond_16

    .line 1504
    invoke-virtual {v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->getCharacteristics()Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->getSensorPosition()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->getCharacteristics()Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_12} :catch_17

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 1505
    const/4 v0, 0x1

    .line 1510
    .end local v1    # "manager":Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
    :cond_16
    goto :goto_32

    .line 1508
    :catch_17
    move-exception v1

    .line 1509
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PersonaServiceHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_32
    return v0
.end method

.method static isLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;Lcom/android/server/pm/PackageManagerService;)Z
    .registers 18
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "match"    # I
    .param p5, "activity"    # Landroid/content/ComponentName;
    .param p6, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 248
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isForKnoxNFC()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 249
    const-string v0, "com.samsung.sec.knox.EXTRA_KNOX_ARRAY"

    move-object v9, p0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 250
    .local v0, "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2f

    .line 251
    const-string v10, "PersonaServiceHelper"

    const-string v1, "Set last chosen activity with user list."

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object v7, v0

    move-object/from16 v8, p6

    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/PersonaServiceHelper;->setLastChosenActivityForKnox(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 254
    const-string/jumbo v1, "set last chosen activity has been handled by Knox logic"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v1, 0x1

    return v1

    .line 248
    .end local v0    # "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2e
    move-object v9, p0

    .line 259
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method public static isMdfppContainer(I)Z
    .registers 5
    .param p0, "userId"    # I

    .line 903
    const/4 v0, 0x0

    .line 905
    .local v0, "engineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_start_1
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpUtil;->getInstance()Lcom/samsung/android/knox/sdp/SdpUtil;

    move-result-object v1

    .line 906
    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v2

    .line 905
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    move-object v0, v1

    .line 907
    if-nez v0, :cond_27

    .line 908
    const-string v1, "PersonaServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMdfppContainer: SDP is not supported for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_1 .. :try_end_27} :catch_28

    .line 912
    :cond_27
    goto :goto_2c

    .line 910
    :catch_28
    move-exception v1

    .line 911
    .local v1, "e":Lcom/samsung/android/knox/sdp/core/SdpException;
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpException;->printStackTrace()V

    .line 913
    .end local v1    # "e":Lcom/samsung/android/knox/sdp/core/SdpException;
    :goto_2c
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    return v1
.end method

.method public static isMyKnoxAdmin(Ljava/lang/String;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1178
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms.agent.global.myknox"

    .line 1179
    .local v0, "MY_KNOX_MANAGER_PACKAGE_NAME_GLOBAL":Ljava/lang/String;
    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.agent.myknox"

    .line 1180
    .local v1, "MY_KNOX_MANAGER_PACKAGE_NAME_CHINA":Ljava/lang/String;
    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms.agent.global.myknox"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1181
    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms.agent.myknox"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_17

    .line 1185
    :cond_15
    const/4 v2, 0x0

    return v2

    .line 1182
    :cond_17
    :goto_17
    const/4 v2, 0x1

    return v2
.end method

.method private static isPackageEnabledInAnyPersona(Ljava/lang/String;Lcom/android/server/pm/Settings;)Z
    .registers 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "ret":Z
    iget-object v1, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 598
    .local v1, "lPackageSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 599
    return v2

    .line 601
    :cond_d
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 602
    .local v2, "lListOfPersonas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " listOfPersonas :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonaServiceHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 604
    .local v5, "pInfo":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v6

    if-nez v6, :cond_4b

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 605
    :cond_4b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "verifying pkg settings for persona :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    .line 607
    .local v6, "isInstalled":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isInstalled for this persona :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    if-eqz v6, :cond_81

    .line 609
    move v0, v6

    .line 610
    goto :goto_82

    .line 613
    .end local v5    # "pInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "isInstalled":Z
    :cond_81
    goto :goto_2f

    .line 614
    :cond_82
    :goto_82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Final result of the pkg from all personas:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return v0
.end method

.method public static isPackageWhitelistedForDEAccessForDualDAR(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1423
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p2, p1}, Lcom/android/server/pm/PersonaServiceHelper;->isSystemApp(ILjava/lang/String;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6c

    const-string v2, "PersonaServiceHelper"

    if-eqz v1, :cond_20

    .line 1425
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "system app allowed - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/4 v0, 0x1

    return v0

    .line 1428
    :cond_20
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARPolicyService()Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v1

    .line 1429
    .local v1, "dualDARPolicy":Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    if-eqz v1, :cond_56

    .line 1430
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 1431
    .local v2, "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 1432
    .local v3, "dualDARConfig":Landroid/os/Bundle;
    if-nez v3, :cond_36

    .line 1433
    return v0

    .line 1435
    :cond_36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v4, "policyWhitelisted":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    const-string v5, "dualdar-config-datalock-whitelistpackages"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 1437
    .local v5, "parcelables":[Landroid/os/Parcelable;
    array-length v6, v5

    move v7, v0

    :goto_43
    if-ge v7, v6, :cond_51

    aget-object v8, v5, v7

    .line 1438
    .local v8, "p":Landroid/os/Parcelable;
    move-object v9, v8

    check-cast v9, Lcom/samsung/android/knox/AppIdentity;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    nop

    .end local v8    # "p":Landroid/os/Parcelable;
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 1440
    :cond_51
    invoke-static {p0, p2, p1, v4}, Lcom/android/server/pm/PersonaServiceHelper;->verifyPackageForDualDAR(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0

    .line 1442
    .end local v2    # "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v3    # "dualDARConfig":Landroid/os/Bundle;
    .end local v4    # "policyWhitelisted":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    .end local v5    # "parcelables":[Landroid/os/Parcelable;
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPackageStartable failed to acquire dualDARPolicy for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6a} :catch_6c

    .line 1446
    nop

    .end local v1    # "dualDARPolicy":Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    goto :goto_70

    .line 1444
    :catch_6c
    move-exception v1

    .line 1445
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1447
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_70
    return v0
.end method

.method public static isPackageWhitelistedForDualDAR(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1385
    const/4 v0, 0x0

    .line 1387
    .local v0, "whitelisted":Z
    :try_start_1
    invoke-static {p2, p1}, Lcom/android/server/pm/PersonaServiceHelper;->isSystemApp(ILjava/lang/String;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_98

    const-string v2, "PersonaServiceHelper"

    if-eqz v1, :cond_20

    .line 1389
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "system app allowed - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const/4 v1, 0x1

    return v1

    .line 1392
    :cond_20
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARPolicyService()Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v1

    .line 1393
    .local v1, "dualDARPolicy":Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    if-eqz v1, :cond_83

    .line 1394
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 1395
    .local v3, "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-interface {v1, v3}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v4

    .line 1396
    .local v4, "dualDARConfig":Landroid/os/Bundle;
    if-nez v4, :cond_36

    .line 1397
    return v0

    .line 1399
    :cond_36
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    .local v5, "policyWhitelisted":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    const-string v6, "dualdar-config-datalock-whitelistpackages"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    .line 1401
    .local v6, "parcelables":[Landroid/os/Parcelable;
    array-length v7, v6

    const/4 v8, 0x0

    :goto_43
    if-ge v8, v7, :cond_51

    aget-object v9, v6, v8

    .line 1402
    .local v9, "p":Landroid/os/Parcelable;
    move-object v10, v9

    check-cast v10, Lcom/samsung/android/knox/AppIdentity;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1401
    nop

    .end local v9    # "p":Landroid/os/Parcelable;
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    .line 1404
    :cond_51
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-interface {v7, p1, v8, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 1406
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isDirectBootAware()Z

    move-result v8

    if-nez v8, :cond_67

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isPartiallyDirectBootAware()Z

    move-result v8

    if-eqz v8, :cond_82

    .line 1407
    :cond_67
    invoke-static {p0, p2, p1, v5}, Lcom/android/server/pm/PersonaServiceHelper;->verifyPackageForDualDAR(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 1409
    const/4 v0, 0x1

    .line 1410
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkPackageStartable direct boot aware and whitelisted allowed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    .end local v3    # "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v4    # "dualDARConfig":Landroid/os/Bundle;
    .end local v5    # "policyWhitelisted":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    .end local v6    # "parcelables":[Landroid/os/Parcelable;
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_82
    goto :goto_97

    .line 1413
    :cond_83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPackageStartable failed to acquire dualDARPolicy for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_97} :catch_98

    .line 1417
    .end local v1    # "dualDARPolicy":Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    :goto_97
    goto :goto_9c

    .line 1415
    :catch_98
    move-exception v1

    .line 1416
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1418
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9c
    return v0
.end method

.method static isRequiredAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z
    .registers 7
    .param p0, "metaData"    # Landroid/os/Bundle;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 436
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 438
    :cond_4
    :try_start_4
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "com.samsung.android.multiuser.required_managed_profile"

    invoke-static {p0, v1}, Lcom/android/server/pm/PackageManagerSamsungUtils;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 439
    const-string v1, "PersonaServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRequiredAppForKnox - METADATA_REQUIRED_MANAGED_PROFILE is defined. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_31} :catch_34

    .line 440
    const/4 v0, 0x1

    return v0

    .line 442
    :cond_33
    return v0

    .line 444
    :catch_34
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    return v0
.end method

.method static isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 4
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "userId"    # I

    .line 432
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerSamsungUtils;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isRequiredAppForKnox(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 451
    const/4 v0, 0x0

    .line 453
    .local v0, "metaData":Landroid/os/Bundle;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 454
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    .line 455
    .local v2, "pms":Lcom/android/server/pm/PackageManagerService;
    const v3, 0xc0080

    invoke-virtual {v2, p0, v3, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 456
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_1b

    return v1

    .line 457
    :cond_1b
    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_24

    move-object v0, v1

    .line 462
    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1e
    nop

    .line 463
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 459
    :catch_24
    move-exception v2

    .line 460
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    return v1
.end method

.method private static isRunningPackageName(Ljava/util/HashSet;Landroid/content/Context;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .line 132
    .local p0, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    nop

    .line 133
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 134
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "l":Ljava/util/List;
    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 136
    return v2

    .line 139
    :cond_11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 140
    .local v3, "i":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 141
    nop

    .line 142
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 143
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 144
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 145
    const/16 v7, 0x64

    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-gt v7, v8, :cond_52

    iget v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 146
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/16 v8, 0xc7

    if-gt v7, v8, :cond_52

    .line 147
    const/4 v2, 0x1

    return v2

    .line 150
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_52
    goto :goto_26

    .line 151
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_53
    goto :goto_15

    .line 152
    :cond_54
    return v2
.end method

.method public static isSystemApp(ILjava/lang/String;)Z
    .registers 6
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1370
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-interface {v1, p1, v2, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1372
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_e

    .line 1373
    return v0

    .line 1376
    :cond_e
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_16

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0

    .line 1377
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_16
    move-exception v1

    .line 1378
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to check is System App for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PersonaServiceHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1381
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private static isUsbHostModeEnabledForContainer(Landroid/content/Context;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .line 809
    const-string v0, "PersonaServiceHelper"

    const/4 v1, 0x0

    .line 810
    .local v1, "status":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 811
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 813
    .local v3, "uid":J
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isUsbHostModeEnabledForContainer: userId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance v5, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 815
    .local v5, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 816
    .local v6, "ownerUid":I
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v6, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v7, p0, v8}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v7

    .line 817
    .local v7, "kcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    if-eqz v7, :cond_7a

    .line 818
    invoke-virtual {v7}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object v8

    .line 819
    .local v8, "ccp":Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;
    if-eqz v8, :cond_7a

    .line 820
    invoke-virtual {v8}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isUsbAccessEnabled()Z

    move-result v9

    move v1, v9

    .line 821
    if-nez v1, :cond_7a

    .line 822
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isUsbHostModeEnabledForContainer: Usb Host Mode sdcard is disabled for User-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ". Ignoring USB device access request..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5f} :catch_62
    .catchall {:try_start_b .. :try_end_5f} :catchall_60

    goto :goto_7a

    .line 830
    .end local v5    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v6    # "ownerUid":I
    .end local v7    # "kcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v8    # "ccp":Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;
    :catchall_60
    move-exception v0

    goto :goto_7f

    .line 826
    :catch_62
    move-exception v5

    .line 827
    .local v5, "e":Ljava/lang/Exception;
    :try_start_63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in isUsbHostModeEnabledForContainer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_63 .. :try_end_7a} :catchall_60

    .line 830
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7a
    :goto_7a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    nop

    .line 832
    return v1

    .line 830
    :goto_7f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    throw v0
.end method

.method private static setLastChosenActivityForKnox(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)Z
    .registers 33
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "match"    # I
    .param p5, "activity"    # Landroid/content/ComponentName;
    .param p7, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/IntentFilter;",
            "I",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")Z"
        }
    .end annotation

    .line 206
    .local p6, "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "PersonaServiceHelper"

    if-ne v0, v1, :cond_109

    .line 207
    const/4 v0, 0x0

    move-object/from16 v3, p6

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 208
    .local v4, "designatedUser":I
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v13

    .line 209
    .local v13, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v13, :cond_f3

    .line 210
    iget v14, v13, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 212
    .local v14, "parentId":I
    const/16 v5, -0x2710

    if-ne v14, v5, :cond_3c

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "profile group id is not set for user "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v0

    .line 217
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLastChosenActivityForKnox parent id "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 219
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 220
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_73

    iget v7, v6, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v7, v14, :cond_77

    :cond_73
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, v14, :cond_ba

    .line 221
    :cond_77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setLastChosenActivityForKnox remove pref for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    move/from16 v10, p2

    move-object/from16 v9, p7

    invoke-virtual {v9, v12, v11, v10, v7}, Lcom/android/server/pm/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .line 225
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v7

    .line 226
    .local v7, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v15, p7

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v18, p2

    move-object/from16 v19, v7

    move/from16 v24, v8

    invoke-virtual/range {v15 .. v24}, Lcom/android/server/pm/PackageManagerService;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;IZZZI)Landroid/content/pm/ResolveInfo;

    goto :goto_c2

    .line 220
    .end local v7    # "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_ba
    move-object/from16 v12, p0

    move-object/from16 v11, p1

    move/from16 v10, p2

    move-object/from16 v9, p7

    .line 229
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :goto_c2
    goto :goto_5d

    .line 231
    :cond_c3
    move-object/from16 v12, p0

    move-object/from16 v11, p1

    move/from16 v10, p2

    move-object/from16 v9, p7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setLastChosenActivityForKnox setting preferred activity for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v15, "Setting last chosen"

    move-object/from16 v5, p7

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    move v10, v2

    move v11, v4

    move-object v12, v15

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/pm/PackageManagerService;->addPreferredActivityForKnox(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;)V

    .line 236
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v14    # "parentId":I
    goto :goto_108

    .line 237
    :cond_f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLastChosenActivityForKnox invalid user "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v4    # "designatedUser":I
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_108
    goto :goto_124

    .line 240
    :cond_109
    move-object/from16 v3, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLastChosenActivityForKnox invalid size for user list: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_124
    return v1
.end method

.method public static shouldBlockBluetooth(Landroid/content/Context;I)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 850
    const-string v0, "PersonaServiceHelper"

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 851
    return v2

    .line 853
    :cond_a
    if-nez p1, :cond_d

    .line 854
    return v2

    .line 857
    :cond_d
    const/4 v1, 0x0

    .line 858
    .local v1, "isBtEnabled":Z
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v3

    .line 860
    .local v3, "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :try_start_12
    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v4

    .line 862
    .local v4, "containerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    if-eqz v4, :cond_21

    .line 863
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object v5

    .line 864
    .local v5, "ccp":Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;
    invoke-virtual {v5}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z

    move-result v6
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_20} :catch_22

    move v1, v6

    .line 868
    .end local v4    # "containerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v5    # "ccp":Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;
    :cond_21
    goto :goto_38

    .line 866
    :catch_22
    move-exception v4

    .line 867
    .local v4, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKnoxBluetoothEnabled(): SecurityException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    .end local v4    # "e":Ljava/lang/SecurityException;
    :goto_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BMS::isKnoxBluetoothEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    if-eqz v1, :cond_4f

    .line 872
    return v2

    .line 873
    :cond_4f
    const/4 v0, 0x1

    return v0
.end method

.method public static shouldBlockBluetoothHeadset(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 9
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "callingUser"    # I
    .param p3, "userId"    # I

    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, "enabled":Z
    sget-object v1, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 969
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    if-nez p3, :cond_3d

    .line 971
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    .line 973
    .local v1, "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :try_start_15
    invoke-virtual {v1, p0, p2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v2

    .line 974
    .local v2, "containerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    if-eqz v2, :cond_24

    .line 975
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object v3

    .line 976
    .local v3, "ccp":Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;
    invoke-virtual {v3}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z

    move-result v4
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_23} :catch_25

    move v0, v4

    .line 980
    .end local v2    # "containerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v3    # "ccp":Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;
    :cond_24
    goto :goto_3d

    .line 978
    :catch_25
    move-exception v2

    .line 979
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retrieveServiceLocked(): SecurityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonaServiceHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    .end local v1    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_3d
    :goto_3d
    if-eqz v0, :cond_41

    .line 983
    const/4 v1, 0x0

    return v1

    .line 985
    :cond_41
    const/4 v1, 0x1

    return v1
.end method

.method public static shouldBlockUsbHostMode(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 836
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 837
    .local v0, "userId":I
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 838
    return v2

    .line 840
    :cond_c
    const/16 v1, 0xfa

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 841
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 842
    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceHelper;->isUsbHostModeEnabledForContainer(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 843
    const/4 v1, 0x1

    return v1

    .line 846
    :cond_22
    return v2
.end method

.method public static shouldBlockUserStart(Landroid/content/Context;I)Z
    .registers 9
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 881
    const-string v0, "PersonaServiceHelper"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 883
    .local v1, "token":J
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldBlockUserStart() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 885
    .local v3, "uinfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_74

    .line 886
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    if-eqz v4, :cond_4f

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDeviceCompromised()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blocking when device compromised : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_79

    .line 888
    nop

    .line 898
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 888
    return v5

    .line 890
    :cond_4f
    :try_start_4f
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 891
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blocking non-BYOD super locked user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_4f .. :try_end_6f} :catchall_79

    .line 892
    nop

    .line 898
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 892
    return v5

    .line 896
    :cond_74
    const/4 v0, 0x0

    .line 898
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 896
    return v0

    .line 898
    .end local v3    # "uinfo":Landroid/content/pm/UserInfo;
    :catchall_79
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 899
    throw v0
.end method

.method static trimPersonaFromInstallation(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)V
    .registers 20
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "oldPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "scanMode"    # I
    .param p3, "targetUser"    # Landroid/os/UserHandle;

    .line 300
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    and-int/lit8 v0, p2, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_e

    move v0, v4

    goto :goto_f

    :cond_e
    move v0, v5

    :goto_f
    move v6, v0

    .line 301
    .local v6, "newInstall":Z
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_16

    move v0, v4

    goto :goto_17

    :cond_16
    move v0, v5

    :goto_17
    move v7, v0

    .line 303
    .local v7, "bootUp":Z
    const-string v8, "PersonaServiceHelper"

    if-nez v1, :cond_23

    .line 304
    const-string/jumbo v0, "package setting is null"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 308
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 309
    .local v9, "id":J
    const/4 v11, 0x0

    .line 311
    .local v11, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_28
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_30} :catch_39
    .catchall {:try_start_28 .. :try_end_30} :catchall_36

    move-object v11, v0

    .line 315
    nop

    :goto_32
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    goto :goto_42

    .line 315
    :catchall_36
    move-exception v0

    goto/16 :goto_1fd

    .line 312
    :catch_39
    move-exception v0

    .line 313
    .local v0, "npe":Ljava/lang/NullPointerException;
    :try_start_3a
    const-string/jumbo v12, "user manager exception "

    invoke-static {v8, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_36

    .line 315
    nop

    .end local v0    # "npe":Ljava/lang/NullPointerException;
    goto :goto_32

    .line 318
    :goto_42
    if-eqz v11, :cond_1fc

    .line 319
    const/16 v0, 0x64

    .line 320
    .local v0, "LEGACY_MIN_CONTAINER_ID":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1fc

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 321
    .local v13, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v14

    if-eqz v14, :cond_62

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v14

    if-nez v14, :cond_76

    .line 322
    :cond_62
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v14

    if-nez v14, :cond_76

    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    .line 323
    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v14

    if-nez v14, :cond_76

    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    const/16 v15, 0x64

    if-lt v14, v15, :cond_1ae

    .line 325
    :cond_76
    const/4 v14, 0x0

    .line 327
    .local v14, "isFinished":Z
    iget-object v15, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v15, v4, v13}, Lcom/android/server/pm/PersonaServiceHelper;->containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z

    move-result v15

    const-string v5, ""

    if-eqz v15, :cond_a5

    .line 328
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4, v15}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 329
    const/4 v14, 0x1

    .line 330
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is installed in "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_a5
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v4, v15, v13}, Lcom/android/server/pm/PersonaServiceHelper;->containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 334
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v15, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 335
    const/4 v14, 0x1

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is uninstalled in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_d2
    if-eqz v14, :cond_d8

    .line 339
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_4a

    .line 341
    :cond_d8
    if-eqz v3, :cond_13c

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13c

    .line 342
    if-eqz v2, :cond_10c

    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10c

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "if already installed, then don\'t trim it\n set true for persona "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto/16 :goto_1ae

    .line 349
    :cond_10c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in trim for persona "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " setting false "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_1ae

    .line 353
    :cond_13c
    if-eqz v6, :cond_15d

    if-nez v3, :cond_15d

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New installation & target user = null or all\n set false for persona "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_1ae

    .line 358
    :cond_15d
    if-eqz v7, :cond_1ae

    if-eqz v3, :cond_169

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 359
    invoke-virtual {v4, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ae

    .line 360
    :cond_169
    if-nez v2, :cond_188

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "If no info about old packages trim it\n set false for persona "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_1ae

    .line 365
    :cond_188
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1ae

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "if already not installed, then trim it\n set false for persona "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 375
    .end local v14    # "isFinished":Z
    :cond_1ae
    :goto_1ae
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-nez v4, :cond_1c4

    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v4}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v4

    if-eqz v4, :cond_1c4

    .line 376
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 379
    :cond_1c4
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-nez v4, :cond_1dd

    if-eqz v2, :cond_1dd

    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v4}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v4

    if-eqz v4, :cond_1dd

    .line 380
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_1de

    .line 379
    :cond_1dd
    const/4 v5, 0x1

    .line 383
    :goto_1de
    if-eqz v2, :cond_1f7

    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_1f7

    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v4}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v4

    if-eqz v4, :cond_1f7

    .line 384
    iget v4, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_1f8

    .line 383
    :cond_1f7
    const/4 v14, 0x0

    .line 386
    .end local v13    # "user":Landroid/content/pm/UserInfo;
    :goto_1f8
    move v4, v5

    move v5, v14

    goto/16 :goto_4a

    .line 388
    .end local v0    # "LEGACY_MIN_CONTAINER_ID":I
    :cond_1fc
    return-void

    .line 315
    :goto_1fd
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    throw v0
.end method

.method private static validatePfWProxySig(Lcom/samsung/android/knox/AppIdentity;I)Z
    .registers 11
    .param p0, "proxy"    # Lcom/samsung/android/knox/AppIdentity;
    .param p1, "userHandle"    # I

    .line 1280
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 1281
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    const/4 v1, 0x0

    .line 1283
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1285
    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_3f

    .line 1286
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1287
    .local v3, "sigs":[Landroid/content/pm/Signature;
    array-length v4, v3

    move v5, v2

    :goto_1f
    if-ge v5, v4, :cond_3f

    aget-object v6, v3, v5

    .line 1288
    .local v6, "sig":Landroid/content/pm/Signature;
    if-eqz v6, :cond_3c

    .line 1289
    invoke-virtual {p0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 1290
    const-string v2, "PersonaServiceHelper"

    const-string v4, "PfW validatePfWProxySig() ** SIG MATCH **"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v2, 0x1

    return v2

    .line 1287
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 1296
    .end local v3    # "sigs":[Landroid/content/pm/Signature;
    :cond_3f
    return v2
.end method

.method private static verifyPackageForDualDAR(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .line 1451
    .local p3, "whitelistedApps":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPackageForDualDAR package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const/4 v0, 0x0

    .line 1453
    .local v0, "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/AppIdentity;

    .line 1454
    .local v3, "a":Lcom/samsung/android/knox/AppIdentity;
    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_34

    .line 1455
    move-object v0, v3

    .line 1456
    goto :goto_35

    .line 1458
    .end local v3    # "a":Lcom/samsung/android/knox/AppIdentity;
    :cond_34
    goto :goto_1c

    .line 1460
    :cond_35
    :goto_35
    if-nez v0, :cond_4d

    .line 1461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not whitelisted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const/4 v1, 0x0

    return v1

    .line 1465
    :cond_4d
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6a

    .line 1467
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, p1}, Lcom/android/server/pm/PersonaServiceHelper;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 1470
    :cond_6a
    const/4 v1, 0x1

    return v1
.end method
