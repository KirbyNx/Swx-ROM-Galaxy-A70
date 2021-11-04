.class Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;
.super Ljava/lang/Object;
.source "ChimeraStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicFreeMem"
.end annotation


# instance fields
.field private PSI_MEM_SOME_THRESHOLD_MIN:J

.field private PSI_MEN_SOME_THRESHOLD_MAX:J

.field private mKeepCnt:I

.field mReentry:F

.field mReentryCounter:Lcom/android/server/ipm/chimera/ReentryCounter;

.field private mTriggerCnt:I

.field ramSizeGb:I

.field final synthetic this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/chimera/ChimeraStrategy;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/ipm/chimera/ChimeraStrategy;

    .line 123
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mTriggerCnt:I

    .line 112
    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    .line 114
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v0

    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->ramSizeGb:I

    .line 115
    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->getReentry(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    .line 118
    iput-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    .line 124
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->ramSizeGb:I

    const-string v1, "100"

    const-string/jumbo v2, "ro.slmk.psi_critical"

    const-string/jumbo v3, "ro.slmk.psi_medium"

    const/4 v4, 0x6

    if-ge v0, v4, :cond_46

    .line 125
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    .line 126
    const-string v0, "150"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    goto :goto_62

    .line 128
    :cond_46
    const-string v0, "60"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    .line 129
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    .line 131
    :goto_62
    new-instance v0, Lcom/android/server/ipm/chimera/ReentryCounter;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;
    invoke-static {p1}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->access$000(Lcom/android/server/ipm/chimera/ChimeraStrategy;)Lcom/android/server/ipm/chimera/SystemRepository;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/ipm/chimera/ReentryCounter;-><init>(Lcom/android/server/ipm/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/ipm/chimera/ReentryCounter;

    .line 132
    iget v1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/ReentryCounter;->setTargetReentryCount(F)V

    .line 133
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;
    .param p1, "x1"    # J

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->setThresholdMin(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;
    .param p1, "x1"    # J

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->setThresholdMax(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;F)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;
    .param p1, "x1"    # F

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->setReentry(F)V

    return-void
.end method

.method private setReentry(F)V
    .registers 3
    .param p1, "reentry"    # F

    .line 221
    iput p1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    .line 222
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/ipm/chimera/ReentryCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/ipm/chimera/ReentryCounter;->setTargetReentryCount(F)V

    .line 223
    return-void
.end method

.method private setThresholdMax(J)V
    .registers 3
    .param p1, "max"    # J

    .line 217
    iput-wide p1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    .line 218
    return-void
.end method

.method private setThresholdMin(J)V
    .registers 3
    .param p1, "min"    # J

    .line 213
    iput-wide p1, p0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    .line 214
    return-void
.end method


# virtual methods
.method updateFreeMem(J)J
    .registers 19
    .param p1, "memAvailable"    # J

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/ipm/chimera/ReentryCounter;

    invoke-virtual {v1}, Lcom/android/server/ipm/chimera/ReentryCounter;->isReentryEnabled()Z

    move-result v1

    if-eqz v1, :cond_162

    iget-object v1, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/ipm/chimera/ReentryCounter;

    invoke-virtual {v1}, Lcom/android/server/ipm/chimera/ReentryCounter;->getReentry()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_162

    .line 138
    iget-object v1, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy;->mRecentAppManager:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;
    invoke-static {v1}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->access$100(Lcom/android/server/ipm/chimera/ChimeraStrategy;)Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->getRecentAppInfo()Ljava/util/ArrayList;

    move-result-object v1

    .line 139
    .local v1, "recentAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 141
    .local v2, "someTotal":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_162

    .line 142
    iget-object v4, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/ipm/chimera/ReentryCounter;

    invoke-virtual {v4}, Lcom/android/server/ipm/chimera/ReentryCounter;->getReentry()F

    move-result v4

    .line 144
    .local v4, "reentry":F
    const/4 v5, 0x0

    .line 145
    .local v5, "memDelta":I
    const/4 v6, 0x0

    .line 146
    .local v6, "psiLevel":I
    iget-wide v7, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    cmp-long v7, v2, v7

    if-gez v7, :cond_40

    .line 147
    const/4 v6, 0x0

    goto :goto_49

    .line 148
    :cond_40
    iget-wide v7, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    cmp-long v7, v2, v7

    if-gez v7, :cond_48

    .line 149
    const/4 v6, 0x1

    goto :goto_49

    .line 151
    :cond_48
    const/4 v6, 0x2

    .line 153
    :goto_49
    const/16 v7, 0x8

    const/4 v8, 0x0

    if-nez v6, :cond_69

    .line 154
    iput v8, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    .line 155
    iget v8, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    cmpg-float v9, v4, v8

    if-gez v9, :cond_58

    .line 156
    const/4 v5, -0x1

    goto :goto_a9

    .line 158
    :cond_58
    float-to-double v9, v4

    float-to-double v11, v8

    const-wide/high16 v13, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v11, v13

    cmpl-double v9, v9, v11

    if-lez v9, :cond_63

    .line 159
    const/4 v5, -0x1

    goto :goto_a9

    .line 161
    :cond_63
    cmpl-float v8, v4, v8

    if-lez v8, :cond_a9

    .line 162
    const/4 v5, -0x1

    goto :goto_a9

    .line 164
    :cond_69
    const/4 v9, 0x1

    if-ne v6, v9, :cond_86

    .line 165
    iget v10, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    cmpg-float v11, v4, v10

    if-gez v11, :cond_7e

    .line 166
    iget v10, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    .line 167
    const/4 v5, 0x0

    .line 168
    if-le v10, v7, :cond_a9

    .line 169
    const/4 v5, 0x2

    .line 170
    iput v8, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    goto :goto_a9

    .line 172
    :cond_7e
    cmpl-float v9, v4, v10

    if-lez v9, :cond_a9

    .line 173
    iput v8, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    .line 174
    const/4 v5, -0x1

    goto :goto_a9

    .line 177
    :cond_86
    const/4 v5, 0x1

    .line 178
    iget v10, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    cmpg-float v11, v4, v10

    if-gez v11, :cond_9a

    .line 179
    iget v10, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    .line 180
    const/4 v5, 0x0

    .line 181
    const/4 v9, 0x5

    if-le v10, v9, :cond_9f

    .line 182
    const/4 v5, 0x2

    .line 183
    iput v8, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    goto :goto_9f

    .line 185
    :cond_9a
    cmpl-float v8, v4, v10

    if-lez v8, :cond_9f

    .line 186
    const/4 v5, 0x1

    .line 189
    :cond_9f
    :goto_9f
    const-wide/16 v8, 0x2

    iget-wide v10, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    mul-long/2addr v10, v8

    cmp-long v8, v2, v10

    if-lez v8, :cond_a9

    .line 190
    const/4 v5, 0x1

    .line 194
    :cond_a9
    :goto_a9
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    mul-int/lit8 v9, v5, 0x32

    mul-int/lit16 v9, v9, 0x400

    int-to-long v9, v9

    # += operator for: Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J
    invoke-static {v8, v9, v10}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->access$214(Lcom/android/server/ipm/chimera/ChimeraStrategy;J)J

    .line 196
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J
    invoke-static {v8}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->access$200(Lcom/android/server/ipm/chimera/ChimeraStrategy;)J

    move-result-wide v8

    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v10

    mul-int/lit16 v10, v10, 0x400

    mul-int/lit16 v10, v10, 0x400

    const/4 v11, 0x3

    div-int/2addr v10, v11

    int-to-long v12, v10

    cmp-long v8, v8, v12

    const-string v9, "ChimeraStrategy"

    if-lez v8, :cond_e6

    .line 198
    iget-object v7, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;
    invoke-static {v7}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->access$000(Lcom/android/server/ipm/chimera/ChimeraStrategy;)Lcom/android/server/ipm/chimera/SystemRepository;

    move-result-object v7

    const-string/jumbo v8, "over max free target"

    invoke-interface {v7, v9, v8}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v7, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v8

    mul-int/lit16 v8, v8, 0x400

    mul-int/lit16 v8, v8, 0x400

    div-int/2addr v8, v11

    int-to-long v12, v8

    # setter for: Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J
    invoke-static {v7, v12, v13}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->access$202(Lcom/android/server/ipm/chimera/ChimeraStrategy;J)J

    goto :goto_115

    .line 200
    :cond_e6
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J
    invoke-static {v8}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->access$200(Lcom/android/server/ipm/chimera/ChimeraStrategy;)J

    move-result-wide v12

    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v8

    mul-int/lit16 v8, v8, 0x400

    mul-int/lit16 v8, v8, 0x400

    div-int/2addr v8, v7

    int-to-long v14, v8

    cmp-long v8, v12, v14

    if-gez v8, :cond_115

    .line 202
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;
    invoke-static {v8}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->access$000(Lcom/android/server/ipm/chimera/ChimeraStrategy;)Lcom/android/server/ipm/chimera/SystemRepository;

    move-result-object v8

    const-string/jumbo v10, "less min free target"

    invoke-interface {v8, v9, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v10

    mul-int/lit16 v10, v10, 0x400

    mul-int/lit16 v10, v10, 0x400

    div-int/2addr v10, v7

    int-to-long v12, v10

    # setter for: Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J
    invoke-static {v8, v12, v13}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->access$202(Lcom/android/server/ipm/chimera/ChimeraStrategy;J)J

    .line 205
    :cond_115
    :goto_115
    iget-object v7, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;
    invoke-static {v7}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->access$000(Lcom/android/server/ipm/chimera/ChimeraStrategy;)Lcom/android/server/ipm/chimera/SystemRepository;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "reentry: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " memDelta: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " psiLevel: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "  avgPsiSomeTotal: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " full Total:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " New free target memory: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J
    invoke-static {v10}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->access$200(Lcom/android/server/ipm/chimera/ChimeraStrategy;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v9, v8}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v1    # "recentAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "someTotal":J
    .end local v4    # "reentry":F
    .end local v5    # "memDelta":I
    .end local v6    # "psiLevel":I
    :cond_162
    iget-object v1, v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraStrategy;->mMemFreeTarget:J
    invoke-static {v1}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->access$200(Lcom/android/server/ipm/chimera/ChimeraStrategy;)J

    move-result-wide v1

    return-wide v1
.end method
