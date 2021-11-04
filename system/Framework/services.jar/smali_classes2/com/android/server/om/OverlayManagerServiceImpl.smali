.class final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;,
        Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;,
        Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;,
        Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;
    }
.end annotation


# static fields
.field public static final FLAG_GET_ENABLED_ALL_OVERLAYS:I = 0x0

.field public static final FLAG_GET_ENABLED_GOOGLE_OVERLAYS:I = 0x1

.field public static final FLAG_GET_ENABLED_SAMSUNGTHEME_OVERLAYS:I = 0x2

.field public static final FLAG_GET_ENABLED_SAMSUNGTHEME_OVERLAYS_EXCEPT_THEMEPARK:I = 0x3

.field private static final FLAG_OVERLAY_IS_BEING_REPLACED:I = 0x2

.field private static final FLAG_TARGET_IS_BEING_REPLACED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mDefaultOverlays:[Ljava/lang/String;

.field private mDisablePackageCount:I

.field private mDisablePackageNamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnablePackageNamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field private final mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

.field private final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field private final mPackageManager:Lcom/android/server/om/PackageManagerHelper;

.field mReapplyCallback:Landroid/content/om/ISamsungOverlayCallback;

.field private mReapplyDisableObserver:Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method constructor <init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V
    .registers 9
    .param p1, "packageManager"    # Lcom/android/server/om/PackageManagerHelper;
    .param p2, "idmapManager"    # Lcom/android/server/om/IdmapManager;
    .param p3, "settings"    # Lcom/android/server/om/OverlayManagerSettings;
    .param p4, "overlayConfig"    # Lcom/android/internal/content/om/OverlayConfig;
    .param p5, "defaultOverlays"    # [Ljava/lang/String;
    .param p6, "listener"    # Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I

    .line 159
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 160
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 161
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 162
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 163
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    .line 164
    iput-object p6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    .line 166
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;Lcom/android/server/om/OverlayManagerServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mReapplyDisableObserver:Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;

    .line 168
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/om/OverlayManagerServiceImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 80
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageNamesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/om/OverlayManagerServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 80
    iget v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/server/om/OverlayManagerServiceImpl;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 80
    iget v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/om/OverlayManagerServiceImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 80
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mEnablePackageNamesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/om/OverlayManagerServiceImpl;)Lcom/android/server/om/PackageManagerHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 80
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    return-object v0
.end method

.method private addOverlaysForKnox(Ljava/lang/String;II)V
    .registers 9
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 1260
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOverlaysForKnox targetPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_22
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1266
    .local v0, "ois":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1267
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    if-ge v2, v1, :cond_3e

    .line 1268
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 1269
    .local v3, "oi":Landroid/content/om/OverlayInfo;
    iget-object v4, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;I)V

    .line 1267
    .end local v3    # "oi":Landroid/content/om/OverlayInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 1271
    .end local v2    # "i":I
    :cond_3e
    return-void
.end method

.method private calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;II)I
    .registers 7
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 1095
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6

    .line 1096
    const/4 v0, 0x4

    return v0

    .line 1099
    :cond_6
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_c

    .line 1100
    const/4 v0, 0x5

    return v0

    .line 1104
    :cond_c
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_1c

    if-eqz p2, :cond_13

    goto :goto_1c

    .line 1105
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null overlay package not compatible with no flags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1108
    :cond_1c
    :goto_1c
    if-nez p1, :cond_20

    .line 1109
    const/4 v0, 0x0

    return v0

    .line 1112
    :cond_20
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/pm/PackageInfo;I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1113
    const/4 v0, 0x1

    return v0

    .line 1116
    :cond_2a
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Ljava/lang/String;I)Z

    move-result v0

    .line 1117
    .local v0, "enabled":Z
    if-eqz v0, :cond_36

    const/4 v1, 0x3

    goto :goto_37

    :cond_36
    const/4 v1, 0x2

    :goto_37
    return v1
.end method

