.class public Lcom/android/server/am/MARsPackageInfo;
.super Ljava/lang/Object;
.source "MARsPackageInfo.java"


# static fields
.field public static final FLAG_OPTION_RESTRICT_ALLOW_ALARM:I = 0x2

.field public static final FLAG_OPTION_RESTRICT_ALLOW_RAGEBIRD:I = 0x4

.field public static final FLAG_OPTION_RESTRICT_BLOCK_ALARM:I = 0x1

.field static TAG:Ljava/lang/String;


# instance fields
.field private BatteryUsage:D

.field private appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private curLevel:I

.field private disableReason:I

.field private disableType:I

.field private fasEnabledTime:J

.field private fasReason:Ljava/lang/String;

.field private fasType:I

.field private freezedReason:Ljava/lang/String;

.field private freezedTime:J

.field public freezedTimeForLevelUp:[J

.field private hasAppIcon:Z

.field private isDisabled:Z

.field private isFASEnabled:Z

.field private isInUsageStats:Z

.field private isRemovedPkg:Z

.field private lastUsedTime:J

.field private maxLevel:I

.field private mpsm:I

.field private name:Ljava/lang/String;

.field private needUpdateTime:Z

.field optionFlag:I

.field private packageType:I

.field private preBatteryUsage:D

.field private resetTime:J

.field private sbike:I

.field private sharedUidName:Ljava/lang/String;

.field private state:I

.field private uds:I

.field private uid:I

.field private unfreezedCount:I

.field private unfreezedReason:Ljava/lang/String;

.field private unfreezedTime:J

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/am/MARsPackageInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MARsPackageInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/mars/database/FASEntity;)V
    .registers 33
    .param p1, "fasEntity"    # Lcom/android/server/am/mars/database/FASEntity;

    .line 76
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "name":Ljava/lang/String;
    const/4 v3, -0x1

    .line 80
    .local v3, "uid":I
    const/4 v4, -0x1

    .line 81
    .local v4, "userId":I
    const/4 v5, 0x0

    .line 82
    .local v5, "isFASEnabled":Z
    const-wide/16 v6, 0x0

    .line 83
    .local v6, "fasEnabledTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "fasReason":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v9

    .line 85
    .local v9, "fasType":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrExtras()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToState(Ljava/lang/String;)I

    move-result v10

    .line 86
    .local v10, "state":I
    const-wide/16 v11, 0x0

    .line 87
    .local v11, "resetTime":J
    const-wide/32 v13, -0xdbba0

    .line 88
    .local v13, "lastUsedTime":J
    const/4 v15, 0x0

    .line 89
    .local v15, "packageType":I
    const/16 v16, 0x0

    .line 90
    .local v16, "maxLevel":I
    const/16 v17, -0x1

    .line 91
    .local v17, "disableType":I
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    .line 92
    .local v18, "BatteryUsage":D
    const-wide/16 v20, 0x0

    .line 93
    .local v20, "preBatteryUsage":D
    const/16 v22, 0x0

    .line 94
    .local v22, "needUpdateTime":Z
    const/16 v23, 0x0

    .line 95
    .local v23, "hasAppIcon":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableReason()Ljava/lang/String;

    move-result-object v0

    move/from16 v24, v3

    .end local v3    # "uid":I
    .local v24, "uid":I
    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v3

    .line 96
    .local v3, "disableReason":I
    move/from16 v25, v4

    .end local v4    # "userId":I
    .local v25, "userId":I
    const/4 v4, 0x0

    .line 100
    .local v4, "isDisabled":Z
    move/from16 v26, v5

    .end local v5    # "isFASEnabled":Z
    .local v26, "isFASEnabled":Z
    :try_start_3f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_43} :catch_f8

    if-eqz v0, :cond_57

    :try_start_45
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_4d} :catch_50

    move/from16 v24, v0

    .end local v24    # "uid":I
    .local v0, "uid":I
    goto :goto_57

    .line 110
    .end local v0    # "uid":I
    .restart local v24    # "uid":I
    :catch_50
    move-exception v0

    move-wide/from16 v27, v6

    move/from16 v5, v26

    goto/16 :goto_fd

    .line 101
    :cond_57
    :goto_57
    :try_start_57
    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move/from16 v25, v0

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v0
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_61} :catch_f8

    if-eqz v0, :cond_71

    :try_start_63
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_6b} :catch_50

    const/4 v5, 0x1

    if-ne v0, v5, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v5, 0x0

    .end local v26    # "isFASEnabled":Z
    .restart local v5    # "isFASEnabled":Z
    :goto_70
    goto :goto_73

    .end local v5    # "isFASEnabled":Z
    .restart local v26    # "isFASEnabled":Z
    :cond_71
    move/from16 v5, v26

    .line 103
    .end local v26    # "isFASEnabled":Z
    .restart local v5    # "isFASEnabled":Z
    :goto_73
    :try_start_73
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    move-result-object v0
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_77} :catch_f4

    if-eqz v0, :cond_89

    :try_start_79
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_81} :catch_84

    move-wide/from16 v11, v27

    goto :goto_89

    .line 110
    :catch_84
    move-exception v0

    move-wide/from16 v27, v6

    goto/16 :goto_fd

    .line 104
    :cond_89
    :goto_89
    :try_start_89
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    move-result-object v0
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_8d} :catch_f4

    if-eqz v0, :cond_98

    :try_start_8f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_97
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_97} :catch_84

    move v15, v0

    .line 105
    :cond_98
    :try_start_98
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    move-result-object v0
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_9c} :catch_f4

    if-eqz v0, :cond_a8

    :try_start_9e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_a6} :catch_84

    move/from16 v16, v0

    :cond_a8
    move-wide/from16 v27, v6

    move/from16 v6, v16

    .line 106
    .end local v16    # "maxLevel":I
    .local v6, "maxLevel":I
    .local v27, "fasEnabledTime":J
    if-eqz v5, :cond_c3

    :try_start_ae
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result v0
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_b6} :catch_bf

    if-eqz v0, :cond_c3

    const/4 v0, 0x4

    if-eq v6, v0, :cond_c3

    .line 107
    const/4 v0, 0x3

    move/from16 v16, v0

    .end local v6    # "maxLevel":I
    .local v0, "maxLevel":I
    goto :goto_c5

    .line 110
    .end local v0    # "maxLevel":I
    .restart local v6    # "maxLevel":I
    :catch_bf
    move-exception v0

    move/from16 v16, v6

    goto :goto_fd

    .line 108
    :cond_c3
    move/from16 v16, v6

    .end local v6    # "maxLevel":I
    .restart local v16    # "maxLevel":I
    :goto_c5
    :try_start_c5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    .line 109
    :cond_d5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_e3
    .catch Ljava/lang/NumberFormatException; {:try_start_c5 .. :try_end_e3} :catch_f2

    move-wide/from16 v20, v6

    .line 112
    :cond_e5
    move/from16 v0, v16

    move/from16 v6, v17

    move-wide/from16 v29, v20

    move/from16 v7, v24

    move/from16 v16, v3

    move/from16 v3, v25

    goto :goto_123

    .line 110
    :catch_f2
    move-exception v0

    goto :goto_fd

    .end local v27    # "fasEnabledTime":J
    .local v6, "fasEnabledTime":J
    :catch_f4
    move-exception v0

    move-wide/from16 v27, v6

    .end local v6    # "fasEnabledTime":J
    .restart local v27    # "fasEnabledTime":J
    goto :goto_fd

    .end local v5    # "isFASEnabled":Z
    .end local v27    # "fasEnabledTime":J
    .restart local v6    # "fasEnabledTime":J
    .restart local v26    # "isFASEnabled":Z
    :catch_f8
    move-exception v0

    move-wide/from16 v27, v6

    move/from16 v5, v26

    .line 111
    .end local v6    # "fasEnabledTime":J
    .end local v26    # "isFASEnabled":Z
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "isFASEnabled":Z
    .restart local v27    # "fasEnabledTime":J
    :goto_fd
    sget-object v6, Lcom/android/server/am/MARsPackageInfo;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v5

    .end local v5    # "isFASEnabled":Z
    .restart local v26    # "isFASEnabled":Z
    const-string v5, "NumberFormatException !"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v16

    move/from16 v6, v17

    move-wide/from16 v29, v20

    move/from16 v7, v24

    move/from16 v5, v26

    move/from16 v16, v3

    move/from16 v3, v25

    .line 115
    .end local v17    # "disableType":I
    .end local v20    # "preBatteryUsage":D
    .end local v24    # "uid":I
    .end local v25    # "userId":I
    .end local v26    # "isFASEnabled":Z
    .local v0, "maxLevel":I
    .local v3, "userId":I
    .restart local v5    # "isFASEnabled":Z
    .local v6, "disableType":I
    .local v7, "uid":I
    .local v16, "disableReason":I
    .local v29, "preBatteryUsage":D
    :goto_123
    iput-object v2, v1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 116
    iput v7, v1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 117
    iput v3, v1, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 118
    iput-boolean v5, v1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 119
    iput-boolean v4, v1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 120
    iput-object v8, v1, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 121
    iput v9, v1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 122
    iput v10, v1, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 123
    iput-wide v11, v1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 124
    iput-wide v13, v1, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    .line 125
    iput v15, v1, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 126
    iput v0, v1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 127
    iput v6, v1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 128
    move-object/from16 v17, v2

    move/from16 v20, v3

    move-wide/from16 v2, v29

    .end local v3    # "userId":I
    .end local v29    # "preBatteryUsage":D
    .local v2, "preBatteryUsage":D
    .local v17, "name":Ljava/lang/String;
    .local v20, "userId":I
    iput-wide v2, v1, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    .line 129
    move-wide/from16 v24, v2

    const/4 v2, 0x0

    .end local v2    # "preBatteryUsage":D
    .local v24, "preBatteryUsage":D
    iput-boolean v2, v1, Lcom/android/server/am/MARsPackageInfo;->isRemovedPkg:Z

    .line 130
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    .line 131
    move/from16 v3, v16

    .end local v16    # "disableReason":I
    .local v3, "disableReason":I
    iput v3, v1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 133
    move/from16 v21, v3

    .end local v3    # "disableReason":I
    .local v21, "disableReason":I
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/am/MARsPackageInfo;->freezedTime:J

    .line 134
    iput-wide v2, v1, Lcom/android/server/am/MARsPackageInfo;->unfreezedTime:J

    .line 135
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/MARsPackageInfo;->freezedReason:Ljava/lang/String;

    .line 136
    iput-object v2, v1, Lcom/android/server/am/MARsPackageInfo;->unfreezedReason:Ljava/lang/String;

    .line 137
    const/4 v2, 0x2

    new-array v2, v2, [J

    iput-object v2, v1, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    .line 138
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/am/MARsPackageInfo;->unfreezedCount:I

    .line 139
    iput-boolean v2, v1, Lcom/android/server/am/MARsPackageInfo;->isInUsageStats:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 72
    iput p2, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 73
    iput p3, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 74
    return-void
.end method


# virtual methods
.method public getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;
    .registers 2

    .line 382
    iget-object v0, p0, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method public getBatteryUsage()D
    .registers 3

    .line 302
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    return-wide v0
.end method

.method public getCurLevel()I
    .registers 2

    .line 286
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    return v0
.end method

.method public getDisableReason()I
    .registers 2

    .line 350
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    return v0
.end method

.method public getDisableType()I
    .registers 2

    .line 294
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    return v0
.end method

.method public getDisabled()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    return v0
.end method

.method public getFASEnabled()Z
    .registers 2

    .line 206
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    return v0
.end method

.method public getFasReason()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    return-object v0
.end method

.method public getFasType()I
    .registers 2

    .line 238
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    return v0
.end method

.method public getHasAppIcon()Z
    .registers 2

    .line 326
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->hasAppIcon:Z

    return v0
.end method

.method public getIsInUsageStats()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isInUsageStats:Z

    return v0
.end method

.method public getIsRemovedPkg()Z
    .registers 2

    .line 334
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isRemovedPkg:Z

    return v0
.end method

.method public getLastUsedTime()J
    .registers 3

    .line 262
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    return-wide v0
.end method

.method public getMaxLevel()I
    .registers 2

    .line 278
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    return v0
.end method

.method public getMpsm()I
    .registers 2

    .line 374
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->mpsm:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedUpdateTime()Z
    .registers 2

    .line 318
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->needUpdateTime:Z

    return v0
.end method

.method public getPackageType()I
    .registers 2

    .line 270
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    return v0
.end method

.method public getPreBatteryUsage()D
    .registers 3

    .line 310
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    return-wide v0
.end method

.method public getResetTime()J
    .registers 3

    .line 254
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    return-wide v0
.end method

.method public getSBike()I
    .registers 2

    .line 366
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->sbike:I

    return v0
.end method

.method public getSharedUidName()Ljava/lang/String;
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 246
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    return v0
.end method

.method public getUds()I
    .registers 2

    .line 358
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->uds:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 190
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    .line 198
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    return v0
.end method

.method public getfasEnabledTime()J
    .registers 3

    .line 230
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->fasEnabledTime:J

    return-wide v0
.end method

.method public getfreezedTime()J
    .registers 3

    .line 390
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->freezedTime:J

    return-wide v0
.end method

.method public getunfreezedCount()I
    .registers 2

    .line 406
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->unfreezedCount:I

    return v0
.end method

.method public getunfreezedTime()J
    .registers 3

    .line 398
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->unfreezedTime:J

    return-wide v0
.end method

.method public initOptionFlag()V
    .registers 5

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 181
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 182
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    goto :goto_2d

    .line 183
    :cond_19
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 184
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 185
    :cond_2d
    :goto_2d
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 186
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 187
    :cond_41
    return-void
.end method

.method public setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V
    .registers 2
    .param p1, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 386
    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 387
    return-void
.end method

.method public setBatteryUsage(D)V
    .registers 3
    .param p1, "batteryUsage"    # D

    .line 306
    iput-wide p1, p0, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 307
    return-void
.end method

.method public setCurLevel(I)V
    .registers 2
    .param p1, "curLevel"    # I

    .line 290
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    .line 291
    return-void
.end method

.method public setDisableReason(I)V
    .registers 2
    .param p1, "disableReason"    # I

    .line 354
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 355
    return-void
.end method

.method public setDisableType(I)V
    .registers 2
    .param p1, "disableType"    # I

    .line 298
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 299
    return-void
.end method

.method public setDisabled(Z)V
    .registers 2
    .param p1, "Disabled"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 227
    return-void
.end method

.method public setFASEnabled(Z)V
    .registers 2
    .param p1, "FASEnabled"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 211
    return-void
.end method

.method public setFasReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 218
    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setFasType(I)V
    .registers 2
    .param p1, "fasType"    # I

    .line 242
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 243
    return-void
.end method

.method public setHasAppIcon(Z)V
    .registers 2
    .param p1, "hasAppIcon"    # Z

    .line 330
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->hasAppIcon:Z

    .line 331
    return-void
.end method

.method public setIsInUsageStats(Z)V
    .registers 2
    .param p1, "isInUsageStats"    # Z

    .line 164
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->isInUsageStats:Z

    .line 165
    return-void
.end method

.method public setIsRemovedPkg(Z)V
    .registers 2
    .param p1, "isRemovedPkg"    # Z

    .line 338
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->isRemovedPkg:Z

    .line 339
    return-void
.end method

.method public setLastUsedTime(J)V
    .registers 3
    .param p1, "lastUsedTime"    # J

    .line 266
    iput-wide p1, p0, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    .line 267
    return-void
.end method

.method public setMaxLevel(I)V
    .registers 2
    .param p1, "maxLevel"    # I

    .line 282
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 283
    return-void
.end method

.method public setMpsm(I)V
    .registers 2
    .param p1, "mpsm"    # I

    .line 378
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->mpsm:I

    .line 379
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 173
    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/am/MARsPackageInfo;->initOptionFlag()V

    .line 176
    :cond_d
    return-void
.end method

.method public setNeedUpdateTime(Z)V
    .registers 2
    .param p1, "needUpdateTime"    # Z

    .line 322
    iput-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->needUpdateTime:Z

    .line 323
    return-void
.end method

.method public setPackageType(I)V
    .registers 2
    .param p1, "packageType"    # I

    .line 274
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 275
    return-void
.end method

.method public setPreBatteryUsage(D)V
    .registers 3
    .param p1, "preBatteryUsage"    # D

    .line 314
    iput-wide p1, p0, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    .line 315
    return-void
.end method

.method public setResetTime(J)V
    .registers 3
    .param p1, "resetTime"    # J

    .line 258
    iput-wide p1, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 259
    return-void
.end method

.method public setSBike(I)V
    .registers 2
    .param p1, "sbike"    # I

    .line 370
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->sbike:I

    .line 371
    return-void
.end method

.method public setSharedUidName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sharedUidName"    # Ljava/lang/String;

    .line 346
    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 250
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 251
    return-void
.end method

.method public setUds(I)V
    .registers 2
    .param p1, "uds"    # I

    .line 362
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->uds:I

    .line 363
    return-void
.end method

.method public setUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 194
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 195
    return-void
.end method

.method public setUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 202
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 203
    return-void
.end method

.method public setfasEnabledTime(J)V
    .registers 3
    .param p1, "time"    # J

    .line 234
    iput-wide p1, p0, Lcom/android/server/am/MARsPackageInfo;->fasEnabledTime:J

    .line 235
    return-void
.end method

.method public setfreezedTime(J)V
    .registers 5
    .param p1, "unfreezedTime"    # J

    .line 394
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->freezedTime:J

    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->freezedTime:J

    .line 395
    return-void
.end method

.method public setunfreezedCount(I)V
    .registers 2
    .param p1, "unfreezedCount"    # I

    .line 410
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->unfreezedCount:I

    .line 411
    return-void
.end method

.method public setunfreezedTime(J)V
    .registers 3
    .param p1, "unfreezedTime"    # J

    .line 402
    iput-wide p1, p0, Lcom/android/server/am/MARsPackageInfo;->unfreezedTime:J

    .line 403
    return-void
.end method

.method public updatePackageInfo(Lcom/android/server/am/MARsPackageInfo;)V
    .registers 6
    .param p1, "pkgInfo"    # Lcom/android/server/am/MARsPackageInfo;

    .line 143
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    if-ne v0, v1, :cond_26

    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-ne v0, v1, :cond_26

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    if-ne v0, v1, :cond_26

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    if-ne v0, v1, :cond_26

    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-eq v0, v1, :cond_5a

    .line 145
    :cond_26
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 146
    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 147
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 148
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 149
    iget-wide v1, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    iput-wide v1, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 150
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 151
    const/4 v1, 0x2

    if-eqz v0, :cond_47

    .line 152
    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    if-le v0, v1, :cond_48

    move v1, v0

    goto :goto_48

    :cond_47
    const/4 v1, 0x1

    :cond_48
    :goto_48
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 153
    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 154
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 155
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    .line 156
    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 158
    :cond_5a
    return-void
.end method
