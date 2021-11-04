.class public Lcom/android/server/enterprise/utils/ConstrainedState;
.super Ljava/lang/Object;
.source "ConstrainedState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    }
.end annotation


# static fields
.field private static final CONSTRAINED_DATA_PATH:Ljava/lang/String; = "/efs/constrained"

.field private static final CONSTRAINED_DEFAULT_COMMENT:Ljava/lang/String; = "DEFAULT"

.field private static final CONSTRAINED_DELIMITER:[B

.field private static final CONSTRAINED_MODE_CHANNEL_ID:Ljava/lang/String; = "CONSTRAINED_MODE"

.field private static final CONSTRAINED_MODE_NOTIFICATION_ID:I = 0x11ce

.field private static final CONSTRAINED_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field private static final CONSTRAINED_TYPE_NORMALv2:Ljava/lang/String; = "normalv2"

.field private static final CONSTRAINED_TYPE_NORMALv3:Ljava/lang/String; = "normalv3"

.field private static final TAG:Ljava/lang/String; = "ConstrainedState"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;


# instance fields
.field private final DEBUG:Z

.field private cachedConstrainedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-void

    :array_c
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 65
    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    .line 74
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 65
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    .line 74
    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    .line 88
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 89
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 90
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    .line 96
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/utils/ConstrainedState$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$2;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/ConstrainedState;

    .line 46
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/ConstrainedState;
    .param p1, "x1"    # Z

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    return-void
.end method

.method private disableConstrainedStateInternal(ILjava/lang/String;)Z
    .registers 23
    .param p1, "adminUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 542
    move-object/from16 v7, p0

    const-string v8, "ConstrainedState"

    const/4 v9, 0x1

    .line 543
    .local v9, "ret":Z
    const/4 v10, 0x0

    .line 544
    .local v10, "changed":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 545
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v11

    .line 546
    .local v11, "checkSCpolicy":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 548
    .local v12, "token":J
    const/4 v14, 0x1

    :try_start_15
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v0, :cond_8a

    .line 549
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 550
    .local v0, "it":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 551
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    .line 552
    .local v15, "key":Ljava/lang/String;
    iget-object v1, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnrollData;

    move-object/from16 v16, v1

    .line 553
    .local v16, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, p2

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/constrained"

    invoke-direct {v1, v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v1

    .line 556
    .local v17, "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 558
    iget-object v1, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ConstrainedStateTable"

    const-string/jumbo v3, "status"

    move/from16 v5, p1

    invoke-virtual {v1, v5, v2, v3, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 563
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, v18

    move/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 564
    const/4 v1, 0x1

    .line 565
    .end local v9    # "ret":Z
    .local v1, "ret":Z
    const/4 v2, 0x1

    .line 566
    .end local v10    # "changed":Z
    .local v2, "changed":Z
    move v9, v1

    move v10, v2

    goto :goto_8a

    .line 568
    .end local v1    # "ret":Z
    .end local v2    # "changed":Z
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v17    # "file":Ljava/io/File;
    .restart local v9    # "ret":Z
    .restart local v10    # "changed":Z
    :cond_89
    goto :goto_23

    .line 571
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_8a
    :goto_8a
    if-ne v10, v14, :cond_97

    .line 572
    invoke-direct {v7, v14}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_8f} :catch_92
    .catchall {:try_start_15 .. :try_end_8f} :catchall_90

    goto :goto_97

    .line 578
    :catchall_90
    move-exception v0

    goto :goto_f4

    .line 574
    :catch_92
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    :try_start_93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_90

    .line 576
    const/4 v9, 0x0

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_97
    :goto_97
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    nop

    .line 581
    const/4 v0, 0x0

    if-eqz v11, :cond_c7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_c7

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 583
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->setScreenCapture(Z)Z

    .line 584
    const-string/jumbo v1, "setScreenCapture enabled due to disableConstrainedState"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_c7
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isRestrictedByConstrainedState(I)Z

    move-result v1

    xor-int/2addr v1, v14

    .line 588
    .local v1, "allowBlutoothByConstrained":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->isBluetoothAllowedOnDB()Z

    move-result v2

    .line 590
    .local v2, "allowBluetoothByDb":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 592
    .end local v12    # "token":J
    .local v3, "token":J
    :try_start_d6
    iget-object v5, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v5

    if-eqz v2, :cond_e1

    if-eqz v1, :cond_e1

    goto :goto_e2

    :cond_e1
    move v14, v0

    :goto_e2
    invoke-virtual {v5, v0, v14}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setBluetoothAllowedAsUser(IZ)V
    :try_end_e5
    .catchall {:try_start_d6 .. :try_end_e5} :catchall_ef

    .line 595
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    nop

    .line 598
    const-string v0, "No data"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return v9

    .line 595
    :catchall_ef
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    throw v0

    .line 578
    .end local v1    # "allowBlutoothByConstrained":Z
    .end local v2    # "allowBluetoothByDb":Z
    .end local v3    # "token":J
    .restart local v12    # "token":J
    :goto_f4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    throw v0
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInst"    # Landroid/content/pm/PackageParser$Package;

    .line 816
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    invoke-direct {v0}, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;-><init>()V

    .line 818
    .local v0, "pkg":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    const/4 v1, 0x0

    const-string v2, "Could not retrieve permissions & signature for package: "

    const-string v3, "ConstrainedState"

    if-eqz p2, :cond_4f

    .line 821
    :try_start_c
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 822
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v4, :cond_18

    .line 823
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v4, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 825
    :cond_18
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v4, v4, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_4e

    .line 826
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v4, v4, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v4

    :goto_23
    if-ge v1, v5, :cond_4e

    aget-object v6, v4, v1

    .line 827
    .local v6, "sig":Landroid/content/pm/Signature;
    iget-object v7, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_34

    .line 826
    nop

    .end local v6    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 830
    :catch_34
    move-exception v1

    .line 831
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4e
    goto :goto_a6

    .line 836
    :cond_4f
    if-nez p1, :cond_54

    const-string v4, ""

    goto :goto_58

    :cond_54
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_58
    move-object p1, v4

    .line 837
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a6

    .line 839
    :try_start_5f
    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x1040

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 841
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_8f

    .line 842
    iput-object p1, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 843
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v5, :cond_77

    .line 844
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 846
    :cond_77
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_8f

    .line 847
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    :goto_7e
    if-ge v1, v6, :cond_8f

    aget-object v7, v5, v1

    .line 848
    .local v7, "sig":Landroid/content/pm/Signature;
    iget-object v8, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_8b} :catch_90

    .line 847
    nop

    .end local v7    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 857
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_8f
    goto :goto_a6

    .line 852
    :catch_90
    move-exception v1

    .line 853
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 854
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a6
    :goto_a6
    return-object v0
.end method

.method private getConstrainedStateAll()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation

    .line 623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 625
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_3b

    .line 626
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 628
    .local v3, "it":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 629
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 630
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnrollData;

    .line 631
    .local v5, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    nop

    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "data":Lcom/samsung/android/knox/EnrollData;
    goto :goto_17

    .line 633
    :cond_30
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_34} :catch_41
    .catchall {:try_start_4 .. :try_end_34} :catchall_3f

    if-nez v4, :cond_3b

    .line 634
    nop

    .line 639
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 634
    return-object v2

    .line 639
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 640
    goto :goto_46

    .line 639
    :catchall_3f
    move-exception v2

    goto :goto_48

    .line 636
    :catch_41
    move-exception v2

    .line 637
    .local v2, "e":Ljava/lang/Exception;
    :try_start_42
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3b

    .line 642
    :goto_46
    const/4 v2, 0x0

    return-object v2

    .line 639
    :goto_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 640
    throw v2
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 130
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-nez v0, :cond_b

    .line 120
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    .line 123
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-object v0
.end method