.method private getPackageConfiguredPriority(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 878
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/om/OverlayConfig;->getPriority(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isPackageConfiguredEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 882
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPackageConfiguredMutable(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 874
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z
    .registers 7
    .param p1, "theTruth"    # Landroid/content/pm/PackageInfo;
    .param p2, "oldSettings"    # Landroid/content/om/OverlayInfo;

    .line 129
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 130
    return v0

    .line 132
    :cond_4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 133
    return v0

    .line 135
    :cond_f
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 136
    return v0

    .line 139
    :cond_1a
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v1

    .line 140
    .local v1, "isMutable":Z
    iget-boolean v2, p2, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eq v1, v2, :cond_25

    .line 141
    return v0

    .line 145
    :cond_25
    if-nez v1, :cond_34

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 146
    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_34

    .line 147
    return v0

    .line 150
    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method private removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .registers 8
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .line 1139
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1140
    return-void

    .line 1142
    :cond_9
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v0

    .line 1143
    .local v0, "userIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2f

    aget v3, v0, v2

    .line 1145
    .local v3, "userId":I
    :try_start_15
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 1146
    .local v4, "tmp":Landroid/content/om/OverlayInfo;
    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-boolean v5, v4, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z
    :try_end_27
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_15 .. :try_end_27} :catch_2b

    if-nez v5, :cond_2a

    .line 1148
    return-void

    .line 1152
    .end local v4    # "tmp":Landroid/content/om/OverlayInfo;
    :cond_2a
    goto :goto_2c

    .line 1150
    :catch_2b
    move-exception v4

    .line 1143
    .end local v3    # "userId":I
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1154
    :cond_2f
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    .line 1155
    return-void
.end method

.method private updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V
    .registers 14
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 418
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 423
    .local v0, "targetOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    move v1, p2

    .line 428
    .local v1, "overlayPkgUserId":I
    :goto_f
    const/4 v2, 0x0

    .line 429
    .local v2, "modified":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 433
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    iget-object v6, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, v1}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 439
    .local v5, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_39

    .line 440
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v7, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v8, v4, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v6

    or-int/2addr v2, v6

    .line 441
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    goto :goto_52

    .line 444
    :cond_39
    :try_start_39
    iget-object v6, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v6, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v6
    :try_end_3f
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_39 .. :try_end_3f} :catch_41

    or-int/2addr v2, v6

    .line 448
    goto :goto_52

    .line 445
    :catch_41
    move-exception v6

    .line 446
    .local v6, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v7, "OverlayManager"

    const-string v8, "failed to update settings"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v8, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v7

    or-int/2addr v2, v7

    .line 450
    .end local v4    # "oi":Landroid/content/om/OverlayInfo;
    .end local v5    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_52
    goto :goto_14

    .line 452
    :cond_53
    if-nez v2, :cond_d3

    .line 454
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 457
    .local v3, "enabledOverlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const-string v5, "android"

    invoke-virtual {v4, v5, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 458
    .local v5, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_81

    .line 459
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v5    # "oi":Landroid/content/om/OverlayInfo;
    :cond_81
    goto :goto_6a

    .line 463
    :cond_82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_86
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 464
    .restart local v5    # "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 465
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v5    # "oi":Landroid/content/om/OverlayInfo;
    :cond_9d
    goto :goto_86

    .line 471
    :cond_9e
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v4, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 472
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    if-nez v4, :cond_a9

    move-object v6, v5

    goto :goto_ab

    :cond_a9
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 473
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_ab
    if-nez v6, :cond_ae

    goto :goto_b0

    :cond_ae
    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 476
    .local v5, "resourceDirs":[Ljava/lang/String;
    :goto_b0
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_bc

    .line 477
    const/4 v2, 0x1

    goto :goto_d3

    .line 478
    :cond_bc
    if-eqz v5, :cond_d3

    .line 480
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_bf
    array-length v8, v5

    if-ge v7, v8, :cond_d3

    .line 481
    aget-object v8, v5, v7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d0

    .line 482
    const/4 v2, 0x1

    .line 483
    goto :goto_d3

    .line 480
    :cond_d0
    add-int/lit8 v7, v7, 0x1

    goto :goto_bf

    .line 489
    .end local v3    # "enabledOverlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "resourceDirs":[Ljava/lang/String;
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "index":I
    :cond_d3
    :goto_d3
    if-eqz v2, :cond_da

    .line 490
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 492
    :cond_da
    return-void
.end method

.method private updateState(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 14
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "overlayPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 1029
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1033
    .local v0, "targetPackage":Landroid/content/pm/PackageInfo;
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, p3

    .line 1034
    .local v1, "overlayPkgUserId":I
    :goto_10
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v3, p2, v1}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1035
    .local v3, "overlayPackage":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x1

    const-string v5, "OverlayManager"

    if-eqz v3, :cond_3d

    iget-boolean v6, v3, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-eqz v6, :cond_3d

    if-ne p4, v4, :cond_3d

    .line 1037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateState] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is samsung theme, skip now (upgrading state), then idmap will be updated soon (upgraded state)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    return v2

    .line 1047
    .end local v1    # "overlayPkgUserId":I
    :cond_3d
    iget-boolean v1, v3, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-eqz v1, :cond_8a

    .line 1048
    const-string v1, "com.samsung.themedesigner.OV"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1050
    .local v1, "keyPath":Ljava/lang/StringBuilder;
    const-string v6, "/data/overlays/themepark/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    iget-wide v6, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    new-instance v6, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8a

    .line 1055
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verifying overlay package is failed for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return v2

    .line 1062
    .end local v1    # "keyPath":Ljava/lang/StringBuilder;
    :cond_8a
    const/4 v1, 0x0

    .line 1063
    .local v1, "modified":Z
    if-eqz v0, :cond_a4

    if-eqz v3, :cond_a4

    .line 1064
    const-string v6, "android"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 1065
    invoke-direct {p0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 1066
    :cond_9d
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v6, v0, v3, p3}, Lcom/android/server/om/IdmapManager;->createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    move-result v6

    or-int/2addr v1, v6

    .line 1069
    :cond_a4
    if-eqz v3, :cond_bc

    .line 1070
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1071
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    .line 1070
    invoke-virtual {v6, p2, p3, v7}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 1072
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-virtual {v6, p2, p3, v7}, Lcom/android/server/om/OverlayManagerSettings;->setCategory(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 1076
    :cond_bc
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v6, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->getState(Ljava/lang/String;I)I

    move-result v6

    .line 1077
    .local v6, "currentState":I
    invoke-direct {p0, v0, v3, p3, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;II)I

    move-result v7

    .line 1079
    .local v7, "newState":I
    if-eq v6, v7, :cond_f5

    .line 1080
    sget-boolean v8, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v8, :cond_ee

    .line 1081
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v2

    .line 1082
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    const/4 v2, 0x2

    .line 1083
    invoke-static {v6}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    const/4 v2, 0x3

    .line 1084
    invoke-static {v7}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    .line 1081
    const-string v2, "%s:%d: %s -> %s"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_ee
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p2, p3, v7}, Lcom/android/server/om/OverlayManagerSettings;->setState(Ljava/lang/String;II)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1088
    :cond_f5
    return v1
.end method


# virtual methods
.method applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)Z
    .registers 12
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/content/om/ISamsungOverlayCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/om/ISamsungOverlayCallback;",
            ")Z"
        }
    .end annotation

    .line 1202
    .local p1, "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/io/File;

    const-string v0, "/data/overlays/current_locale_apks"

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;ZLjava/io/File;)Z

    move-result v0

    return v0
.end method

.method applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;Z)Z
    .registers 13
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/content/om/ISamsungOverlayCallback;
    .param p5, "reapply"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/om/ISamsungOverlayCallback;",
            "Z)Z"
        }
    .end annotation

    .line 1210
    .local p1, "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;ZLjava/io/File;)Z

    move-result v0

    return v0
.end method

