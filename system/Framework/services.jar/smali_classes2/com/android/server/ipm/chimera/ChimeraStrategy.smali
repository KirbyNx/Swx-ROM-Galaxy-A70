.class public Lcom/android/server/ipm/chimera/ChimeraStrategy;
.super Ljava/lang/Object;
.source "ChimeraStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;,
        Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChimeraStrategy"


# instance fields
.field private final PROPERTY_NAME_PROTECTED_COUNT_HOME:Ljava/lang/String;

.field private final PROPERTY_NAME_PROTECTED_COUNT_LMKD:Ljava/lang/String;

.field private final PROPERTY_NAME_STRATEGY:Ljava/lang/String;

.field private mDynamicFreeMem:Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

.field private mFixedMemFreeTarget:J

.field private mMemFreeTarget:J

.field private mProtectedCountOnDynamic:I

.field private mProtectedCountOnHomeTrigger:I

.field private mProtectedCountOnLmkdTrigger:I

.field private mRecentAppManager:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

.field private final mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

.field private final mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/SettingRepository;)V
    .registers 5
    .param p1, "recentAppManager"    # Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;
    .param p2, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;
    .param p3, "settingRepository"    # Lcom/android/server/ipm/chimera/SettingRepository;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mRecentAppManager:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    .line 25
    const-string/jumbo v0, "persist.config.chimera.protected_count_on_lmkd"

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->PROPERTY_NAME_PROTECTED_COUNT_LMKD:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "persist.config.chimera.protected_count_on_home"

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->PROPERTY_NAME_PROTECTED_COUNT_HOME:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "ro.slmk.chimera_strategy_%dgb"

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->PROPERTY_NAME_STRATEGY:Ljava/lang/String;

    .line 232
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mRecentAppManager:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    .line 233
    iput-object p2, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 234
    iput-object p3, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    .line 235
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->initializeDefaultParameters()V

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ipm/chimera/ChimeraStrategy;)Lcom/android/server/ipm/chimera/SystemRepository;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/ChimeraStrategy;

    .line 11
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ipm/chimera/ChimeraStrategy;)Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/ChimeraStrategy;

    .line 11
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mRecentAppManager:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ipm/chimera/ChimeraStrategy;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/ChimeraStrategy;

    .line 11
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/ipm/chimera/ChimeraStrategy;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/ChimeraStrategy;
    .param p1, "x1"    # J

    .line 11
    iput-wide p1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-wide p1
.end method

.method static synthetic access$214(Lcom/android/server/ipm/chimera/ChimeraStrategy;J)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/ChimeraStrategy;
    .param p1, "x1"    # J

    .line 11
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-wide v0
.end method