.method private isBluetoothAllowedOnDB()Z
    .registers 4

    .line 603
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "BLUETOOTH"

    const-string v2, "bluetoothEnabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 605
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_25

    .line 606
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 607
    .local v2, "value":Z
    if-nez v2, :cond_24

    .line 608
    const/4 v1, 0x0

    return v1

    .line 610
    .end local v2    # "value":Z
    :cond_24
    goto :goto_10

    .line 612
    :cond_25
    const/4 v1, 0x1

    return v1
.end method

.method private isMatch([B[BI)Z
    .registers 8
    .param p1, "pattern"    # [B
    .param p2, "input"    # [B
    .param p3, "pos"    # I

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 235
    add-int v1, p3, v0

    array-length v2, p2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_b

    .line 236
    return v3

    .line 238
    :cond_b
    aget-byte v1, p1, v0

    add-int v2, p3, v0

    aget-byte v2, p2, v2

    if-eq v1, v2, :cond_14

    .line 239
    return v3

    .line 234
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "targetPkgName"    # Ljava/lang/String;
    .param p5, "enabled"    # Z

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ConstrainedNoti"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "noti_tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 194
    .local v1, "notiMgr":Landroid/app/NotificationManager;
    if-nez v1, :cond_26

    .line 195
    const-string v2, "ConstrainedState"

    const-string v3, "Failed to get NotificationManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 199
    :cond_26
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    const-string v4, "CONSTRAINED_MODE"

    invoke-direct {v2, v4, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 202
    const/16 v2, 0x11ce

    if-eqz p5, :cond_d0

    .line 203
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    .local v3, "builder":Landroid/app/Notification$Builder;
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 205
    const v4, 0x108066a

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 206
    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v5, 0x1040348

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 207
    const-string v4, "DEFAULT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 208
    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v5, 0x10403a0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 209
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v6, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_89

    .line 211
    :cond_7a
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 212
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 214
    :goto_89
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 215
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 217
    if-eqz p3, :cond_c8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c8

    .line 218
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "pkg"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    if-eqz p4, :cond_ba

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_ba

    .line 222
    const-string/jumbo v5, "targetPkgName"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    :cond_ba
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 227
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_c8
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 228
    .end local v3    # "builder":Landroid/app/Notification$Builder;
    goto :goto_d3

    .line 229
    :cond_d0
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 231
    :goto_d3
    return-void
.end method

.method private split([B[B)Ljava/util/List;
    .registers 7
    .param p1, "pattern"    # [B
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 247
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x0

    .line 248
    .local v1, "blockStart":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, p2

    if-ge v2, v3, :cond_1e

    .line 249
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->isMatch([B[BI)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 250
    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    array-length v3, p1

    add-int/2addr v3, v2

    .line 252
    .end local v1    # "blockStart":I
    .local v3, "blockStart":I
    move v2, v3

    move v1, v3

    .line 248
    .end local v3    # "blockStart":I
    .restart local v1    # "blockStart":I
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 255
    .end local v2    # "i":I
    :cond_1e
    array-length v2, p2

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-object v0
.end method

.method private updateConstrainedStateData(Z)V
    .registers 42
    .param p1, "Noti"    # Z

    .line 261
    move-object/from16 v7, p0

    const-string/jumbo v0, "status"

    const-string v8, "adminUid"

    const/4 v1, 0x0

    .line 263
    .local v1, "io":Ljava/io/FileInputStream;
    :try_start_8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v9, v2

    .line 265
    .local v9, "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/EnrollData;>;"
    const/4 v10, 0x2

    new-array v2, v10, [Ljava/lang/String;

    move-object v11, v2

    .line 266
    .local v11, "columns":[Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v8, v11, v12

    .line 267
    const/4 v13, 0x1

    aput-object v0, v11, v13

    .line 269
    iget-object v2, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ConstrainedStateTable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    move-object v14, v2

    .line 272
    .local v14, "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/constrained"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v15, v2

    .line 273
    .local v15, "dataDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_3c2
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3bd

    move-object v6, v2

    .line 274
    .local v6, "listFiles":[Ljava/io/File;
    const-string v5, "ConstrainedState"

    if-eqz v6, :cond_38e

    .line 275
    :try_start_33
    array-length v4, v6

    move v3, v12

    :goto_35
    if-ge v3, v4, :cond_384

    aget-object v2, v6, v3

    .line 276
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v16

    if-eqz v16, :cond_357

    .line 277
    move-object/from16 v17, v11

    .end local v11    # "columns":[Ljava/lang/String;
    .local v17, "columns":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v10, v10, [B

    .line 278
    .local v10, "buffer":[B
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4d} :catch_3c2
    .catchall {:try_start_33 .. :try_end_4d} :catchall_3bd

    .line 279
    .end local v1    # "io":Ljava/io/FileInputStream;
    .local v11, "io":Ljava/io/FileInputStream;
    :try_start_4d
    invoke-virtual {v11, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    move/from16 v18, v1

    .line 280
    .local v18, "readLen":I
    if-nez v18, :cond_6e

    .line 281
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 282
    move-object/from16 v38, v0

    move/from16 v24, v3

    move/from16 v23, v4

    move-object v0, v5

    move-object/from16 v26, v6

    move-object/from16 v32, v8

    move-object v1, v11

    move/from16 v30, v13

    move-object/from16 v19, v15

    const/16 v16, 0x2

    move/from16 v13, p1

    goto/16 :goto_36e

    .line 286
    :cond_6e
    sget-object v1, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-direct {v7, v1, v10}, Lcom/android/server/enterprise/utils/ConstrainedState;->split([B[B)Ljava/util/List;

    move-result-object v1

    .line 287
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/16 v19, 0x0

    .line 288
    .local v19, "type":Ljava/lang/String;
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_9d

    .line 289
    new-instance v13, Ljava/lang/String;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v12, v21

    check-cast v12, [B

    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "file":Ljava/io/File;
    .local v21, "file":Ljava/io/File;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v2, v22

    check-cast v2, [B

    array-length v2, v2

    move/from16 v24, v3

    const/4 v3, 0x0

    invoke-direct {v13, v12, v3, v2}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v19, v13

    move-object/from16 v12, v19

    goto :goto_a3

    .line 288
    .end local v21    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_9d
    move-object/from16 v21, v2

    move/from16 v24, v3

    .end local v2    # "file":Ljava/io/File;
    .restart local v21    # "file":Ljava/io/File;
    move-object/from16 v12, v19

    .line 292
    .end local v19    # "type":Ljava/lang/String;
    .local v12, "type":Ljava/lang/String;
    :goto_a3
    if-nez v12, :cond_c2

    .line 293
    const-string/jumbo v2, "something\'s wrong // type is null"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v13, p1

    move-object/from16 v38, v0

    move-object/from16 v28, v1

    move/from16 v23, v4

    move-object v0, v5

    move-object/from16 v26, v6

    move-object/from16 v32, v8

    move-object/from16 v25, v10

    move-object/from16 v19, v15

    const/16 v16, 0x2

    const/16 v30, 0x1

    goto/16 :goto_341

    .line 294
    :cond_c2
    const-string/jumbo v2, "normal"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_c9} :catch_351
    .catchall {:try_start_4d .. :try_end_c9} :catchall_34a

    const-string/jumbo v3, "normalv2"

    const-string/jumbo v13, "normalv3"

    if-nez v2, :cond_fb

    :try_start_d1
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    goto :goto_fb

    .line 373
    :cond_de
    const-string/jumbo v2, "type is not normal"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v13, p1

    move-object/from16 v38, v0

    move-object/from16 v28, v1

    move/from16 v23, v4

    move-object v0, v5

    move-object/from16 v26, v6

    move-object/from16 v32, v8

    move-object/from16 v25, v10

    move-object/from16 v19, v15

    const/16 v16, 0x2

    const/16 v30, 0x1

    goto/16 :goto_341

    .line 295
    :cond_fb
    :goto_fb
    const/4 v2, 0x0

    .line 296
    .local v2, "pkgName":Ljava/lang/String;
    move-object/from16 v19, v2

    const/4 v2, 0x1

    .end local v2    # "pkgName":Ljava/lang/String;
    .local v19, "pkgName":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_131

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v2, v23

    check-cast v2, [B

    array-length v2, v2

    if-lez v2, :cond_131

    .line 297
    new-instance v2, Ljava/lang/String;

    move/from16 v23, v4

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, [B

    move-object/from16 v26, v6

    const/4 v6, 0x1

    .end local v6    # "listFiles":[Ljava/io/File;
    .local v26, "listFiles":[Ljava/io/File;
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v6, v25

    check-cast v6, [B

    array-length v6, v6

    move-object/from16 v25, v10

    const/4 v10, 0x0

    .end local v10    # "buffer":[B
    .local v25, "buffer":[B
    invoke-direct {v2, v4, v10, v6}, Ljava/lang/String;-><init>([BII)V

    move-object v10, v2

    .end local v19    # "pkgName":Ljava/lang/String;
    .restart local v2    # "pkgName":Ljava/lang/String;
    goto :goto_139

    .line 296
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v25    # "buffer":[B
    .end local v26    # "listFiles":[Ljava/io/File;
    .restart local v6    # "listFiles":[Ljava/io/File;
    .restart local v10    # "buffer":[B
    .restart local v19    # "pkgName":Ljava/lang/String;
    :cond_131
    move/from16 v23, v4

    move-object/from16 v26, v6

    move-object/from16 v25, v10

    .line 300
    .end local v6    # "listFiles":[Ljava/io/File;
    .end local v10    # "buffer":[B
    .restart local v25    # "buffer":[B
    .restart local v26    # "listFiles":[Ljava/io/File;
    move-object/from16 v10, v19

    .end local v19    # "pkgName":Ljava/lang/String;
    .local v10, "pkgName":Ljava/lang/String;
    :goto_139
    if-eqz v10, :cond_32b

    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, "comment":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_314

    .line 303
    new-instance v6, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, [B

    move-object/from16 v27, v2

    const/4 v2, 0x2

    .end local v2    # "comment":Ljava/lang/String;
    .local v27, "comment":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    check-cast v2, [B

    array-length v2, v2

    move-object/from16 v19, v15

    const/4 v15, 0x0

    .end local v15    # "dataDir":Ljava/io/File;
    .local v19, "dataDir":Ljava/io/File;
    invoke-direct {v6, v4, v15, v2}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v29, v6

    .line 305
    .end local v27    # "comment":Ljava/lang/String;
    .local v29, "comment":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v15, v4

    .line 306
    .local v15, "policyBitMaskByteBuffer":[B
    const/4 v4, 0x0

    .line 307
    .local v4, "policyBitMask":I
    if-eqz v15, :cond_18f

    .line 308
    const/4 v6, 0x0

    aget-byte v2, v15, v6

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    move/from16 v28, v4

    const/4 v6, 0x1

    .end local v4    # "policyBitMask":I
    .local v28, "policyBitMask":I
    aget-byte v4, v15, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/16 v16, 0x2

    aget-byte v4, v15, v16

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    const/4 v4, 0x3

    aget-byte v4, v15, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v2

    move/from16 v35, v4

    .end local v28    # "policyBitMask":I
    .restart local v4    # "policyBitMask":I
    goto :goto_195

    .line 307
    :cond_18f
    move/from16 v28, v4

    const/16 v16, 0x2

    .end local v4    # "policyBitMask":I
    .restart local v28    # "policyBitMask":I
    move/from16 v35, v28

    .line 314
    .end local v28    # "policyBitMask":I
    .local v35, "policyBitMask":I
    :goto_195
    if-gtz v35, :cond_1aa

    .line 315
    const-string/jumbo v2, "something\'s wrong"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v13, p1

    move-object/from16 v38, v0

    move-object/from16 v28, v1

    move-object v0, v5

    move-object/from16 v32, v8

    const/16 v30, 0x1

    goto/16 :goto_313

    .line 317
    :cond_1aa
    const/4 v2, 0x0

    .line 318
    .local v2, "downloadUrl":Ljava/lang/String;
    const/4 v4, 0x0

    .line 319
    .local v4, "targetPkgName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 320
    .local v6, "signature":[B
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    goto :goto_1c1

    :cond_1ba
    move-object/from16 v36, v2

    move-object/from16 v27, v4

    move-object/from16 v37, v6

    goto :goto_1f9

    .line 321
    :cond_1c1
    :goto_1c1
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_1e7

    .line 322
    new-instance v3, Ljava/lang/String;

    move-object/from16 v28, v2

    const/4 v2, 0x4

    .end local v2    # "downloadUrl":Ljava/lang/String;
    .local v28, "downloadUrl":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v2, v27

    check-cast v2, [B

    move-object/from16 v27, v4

    const/4 v4, 0x4

    .end local v4    # "targetPkgName":Ljava/lang/String;
    .local v27, "targetPkgName":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    move-object/from16 v30, v6

    const/4 v6, 0x0

    .end local v6    # "signature":[B
    .local v30, "signature":[B
    invoke-direct {v3, v2, v6, v4}, Ljava/lang/String;-><init>([BII)V

    move-object v2, v3

    .end local v28    # "downloadUrl":Ljava/lang/String;
    .restart local v2    # "downloadUrl":Ljava/lang/String;
    goto :goto_1ed

    .line 321
    .end local v27    # "targetPkgName":Ljava/lang/String;
    .end local v30    # "signature":[B
    .restart local v4    # "targetPkgName":Ljava/lang/String;
    .restart local v6    # "signature":[B
    :cond_1e7
    move-object/from16 v28, v2

    move-object/from16 v27, v4

    move-object/from16 v30, v6

    .line 325
    .end local v4    # "targetPkgName":Ljava/lang/String;
    .end local v6    # "signature":[B
    .restart local v27    # "targetPkgName":Ljava/lang/String;
    .restart local v30    # "signature":[B
    :goto_1ed
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v6, v3

    move-object/from16 v36, v2

    move-object/from16 v37, v6

    .line 327
    .end local v2    # "downloadUrl":Ljava/lang/String;
    .end local v30    # "signature":[B
    .local v36, "downloadUrl":Ljava/lang/String;
    .local v37, "signature":[B
    :goto_1f9
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_217

    .line 328
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/4 v13, 0x0

    invoke-direct {v2, v4, v13, v3}, Ljava/lang/String;-><init>([BII)V

    move-object v4, v2

    move-object/from16 v22, v4

    .end local v27    # "targetPkgName":Ljava/lang/String;
    .restart local v4    # "targetPkgName":Ljava/lang/String;
    goto :goto_21a

    .line 327
    .end local v4    # "targetPkgName":Ljava/lang/String;
    .restart local v27    # "targetPkgName":Ljava/lang/String;
    :cond_217
    const/4 v13, 0x0

    move-object/from16 v22, v27

    .line 330
    .end local v27    # "targetPkgName":Ljava/lang/String;
    .local v22, "targetPkgName":Ljava/lang/String;
    :goto_21a
    new-instance v2, Lcom/samsung/android/knox/EnrollData;

    invoke-direct {v2}, Lcom/samsung/android/knox/EnrollData;-><init>()V

    move-object v6, v2

    .line 331
    .local v6, "data":Lcom/samsung/android/knox/EnrollData;
    iget-object v2, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    move-object v4, v2

    .line 332
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 333
    .local v2, "constrainedStatus":I
    if-eqz v14, :cond_2a9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2a9

    .line 334
    const/4 v3, 0x0

    .line 335
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 336
    .local v27, "it":Ljava/util/Iterator;
    :goto_239
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2a2

    .line 337
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/ContentValues;

    move-object/from16 v3, v28

    .line 338
    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v30, v28

    .line 339
    .local v30, "adminUid":I
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 340
    .local v28, "enrolled_state":I
    iget-object v13, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v38, v0

    move/from16 v0, v30

    .end local v30    # "adminUid":I
    .local v0, "adminUid":I
    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v13

    .line 341
    .local v13, "adminPkgName":Ljava/lang/String;
    move-object/from16 v39, v1

    .end local v1    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v39, "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v1, Landroid/content/ComponentName;

    move/from16 v30, v2

    .end local v2    # "constrainedStatus":I
    .local v30, "constrainedStatus":I
    const-string v2, "com.sds.mobile.mdm.client.MDMService"

    move-object/from16 v31, v3

    .end local v3    # "cv":Landroid/content/ContentValues;
    .local v31, "cv":Landroid/content/ContentValues;
    const-string v3, "com.sds.mobile.mdm.client.MDMService.ui.receiver.DeviceAdminPolicyReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .local v1, "mAdminName":Landroid/content/ComponentName;
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_287

    if-eqz v4, :cond_287

    invoke-virtual {v4, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_287

    .line 344
    const-string v2, "Constrained mode is off - sds mdm was activated"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move/from16 v2, v28

    .line 346
    .end local v30    # "constrainedStatus":I
    .restart local v2    # "constrainedStatus":I
    move v0, v2

    goto :goto_2b1

    .line 348
    .end local v2    # "constrainedStatus":I
    .restart local v30    # "constrainedStatus":I
    :cond_287
    if-eqz v13, :cond_298

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_298

    .line 349
    const-string v2, "Constrained mode is off"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move/from16 v2, v28

    .line 351
    .end local v30    # "constrainedStatus":I
    .restart local v2    # "constrainedStatus":I
    move v0, v2

    goto :goto_2b1

    .line 353
    .end local v0    # "adminUid":I
    .end local v1    # "mAdminName":Landroid/content/ComponentName;
    .end local v2    # "constrainedStatus":I
    .end local v13    # "adminPkgName":Ljava/lang/String;
    .end local v28    # "enrolled_state":I
    .restart local v30    # "constrainedStatus":I
    :cond_298
    move/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    const/4 v13, 0x0

    goto :goto_239

    .line 336
    .end local v30    # "constrainedStatus":I
    .end local v31    # "cv":Landroid/content/ContentValues;
    .end local v39    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v2    # "constrainedStatus":I
    .restart local v3    # "cv":Landroid/content/ContentValues;
    :cond_2a2
    move-object/from16 v38, v0

    move-object/from16 v39, v1

    move/from16 v30, v2

    .end local v1    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "constrainedStatus":I
    .restart local v30    # "constrainedStatus":I
    .restart local v39    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_2af

    .line 333
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v27    # "it":Ljava/util/Iterator;
    .end local v30    # "constrainedStatus":I
    .end local v39    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v1    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v2    # "constrainedStatus":I
    :cond_2a9
    move-object/from16 v38, v0

    move-object/from16 v39, v1

    move/from16 v30, v2

    .line 356
    .end local v1    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "constrainedStatus":I
    .restart local v30    # "constrainedStatus":I
    .restart local v39    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_2af
    move/from16 v0, v30

    .end local v30    # "constrainedStatus":I
    .local v0, "constrainedStatus":I
    :goto_2b1
    move-object/from16 v27, v6

    move-object/from16 v28, v10

    move/from16 v30, v35

    move-object/from16 v31, v36

    move/from16 v32, v0

    move-object/from16 v33, v37

    move-object/from16 v34, v22

    invoke-virtual/range {v27 .. v34}, Lcom/samsung/android/knox/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V
    :try_end_2c2
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_2c2} :catch_351
    .catchall {:try_start_d1 .. :try_end_2c2} :catchall_34a

    .line 357
    move/from16 v13, p1

    const/4 v3, 0x1

    if-ne v13, v3, :cond_300

    .line 358
    if-nez v0, :cond_2e6

    .line 359
    const/16 v20, 0x1

    move-object/from16 v28, v39

    .end local v39    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v28, "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v1, p0

    move-object v2, v10

    move/from16 v30, v3

    move-object/from16 v3, v29

    move-object/from16 v27, v4

    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .local v27, "dpm":Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v4, v36

    move/from16 v31, v0

    move-object v0, v5

    .end local v0    # "constrainedStatus":I
    .local v31, "constrainedStatus":I
    move-object/from16 v5, v22

    move-object/from16 v32, v8

    move-object v8, v6

    .end local v6    # "data":Lcom/samsung/android/knox/EnrollData;
    .local v8, "data":Lcom/samsung/android/knox/EnrollData;
    move/from16 v6, v20

    :try_start_2e2
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_30c

    .line 361
    .end local v8    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v27    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v28    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v31    # "constrainedStatus":I
    .restart local v0    # "constrainedStatus":I
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v6    # "data":Lcom/samsung/android/knox/EnrollData;
    .restart local v39    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2e6
    move/from16 v31, v0

    move/from16 v30, v3

    move-object/from16 v27, v4

    move-object v0, v5

    move-object/from16 v32, v8

    move-object/from16 v28, v39

    move-object v8, v6

    .end local v0    # "constrainedStatus":I
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v6    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v39    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v8    # "data":Lcom/samsung/android/knox/EnrollData;
    .restart local v27    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v28    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v31    # "constrainedStatus":I
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, v29

    move-object/from16 v4, v36

    move-object/from16 v5, v22

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_30c

    .line 357
    .end local v8    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v27    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v28    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v31    # "constrainedStatus":I
    .restart local v0    # "constrainedStatus":I
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v6    # "data":Lcom/samsung/android/knox/EnrollData;
    .restart local v39    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_300
    move/from16 v31, v0

    move/from16 v30, v3

    move-object/from16 v27, v4

    move-object v0, v5

    move-object/from16 v32, v8

    move-object/from16 v28, v39

    move-object v8, v6

    .line 364
    .end local v0    # "constrainedStatus":I
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v6    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v39    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v8    # "data":Lcom/samsung/android/knox/EnrollData;
    .restart local v27    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v28    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v31    # "constrainedStatus":I
    :goto_30c
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .end local v8    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v15    # "policyBitMaskByteBuffer":[B
    .end local v22    # "targetPkgName":Ljava/lang/String;
    .end local v27    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v31    # "constrainedStatus":I
    .end local v35    # "policyBitMask":I
    .end local v36    # "downloadUrl":Ljava/lang/String;
    .end local v37    # "signature":[B
    :goto_313
    goto :goto_32a

    .line 367
    .end local v19    # "dataDir":Ljava/io/File;
    .end local v28    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v29    # "comment":Ljava/lang/String;
    .restart local v1    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v2, "comment":Ljava/lang/String;
    .local v15, "dataDir":Ljava/io/File;
    :cond_314
    move/from16 v13, p1

    move-object/from16 v38, v0

    move-object/from16 v28, v1

    move-object/from16 v27, v2

    move/from16 v16, v4

    move-object v0, v5

    move-object/from16 v32, v8

    move-object/from16 v19, v15

    const/16 v30, 0x1

    .end local v1    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "comment":Ljava/lang/String;
    .end local v15    # "dataDir":Ljava/io/File;
    .restart local v19    # "dataDir":Ljava/io/File;
    .local v27, "comment":Ljava/lang/String;
    .restart local v28    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v1, "comment is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v27    # "comment":Ljava/lang/String;
    :goto_32a
    goto :goto_340

    .line 370
    .end local v19    # "dataDir":Ljava/io/File;
    .end local v28    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v1    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v15    # "dataDir":Ljava/io/File;
    :cond_32b
    move/from16 v13, p1

    move-object/from16 v38, v0

    move-object/from16 v28, v1

    move-object v0, v5

    move-object/from16 v32, v8

    move-object/from16 v19, v15

    const/16 v16, 0x2

    const/16 v30, 0x1

    .end local v1    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v15    # "dataDir":Ljava/io/File;
    .restart local v19    # "dataDir":Ljava/io/File;
    .restart local v28    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string/jumbo v1, "package name is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v10    # "pkgName":Ljava/lang/String;
    :goto_340
    nop

    .line 376
    :goto_341
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_344
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_344} :catch_348
    .catchall {:try_start_2e2 .. :try_end_344} :catchall_346

    .line 377
    const/4 v1, 0x0

    .end local v11    # "io":Ljava/io/FileInputStream;
    .local v1, "io":Ljava/io/FileInputStream;
    goto :goto_36e

    .line 393
    .end local v1    # "io":Ljava/io/FileInputStream;
    .end local v9    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/EnrollData;>;"
    .end local v12    # "type":Ljava/lang/String;
    .end local v14    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v17    # "columns":[Ljava/lang/String;
    .end local v18    # "readLen":I
    .end local v19    # "dataDir":Ljava/io/File;
    .end local v21    # "file":Ljava/io/File;
    .end local v25    # "buffer":[B
    .end local v26    # "listFiles":[Ljava/io/File;
    .end local v28    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v11    # "io":Ljava/io/FileInputStream;
    :catchall_346
    move-exception v0

    goto :goto_34d

    .line 389
    :catch_348
    move-exception v0

    goto :goto_354

    .line 393
    :catchall_34a
    move-exception v0

    move/from16 v13, p1

    :goto_34d
    move-object v2, v0

    move-object v1, v11

    goto/16 :goto_3da

    .line 389
    :catch_351
    move-exception v0

    move/from16 v13, p1

    :goto_354
    move-object v1, v11

    goto/16 :goto_3c5

    .line 276
    .restart local v1    # "io":Ljava/io/FileInputStream;
    .local v2, "file":Ljava/io/File;
    .local v6, "listFiles":[Ljava/io/File;
    .restart local v9    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/EnrollData;>;"
    .local v11, "columns":[Ljava/lang/String;
    .restart local v14    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v15    # "dataDir":Ljava/io/File;
    :cond_357
    move-object/from16 v38, v0

    move-object/from16 v21, v2

    move/from16 v24, v3

    move/from16 v23, v4

    move-object v0, v5

    move-object/from16 v26, v6

    move-object/from16 v32, v8

    move/from16 v16, v10

    move-object/from16 v17, v11

    move/from16 v30, v13

    move-object/from16 v19, v15

    move/from16 v13, p1

    .line 275
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "listFiles":[Ljava/io/File;
    .end local v11    # "columns":[Ljava/lang/String;
    .end local v15    # "dataDir":Ljava/io/File;
    .restart local v17    # "columns":[Ljava/lang/String;
    .restart local v19    # "dataDir":Ljava/io/File;
    .restart local v26    # "listFiles":[Ljava/io/File;
    :goto_36e
    add-int/lit8 v3, v24, 0x1

    move-object v5, v0

    move/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v15, v19

    move/from16 v4, v23

    move-object/from16 v6, v26

    move/from16 v13, v30

    move-object/from16 v8, v32

    move-object/from16 v0, v38

    const/4 v12, 0x0

    goto/16 :goto_35

    .end local v17    # "columns":[Ljava/lang/String;
    .end local v19    # "dataDir":Ljava/io/File;
    .end local v26    # "listFiles":[Ljava/io/File;
    .restart local v6    # "listFiles":[Ljava/io/File;
    .restart local v11    # "columns":[Ljava/lang/String;
    .restart local v15    # "dataDir":Ljava/io/File;
    :cond_384
    move/from16 v13, p1

    move-object v0, v5

    move-object/from16 v26, v6

    move-object/from16 v17, v11

    move-object/from16 v19, v15

    .end local v6    # "listFiles":[Ljava/io/File;
    .end local v11    # "columns":[Ljava/lang/String;
    .end local v15    # "dataDir":Ljava/io/File;
    .restart local v17    # "columns":[Ljava/lang/String;
    .restart local v19    # "dataDir":Ljava/io/File;
    .restart local v26    # "listFiles":[Ljava/io/File;
    goto :goto_397

    .line 274
    .end local v17    # "columns":[Ljava/lang/String;
    .end local v19    # "dataDir":Ljava/io/File;
    .end local v26    # "listFiles":[Ljava/io/File;
    .restart local v6    # "listFiles":[Ljava/io/File;
    .restart local v11    # "columns":[Ljava/lang/String;
    .restart local v15    # "dataDir":Ljava/io/File;
    :cond_38e
    move/from16 v13, p1

    move-object v0, v5

    move-object/from16 v26, v6

    move-object/from16 v17, v11

    move-object/from16 v19, v15

    .line 382
    .end local v6    # "listFiles":[Ljava/io/File;
    .end local v11    # "columns":[Ljava/lang/String;
    .end local v15    # "dataDir":Ljava/io/File;
    .restart local v17    # "columns":[Ljava/lang/String;
    .restart local v19    # "dataDir":Ljava/io/File;
    .restart local v26    # "listFiles":[Ljava/io/File;
    :goto_397
    :try_start_397
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a8

    .line 383
    const-string v2, "Data is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_3b2

    .line 386
    :cond_3a8
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 387
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_3b2
    .catch Ljava/lang/Exception; {:try_start_397 .. :try_end_3b2} :catch_3bb
    .catchall {:try_start_397 .. :try_end_3b2} :catchall_3d8

    .line 394
    .end local v9    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/EnrollData;>;"
    .end local v14    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v17    # "columns":[Ljava/lang/String;
    .end local v19    # "dataDir":Ljava/io/File;
    .end local v26    # "listFiles":[Ljava/io/File;
    :goto_3b2
    if-eqz v1, :cond_3ba

    .line 395
    :try_start_3b4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3b7
    .catch Ljava/lang/Exception; {:try_start_3b4 .. :try_end_3b7} :catch_3b8

    goto :goto_3ba

    .line 397
    :catch_3b8
    move-exception v0

    .line 399
    goto :goto_3d7

    .line 398
    :cond_3ba
    :goto_3ba
    goto :goto_3d7

    .line 389
    :catch_3bb
    move-exception v0

    goto :goto_3c5

    .line 393
    :catchall_3bd
    move-exception v0

    move/from16 v13, p1

    :goto_3c0
    move-object v2, v0

    goto :goto_3da

    .line 389
    :catch_3c2
    move-exception v0

    move/from16 v13, p1

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    :goto_3c5
    :try_start_3c5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    iget-object v2, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_3d1

    iget-object v2, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_3d1
    .catchall {:try_start_3c5 .. :try_end_3d1} :catchall_3d8

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d1
    if-eqz v1, :cond_3ba

    .line 395
    :try_start_3d3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3d6
    .catch Ljava/lang/Exception; {:try_start_3d3 .. :try_end_3d6} :catch_3b8

    goto :goto_3ba

    .line 400
    :goto_3d7
    return-void

    .line 393
    :catchall_3d8
    move-exception v0

    goto :goto_3c0

    .line 394
    :goto_3da
    if-eqz v1, :cond_3e2

    .line 395
    :try_start_3dc
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3df
    .catch Ljava/lang/Exception; {:try_start_3dc .. :try_end_3df} :catch_3e0

    goto :goto_3e2

    .line 397
    :catch_3e0
    move-exception v0

    goto :goto_3e3

    .line 398
    :cond_3e2
    :goto_3e2
    nop

    .line 399
    :goto_3e3
    throw v2
.end method

.method private updateNotification()V
    .registers 12

    .line 150
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    if-eqz v0, :cond_3f

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "policyBitMask":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    .line 154
    .local v3, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_3e

    .line 156
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    .end local v3    # "data":Lcom/samsung/android/knox/EnrollData;
    :cond_3e
    goto :goto_b

    .line 160
    .end local v1    # "policyBitMask":I
    :cond_3f
    return-void
.end method


# virtual methods
.method public checkConstrainedState()Z
    .registers 6

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "constrainedMode":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    .line 137
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    if-eqz v1, :cond_20

    .line 138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    .line 139
    .local v3, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_1f

    .line 140
    const/4 v0, 0x1

    .line 141
    goto :goto_20

    .line 143
    .end local v3    # "data":Lcom/samsung/android/knox/EnrollData;
    :cond_1f
    goto :goto_b

    .line 146
    :cond_20
    :goto_20
    return v0
.end method

.method public checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 19
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packageURI"    # Landroid/net/Uri;

    .line 682
    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, "archiveFilePath":Ljava/lang/String;
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    move-object v3, v0

    .line 688
    .local v3, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 689
    .local v4, "sourceFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 691
    .local v5, "pkgInst":Landroid/content/pm/PackageParser$Package;
    const/4 v6, 0x0

    :try_start_14
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    move-object v5, v0

    .line 692
    if-eqz v5, :cond_1e

    .line 693
    invoke-static {v5, v6}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_1e
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_14 .. :try_end_1e} :catch_98

    .line 701
    :cond_1e
    nop

    .line 703
    const-string v0, "ConstrainedState"

    if-eqz v1, :cond_8f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2c

    move-object/from16 v13, p0

    goto :goto_91

    .line 706
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v7

    .line 707
    .local v7, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    if-eqz v7, :cond_8c

    .line 708
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_36
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_89

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/EnrollData;

    .line 711
    .local v9, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_86

    .line 712
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v10

    .line 713
    .local v10, "orig":[B
    if-nez v10, :cond_53

    .line 716
    return v6

    .line 718
    :cond_53
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V

    .line 719
    .local v11, "s":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v12, "origsig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    move-object/from16 v13, p0

    invoke-direct {v13, v1, v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v14

    .line 723
    .local v14, "appPkgInfo":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    if-eqz v14, :cond_88

    .line 724
    new-instance v8, Ljava/util/ArrayList;

    iget-object v15, v14, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v8, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 725
    .local v8, "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8, v12}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 726
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_80

    .line 727
    const-string/jumbo v6, "signature check success"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v0, 0x1

    return v0

    .line 730
    :cond_80
    const-string v15, "Signature is different"

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return v6

    .line 711
    .end local v8    # "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "orig":[B
    .end local v11    # "s":Ljava/lang/String;
    .end local v12    # "origsig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "appPkgInfo":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    :cond_86
    move-object/from16 v13, p0

    .line 736
    .end local v9    # "data":Lcom/samsung/android/knox/EnrollData;
    :cond_88
    goto :goto_36

    .line 708
    :cond_89
    move-object/from16 v13, p0

    goto :goto_97

    .line 707
    :cond_8c
    move-object/from16 v13, p0

    goto :goto_97

    .line 703
    .end local v7    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    :cond_8f
    move-object/from16 v13, p0

    .line 704
    :goto_91
    const-string/jumbo v7, "something\'s wrong"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :goto_97
    return v6

    .line 695
    :catch_98
    move-exception v0

    move-object/from16 v13, p0

    .line 696
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v5, 0x0

    .line 697
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 700
    return v6
.end method

.method public checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 19
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packageURI"    # Landroid/net/Uri;

    .line 743
    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 748
    .local v2, "archiveFilePath":Ljava/lang/String;
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    move-object v3, v0

    .line 749
    .local v3, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 750
    .local v4, "sourceFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 752
    .local v5, "pkgInst":Landroid/content/pm/PackageParser$Package;
    const/4 v6, 0x0

    :try_start_14
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    move-object v5, v0

    .line 753
    if-eqz v5, :cond_1e

    .line 754
    invoke-static {v5, v6}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_1e
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_14 .. :try_end_1e} :catch_9e

    .line 762
    :cond_1e
    nop

    .line 764
    const-string v0, "ConstrainedState"

    if-eqz v1, :cond_95

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2c

    move-object/from16 v13, p0

    goto :goto_97

    .line 767
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v7

    .line 768
    .local v7, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    if-eqz v7, :cond_92

    .line 769
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_36
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/EnrollData;

    .line 772
    .local v9, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8c

    invoke-virtual {v9}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8c

    .line 773
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v10

    .line 774
    .local v10, "orig":[B
    if-nez v10, :cond_59

    .line 777
    return v6

    .line 779
    :cond_59
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V

    .line 780
    .local v11, "s":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v12, "origsig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    move-object/from16 v13, p0

    invoke-direct {v13, v1, v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v14

    .line 784
    .local v14, "appPkgInfo":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    if-eqz v14, :cond_8e

    .line 785
    new-instance v8, Ljava/util/ArrayList;

    iget-object v15, v14, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v8, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 786
    .local v8, "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8, v12}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 787
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_86

    .line 788
    const-string/jumbo v6, "signature check success"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v0, 0x1

    return v0

    .line 791
    :cond_86
    const-string v15, "Signature is different"

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return v6

    .line 772
    .end local v8    # "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "orig":[B
    .end local v11    # "s":Ljava/lang/String;
    .end local v12    # "origsig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "appPkgInfo":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    :cond_8c
    move-object/from16 v13, p0

    .line 797
    .end local v9    # "data":Lcom/samsung/android/knox/EnrollData;
    :cond_8e
    goto :goto_36

    .line 769
    :cond_8f
    move-object/from16 v13, p0

    goto :goto_9d

    .line 768
    :cond_92
    move-object/from16 v13, p0

    goto :goto_9d

    .line 764
    .end local v7    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    :cond_95
    move-object/from16 v13, p0

    .line 765
    :goto_97
    const-string/jumbo v7, "something\'s wrong"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :goto_9d
    return v6

    .line 756
    :catch_9e
    move-exception v0

    move-object/from16 v13, p0

    .line 757
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v5, 0x0

    .line 758
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 761
    return v6
.end method

.method public cleanUpConstrainedState(I)V
    .registers 8
    .param p1, "adminUid"    # I

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 164
    .local v0, "callingUid":I
    if-eq p1, v0, :cond_f

    .line 167
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    const-string v3, "Only system or itself can remove an EDM admin"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_f
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v2, "adminUid"

    .line 177
    .local v2, "column":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ConstrainedStateTable"

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 179
    .local v3, "result":Landroid/content/ContentValues;
    if-eqz v3, :cond_40

    .line 180
    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_3f

    .line 182
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    .line 183
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_3f
    goto :goto_47

    .line 184
    :cond_40
    const-string v4, "ConstrainedState"

    const-string v5, "constrained state will go on"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_47
    return-void
.end method

.method public disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 616
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 616
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 618
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "pkgName":Ljava/lang/String;
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 26
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "TargetPkgName"    # Ljava/lang/String;
    .param p5, "TargetSignature"    # Ljava/lang/String;
    .param p6, "PolicyBitMask"    # I

    .line 403
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p6

    const-string v0, "/efs/constrained"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const-string v6, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 404
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 403
    move-object/from16 v6, p1

    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    .line 406
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v4, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    const/4 v5, 0x0

    if-gtz v3, :cond_25

    .line 407
    return v5

    .line 410
    :cond_25
    iget-object v6, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 414
    .local v7, "token":J
    :try_start_31
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v9, "dataDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3f

    .line 416
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 419
    :cond_3f
    iget-object v10, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v10, :cond_7c

    .line 420
    iget-object v10, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 421
    .local v10, "it":Ljava/util/Iterator;
    :goto_4d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7c

    .line 422
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 423
    .local v11, "key":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/EnrollData;

    .line 424
    .local v12, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v12}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7b

    .line 425
    const-string v13, "ConstrainedState"

    const-string v14, "already existing values // update"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_7a} :catch_230
    .catchall {:try_start_31 .. :try_end_7a} :catchall_22e

    .line 428
    goto :goto_7c

    .line 430
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "data":Lcom/samsung/android/knox/EnrollData;
    .end local v13    # "file":Ljava/io/File;
    :cond_7b
    goto :goto_4d

    .line 433
    .end local v10    # "it":Ljava/util/Iterator;
    :cond_7c
    :goto_7c
    const/4 v10, 0x0

    .line 434
    .local v10, "os":Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 436
    .local v11, "outFile":Ljava/io/File;
    :try_start_7e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 437
    .local v12, "temp":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, 0x7fffffff

    and-int/2addr v13, v14

    .line 438
    .local v13, "hash":I
    new-instance v14, Ljava/io/File;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v14

    .line 439
    :goto_a4
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_b7

    .line 440
    add-int/lit8 v13, v13, 0x1

    .line 441
    new-instance v14, Ljava/io/File;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v14

    goto :goto_a4

    .line 444
    :cond_b7
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v14, v3, 0x18

    int-to-byte v14, v14

    aput-byte v14, v0, v5

    shr-int/lit8 v14, v3, 0x10

    int-to-byte v14, v14

    const/4 v15, 0x1

    aput-byte v14, v0, v15

    const/4 v14, 0x2

    shr-int/lit8 v15, v3, 0x8

    int-to-byte v15, v15

    aput-byte v15, v0, v14

    const/4 v14, 0x3

    int-to-byte v15, v3

    aput-byte v15, v0, v14

    move-object v14, v0

    .line 450
    .local v14, "policyBitMaskByteBuffer":[B
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v10, v0

    .line 452
    if-eqz p4, :cond_e9

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e9

    .line 453
    const-string/jumbo v0, "normalv3"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_106

    .line 454
    :cond_e9
    if-eqz p3, :cond_fc

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_fc

    .line 455
    const-string/jumbo v0, "normalv2"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_106

    .line 457
    :cond_fc
    const-string/jumbo v0, "normal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 459
    :goto_106
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 460
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 461
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 462
    if-eqz v2, :cond_127

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_127

    .line 463
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_130

    .line 465
    :cond_127
    const-string v0, "DEFAULT"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 467
    :goto_130
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 468
    invoke-virtual {v10, v14}, Ljava/io/FileOutputStream;->write([B)V

    .line 469
    if-eqz p3, :cond_1c1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c1

    .line 470
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 473
    if-eqz p4, :cond_178

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_178

    if-eqz p5, :cond_178

    .line 474
    new-instance v0, Landroid/content/pm/Signature;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-direct {v0, v15}, Landroid/content/pm/Signature;-><init>([B)V

    .line 475
    .local v0, "targetSig":Landroid/content/pm/Signature;
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v15

    .line 476
    .local v15, "targetSigBytes":[B
    sget-object v5, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v10, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 477
    invoke-virtual {v10, v15}, Ljava/io/FileOutputStream;->write([B)V

    .line 478
    sget-object v5, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v10, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 479
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 480
    .end local v0    # "targetSig":Landroid/content/pm/Signature;
    .end local v15    # "targetSigBytes":[B
    goto :goto_1c1

    .line 481
    :cond_178
    const/4 v0, 0x0

    .line 482
    .local v0, "pkgCert":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    .line 483
    invoke-static {v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v5

    .line 484
    .local v5, "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    const/16 v15, 0x40

    const/4 v2, 0x0

    invoke-virtual {v5, v6, v15, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v15

    move-object v2, v15

    .line 487
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_19f

    .line 488
    iget-object v15, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 489
    .local v15, "signs":[Landroid/content/pm/Signature;
    move-object/from16 v16, v0

    .end local v0    # "pkgCert":Ljava/lang/String;
    .local v16, "pkgCert":Ljava/lang/String;
    array-length v0, v15

    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .local v17, "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_191
    if-ge v2, v0, :cond_1a3

    aget-object v18, v15, v2

    .line 490
    .local v18, "sign":Landroid/content/pm/Signature;
    if-eqz v18, :cond_19c

    .line 491
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .end local v16    # "pkgCert":Ljava/lang/String;
    .restart local v0    # "pkgCert":Ljava/lang/String;
    goto :goto_1a5

    .line 489
    .end local v0    # "pkgCert":Ljava/lang/String;
    .end local v18    # "sign":Landroid/content/pm/Signature;
    .restart local v16    # "pkgCert":Ljava/lang/String;
    :cond_19c
    add-int/lit8 v2, v2, 0x1

    goto :goto_191

    .line 487
    .end local v15    # "signs":[Landroid/content/pm/Signature;
    .end local v16    # "pkgCert":Ljava/lang/String;
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v0    # "pkgCert":Ljava/lang/String;
    .restart local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_19f
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 497
    .end local v0    # "pkgCert":Ljava/lang/String;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v16    # "pkgCert":Ljava/lang/String;
    .restart local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1a3
    move-object/from16 v0, v16

    .end local v16    # "pkgCert":Ljava/lang/String;
    .restart local v0    # "pkgCert":Ljava/lang/String;
    :goto_1a5
    if-eqz v0, :cond_1bf

    .line 498
    new-instance v2, Landroid/content/pm/Signature;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-direct {v2, v15}, Landroid/content/pm/Signature;-><init>([B)V

    .line 499
    .local v2, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v15

    .line 500
    .local v15, "pkgSigBytes":[B
    move-object/from16 v16, v0

    .end local v0    # "pkgCert":Ljava/lang/String;
    .restart local v16    # "pkgCert":Ljava/lang/String;
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 501
    invoke-virtual {v10, v15}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1c1

    .line 497
    .end local v2    # "sig":Landroid/content/pm/Signature;
    .end local v15    # "pkgSigBytes":[B
    .end local v16    # "pkgCert":Ljava/lang/String;
    .restart local v0    # "pkgCert":Ljava/lang/String;
    :cond_1bf
    move-object/from16 v16, v0

    .line 506
    .end local v0    # "pkgCert":Ljava/lang/String;
    .end local v5    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1c1
    :goto_1c1
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 507
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 508
    const/4 v10, 0x0

    .line 510
    iget-object v0, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "ConstrainedStateTable"

    const-string/jumbo v15, "status"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v5, v15, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    move v2, v0

    .line 514
    .local v2, "ret":Z
    if-nez v2, :cond_1f1

    .line 515
    nop

    .line 516
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_1dd} :catch_20c
    .catchall {:try_start_7e .. :try_end_1dd} :catchall_209

    .line 517
    nop

    .line 526
    if-eqz v10, :cond_1eb

    .line 527
    :try_start_1e0
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1e3} :catch_1e4
    .catchall {:try_start_1e0 .. :try_end_1e3} :catchall_22e

    goto :goto_1eb

    .line 528
    :catch_1e4
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1e7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ea} :catch_230
    .catchall {:try_start_1e7 .. :try_end_1ea} :catchall_22e

    goto :goto_1ec

    .line 530
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1eb
    :goto_1eb
    nop

    .line 535
    :goto_1ec
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 517
    const/4 v3, 0x0

    return v3

    .line 519
    :cond_1f1
    const/4 v3, 0x1

    :try_start_1f2
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_1f5} :catch_20c
    .catchall {:try_start_1f2 .. :try_end_1f5} :catchall_209

    .line 520
    nop

    .line 526
    if-eqz v10, :cond_203

    .line 527
    :try_start_1f8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_1fb} :catch_1fc
    .catchall {:try_start_1f8 .. :try_end_1fb} :catchall_22e

    goto :goto_203

    .line 528
    :catch_1fc
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 529
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1ff
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_202} :catch_230
    .catchall {:try_start_1ff .. :try_end_202} :catchall_22e

    goto :goto_204

    .line 530
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_203
    :goto_203
    nop

    .line 535
    :goto_204
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 520
    const/4 v3, 0x1

    return v3

    .line 525
    .end local v2    # "ret":Z
    .end local v12    # "temp":Ljava/lang/String;
    .end local v13    # "hash":I
    .end local v14    # "policyBitMaskByteBuffer":[B
    :catchall_209
    move-exception v0

    move-object v2, v0

    goto :goto_21e

    .line 522
    :catch_20c
    move-exception v0

    .line 523
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_20d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_210
    .catchall {:try_start_20d .. :try_end_210} :catchall_209

    .line 526
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v10, :cond_21d

    .line 527
    :try_start_212
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_215} :catch_216
    .catchall {:try_start_212 .. :try_end_215} :catchall_22e

    goto :goto_21d

    .line 528
    :catch_216
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 529
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_21c} :catch_230
    .catchall {:try_start_219 .. :try_end_21c} :catchall_22e

    .line 531
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_234

    .line 530
    :cond_21d
    :goto_21d
    goto :goto_234

    .line 526
    :goto_21e
    if-eqz v10, :cond_22b

    .line 527
    :try_start_220
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_223} :catch_224
    .catchall {:try_start_220 .. :try_end_223} :catchall_22e

    goto :goto_22b

    .line 528
    :catch_224
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 529
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22c

    .line 530
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_22b
    :goto_22b
    nop

    .line 531
    :goto_22c
    nop

    .end local v4    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "token":J
    .end local p0    # "this":Lcom/android/server/enterprise/utils/ConstrainedState;
    .end local p2    # "comment":Ljava/lang/String;
    .end local p3    # "downloadUrl":Ljava/lang/String;
    .end local p4    # "TargetPkgName":Ljava/lang/String;
    .end local p5    # "TargetSignature":Ljava/lang/String;
    .end local p6    # "PolicyBitMask":I
    throw v2
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_22e} :catch_230
    .catchall {:try_start_227 .. :try_end_22e} :catchall_22e

    .line 535
    .end local v9    # "dataDir":Ljava/io/File;
    .end local v10    # "os":Ljava/io/FileOutputStream;
    .end local v11    # "outFile":Ljava/io/File;
    .restart local v4    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "token":J
    .restart local p0    # "this":Lcom/android/server/enterprise/utils/ConstrainedState;
    .restart local p2    # "comment":Ljava/lang/String;
    .restart local p3    # "downloadUrl":Ljava/lang/String;
    .restart local p4    # "TargetPkgName":Ljava/lang/String;
    .restart local p5    # "TargetSignature":Ljava/lang/String;
    .restart local p6    # "PolicyBitMask":I
    :catchall_22e
    move-exception v0

    goto :goto_23a

    .line 532
    :catch_230
    move-exception v0

    .line 533
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_234
    .catchall {:try_start_231 .. :try_end_234} :catchall_22e

    .line 535
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_234
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    nop

    .line 538
    const/4 v2, 0x0

    return v2

    .line 535
    :goto_23a
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    throw v0
.end method

.method public getConstrainedState()I
    .registers 6

    .line 663
    const/4 v0, 0x0

    .line 665
    .local v0, "ret":I
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    .line 667
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    if-eqz v1, :cond_21

    .line 668
    const/4 v0, 0x1

    .line 670
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    .line 671
    .local v3, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_20

    .line 672
    const/4 v0, 0x2

    .line 673
    goto :goto_21

    .line 675
    .end local v3    # "data":Lcom/samsung/android/knox/EnrollData;
    :cond_20
    goto :goto_c

    .line 678
    :cond_21
    :goto_21
    return v0
.end method

.method public isRestrictedByConstrainedState(I)Z
    .registers 7
    .param p1, "bitMask"    # I

    .line 646
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v0

    .line 647
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnrollData;>;"
    const/4 v1, 0x0

    .line 649
    .local v1, "policyBitMask":I
    if-eqz v0, :cond_28

    .line 650
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    .line 651
    .local v3, "data":Lcom/samsung/android/knox/EnrollData;
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_27

    .line 652
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getPolicyBitMask()I

    move-result v1

    .line 653
    and-int v4, v1, p1

    if-lez v4, :cond_27

    .line 654
    const/4 v2, 0x1

    return v2

    .line 656
    .end local v3    # "data":Lcom/samsung/android/knox/EnrollData;
    :cond_27
    goto :goto_b

    .line 659
    :cond_28
    const/4 v2, 0x0

    return v2
.end method