.method applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;ZLjava/io/File;)Z
    .registers 15
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/content/om/ISamsungOverlayCallback;
    .param p5, "reapply"    # Z
    .param p6, "currentStyleDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/om/ISamsungOverlayCallback;",
            "Z",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 1218
    .local p1, "disablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "enablePackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v1, "OverlayManager"

    if-eqz v0, :cond_38

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applySamsungThemeOverlays packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "userId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callback = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reapply = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string v0, "Current Overlays "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_38
    if-nez p6, :cond_42

    .line 1227
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/overlays/currentstyle"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p6, v0

    .line 1229
    :cond_42
    invoke-virtual {p6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1230
    invoke-virtual {p6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1231
    .local v0, "overlayFiles":[Ljava/io/File;
    if-nez v0, :cond_55

    .line 1232
    const-string v2, "[applyOverlays] List of overlayFiles is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/4 v1, 0x0

    return v1

    .line 1236
    .end local v0    # "overlayFiles":[Ljava/io/File;
    :cond_55
    if-eqz p5, :cond_86

    .line 1237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageNamesList:Ljava/util/List;

    .line 1238
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1239
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageNamesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDisablePackageCount:I

    .line 1240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mEnablePackageNamesList:Ljava/util/List;

    .line 1241
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1242
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mReapplyCallback:Landroid/content/om/ISamsungOverlayCallback;

    .line 1243
    new-instance v7, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mReapplyDisableObserver:Lcom/android/server/om/OverlayManagerServiceImpl$ReapplyDisableObserver;

    invoke-direct {v7, p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;Landroid/content/om/ISamsungOverlayCallback;)V

    .line 1245
    .local v7, "overlayManagerCallback":Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    const/4 v5, 0x0

    move-object v3, p6

    move-object v4, p1

    move v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/server/om/PackageManagerHelper;->parseSamsungThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$OverlayManagerCallback;)V

    .line 1248
    .end local v7    # "overlayManagerCallback":Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;
    goto :goto_94

    .line 1249
    :cond_86
    new-instance v7, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;

    invoke-direct {v7, p0, p4}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;Landroid/content/om/ISamsungOverlayCallback;)V

    .line 1251
    .restart local v7    # "overlayManagerCallback":Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/server/om/PackageManagerHelper;->parseSamsungThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$OverlayManagerCallback;)V

    .line 1255
    .end local v7    # "overlayManagerCallback":Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;
    :goto_94
    const/4 v0, 0x1

    return v0
.end method

.method dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/om/DumpState;

    .line 948
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 949
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default overlays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    const-string v2, ";"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    :cond_27
    return-void
.end method

.method getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 2

    .line 955
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    return-object v0
.end method

.method getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 966
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getEnabledOverlayPackageNames(Ljava/lang/String;II)Ljava/util/List;
    .registers 12
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 973
    .local v0, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 975
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v2, "pathsForThemePark":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 978
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_80

    .line 979
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 980
    .local v5, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 982
    const/4 v6, 0x1

    if-eq p3, v6, :cond_74

    const/4 v6, 0x2

    const-string v7, "com.samsung.themedesigner.OV"

    if-eq p3, v6, :cond_5c

    const/4 v6, 0x3

    if-eq p3, v6, :cond_4a

    .line 1008
    iget-boolean v6, v5, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    if-eqz v6, :cond_44

    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 1009
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 1011
    :cond_44
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 1000
    :cond_4a
    iget-boolean v6, v5, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    if-eqz v6, :cond_7d

    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7d

    .line 1001
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 989
    :cond_5c
    iget-boolean v6, v5, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    if-eqz v6, :cond_7d

    .line 991
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 992
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 994
    :cond_6e
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 984
    :cond_74
    iget-boolean v6, v5, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    if-nez v6, :cond_7d

    .line 985
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    .end local v5    # "oi":Landroid/content/om/OverlayInfo;
    :cond_7d
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1017
    .end local v4    # "i":I
    :cond_80
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1019
    return-object v1
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 736
    :catch_7
    move-exception v0

    .line 737
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const/4 v1, 0x0

    return-object v1
.end method

.method getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getOverlaysForUser(I)Ljava/util/Map;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method onOverlayPackageAdded(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 496
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;)V

    .line 497
    return-void
.end method

.method onOverlayPackageAdded(Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;)V
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/content/om/ISamsungOverlayCallback;

    .line 502
    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v15, "OverlayManager"

    if-eqz v0, :cond_29

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageAdded packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_29
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_32

    move v0, v12

    goto :goto_33

    :cond_32
    move v0, v14

    .line 510
    .local v0, "overlayPkgUserId":I
    :goto_33
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v2, v13, v0}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 515
    .end local v0    # "overlayPkgUserId":I
    .local v11, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v11, :cond_59

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "overlay package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was added, but couldn\'t be found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 518
    return-void

    .line 521
    :cond_59
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_8b

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "overlay package = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], isSamsungThemeOverlay = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v11, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] overlayCategory = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_8b
    iget-boolean v0, v11, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-nez v0, :cond_c2

    .line 529
    invoke-static {v11}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_97

    move-object v14, v11

    goto :goto_c3

    .line 539
    :cond_97
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v11, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v6, v11, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 541
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 542
    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v8

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 543
    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Ljava/lang/String;)Z

    move-result v9

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 544
    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Ljava/lang/String;)I

    move-result v10

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 539
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v14, v11

    .end local v11    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v14, "overlayPackage":Landroid/content/pm/PackageInfo;
    move-object v11, v0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V

    move v1, v12

    goto :goto_e9

    .line 528
    .end local v14    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .restart local v11    # "overlayPackage":Landroid/content/pm/PackageInfo;
    :cond_c2
    move-object v14, v11

    .line 531
    .end local v11    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .restart local v14    # "overlayPackage":Landroid/content/pm/PackageInfo;
    :goto_c3
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v14, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v6, v14, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 533
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 534
    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 536
    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Ljava/lang/String;)I

    move-result v10

    iget-object v11, v14, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    iget-boolean v0, v14, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    .line 531
    move-object/from16 v3, p1

    move/from16 v4, p2

    move v1, v12

    move v12, v0

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)V

    .line 548
    :goto_e9
    iget-boolean v0, v14, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-eqz v0, :cond_fc

    .line 549
    const-string v0, "com.samsung.themedesigner.OV"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 550
    const-string/jumbo v0, "this is themepark overlay, so it keeps disabled"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 555
    :cond_fc
    :try_start_fc
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;
    :try_end_fe
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_fc .. :try_end_fe} :catch_12e

    move/from16 v8, p2

    move v2, v1

    move-object v9, v14

    move-object/from16 v1, p0

    .end local v14    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v9, "overlayPackage":Landroid/content/pm/PackageInfo;
    :try_start_104
    invoke-direct {v1, v0, v13, v8, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 557
    iget-boolean v0, v9, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-nez v0, :cond_11d

    .line 558
    invoke-static {v9}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_115

    goto :goto_11d

    .line 562
    :cond_115
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v0, v2, v8}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    goto :goto_12b

    .line 559
    :cond_11d
    :goto_11d
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v9, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    const/4 v7, 0x1

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;Z)V
    :try_end_12b
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_104 .. :try_end_12b} :catch_12c

    .line 568
    :cond_12b
    :goto_12b
    goto :goto_13e

    .line 565
    :catch_12c
    move-exception v0

    goto :goto_134

    .end local v9    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .restart local v14    # "overlayPackage":Landroid/content/pm/PackageInfo;
    :catch_12e
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v8, p2

    move-object v9, v14

    .line 566
    .end local v14    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .restart local v9    # "overlayPackage":Landroid/content/pm/PackageInfo;
    :goto_134
    const-string v2, "failed to update settings"

    invoke-static {v15, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v13, v8}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 569
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_13e
    return-void
