.class public Lcom/android/server/ipm/chimera/ChimeraDataInfo;
.super Ljava/lang/Object;
.source "ChimeraDataInfo.java"


# instance fields
.field private mActionCntSrc:[I

.field private mAdjKillCnt:[I

.field private mAvgAvaMem:J

.field private mAvgReleasedMem:J

.field private mDynamicStrategyUse:Z

.field private mGroupKillCnt:[I

.field private mKillCnt:I

.field private mLruWeight:F

.field private mMemWeight:F

.field private mStdBktWeight:F

.field private mTargetAvaMem:J

.field private mTriggerCntSrc:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    .line 8
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    .line 17
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    return-void
.end method

.method public static getDiff(Lcom/android/server/ipm/chimera/ChimeraDataInfo;Lcom/android/server/ipm/chimera/ChimeraDataInfo;)Lcom/android/server/ipm/chimera/ChimeraDataInfo;
    .registers 7
    .param p0, "data1"    # Lcom/android/server/ipm/chimera/ChimeraDataInfo;
    .param p1, "data2"    # Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    .line 117
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;-><init>()V

    .line 119
    .local v0, "diffData":Lcom/android/server/ipm/chimera/ChimeraDataInfo;
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_6
    iget-object v2, v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    array-length v3, v2

    if-ge v1, v3, :cond_19

    .line 120
    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    aget v3, v3, v1

    iget-object v4, p1, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 123
    .end local v1    # "c":I
    :cond_19
    const/4 v1, 0x0

    .restart local v1    # "c":I
    :goto_1a
    iget-object v2, v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2d

    .line 124
    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    aget v3, v3, v1

    iget-object v4, p1, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 127
    .end local v1    # "c":I
    :cond_2d
    const/4 v1, 0x0

    .restart local v1    # "c":I
    :goto_2e
    iget-object v2, v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    array-length v3, v2

    if-ge v1, v3, :cond_41

    .line 128
    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    aget v3, v3, v1

    iget-object v4, p1, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 131
    .end local v1    # "c":I
    :cond_41
    const/4 v1, 0x0

    .restart local v1    # "c":I
    :goto_42
    iget-object v2, v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    array-length v3, v2

    if-ge v1, v3, :cond_55

    .line 132
    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    aget v3, v3, v1

    iget-object v4, p1, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 135
    .end local v1    # "c":I
    :cond_55
    iget-wide v1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    iget-wide v3, p1, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    .line 136
    iget-wide v1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    iget-wide v3, p1, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    .line 137
    iget v1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mKillCnt:I

    iget v2, p1, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mKillCnt:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mKillCnt:I

    .line 139
    iget-boolean v1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mDynamicStrategyUse:Z

    iput-boolean v1, v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mDynamicStrategyUse:Z

    .line 140
    iget v1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mLruWeight:F

    iput v1, v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mLruWeight:F

    .line 141
    iget v1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mMemWeight:F

    iput v1, v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mMemWeight:F

    .line 142
    iget v1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mStdBktWeight:F

    iput v1, v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mStdBktWeight:F

    .line 144
    return-object v0
.end method


# virtual methods
.method public getActionCntSrc()[I
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    return-object v0
.end method

.method public getAdjKillCnt()[I
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    return-object v0
.end method

.method public getAvgAvaMem()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    return-wide v0
.end method

.method public getAvgReleasedMem()J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    return-wide v0
.end method

.method public getGroupKillCnt()[I
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    return-object v0
.end method

.method public getKillCnt()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mKillCnt:I

    return v0
.end method

.method public getLruWight()F
    .registers 2

    .line 61
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mLruWeight:F

    return v0
.end method

.method public getMemWeight()F
    .registers 2

    .line 77
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mMemWeight:F

    return v0
.end method

.method public getStdBktWeight()F
    .registers 2

    .line 69
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mStdBktWeight:F

    return v0
.end method

.method public getTargetAvaMem()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mTargetAvaMem:J

    return-wide v0
.end method

.method public getTriggerCntSrc()[I
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    return-object v0
.end method

.method public isDynamicStrategyUse()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mDynamicStrategyUse:Z

    return v0
.end method

.method public setActionCntSrc([I)V
    .registers 5
    .param p1, "actionCntSrc"    # [I

    .line 33
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    return-void
.end method

.method public setAdjKillCnt([I)V
    .registers 5
    .param p1, "adjKillCnt"    # [I

    .line 105
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    return-void
.end method

.method public setAvgAvaMem(J)V
    .registers 3
    .param p1, "avgAvaMem"    # J

    .line 57
    iput-wide p1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAvgAvaMem:J

    .line 58
    return-void
.end method

.method public setAvgReleasedMem(J)V
    .registers 3
    .param p1, "avgReleasedMem"    # J

    .line 49
    iput-wide p1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mAvgReleasedMem:J

    .line 50
    return-void
.end method

.method public setDynamicStrategyUse(Z)V
    .registers 2
    .param p1, "dynamicStrategyUse"    # Z

    .line 97
    iput-boolean p1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mDynamicStrategyUse:Z

    .line 98
    return-void
.end method

.method public setGroupKillCnt([I)V
    .registers 5
    .param p1, "groupKillCnt"    # [I

    .line 113
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    return-void
.end method

.method public setKillCnt(I)V
    .registers 2
    .param p1, "killCnt"    # I

    .line 41
    iput p1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mKillCnt:I

    .line 42
    return-void
.end method

.method public setLruWight(F)V
    .registers 2
    .param p1, "lruWeight"    # F

    .line 65
    iput p1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mLruWeight:F

    .line 66
    return-void
.end method

.method public setMemWeight(F)V
    .registers 2
    .param p1, "memWeight"    # F

    .line 81
    iput p1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mMemWeight:F

    .line 82
    return-void
.end method

.method public setStdBktWeight(F)V
    .registers 2
    .param p1, "stdBktWeight"    # F

    .line 73
    iput p1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mStdBktWeight:F

    .line 74
    return-void
.end method

.method public setTargetAvaMem(J)V
    .registers 3
    .param p1, "targetAvaMem"    # J

    .line 89
    iput-wide p1, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mTargetAvaMem:J

    .line 90
    return-void
.end method

.method public setTriggerCntSrc([I)V
    .registers 5
    .param p1, "triggerCntSrc"    # [I

    .line 25
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    return-void
.end method
