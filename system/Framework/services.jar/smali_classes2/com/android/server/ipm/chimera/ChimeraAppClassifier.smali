.class public Lcom/android/server/ipm/chimera/ChimeraAppClassifier;
.super Ljava/lang/Object;
.source "ChimeraAppClassifier.java"


# static fields
.field private static final IMPORTANT_PKG_TYPE_ACTIVE_MUSIC_RECORD:I = 0x40

.field private static final IMPORTANT_PKG_TYPE_ACTIVE_TRAFFIC:I = 0x80

.field private static final IMPORTANT_PKG_TYPE_COCKTAILBAR:I = 0x20000

.field private static final IMPORTANT_PKG_TYPE_DEFAULT_APP:I = 0x400

.field private static final IMPORTANT_PKG_TYPE_DEVICE_ADMIN:I = 0x100

.field private static final IMPORTANT_PKG_TYPE_DISABLE_FORCESTOP:I = 0x10000

.field private static final IMPORTANT_PKG_TYPE_HOME:I = 0x800

.field private static final IMPORTANT_PKG_TYPE_JOBSCHEDULER:I = 0x40000

.field private static final IMPORTANT_PKG_TYPE_LATEST_PROTECTED:I = 0x2

.field private static final IMPORTANT_PKG_TYPE_LOCK_SCREEN:I = 0x2000

.field private static final IMPORTANT_PKG_TYPE_NO_APP_ICON:I = 0x10

.field private static final IMPORTANT_PKG_TYPE_ONGOING_NOTIFICATION:I = 0x4

.field private static final IMPORTANT_PKG_TYPE_RECENTLY_USED:I = 0x1

.field private static final IMPORTANT_PKG_TYPE_RUNNING_LOCATION:I = 0x8000

.field private static final IMPORTANT_PKG_TYPE_SYSTEM:I = 0x4000

.field private static final IMPORTANT_PKG_TYPE_TOP:I = 0x1000

.field private static final IMPORTANT_PKG_TYPE_VPN_SERVICE:I = 0x20

.field private static final IMPORTANT_PKG_TYPE_WALLPAPER:I = 0x200

.field private static final IMPORTANT_PKG_TYPE_WIDGET:I = 0x8

.field private static final PROTECTED_ML_LAUNCH_OOM_ADJ:I = 0x352

.field private static final PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROTECTED_SD_LAUNCH_OOM_ADJ:I = 0x35c

.field private static final TAG:Ljava/lang/String; = "ChimeraAppClassifier"

.field private static mProtectOnBubDisabledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBluetoothUsingUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLongLiveApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

.field private mTriggerSource:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;-><init>()V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    .line 90
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$2;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$2;-><init>()V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mProtectOnBubDisabledList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;)V
    .registers 3
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    .line 99
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    .line 105
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 106
    return-void
.end method

.method private clearLongLiveApps()V
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 256
    return-void
.end method