.end method

.method onOverlayPackageChanged(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 572
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v1, "OverlayManager"

    if-eqz v0, :cond_23

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageChanged packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 578
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 579
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_39
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_23 .. :try_end_39} :catch_3a

    .line 583
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    :cond_39
    goto :goto_40

    .line 581
    :catch_3a
    move-exception v0

    .line 582
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v2, "failed to update settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_40
    return-void
.end method

.method onOverlayPackageChanged(Ljava/lang/String;IZLandroid/content/om/ISamsungOverlayCallback;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "enable"    # Z
    .param p4, "callback"    # Landroid/content/om/ISamsungOverlayCallback;

    .line 589
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v1, "OverlayManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    .line 590
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v3, 0x1

    .line 591
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 590
    const-string/jumbo v3, "onOverlayPackageChanged packageName=%s enable=%s userId=%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_24
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v2

    goto :goto_2d

    :cond_2c
    move v0, p2

    .line 594
    .local v0, "overlayPkgUserId":I
    :goto_2d
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v3, p1, v0}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 596
    .local v3, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_36

    .line 597
    return-void

    .line 600
    :cond_36
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 601
    return-void

    .line 604
    :cond_3d
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 605
    invoke-interface {v4, v5, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 606
    .local v4, "targetPackage":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_62

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOverlayPackageChanged "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has wrong target"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void

    .line 610
    :cond_62
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v1

    .line 611
    .local v1, "modified":Z
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    or-int/2addr v1, v2

    .line 612
    if-eqz v1, :cond_92

    .line 613
    iget-boolean v2, v3, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-nez v2, :cond_86

    .line 614
    invoke-static {v3}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_7e

    goto :goto_86

    .line 618
    :cond_7e
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v2, v5, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    goto :goto_92

    .line 615
    :cond_86
    :goto_86
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move v8, p2

    move-object v9, p4

    move v10, p3

    invoke-interface/range {v5 .. v10}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;Z)V
    :try_end_92
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_3d .. :try_end_92} :catch_93

    .line 621
    :cond_92
    :goto_92
    return-void

    .line 622
    .end local v1    # "modified":Z
    .end local v4    # "targetPackage":Landroid/content/pm/PackageInfo;
    :catch_93
    move-exception v1

    .line 623
    .local v1, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;->printStackTrace()V

    .line 624
    iget-boolean v2, v3, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-eqz v2, :cond_a5

    .line 625
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    const/4 v6, 0x0

    move-object v5, p1

    move v7, p2

    move-object v8, p4

    move v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;Z)V

    .line 628
    .end local v1    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :cond_a5
    return-void
.end method

.method onOverlayPackageRemoved(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 686
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 687
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 688
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_18
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_18} :catch_19

    .line 692
    .end local v0    # "overlayInfo":Landroid/content/om/OverlayInfo;
    :cond_18
    goto :goto_21

    .line 690
    :catch_19
    move-exception v0

    .line 691
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v1, "OverlayManager"

    const-string v2, "failed to remove overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_21
    return-void
.end method

.method onOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;)V
    .registers 13
    .param p1, "overlayPackageName"    # Ljava/lang/String;
    .param p2, "overlayTarget"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/content/om/ISamsungOverlayCallback;

    .line 698
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v1, "OverlayManager"

    if-eqz v0, :cond_2b

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageRemoved packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callback="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_2b
    if-nez p1, :cond_2e

    .line 703
    return-void

    .line 705
    :cond_2e
    const/4 v0, 0x0

    .line 706
    .local v0, "isSamsungThemeOverlay":Z
    if-eqz p2, :cond_5b

    .line 709
    :try_start_31
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    .line 710
    .local v2, "overlayInfo":Landroid/content/om/OverlayInfo;
    iget-boolean v3, v2, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    move v0, v3

    .line 712
    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    :try_end_3d
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_31 .. :try_end_3d} :catch_3e

    .line 718
    .end local v2    # "overlayInfo":Landroid/content/om/OverlayInfo;
    goto :goto_5b

    .line 713
    :catch_3e
    move-exception v2

    .line 716
    .local v2, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overlay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was not found in settings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {v2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;->printStackTrace()V

    .line 721
    .end local v2    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :cond_5b
    :goto_5b
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 723
    if-nez p4, :cond_6d

    if-nez v0, :cond_6d

    if-nez p2, :cond_67

    goto :goto_6d

    .line 727
    :cond_67
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    goto :goto_77

    .line 725
    :cond_6d
    :goto_6d
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;Z)V

    .line 729
    :goto_77
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1, p1, p3}, Lcom/android/server/om/PackageManagerHelper;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 730
    return-void
.end method