.method private enableDynamicTargetFree()V
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/ipm/chimera/SettingRepository;->enableDynamicTargetFree(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

    if-nez v0, :cond_11

    .line 404
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;-><init>(Lcom/android/server/ipm/chimera/ChimeraStrategy;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

    .line 406
    :cond_11
    return-void
.end method

.method private initializeDefaultParameters()V
    .registers 7

    .line 239
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v0

    .line 240
    .local v0, "ramSizeGb":I
    invoke-direct {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->updateDefaultParametersIfExist(I)V

    .line 241
    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->getTargetFree(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 242
    iput-wide v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mFixedMemFreeTarget:J

    .line 243
    nop

    .line 244
    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->getProtectedCountOnLmkdTrigger(I)I

    move-result v1

    .line 243
    const-string/jumbo v2, "persist.config.chimera.protected_count_on_lmkd"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 245
    nop

    .line 246
    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->getProtectedCountOnHomeTrigger(I)I

    move-result v1

    .line 245
    const-string/jumbo v2, "persist.config.chimera.protected_count_on_home"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 248
    iget-wide v2, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3d

    if-ltz v1, :cond_3d

    iget v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    if-gez v1, :cond_4a

    .line 249
    :cond_3d
    sget v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->UNKNOWN_GB_TARGET_FREE:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 250
    sget v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->UNKNOWN_GB_PROTECTED_COUNT_ON_HOME:I

    iput v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 251
    sget v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->UNKNOWN_GB_PROTECTED_COUNT_ON_LMKD:I

    iput v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 254
    :cond_4a
    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->getDynamicProtectedCount(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    .line 256
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChimeraStrategy() - ramSizeGb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMemFreeTarget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mProtectedCountOnLmkdTrigger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mProtectedCountOnHomeTrigger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mEnableDynamicFreeMem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mProtectedCountOnDynamic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    const-string v3, "ChimeraStrategy"

    invoke-interface {v1, v3, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private updateDefaultParametersIfExist(I)V
    .registers 12
    .param p1, "deviceRamSizeGb"    # I

    .line 265
    const/4 v0, -0x1

    .line 266
    .local v0, "ramSize":I
    const/4 v1, 0x0

    .line 267
    .local v1, "ramSizeIndex":I
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_3
    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->access$300()[[I

    move-result-object v3

    aget-object v3, v3, v2

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->access$400()I

    move-result v4

    aget v3, v3, v4

    if-lez v3, :cond_30

    .line 268
    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->access$300()[[I

    move-result-object v3

    aget-object v3, v3, v2

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->access$400()I

    move-result v4

    aget v3, v3, v4

    if-lt v3, p1, :cond_2d

    .line 269
    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->access$300()[[I

    move-result-object v3

    aget-object v3, v3, v2

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->access$400()I

    move-result v4

    aget v0, v3, v4

    .line 270
    move v1, v2

    .line 271
    goto :goto_30

    .line 267
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 275
    .end local v2    # "c":I
    :cond_30
    :goto_30
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c3

    .line 276
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v4, "ro.slmk.chimera_strategy_%dgb"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "propertyName":Ljava/lang/String;
    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "propertyValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDefaultParameters > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ChimeraStrategy"

    invoke-interface {v5, v7, v6}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c3

    .line 281
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "items":[Ljava/lang/String;
    array-length v6, v5

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->access$300()[[I

    move-result-object v8

    aget-object v8, v8, v1

    array-length v8, v8

    sub-int/2addr v8, v2

    if-ne v6, v8, :cond_be

    .line 284
    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_TARGET_FREE:I
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->access$500()I

    move-result v2

    .restart local v2    # "c":I
    :goto_86
    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_PROTECTED_HOME:I
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->access$600()I

    move-result v6

    if-gt v2, v6, :cond_bd

    .line 286
    :try_start_8c
    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->access$300()[[I

    move-result-object v6

    aget-object v6, v6, v1

    add-int/lit8 v8, v2, -0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v2
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a0} :catch_a1

    .line 290
    goto :goto_ba

    .line 288
    :catch_a1
    move-exception v6

    .line 289
    .local v6, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while updating default : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_ba
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .end local v2    # "c":I
    :cond_bd
    goto :goto_c3

    .line 294
    :cond_be
    const-string v2, "Chimera parameter mismatched"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v4    # "propertyValue":Ljava/lang/String;
    .end local v5    # "items":[Ljava/lang/String;
    :cond_c3
    :goto_c3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 332
    if-eqz p2, :cond_1a3

    array-length v0, p2

    if-nez v0, :cond_7

    goto/16 :goto_1a3

    .line 336
    :cond_7
    const/4 v0, 0x0

    aget-object v1, p2, v0

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->dumpInfo(Ljava/io/PrintWriter;)V

    goto/16 :goto_1a2

    .line 338
    :cond_17
    aget-object v0, p2, v0

    const-string v1, "-chimera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 339
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_1a2

    .line 340
    aget-object v0, p2, v1

    .line 341
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->dumpInfo(Ljava/io/PrintWriter;)V

    goto/16 :goto_1a2

    .line 343
    :cond_35
    const-string/jumbo v1, "mem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_6a

    array-length v1, p2

    if-le v1, v2, :cond_6a

    .line 345
    :try_start_42
    aget-object v1, p2, v2

    .line 346
    .local v1, "val1":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 347
    .local v2, "mem":J
    invoke-virtual {p0, v2, v3}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->setTargetMem(J)V

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target mem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_5f} :catch_60

    .end local v1    # "val1":Ljava/lang/String;
    .end local v2    # "mem":J
    goto :goto_68

    .line 349
    :catch_60
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_68
    goto/16 :goto_1a2

    .line 352
    :cond_6a
    const-string/jumbo v1, "set_protected_count_on_lmkd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    array-length v1, p2

    if-le v1, v2, :cond_9f

    .line 354
    :try_start_76
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_7e} :catch_7f

    .line 357
    goto :goto_87

    .line 355
    :catch_7f
    move-exception v1

    .line 356
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProtectedCount On Lmkd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a2

    .line 359
    :cond_9f
    const-string/jumbo v1, "set_protected_count_on_home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    array-length v1, p2

    if-le v1, v2, :cond_d4

    .line 361
    :try_start_ab
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I
    :try_end_b3
    .catch Ljava/lang/NumberFormatException; {:try_start_ab .. :try_end_b3} :catch_b4

    .line 364
    goto :goto_bc

    .line 362
    :catch_b4
    move-exception v1

    .line 363
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_bc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProtectedCount On Home : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a2

    .line 366
    :cond_d4
    const-string v1, "enable_dynamic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 367
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->enableDynamicTargetFree()V

    .line 369
    const-string v1, "enable dynamic memfreetarget"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a2

    .line 370
    :cond_e6
    const-string v1, "dynamic_min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    array-length v1, p2

    if-le v1, v2, :cond_117

    .line 371
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

    if-eqz v1, :cond_1a2

    .line 372
    aget-object v1, p2, v2

    .line 373
    .local v1, "val1":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 374
    .local v2, "min":J
    iget-object v4, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

    # invokes: Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->setThresholdMin(J)V
    invoke-static {v4, v2, v3}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->access$700(Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;J)V

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set dynamic threshold min: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    .end local v1    # "val1":Ljava/lang/String;
    .end local v2    # "min":J
    goto/16 :goto_1a2

    .line 377
    :cond_117
    const-string v1, "dynamic_max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_147

    array-length v1, p2

    if-le v1, v2, :cond_147

    .line 378
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

    if-eqz v1, :cond_1a2

    .line 379
    aget-object v1, p2, v2

    .line 380
    .restart local v1    # "val1":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 381
    .local v2, "max":J
    iget-object v4, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

    # invokes: Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->setThresholdMax(J)V
    invoke-static {v4, v2, v3}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->access$800(Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;J)V

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set dynamic threshold max: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    .end local v1    # "val1":Ljava/lang/String;
    .end local v2    # "max":J
    goto :goto_1a2

    .line 384
    :cond_147
    const-string/jumbo v1, "get_reentry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 385
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

    if-eqz v1, :cond_1a2

    iget-object v1, v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/ipm/chimera/ReentryCounter;

    if-eqz v1, :cond_1a2

    .line 386
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

    iget-object v1, v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/ipm/chimera/ReentryCounter;

    invoke-virtual {v1}, Lcom/android/server/ipm/chimera/ReentryCounter;->getReentry()F

    move-result v1

    .line 387
    .local v1, "reentry":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get reentry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    .end local v1    # "reentry":F
    goto :goto_1a2

    .line 389
    :cond_175
    const-string/jumbo v1, "set_reentry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a2

    .line 390
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

    if-eqz v1, :cond_1a2

    .line 391
    aget-object v1, p2, v2

    .line 392
    .local v1, "val1":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 393
    .local v2, "reentry":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set reentry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

    # invokes: Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->setReentry(F)V
    invoke-static {v3, v2}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->access$900(Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;F)V

    .line 399
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "val1":Ljava/lang/String;
    .end local v2    # "reentry":F
    :cond_1a2
    :goto_1a2
    return-void

    .line 333
    :cond_1a3
    :goto_1a3
    return-void
.end method

.method public dumpInfo(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UseDynamicFreeMem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MemFreeTarget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtectedCountOnLmkdTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtectedCountOnHomeTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method getFreeMemTarget(J)J
    .registers 5
    .param p1, "memAvailable"    # J

    .line 315
    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;

    if-nez v0, :cond_b

    goto :goto_12

    .line 318
    :cond_b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->updateFreeMem(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 319
    return-wide v0

    .line 316
    :cond_12
    :goto_12
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-wide v0
.end method

.method public getProtectedCountOnHomeTrigger()I
    .registers 2

    .line 308
    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 309
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    return v0

    .line 311
    :cond_9
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    return v0
.end method

.method public getProtectedCountOnLmkdTrigger()I
    .registers 2

    .line 301
    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 302
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    return v0

    .line 304
    :cond_9
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    return v0
.end method

.method public isEnableDynamicFreeMem()Z
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SettingRepository;->isDynamicTargetFreeEnabled()Z

    move-result v0

    return v0
.end method

.method public setTargetMem(J)V
    .registers 5
    .param p1, "mem"    # J

    .line 327
    iput-wide p1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 328
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/ipm/chimera/SettingRepository;->enableDynamicTargetFree(Z)V

    .line 329
    return-void
.end method