.method public static isActiveTrafficApp(Ljava/lang/String;II)Z
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 183
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isActiveTrafficAppForChimera(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private isBluetoothUsingUid(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 274
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLongLiveApp(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 187
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 188
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/ipm/chimera/-$$Lambda$pVe71H_sWQhI5S21pL_o_O_Z8Ys;

    invoke-direct {v3, v2}, Lcom/android/server/ipm/chimera/-$$Lambda$pVe71H_sWQhI5S21pL_o_O_Z8Ys;-><init>(Lcom/android/server/ipm/chimera/SystemRepository;)V

    .line 187
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 190
    .local v0, "longLiveApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_37

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isLongLiveApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChimeraAppClassifier"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x1

    return v1

    .line 195
    :cond_37
    const/4 v1, 0x0

    return v1
.end method

.method private isNeverKilledApp(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->isLongLiveApp(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 200
    return v1

    .line 203
    :cond_8
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v2, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne v0, v2, :cond_15

    .line 204
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 206
    :cond_15
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

    .line 207
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v1, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    nop

    .line 206
    :goto_29
    return v1
.end method

.method private isProtectOnBubDisabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 278
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mProtectOnBubDisabledList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private mars2ChimeraType(I)I
    .registers 4
    .param p1, "marsType"    # I

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "chimeraType":I
    and-int/lit16 v1, p1, 0x400

    if-lez v1, :cond_7

    .line 112
    const/16 v0, 0x10

    .line 114
    :cond_7
    and-int/lit16 v1, p1, 0x200

    if-lez v1, :cond_d

    .line 115
    or-int/lit16 v0, v0, 0x4000

    .line 117
    :cond_d
    and-int/lit16 v1, p1, 0x800

    if-lez v1, :cond_14

    .line 118
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 120
    :cond_14
    and-int/lit8 v1, p1, 0x10

    if-lez v1, :cond_1b

    .line 121
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 123
    :cond_1b
    const v1, 0x60120

    and-int/2addr v1, p1

    if-lez v1, :cond_24

    .line 125
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 127
    :cond_24
    and-int/lit16 v1, p1, 0x2000

    if-lez v1, :cond_2b

    .line 128
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 130
    :cond_2b
    and-int/lit8 v1, p1, 0x40

    if-lez v1, :cond_31

    .line 131
    or-int/lit16 v0, v0, 0x80

    .line 133
    :cond_31
    and-int/lit16 v1, p1, 0x80

    if-lez v1, :cond_37

    .line 134
    or-int/lit8 v0, v0, 0x20

    .line 136
    :cond_37
    const v1, 0x8000

    and-int/2addr v1, p1

    if-lez v1, :cond_3f

    .line 137
    or-int/lit8 v0, v0, 0x40

    .line 139
    :cond_3f
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_45

    .line 140
    or-int/lit16 v0, v0, 0x800

    .line 142
    :cond_45
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_4b

    .line 143
    or-int/lit8 v0, v0, 0x8

    .line 145
    :cond_4b
    and-int/lit16 v1, p1, 0x4000

    if-lez v1, :cond_51

    .line 146
    or-int/lit8 v0, v0, 0x2

    .line 148
    :cond_51
    if-eqz p1, :cond_55

    if-nez v0, :cond_57

    .line 149
    :cond_55
    or-int/lit8 v0, v0, 0x1

    .line 151
    :cond_57
    return v0
.end method

.method private updateBluetoothUsingUidList()V
    .registers 4

    .line 259
    const/4 v0, 0x1

    .line 261
    .local v0, "KEY_BT_CONNECTED_UID":I
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 262
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/android/server/ipm/chimera/-$$Lambda$1RwULshHuiVWMJUnlowtRUfW0c8;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$1RwULshHuiVWMJUnlowtRUfW0c8;

    .line 263
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraAppClassifier$BFNFUoJNwDMBWHw0WrNgNZ3K0E8;

    invoke-direct {v2, p0}, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraAppClassifier$BFNFUoJNwDMBWHw0WrNgNZ3K0E8;-><init>(Lcom/android/server/ipm/chimera/ChimeraAppClassifier;)V

    .line 264
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 271
    return-void
.end method


# virtual methods
.method public getPackageType(Ljava/lang/String;ILjava/util/Set;I)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p4, "uId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 212
    .local p3, "pidList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 213
    .local v0, "chimeraType":I
    const/4 v1, 0x0

    .line 215
    .local v1, "marsType":I
    if-eqz p1, :cond_32

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_32

    .line 216
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_2e

    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 220
    :cond_2e
    invoke-direct {p0, v1}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mars2ChimeraType(I)I

    move-result v0

    .line 225
    .end local v2    # "type":Ljava/lang/String;
    :cond_32
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsEnabled()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 226
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 227
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 230
    or-int/lit16 v0, v0, 0x1000

    .line 233
    :cond_52
    invoke-direct {p0, p1, p2}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->isNeverKilledApp(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 234
    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    .line 237
    :cond_5b
    invoke-direct {p0, p4}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->isBluetoothUsingUid(I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 238
    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    .line 241
    :cond_64
    invoke-direct {p0, p1}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->isProtectOnBubDisabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 242
    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    .line 245
    :cond_6d
    return v0
.end method

.method public synthetic lambda$updateBluetoothUsingUidList$0$ChimeraAppClassifier(Ljava/util/Map;)V
    .registers 6
    .param p1, "apps"    # Ljava/util/Map;

    .line 265
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 266
    .local v1, "i":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 267
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    .end local v1    # "i":I
    :cond_2a
    goto :goto_8

    .line 270
    :cond_2b
    return-void
.end method

.method public prepare(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)V
    .registers 2
    .param p1, "triggerSource"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 249
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 250
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->clearLongLiveApps()V

    .line 251
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->updateBluetoothUsingUidList()V

    .line 252
    return-void
.end method

.method public updatePackagesType(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "packageTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getPkgsTypeForChimera(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_60

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_60

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    .local v2, "ptype":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "packageInfo":[Ljava/lang/String;
    if-eqz v4, :cond_5f

    .line 164
    const/4 v5, 0x0

    .line 165
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 166
    .local v6, "type":Ljava/lang/String;
    const/4 v7, 0x0

    .line 168
    .local v7, "userId":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_32
    aget-object v8, v4, v8

    move-object v5, v8

    .line 169
    const/4 v8, 0x1

    aget-object v8, v4, v8

    move-object v7, v8

    .line 170
    const/4 v8, 0x2

    aget-object v8, v4, v8
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_3c} :catch_56

    move-object v6, v8

    .line 174
    nop

    .line 175
    iget-object v8, p0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .line 171
    :catch_56
    move-exception v3

    .line 172
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "ChimeraAppClassifier"

    const-string v9, "NumberFormatException!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto :goto_1a

    .line 177
    .end local v2    # "ptype":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "packageInfo":[Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/String;
    :cond_5f
    :goto_5f
    goto :goto_1a

    .line 180
    :cond_60
    return-void
.end method