.method onOverlayPackageReplaced(Ljava/lang/String;I)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 650
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v1, "OverlayManager"

    if-eqz v0, :cond_23

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageReplaced packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_23
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 656
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_49

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "overlay package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was replaced, but couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 659
    return-void

    .line 663
    :cond_49
    :try_start_49
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    .line 664
    .local v2, "oldOi":Landroid/content/om/OverlayInfo;
    invoke-direct {p0, v0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 665
    if-eqz v2, :cond_68

    iget-object v3, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 666
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 668
    :cond_68
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 669
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 670
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v9

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 671
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Ljava/lang/String;)Z

    move-result v10

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 672
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 668
    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V

    .line 675
    :cond_8d
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, p2, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 676
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_9d
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_49 .. :try_end_9d} :catch_9e

    .line 680
    .end local v2    # "oldOi":Landroid/content/om/OverlayInfo;
    :cond_9d
    goto :goto_a4

    .line 678
    :catch_9e
    move-exception v2

    .line 679
    .local v2, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v3, "failed to update settings"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    .end local v2    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_a4
    return-void
.end method

.method onOverlayPackageReplacing(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 632
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v1, "OverlayManager"

    if-eqz v0, :cond_23

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageReplacing packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 639
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 641
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 642
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_3c
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_23 .. :try_end_3c} :catch_3d

    .line 646
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    :cond_3c
    goto :goto_43

    .line 644
    :catch_3d
    move-exception v0

    .line 645
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v2, "failed to update settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_43
    return-void
.end method

.method onTargetPackageAdded(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 357
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTargetPackageAdded packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_23
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 362
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->addOverlaysForKnox(Ljava/lang/String;II)V

    goto :goto_31

    .line 364
    :cond_2e
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 367
    :goto_31
    return-void
.end method

.method onTargetPackageChanged(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 370
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTargetPackageChanged packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 375
    return-void
.end method

.method onTargetPackageRemoved(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 406
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTargetPackageRemoved packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 411
    return-void
.end method

.method onTargetPackageReplaced(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 387
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTargetPackageReplaced packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_23
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    .line 393
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 394
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    .line 395
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 396
    .local v0, "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_40

    .line 397
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 398
    return-void

    .line 402
    .end local v0    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_40
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 403
    return-void
.end method

.method onTargetPackageReplacing(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 378
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTargetPackageReplacing packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 384
    return-void
.end method

.method onUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 350
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserRemoved userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1b
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z

    .line 354
    return-void
.end method

.method removeIdmapForOverlay(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 959
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 960
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 961
    return-void
.end method

.method setEnabled(Ljava/lang/String;ZI)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 753
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Ljava/lang/String;ZIZ)Z

    move-result v0

    return v0
.end method

.method setEnabled(Ljava/lang/String;ZIZ)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I
    .param p4, "avoidRelaunch"    # Z

    .line 759
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    .line 760
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 761
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 760
    const-string/jumbo v3, "setEnabled packageName=%s enable=%s userId=%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "OverlayManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_24
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 765
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_2d

    .line 766
    return v2

    .line 770
    :cond_2d
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v3

    .line 771
    .local v3, "oi":Landroid/content/om/OverlayInfo;
    iget-boolean v4, v3, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-nez v4, :cond_38

    .line 773
    return v2

    .line 776
    :cond_38
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v4

    .line 777
    .local v4, "modified":Z
    iget-object v5, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, p3, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5

    or-int/2addr v4, v5

    .line 779
    if-eqz v4, :cond_50

    .line 782
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v6, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v5, v6, p3, p4}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;IZ)V
    :try_end_50
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2d .. :try_end_50} :catch_51

    .line 788
    :cond_50
    return v1

    .line 789
    .end local v3    # "oi":Landroid/content/om/OverlayInfo;
    .end local v4    # "modified":Z
    :catch_51
    move-exception v1

    .line 790
    .local v1, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    return v2
.end method

.method setEnabledExclusive(Ljava/lang/String;ZI)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "withinCategory"    # Z
    .param p3, "userId"    # I

    .line 797
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Ljava/lang/String;ZIZ)Z

    move-result v0

    return v0
.end method

.method setEnabledExclusive(Ljava/lang/String;ZIZ)Z
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "withinCategory"    # Z
    .param p3, "userId"    # I
    .param p4, "avoidRelaunch"    # Z

    .line 803
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2a

    .line 804
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v5

    .line 805
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v0, v4

    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    .line 804
    const-string/jumbo v6, "setEnabledExclusive packageName=%s withinCategory=%s userId=%d"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "OverlayManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_2a
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v2, v3}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 809
    .local v6, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_33

    .line 810
    return v5

    .line 814
    :cond_33
    :try_start_33
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 815
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v7, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 817
    .local v7, "targetPackageName":Ljava/lang/String;
    invoke-virtual {v1, v7, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    .line 819
    .local v8, "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    const/4 v9, 0x0

    .line 822
    .local v9, "modified":Z
    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 823
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_44
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_8a

    .line 824
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/om/OverlayInfo;

    .line 825
    .local v11, "disabledInfo":Landroid/content/om/OverlayInfo;
    iget-object v12, v11, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 826
    .local v12, "disabledOverlayPackageName":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v13, v12, v3}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 828
    .local v13, "disabledOverlayPackageInfo":Landroid/content/pm/PackageInfo;
    if-nez v13, :cond_62

    .line 829
    iget-object v14, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v14, v12, v3}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v14

    or-int/2addr v9, v14

    .line 830
    goto :goto_87

    .line 833
    :cond_62
    iget-boolean v14, v11, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-nez v14, :cond_67

    .line 835
    goto :goto_87

    .line 838
    :cond_67
    invoke-static {v13}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v14

    if-eqz v14, :cond_6e

    .line 840
    goto :goto_87

    .line 843
    :cond_6e
    if-eqz p2, :cond_7b

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    iget-object v15, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7b

    .line 846
    goto :goto_87

    .line 850
    :cond_7b
    iget-object v14, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v14, v12, v3, v5}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v14

    or-int/2addr v9, v14

    .line 851
    invoke-direct {v1, v7, v12, v3, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v14

    or-int/2addr v9, v14

    .line 823
    .end local v11    # "disabledInfo":Landroid/content/om/OverlayInfo;
    .end local v12    # "disabledOverlayPackageName":Ljava/lang/String;
    .end local v13    # "disabledOverlayPackageInfo":Landroid/content/pm/PackageInfo;
    :goto_87
    add-int/lit8 v10, v10, 0x1

    goto :goto_44

    .line 855
    .end local v10    # "i":I
    :cond_8a
    iget-object v10, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10, v2, v3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v10

    or-int/2addr v9, v10

    .line 856
    invoke-direct {v1, v7, v2, v3, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v10

    or-int/2addr v9, v10

    .line 858
    if-eqz v9, :cond_a2

    .line 861
    iget-object v10, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;
    :try_end_9a
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_33 .. :try_end_9a} :catch_a5

    move/from16 v11, p4

    :try_start_9c
    invoke-interface {v10, v7, v3, v11}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;IZ)V
    :try_end_9f
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_a4

    .line 868
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    .end local v7    # "targetPackageName":Ljava/lang/String;
    .end local v8    # "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v9    # "modified":Z
    :catch_a0
    move-exception v0

    goto :goto_a8

    .line 858
    .restart local v0    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v7    # "targetPackageName":Ljava/lang/String;
    .restart local v8    # "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .restart local v9    # "modified":Z
    :cond_a2
    move/from16 v11, p4

    .line 867
    :goto_a4
    return v4

    .line 868
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    .end local v7    # "targetPackageName":Ljava/lang/String;
    .end local v8    # "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v9    # "modified":Z
    :catch_a5
    move-exception v0

    move/from16 v11, p4

    .line 869
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_a8
    return v5
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 908
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHighestPriority packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    .line 913
    return v1

    .line 916
    :cond_2b
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 917
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_34

    .line 918
    return v1

    .line 921
    :cond_34
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 922
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 924
    :cond_43
    const/4 v1, 0x1

    return v1
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 928
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLowestPriority packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    .line 933
    return v1

    .line 936
    :cond_2b
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 937
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_34

    .line 938
    return v1

    .line 941
    :cond_34
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 942
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 944
    :cond_43
    const/4 v1, 0x1

    return v1
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newParentPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 887
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPriority packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newParentPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_33

    .line 893
    return v1

    .line 896
    :cond_33
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 897
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_3c

    .line 898
    return v1

    .line 901
    :cond_3c
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 902
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 904
    :cond_4b
    const/4 v1, 0x1

    return v1
.end method

.method updateOverlaysForUser(I)Ljava/util/ArrayList;
    .registers 33
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    move-object/from16 v1, p0

    move/from16 v13, p1

    const-string v14, "\' for user "

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v15, "OverlayManager"

    if-eqz v0, :cond_21

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOverlaysForUser newUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_21
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v0

    .line 182
    .local v12, "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v11

    .line 183
    .local v11, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 184
    .local v10, "tmpSize":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v10}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v9, v0

    .line 185
    .local v9, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_38
    if-ge v0, v10, :cond_58

    .line 186
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 187
    .local v2, "chunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 188
    .local v3, "chunkSize":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_45
    if-ge v4, v3, :cond_55

    .line 189
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 190
    .local v5, "oi":Landroid/content/om/OverlayInfo;
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .end local v5    # "oi":Landroid/content/om/OverlayInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 185
    .end local v2    # "chunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v3    # "chunkSize":I
    .end local v4    # "j":I
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 199
    .end local v0    # "i":I
    :cond_58
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v0, 0x0

    goto :goto_61

    .line 200
    :cond_60
    move v0, v13

    :goto_61
    nop

    .line 201
    .local v0, "overlayPkgUserId":I
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v2, v0}, Lcom/android/server/om/PackageManagerHelper;->getOverlayPackages(I)Ljava/util/List;

    move-result-object v7

    .line 206
    .end local v0    # "overlayPkgUserId":I
    .local v7, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 207
    .local v6, "overlayPackagesSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6d
    if-ge v0, v6, :cond_1b5

    .line 208
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 209
    .local v4, "overlayPackage":Landroid/content/pm/PackageInfo;
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 211
    .local v3, "oi":Landroid/content/om/OverlayInfo;
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Ljava/lang/String;)I

    move-result v2

    .line 213
    .local v2, "priority":I
    sget-boolean v16, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string/jumbo v5, "updateOverlaysForUser for overlay "

    if-eqz v16, :cond_a9

    .line 214
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move/from16 v18, v2

    .end local v2    # "priority":I
    .local v18, "priority":I
    const-string v2, " info = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 213
    .end local v18    # "priority":I
    .restart local v2    # "priority":I
    :cond_a9
    move/from16 v18, v2

    .line 217
    .end local v2    # "priority":I
    .restart local v18    # "priority":I
    :goto_ab
    invoke-direct {v1, v4, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v2

    if-eqz v2, :cond_173

    .line 220
    if-eqz v3, :cond_b8

    .line 221
    iget-object v2, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_b8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " init with category "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move/from16 v19, v6

    .end local v6    # "overlayPackagesSize":I
    .local v19, "overlayPackagesSize":I
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    move-object/from16 v20, v7

    .end local v7    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v20, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 230
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v9

    .end local v9    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v21, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 231
    invoke-direct {v1, v9}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v9

    move/from16 v22, v10

    .end local v10    # "tmpSize":I
    .local v22, "tmpSize":I
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 232
    invoke-direct {v1, v10}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v23, v11

    .end local v11    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .local v23, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    iget-object v11, v4, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 234
    if-eqz v3, :cond_101

    move-object/from16 v24, v12

    .end local v12    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v24, "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v12, v3, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    goto :goto_105

    .end local v24    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_101
    move-object/from16 v24, v12

    .end local v12    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v12, v4, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    .line 227
    :goto_105
    move/from16 v25, v18

    .end local v18    # "priority":I
    .local v25, "priority":I
    move-object/from16 v18, v14

    move-object v14, v3

    .end local v3    # "oi":Landroid/content/om/OverlayInfo;
    .local v14, "oi":Landroid/content/om/OverlayInfo;
    move-object v3, v5

    move-object v5, v4

    .end local v4    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v5, "overlayPackage":Landroid/content/pm/PackageInfo;
    move/from16 v4, p1

    move/from16 v26, v0

    move-object v0, v5

    .end local v5    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v26, "i":I
    move-object v5, v8

    move/from16 v8, v19

    .end local v19    # "overlayPackagesSize":I
    .local v8, "overlayPackagesSize":I
    move-object/from16 v27, v20

    .end local v20    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v27, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move/from16 v28, v8

    .end local v8    # "overlayPackagesSize":I
    .local v28, "overlayPackagesSize":I
    move v8, v9

    move-object/from16 v29, v21

    .end local v21    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v29, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    move v9, v10

    move/from16 v16, v22

    .end local v22    # "tmpSize":I
    .local v16, "tmpSize":I
    move/from16 v10, v25

    move-object/from16 v17, v23

    .end local v23    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .local v17, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    move-object/from16 v30, v24

    .end local v24    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v30, "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)V

    .line 236
    if-nez v14, :cond_16e

    .line 237
    iget-boolean v2, v0, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-nez v2, :cond_13a

    invoke-static {v0}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_134

    goto :goto_13a

    :cond_134
    move/from16 v3, v25

    move-object/from16 v5, v30

    goto/16 :goto_19e

    .line 239
    :cond_13a
    :goto_13a
    sget-boolean v2, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v2, :cond_161

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabling overlay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " by default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_161
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v13, v4}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move/from16 v3, v25

    move-object/from16 v5, v30

    goto :goto_19e

    .line 236
    :cond_16e
    move/from16 v3, v25

    move-object/from16 v5, v30

    goto :goto_19e

    .line 255
    .end local v14    # "oi":Landroid/content/om/OverlayInfo;
    .end local v16    # "tmpSize":I
    .end local v17    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v25    # "priority":I
    .end local v26    # "i":I
    .end local v27    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "overlayPackagesSize":I
    .end local v29    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .end local v30    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "i":I
    .restart local v3    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v4    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .restart local v6    # "overlayPackagesSize":I
    .restart local v7    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v10    # "tmpSize":I
    .restart local v11    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v12    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "priority":I
    :cond_173
    move/from16 v26, v0

    move-object v0, v4

    move/from16 v28, v6

    move-object/from16 v27, v7

    move-object/from16 v29, v9

    move/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v30, v12

    move/from16 v25, v18

    move-object/from16 v18, v14

    move-object v14, v3

    .end local v3    # "oi":Landroid/content/om/OverlayInfo;
    .end local v4    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "overlayPackagesSize":I
    .end local v7    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .end local v10    # "tmpSize":I
    .end local v11    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v12    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "priority":I
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    .restart local v14    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v16    # "tmpSize":I
    .restart local v17    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v25    # "priority":I
    .restart local v26    # "i":I
    .restart local v27    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "overlayPackagesSize":I
    .restart local v29    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v30    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget v2, v14, Landroid/content/om/OverlayInfo;->priority:I

    move/from16 v3, v25

    .end local v25    # "priority":I
    .local v3, "priority":I
    if-eq v3, v2, :cond_19c

    .line 256
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v13, v3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Ljava/lang/String;II)V

    .line 257
    iget-object v2, v14, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v5, v30

    .end local v30    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19e

    .line 255
    .end local v5    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v30    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_19c
    move-object/from16 v5, v30

    .line 260
    .end local v30    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_19e
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v6, v29

    .end local v29    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v6, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v0    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .end local v3    # "priority":I
    .end local v14    # "oi":Landroid/content/om/OverlayInfo;
    add-int/lit8 v0, v26, 0x1

    move-object v12, v5

    move-object v9, v6

    move/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v14, v18

    move-object/from16 v7, v27

    move/from16 v6, v28

    .end local v26    # "i":I
    .local v0, "i":I
    goto/16 :goto_6d

    .end local v5    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "tmpSize":I
    .end local v17    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v27    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "overlayPackagesSize":I
    .local v6, "overlayPackagesSize":I
    .restart local v7    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v10    # "tmpSize":I
    .restart local v11    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v12    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1b5
    move/from16 v26, v0

    move/from16 v28, v6

    move-object/from16 v27, v7

    move-object v6, v9

    move/from16 v16, v10

    move-object/from16 v17, v11

    move-object v5, v12

    move-object/from16 v18, v14

    const/4 v4, 0x1

    .line 265
    .end local v0    # "i":I
    .end local v7    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .end local v10    # "tmpSize":I
    .end local v11    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v12    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v6, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v16    # "tmpSize":I
    .restart local v17    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v27    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v28    # "overlayPackagesSize":I
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 266
    .local v2, "storedOverlayInfosSize":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1c9
    if-ge v0, v2, :cond_1e5

    .line 267
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 268
    .local v3, "oi":Landroid/content/om/OverlayInfo;
    iget-object v7, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v8, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v9, v3, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v7, v8, v9}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 269
    invoke-direct {v1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 270
    iget-object v7, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v3    # "oi":Landroid/content/om/OverlayInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c9

    .line 275
    .end local v0    # "i":I
    :cond_1e5
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0}, Lcom/android/server/om/PackageManagerHelper;->getAllPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1ef
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_218

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 276
    .local v3, "pkg":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    const/16 v8, 0x80

    invoke-interface {v7, v3, v8, v13}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 278
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {v7}, Lcom/android/server/om/SemSamsungThemeUtils;->hasSamsungThemeSibling(Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-eqz v8, :cond_217

    .line 279
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v9, "samsungtheme-sibling"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 280
    .local v8, "siblingSourcePkg":Ljava/lang/String;
    invoke-static {v8, v3}, Lcom/android/server/om/SemSamsungThemeUtils;->addSiblingTarget(Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    .end local v8    # "siblingSourcePkg":Ljava/lang/String;
    :cond_217
    goto :goto_1ef

    .line 290
    :cond_218
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_21a
    move/from16 v7, v28

    .end local v28    # "overlayPackagesSize":I
    .local v7, "overlayPackagesSize":I
    if-ge v3, v7, :cond_24c

    .line 291
    move-object/from16 v8, v27

    .end local v27    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v8, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 293
    .local v9, "overlayPackage":Landroid/content/pm/PackageInfo;
    :try_start_227
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_22b
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_227 .. :try_end_22b} :catch_232

    const/4 v11, 0x0

    :try_start_22c
    invoke-direct {v1, v0, v10, v13, v11}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_22f
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_22c .. :try_end_22f} :catch_230

    .line 298
    goto :goto_240

    .line 295
    :catch_230
    move-exception v0

    goto :goto_234

    :catch_232
    move-exception v0

    const/4 v11, 0x0

    .line 296
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_234
    const-string v10, "failed to update settings"

    invoke-static {v15, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    iget-object v10, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 299
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_240
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    .end local v9    # "overlayPackage":Landroid/content/pm/PackageInfo;
    add-int/lit8 v3, v3, 0x1

    move/from16 v28, v7

    move-object/from16 v27, v8

    goto :goto_21a

    .end local v8    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v27    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_24c
    move-object/from16 v8, v27

    const/4 v11, 0x0

    .line 303
    .end local v3    # "i":I
    .end local v27    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 304
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_253
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26b

    .line 305
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    .local v0, "targetPackageName":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v9, v0, v13}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-nez v9, :cond_26a

    .line 307
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 309
    .end local v0    # "targetPackageName":Ljava/lang/String;
    :cond_26a
    goto :goto_253

    .line 312
    :cond_26b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v0

    .line 313
    .local v9, "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 314
    invoke-virtual {v0, v13}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v10

    .line 315
    .local v10, "userOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 316
    .local v12, "userOverlayTargetCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27c
    if-ge v0, v12, :cond_2c4

    .line 317
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 318
    .local v14, "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    if-eqz v14, :cond_28b

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    goto :goto_28d

    :cond_28b
    move/from16 v19, v11

    :goto_28d
    move/from16 v20, v19

    .line 319
    .local v20, "overlayCount":I
    const/16 v19, 0x0

    move/from16 v11, v19

    .local v11, "j":I
    :goto_293
    move/from16 v4, v20

    .end local v20    # "overlayCount":I
    .local v4, "overlayCount":I
    if-ge v11, v4, :cond_2bb

    .line 320
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v2

    .end local v2    # "storedOverlayInfosSize":I
    .local v20, "storedOverlayInfosSize":I
    move-object/from16 v2, v19

    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 321
    .local v2, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_2af

    .line 322
    move-object/from16 v19, v3

    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2b1

    .line 321
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2af
    move-object/from16 v19, v3

    .line 319
    .end local v2    # "oi":Landroid/content/om/OverlayInfo;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2b1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v19

    move/from16 v2, v20

    move/from16 v20, v4

    const/4 v4, 0x1

    goto :goto_293

    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "storedOverlayInfosSize":I
    .local v2, "storedOverlayInfosSize":I
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2bb
    move/from16 v20, v2

    move-object/from16 v19, v3

    .line 316
    .end local v2    # "storedOverlayInfosSize":I
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "overlayCount":I
    .end local v11    # "j":I
    .end local v14    # "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v20    # "storedOverlayInfosSize":I
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    const/4 v11, 0x0

    goto :goto_27c

    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "storedOverlayInfosSize":I
    .restart local v2    # "storedOverlayInfosSize":I
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2c4
    move/from16 v20, v2

    move-object/from16 v19, v3

    .line 328
    .end local v0    # "i":I
    .end local v2    # "storedOverlayInfosSize":I
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v20    # "storedOverlayInfosSize":I
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2cc
    if-ge v4, v3, :cond_377

    aget-object v11, v2, v4

    .line 330
    .local v11, "defaultOverlay":Ljava/lang/String;
    :try_start_2d0
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v11, v13}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 331
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v14, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v9, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_33d

    .line 332
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2e3
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2d0 .. :try_end_2e3} :catch_347

    move-object/from16 v21, v2

    :try_start_2e5
    const-string v2, "Enabling default overlay \'"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for target \'"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in category \'"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_301
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2e5 .. :try_end_301} :catch_33b

    move-object/from16 v2, v18

    :try_start_303
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v14, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;
    :try_end_312
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_303 .. :try_end_312} :catch_334

    move/from16 v18, v3

    :try_start_314
    iget-object v3, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;
    :try_end_316
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_314 .. :try_end_316} :catch_332

    move-object/from16 v29, v6

    const/4 v6, 0x1

    .end local v6    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v29    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :try_start_319
    invoke-virtual {v14, v3, v13, v6}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    .line 336
    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v14, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;
    :try_end_320
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_319 .. :try_end_320} :catch_32f

    const/4 v6, 0x0

    :try_start_321
    invoke-direct {v1, v3, v14, v13, v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_346

    .line 337
    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_32c
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_321 .. :try_end_32c} :catch_32d

    goto :goto_346

    .line 340
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    :catch_32d
    move-exception v0

    goto :goto_351

    :catch_32f
    move-exception v0

    const/4 v6, 0x0

    goto :goto_351

    .end local v29    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v6    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :catch_332
    move-exception v0

    goto :goto_337

    :catch_334
    move-exception v0

    move/from16 v18, v3

    :goto_337
    move-object/from16 v29, v6

    const/4 v6, 0x0

    goto :goto_351

    :catch_33b
    move-exception v0

    goto :goto_34a

    .line 331
    .restart local v0    # "oi":Landroid/content/om/OverlayInfo;
    :cond_33d
    move-object/from16 v21, v2

    move-object/from16 v29, v6

    move-object/from16 v2, v18

    const/4 v6, 0x0

    move/from16 v18, v3

    .line 343
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    .end local v6    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v29    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :cond_346
    :goto_346
    goto :goto_36b

    .line 340
    .end local v29    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v6    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :catch_347
    move-exception v0

    move-object/from16 v21, v2

    :goto_34a
    move-object/from16 v29, v6

    move-object/from16 v2, v18

    const/4 v6, 0x0

    move/from16 v18, v3

    .line 341
    .end local v6    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .restart local v29    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :goto_351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to set default overlay \'"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .end local v11    # "defaultOverlay":Ljava/lang/String;
    :goto_36b
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v18

    move-object/from16 v6, v29

    move-object/from16 v18, v2

    move-object/from16 v2, v21

    goto/16 :goto_2cc

    .line 346
    .end local v29    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v6    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :cond_377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
