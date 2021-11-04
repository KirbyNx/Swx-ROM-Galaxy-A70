.class Lcom/android/server/ipm/BigData;
.super Ljava/lang/Object;
.source "NapBigDataService.java"


# static fields
.field private static final DATA_PERIOD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-NapBigDataService"


# instance fields
.field private appDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/AppData;",
            ">;"
        }
    .end annotation
.end field

.field private maxTrainTime:Ljava/lang/String;

.field private totalAccuracy:Ljava/lang/String;

.field private totalBenefit:Ljava/lang/String;

.field private totalPreloadRatio:Ljava/lang/String;


# direct methods
.method public constructor <init>(DJDDLjava/util/ArrayList;)V
    .registers 20
    .param p1, "totalAccuracy"    # D
    .param p3, "totalBenefit"    # J
    .param p5, "totalPreloadRatio"    # D
    .param p7, "trainTime"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DJDD",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/AppData;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p9, "appDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/AppData;>;"
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v6, p1, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const-string v6, "%.2f"

    invoke-static {v1, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/ipm/BigData;->totalAccuracy:Ljava/lang/String;

    .line 73
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/ipm/BigData;->totalBenefit:Ljava/lang/String;

    .line 74
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    mul-double v8, p5, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v1, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/ipm/BigData;->totalPreloadRatio:Ljava/lang/String;

    .line 75
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    mul-double v3, p7, v4

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/ipm/BigData;->maxTrainTime:Ljava/lang/String;

    .line 76
    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/server/ipm/BigData;->appDataList:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method public static SendBigData(Landroid/content/Context;Z)Z
    .registers 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "send"    # Z

    .line 140
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, "PkgPredictorService-NapBigDataService"

    if-nez v0, :cond_d

    .line 141
    const-string v3, "context == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v1

    .line 144
    :cond_d
    const-string v3, "HqmManagerService"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SemHqmManager;

    .line 145
    .local v3, "shm":Landroid/os/SemHqmManager;
    if-nez v3, :cond_1d

    .line 146
    const-string v4, "get shm == null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v1

    .line 149
    :cond_1d
    invoke-static {}, Lcom/android/server/ipm/BigData;->getBigData()Lcom/android/server/ipm/BigData;

    move-result-object v14

    .line 150
    .local v14, "bData":Lcom/android/server/ipm/BigData;
    if-nez v14, :cond_29

    .line 151
    const-string v4, "get BigData == null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v1

    .line 154
    :cond_29
    invoke-virtual {v14}, Lcom/android/server/ipm/BigData;->toStringList()Ljava/util/ArrayList;

    move-result-object v15

    .line 155
    .local v15, "bigDataStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_39

    .line 156
    const-string v4, "get BigData list == 0"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v1

    .line 161
    :cond_39
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v13, 0x1

    if-lt v4, v13, :cond_a2

    .line 162
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    .line 163
    .local v12, "item":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v4, :cond_5f

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DWPD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_5f
    if-eqz p1, :cond_9e

    .line 167
    const/4 v5, 0x0

    const-string v6, "Sluggish"

    const-string v7, "DWPD"

    const-string/jumbo v8, "ph"

    const-string v9, "0.0"

    const-string/jumbo v10, "sec"

    const-string v11, ""

    const-string v16, ""

    move-object v4, v3

    move-object/from16 v17, v12

    .end local v12    # "item":Ljava/lang/String;
    .local v17, "item":Ljava/lang/String;
    move/from16 v18, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v4 .. v13}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 168
    .local v4, "rlt":Z
    if-nez v4, :cond_96

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send DWPD failed: + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    .end local v17    # "item":Ljava/lang/String;
    .local v6, "item":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 171
    .end local v6    # "item":Ljava/lang/String;
    .restart local v17    # "item":Ljava/lang/String;
    :cond_96
    move-object/from16 v6, v17

    .end local v17    # "item":Ljava/lang/String;
    .restart local v6    # "item":Ljava/lang/String;
    const-string v5, "Send DWPD successfully"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 166
    .end local v4    # "rlt":Z
    .end local v6    # "item":Ljava/lang/String;
    .restart local v12    # "item":Ljava/lang/String;
    :cond_9e
    move-object v6, v12

    move/from16 v18, v13

    .end local v12    # "item":Ljava/lang/String;
    .restart local v6    # "item":Ljava/lang/String;
    goto :goto_a4

    .line 161
    .end local v6    # "item":Ljava/lang/String;
    :cond_a2
    move/from16 v18, v13

    .line 177
    :goto_a4
    const/4 v4, 0x1

    move v13, v4

    .local v13, "i":I
    :goto_a6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v12, "Send NAPD failed: + "

    if-ge v13, v4, :cond_119

    .line 178
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    .line 179
    .local v11, "item":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v4, :cond_d5

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NAPD item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_d5
    if-eqz p1, :cond_112

    .line 183
    const/4 v5, 0x0

    const-string v6, "Sluggish"

    const-string v7, "NAPD"

    const-string/jumbo v8, "ph"

    const-string v9, "0.0"

    const-string/jumbo v10, "sec"

    const-string v16, ""

    const-string v17, ""

    move-object v4, v3

    move-object/from16 v19, v11

    .end local v11    # "item":Ljava/lang/String;
    .local v19, "item":Ljava/lang/String;
    move-object/from16 v11, v16

    move-object v1, v12

    move-object/from16 v12, v19

    move/from16 v20, v13

    .end local v13    # "i":I
    .local v20, "i":I
    move-object/from16 v13, v17

    invoke-virtual/range {v4 .. v13}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 184
    .restart local v4    # "rlt":Z
    if-nez v4, :cond_10f

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    .end local v19    # "item":Ljava/lang/String;
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115

    .line 184
    .end local v1    # "item":Ljava/lang/String;
    .restart local v19    # "item":Ljava/lang/String;
    :cond_10f
    move-object/from16 v1, v19

    .end local v19    # "item":Ljava/lang/String;
    .restart local v1    # "item":Ljava/lang/String;
    goto :goto_115

    .line 182
    .end local v1    # "item":Ljava/lang/String;
    .end local v4    # "rlt":Z
    .end local v20    # "i":I
    .restart local v11    # "item":Ljava/lang/String;
    .restart local v13    # "i":I
    :cond_112
    move-object v1, v11

    move/from16 v20, v13

    .line 177
    .end local v11    # "item":Ljava/lang/String;
    .end local v13    # "i":I
    .restart local v20    # "i":I
    :goto_115
    add-int/lit8 v13, v20, 0x1

    const/4 v1, 0x0

    .end local v20    # "i":I
    .restart local v13    # "i":I
    goto :goto_a6

    :cond_119
    move-object v1, v12

    move/from16 v20, v13

    .line 191
    .end local v13    # "i":I
    invoke-static {}, Lcom/android/server/ipm/AufBigData;->getAufBigData()Lcom/android/server/ipm/AufBigData;

    move-result-object v17

    .line 192
    .local v17, "aufBigData":Lcom/android/server/ipm/AufBigData;
    invoke-static {}, Lcom/android/server/ipm/AufBigData;->bSendAufBigData()Z

    move-result v19

    .line 194
    .local v19, "aufSend":Z
    if-nez v17, :cond_12d

    .line 195
    const-string v1, "get aufBigData == null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v4, 0x0

    return v4

    .line 202
    :cond_12d
    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/ipm/AufBigData;->toStringAufList()Ljava/util/ArrayList;

    move-result-object v13

    .line 204
    .local v13, "aufBigDataStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_13e

    .line 205
    const-string v1, "get Auf BigData list == 0"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v4

    .line 208
    :cond_13e
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    .line 210
    .restart local v12    # "item":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v4, :cond_15d

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUFC item : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_15d
    if-eqz p1, :cond_1ad

    .line 214
    const/4 v5, 0x0

    const-string v6, "SYSML"

    const-string v7, "AUFC"

    const-string/jumbo v8, "ph"

    const-string v9, "0.0"

    const-string/jumbo v10, "sec"

    const-string v11, ""

    const-string v16, ""

    move-object v4, v3

    move-object/from16 v20, v12

    .end local v12    # "item":Ljava/lang/String;
    .local v20, "item":Ljava/lang/String;
    move-object/from16 v21, v13

    .end local v13    # "aufBigDataStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v21, "aufBigDataStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v13, v16

    invoke-virtual/range {v4 .. v13}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 215
    .restart local v4    # "rlt":Z
    if-nez v4, :cond_192

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    .end local v20    # "item":Ljava/lang/String;
    .restart local v1    # "item":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_194

    .line 215
    .end local v1    # "item":Ljava/lang/String;
    .restart local v20    # "item":Ljava/lang/String;
    :cond_192
    move-object/from16 v1, v20

    .line 218
    .end local v20    # "item":Ljava/lang/String;
    .restart local v1    # "item":Ljava/lang/String;
    :goto_194
    sget-boolean v5, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v5, :cond_19d

    .line 219
    const-string v5, "AUFC AufPredictor start"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_19d
    invoke-static/range {v19 .. v19}, Lcom/android/server/ipm/AufBigData;->bSendAufBigData(Z)V

    .line 224
    invoke-static {}, Lcom/android/server/ipm/AufHitCalculation;->clearHitCount()V

    .line 225
    sget-boolean v5, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v5, :cond_1b0

    .line 226
    const-string v5, "AUFC AufPredictor end"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b0

    .line 213
    .end local v1    # "item":Ljava/lang/String;
    .end local v4    # "rlt":Z
    .end local v21    # "aufBigDataStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "item":Ljava/lang/String;
    .restart local v13    # "aufBigDataStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1ad
    move-object v1, v12

    move-object/from16 v21, v13

    .line 235
    .end local v12    # "item":Ljava/lang/String;
    .end local v13    # "aufBigDataStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "aufBigData":Lcom/android/server/ipm/AufBigData;
    .end local v19    # "aufSend":Z
    :cond_1b0
    :goto_1b0
    return v18
.end method

.method public static getBigData()Lcom/android/server/ipm/BigData;
    .registers 44

    .line 241
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v1

    .line 242
    .local v1, "db":Lcom/android/server/ipm/DBManager;
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "PkgPredictorService-NapBigDataService"

    if-eqz v0, :cond_13

    .line 243
    const-string v0, "get Dataset failed! db is closed!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-object v2

    .line 247
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 248
    .local v4, "curTime":J
    const-wide/32 v6, 0xf731400

    sub-long v6, v4, v6

    .line 250
    .local v6, "lastTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "select running_pkg,activity_name,predict_time,apk_version,consume_time,success,is_preloaded from "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/ipm/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " where launch_time > "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " and launch_time < "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 282
    .local v8, "sql":Ljava/lang/String;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v0

    .line 284
    .local v9, "bigDataInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;>;"
    const/4 v10, 0x0

    .line 286
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_47
    invoke-virtual {v1, v8, v2}, Lcom/android/server/ipm/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 287
    if-eqz v10, :cond_1b3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 288
    :goto_54
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1ac

    .line 289
    const-string/jumbo v0, "running_pkg"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "running_pkg":Ljava/lang/String;
    const-string v2, "activity_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "activity_name":Ljava/lang/String;
    const-string v11, "apk_version"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 292
    .local v13, "apk_version":Ljava/lang/String;
    const-string/jumbo v11, "predict_time"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 293
    .local v11, "predict_time":I
    const-string v12, "consume_time"

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move v15, v12

    .line 294
    .local v15, "consume_time":I
    const-string/jumbo v12, "success"

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v20, v12

    .line 295
    .local v20, "success":I
    const-string/jumbo v12, "is_preloaded"

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move v14, v12

    .line 302
    .local v14, "is_preloaded":I
    if-ltz v11, :cond_190

    const/4 v12, -0x1

    if-eq v15, v12, :cond_190

    const-string/jumbo v12, "unknown"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c0

    move-object/from16 v21, v1

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move v6, v14

    move v7, v15

    goto/16 :goto_198

    .line 307
    :cond_c0
    const-string v12, "\\."

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_c6} :catch_1cc
    .catchall {:try_start_47 .. :try_end_c6} :catchall_1bf

    .line 308
    .local v12, "actNames":[Ljava/lang/String;
    move-object/from16 v21, v1

    .end local v1    # "db":Lcom/android/server/ipm/DBManager;
    .local v21, "db":Lcom/android/server/ipm/DBManager;
    if-eqz v12, :cond_e8

    :try_start_ca
    array-length v1, v12

    if-lez v1, :cond_e8

    .line 309
    array-length v1, v12

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v12, v1
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d4} :catch_e1
    .catchall {:try_start_ca .. :try_end_d4} :catchall_d6

    move-object v2, v1

    goto :goto_e8

    .line 341
    .end local v0    # "running_pkg":Ljava/lang/String;
    .end local v2    # "activity_name":Ljava/lang/String;
    .end local v11    # "predict_time":I
    .end local v12    # "actNames":[Ljava/lang/String;
    .end local v13    # "apk_version":Ljava/lang/String;
    .end local v14    # "is_preloaded":I
    .end local v15    # "consume_time":I
    .end local v20    # "success":I
    :catchall_d6
    move-exception v0

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    goto/16 :goto_3bf

    .line 338
    :catch_e1
    move-exception v0

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    goto/16 :goto_1d3

    .line 312
    .restart local v0    # "running_pkg":Ljava/lang/String;
    .restart local v2    # "activity_name":Ljava/lang/String;
    .restart local v11    # "predict_time":I
    .restart local v12    # "actNames":[Ljava/lang/String;
    .restart local v13    # "apk_version":Ljava/lang/String;
    .restart local v14    # "is_preloaded":I
    .restart local v15    # "consume_time":I
    .restart local v20    # "success":I
    :cond_e8
    :goto_e8
    :try_start_e8
    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 313
    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 314
    .local v1, "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13d

    .line 315
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/ipm/BigData$1ActInfo;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_100} :catch_18a
    .catchall {:try_start_e8 .. :try_end_100} :catchall_17f

    move-object/from16 v18, v17

    .line 316
    .local v18, "actInfo":Lcom/android/server/ipm/BigData$1ActInfo;
    move-wide/from16 v22, v4

    move-object/from16 v4, v18

    .end local v18    # "actInfo":Lcom/android/server/ipm/BigData$1ActInfo;
    .local v4, "actInfo":Lcom/android/server/ipm/BigData$1ActInfo;
    .local v22, "curTime":J
    :try_start_106
    iget v5, v4, Lcom/android/server/ipm/BigData$1ActInfo;->successCnt:I

    add-int v5, v5, v20

    iput v5, v4, Lcom/android/server/ipm/BigData$1ActInfo;->successCnt:I

    .line 317
    iget v5, v4, Lcom/android/server/ipm/BigData$1ActInfo;->preloadCnt:I

    add-int/2addr v5, v14

    iput v5, v4, Lcom/android/server/ipm/BigData$1ActInfo;->preloadCnt:I

    .line 318
    iget v5, v4, Lcom/android/server/ipm/BigData$1ActInfo;->predict_time:I

    add-int/2addr v5, v11

    iput v5, v4, Lcom/android/server/ipm/BigData$1ActInfo;->predict_time:I

    .line 319
    iget v5, v4, Lcom/android/server/ipm/BigData$1ActInfo;->cnt:I
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_118} :catch_138
    .catchall {:try_start_106 .. :try_end_118} :catchall_12f

    move-wide/from16 v24, v6

    const/4 v6, 0x1

    .end local v6    # "lastTime":J
    .local v24, "lastTime":J
    add-int/2addr v5, v6

    :try_start_11c
    iput v5, v4, Lcom/android/server/ipm/BigData$1ActInfo;->cnt:I

    .line 320
    if-ne v14, v6, :cond_126

    .line 321
    iget v5, v4, Lcom/android/server/ipm/BigData$1ActInfo;->hit_consume_time:I

    add-int/2addr v5, v15

    iput v5, v4, Lcom/android/server/ipm/BigData$1ActInfo;->hit_consume_time:I

    goto :goto_12b

    .line 323
    :cond_126
    iget v5, v4, Lcom/android/server/ipm/BigData$1ActInfo;->nohit_consume_time:I

    add-int/2addr v5, v15

    iput v5, v4, Lcom/android/server/ipm/BigData$1ActInfo;->nohit_consume_time:I

    .line 325
    .end local v4    # "actInfo":Lcom/android/server/ipm/BigData$1ActInfo;
    :goto_12b
    move-object v5, v12

    move v6, v14

    move v7, v15

    goto :goto_152

    .line 341
    .end local v0    # "running_pkg":Ljava/lang/String;
    .end local v1    # "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    .end local v2    # "activity_name":Ljava/lang/String;
    .end local v11    # "predict_time":I
    .end local v12    # "actNames":[Ljava/lang/String;
    .end local v13    # "apk_version":Ljava/lang/String;
    .end local v14    # "is_preloaded":I
    .end local v15    # "consume_time":I
    .end local v20    # "success":I
    .end local v24    # "lastTime":J
    .restart local v6    # "lastTime":J
    :catchall_12f
    move-exception v0

    move-wide/from16 v24, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    .end local v6    # "lastTime":J
    .restart local v24    # "lastTime":J
    goto/16 :goto_3bf

    .line 338
    .end local v24    # "lastTime":J
    .restart local v6    # "lastTime":J
    :catch_138
    move-exception v0

    move-wide/from16 v24, v6

    .end local v6    # "lastTime":J
    .restart local v24    # "lastTime":J
    goto/16 :goto_1d3

    .line 326
    .end local v22    # "curTime":J
    .end local v24    # "lastTime":J
    .restart local v0    # "running_pkg":Ljava/lang/String;
    .restart local v1    # "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    .restart local v2    # "activity_name":Ljava/lang/String;
    .local v4, "curTime":J
    .restart local v6    # "lastTime":J
    .restart local v11    # "predict_time":I
    .restart local v12    # "actNames":[Ljava/lang/String;
    .restart local v13    # "apk_version":Ljava/lang/String;
    .restart local v14    # "is_preloaded":I
    .restart local v15    # "consume_time":I
    .restart local v20    # "success":I
    :cond_13d
    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    .end local v4    # "curTime":J
    .end local v6    # "lastTime":J
    .restart local v22    # "curTime":J
    .restart local v24    # "lastTime":J
    new-instance v4, Lcom/android/server/ipm/BigData$1ActInfo;

    move-object v5, v12

    .end local v12    # "actNames":[Ljava/lang/String;
    .local v5, "actNames":[Ljava/lang/String;
    move-object v12, v4

    move v6, v14

    .end local v14    # "is_preloaded":I
    .local v6, "is_preloaded":I
    move v14, v11

    move v7, v15

    .end local v15    # "consume_time":I
    .local v7, "consume_time":I
    move/from16 v16, v20

    move/from16 v17, v6

    invoke-direct/range {v12 .. v17}, Lcom/android/server/ipm/BigData$1ActInfo;-><init>(Ljava/lang/String;IIII)V

    .line 327
    .local v4, "actInfo":Lcom/android/server/ipm/BigData$1ActInfo;
    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .end local v1    # "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    .end local v4    # "actInfo":Lcom/android/server/ipm/BigData$1ActInfo;
    :goto_152
    goto :goto_174

    .line 330
    .end local v5    # "actNames":[Ljava/lang/String;
    .end local v7    # "consume_time":I
    .end local v22    # "curTime":J
    .end local v24    # "lastTime":J
    .local v4, "curTime":J
    .local v6, "lastTime":J
    .restart local v12    # "actNames":[Ljava/lang/String;
    .restart local v14    # "is_preloaded":I
    .restart local v15    # "consume_time":I
    :cond_153
    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-object v5, v12

    move v6, v14

    move v7, v15

    .end local v4    # "curTime":J
    .end local v12    # "actNames":[Ljava/lang/String;
    .end local v14    # "is_preloaded":I
    .end local v15    # "consume_time":I
    .restart local v5    # "actNames":[Ljava/lang/String;
    .local v6, "is_preloaded":I
    .restart local v7    # "consume_time":I
    .restart local v22    # "curTime":J
    .restart local v24    # "lastTime":J
    new-instance v1, Lcom/android/server/ipm/BigData$1ActInfo;

    move-object v14, v1

    move-object v15, v13

    move/from16 v16, v11

    move/from16 v17, v7

    move/from16 v18, v20

    move/from16 v19, v6

    invoke-direct/range {v14 .. v19}, Lcom/android/server/ipm/BigData$1ActInfo;-><init>(Ljava/lang/String;IIII)V

    .line 331
    .local v1, "actInfo":Lcom/android/server/ipm/BigData$1ActInfo;
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 332
    .local v4, "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {v9, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v1    # "actInfo":Lcom/android/server/ipm/BigData$1ActInfo;
    .end local v4    # "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    :goto_174
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 336
    move-object/from16 v1, v21

    move-wide/from16 v4, v22

    move-wide/from16 v6, v24

    .end local v5    # "actNames":[Ljava/lang/String;
    goto/16 :goto_54

    .line 341
    .end local v0    # "running_pkg":Ljava/lang/String;
    .end local v2    # "activity_name":Ljava/lang/String;
    .end local v7    # "consume_time":I
    .end local v11    # "predict_time":I
    .end local v13    # "apk_version":Ljava/lang/String;
    .end local v20    # "success":I
    .end local v22    # "curTime":J
    .end local v24    # "lastTime":J
    .local v4, "curTime":J
    .local v6, "lastTime":J
    :catchall_17f
    move-exception v0

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    .end local v4    # "curTime":J
    .end local v6    # "lastTime":J
    .restart local v22    # "curTime":J
    .restart local v24    # "lastTime":J
    goto/16 :goto_3bf

    .line 338
    .end local v22    # "curTime":J
    .end local v24    # "lastTime":J
    .restart local v4    # "curTime":J
    .restart local v6    # "lastTime":J
    :catch_18a
    move-exception v0

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    .end local v4    # "curTime":J
    .end local v6    # "lastTime":J
    .restart local v22    # "curTime":J
    .restart local v24    # "lastTime":J
    goto :goto_1d3

    .line 302
    .end local v21    # "db":Lcom/android/server/ipm/DBManager;
    .end local v22    # "curTime":J
    .end local v24    # "lastTime":J
    .restart local v0    # "running_pkg":Ljava/lang/String;
    .local v1, "db":Lcom/android/server/ipm/DBManager;
    .restart local v2    # "activity_name":Ljava/lang/String;
    .restart local v4    # "curTime":J
    .restart local v6    # "lastTime":J
    .restart local v11    # "predict_time":I
    .restart local v13    # "apk_version":Ljava/lang/String;
    .restart local v14    # "is_preloaded":I
    .restart local v15    # "consume_time":I
    .restart local v20    # "success":I
    :cond_190
    move-object/from16 v21, v1

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move v6, v14

    move v7, v15

    .line 303
    .end local v1    # "db":Lcom/android/server/ipm/DBManager;
    .end local v4    # "curTime":J
    .end local v14    # "is_preloaded":I
    .end local v15    # "consume_time":I
    .local v6, "is_preloaded":I
    .restart local v7    # "consume_time":I
    .restart local v21    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v22    # "curTime":J
    .restart local v24    # "lastTime":J
    :goto_198
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_19b} :catch_1aa
    .catchall {:try_start_11c .. :try_end_19b} :catchall_1a3

    .line 304
    move-object/from16 v1, v21

    move-wide/from16 v4, v22

    move-wide/from16 v6, v24

    goto/16 :goto_54

    .line 341
    .end local v0    # "running_pkg":Ljava/lang/String;
    .end local v2    # "activity_name":Ljava/lang/String;
    .end local v6    # "is_preloaded":I
    .end local v7    # "consume_time":I
    .end local v11    # "predict_time":I
    .end local v13    # "apk_version":Ljava/lang/String;
    .end local v20    # "success":I
    :catchall_1a3
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    goto/16 :goto_3bf

    .line 338
    :catch_1aa
    move-exception v0

    goto :goto_1d3

    .line 288
    .end local v21    # "db":Lcom/android/server/ipm/DBManager;
    .end local v22    # "curTime":J
    .end local v24    # "lastTime":J
    .restart local v1    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v4    # "curTime":J
    .local v6, "lastTime":J
    :cond_1ac
    move-object/from16 v21, v1

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    .end local v1    # "db":Lcom/android/server/ipm/DBManager;
    .end local v4    # "curTime":J
    .end local v6    # "lastTime":J
    .restart local v21    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v22    # "curTime":J
    .restart local v24    # "lastTime":J
    goto :goto_1b9

    .line 287
    .end local v21    # "db":Lcom/android/server/ipm/DBManager;
    .end local v22    # "curTime":J
    .end local v24    # "lastTime":J
    .restart local v1    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v4    # "curTime":J
    .restart local v6    # "lastTime":J
    :cond_1b3
    move-object/from16 v21, v1

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    .line 341
    .end local v1    # "db":Lcom/android/server/ipm/DBManager;
    .end local v4    # "curTime":J
    .end local v6    # "lastTime":J
    .restart local v21    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v22    # "curTime":J
    .restart local v24    # "lastTime":J
    :goto_1b9
    if-eqz v10, :cond_1d9

    .line 342
    :goto_1bb
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1d9

    .line 341
    .end local v21    # "db":Lcom/android/server/ipm/DBManager;
    .end local v22    # "curTime":J
    .end local v24    # "lastTime":J
    .restart local v1    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v4    # "curTime":J
    .restart local v6    # "lastTime":J
    :catchall_1bf
    move-exception v0

    move-object/from16 v21, v1

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    .end local v1    # "db":Lcom/android/server/ipm/DBManager;
    .end local v4    # "curTime":J
    .end local v6    # "lastTime":J
    .restart local v21    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v22    # "curTime":J
    .restart local v24    # "lastTime":J
    goto/16 :goto_3bf

    .line 338
    .end local v21    # "db":Lcom/android/server/ipm/DBManager;
    .end local v22    # "curTime":J
    .end local v24    # "lastTime":J
    .restart local v1    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v4    # "curTime":J
    .restart local v6    # "lastTime":J
    :catch_1cc
    move-exception v0

    move-object/from16 v21, v1

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    .line 339
    .end local v1    # "db":Lcom/android/server/ipm/DBManager;
    .end local v4    # "curTime":J
    .end local v6    # "lastTime":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v22    # "curTime":J
    .restart local v24    # "lastTime":J
    :goto_1d3
    :try_start_1d3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d6
    .catchall {:try_start_1d3 .. :try_end_1d6} :catchall_3ba

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v10, :cond_1d9

    .line 342
    goto :goto_1bb

    .line 347
    :cond_1d9
    :goto_1d9
    const/4 v0, 0x0

    .line 348
    .local v0, "totalCnt":I
    const/4 v1, 0x0

    .line 349
    .local v1, "totalSuccess":I
    const/4 v2, 0x0

    .line 350
    .local v2, "totalPreload":I
    const/4 v4, 0x0

    .line 351
    .local v4, "totalBenefitPkgNum":I
    const-wide/16 v5, 0x0

    .line 352
    .local v5, "totalBenefit":J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v7, "appDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/AppData;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v14, v11

    .line 356
    .local v14, "pkgAccuracyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1eb
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_2eb

    .line 357
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 358
    .local v12, "_pkgName":Ljava/lang/String;
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    .line 360
    .local v13, "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    const/4 v15, 0x0

    .line 361
    .local v15, "pkgSuccessCnt":I
    const/16 v16, 0x0

    .line 363
    .local v16, "pkgCnt":I
    const/16 v17, 0x0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move/from16 v8, v16

    move/from16 v9, v17

    .end local v16    # "pkgCnt":I
    .local v8, "pkgCnt":I
    .local v9, "j":I
    .local v26, "sql":Ljava/lang/String;
    .local v27, "bigDataInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;>;"
    :goto_20a
    move-object/from16 v28, v10

    .end local v10    # "cursor":Landroid/database/Cursor;
    .local v28, "cursor":Landroid/database/Cursor;
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_2bc

    .line 365
    invoke-virtual {v13, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 366
    .local v10, "_activityName":Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v13

    .end local v13    # "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    .local v17, "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    move-object/from16 v13, v16

    check-cast v13, Lcom/android/server/ipm/BigData$1ActInfo;

    .line 368
    .local v13, "actInfo":Lcom/android/server/ipm/BigData$1ActInfo;
    move-object/from16 v16, v3

    iget v3, v13, Lcom/android/server/ipm/BigData$1ActInfo;->successCnt:I

    add-int/2addr v15, v3

    .line 369
    iget v3, v13, Lcom/android/server/ipm/BigData$1ActInfo;->cnt:I

    add-int/2addr v8, v3

    .line 371
    iget v3, v13, Lcom/android/server/ipm/BigData$1ActInfo;->cnt:I

    add-int/2addr v0, v3

    .line 372
    iget v3, v13, Lcom/android/server/ipm/BigData$1ActInfo;->successCnt:I

    add-int/2addr v1, v3

    .line 373
    iget v3, v13, Lcom/android/server/ipm/BigData$1ActInfo;->preloadCnt:I

    add-int/2addr v2, v3

    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, "appBenefit":I
    const/16 v18, 0x0

    .line 384
    .local v18, "avgHitConTime":I
    const/16 v19, 0x0

    .line 385
    .local v19, "avgNoHitConTime":I
    move/from16 v20, v0

    .end local v0    # "totalCnt":I
    .local v20, "totalCnt":I
    iget v0, v13, Lcom/android/server/ipm/BigData$1ActInfo;->cnt:I

    move/from16 v29, v1

    .end local v1    # "totalSuccess":I
    .local v29, "totalSuccess":I
    iget v1, v13, Lcom/android/server/ipm/BigData$1ActInfo;->preloadCnt:I

    if-eq v0, v1, :cond_24e

    .line 386
    iget v0, v13, Lcom/android/server/ipm/BigData$1ActInfo;->nohit_consume_time:I

    iget v1, v13, Lcom/android/server/ipm/BigData$1ActInfo;->cnt:I

    move/from16 v30, v2

    .end local v2    # "totalPreload":I
    .local v30, "totalPreload":I
    iget v2, v13, Lcom/android/server/ipm/BigData$1ActInfo;->preloadCnt:I

    sub-int/2addr v1, v2

    div-int v19, v0, v1

    goto :goto_250

    .line 385
    .end local v30    # "totalPreload":I
    .restart local v2    # "totalPreload":I
    :cond_24e
    move/from16 v30, v2

    .line 388
    .end local v2    # "totalPreload":I
    .restart local v30    # "totalPreload":I
    :goto_250
    iget v0, v13, Lcom/android/server/ipm/BigData$1ActInfo;->preloadCnt:I

    if-eqz v0, :cond_25a

    .line 389
    iget v0, v13, Lcom/android/server/ipm/BigData$1ActInfo;->hit_consume_time:I

    iget v1, v13, Lcom/android/server/ipm/BigData$1ActInfo;->preloadCnt:I

    div-int v18, v0, v1

    .line 391
    :cond_25a
    if-eqz v18, :cond_268

    if-eqz v19, :cond_268

    .line 392
    sub-int v3, v19, v18

    .line 393
    iget v0, v13, Lcom/android/server/ipm/BigData$1ActInfo;->preloadCnt:I

    add-int/2addr v4, v0

    .line 394
    iget v0, v13, Lcom/android/server/ipm/BigData$1ActInfo;->preloadCnt:I

    mul-int/2addr v0, v3

    int-to-long v0, v0

    add-long/2addr v5, v0

    .line 397
    :cond_268
    iget v0, v13, Lcom/android/server/ipm/BigData$1ActInfo;->successCnt:I

    int-to-double v0, v0

    iget v2, v13, Lcom/android/server/ipm/BigData$1ActInfo;->cnt:I

    move/from16 v40, v3

    .end local v3    # "appBenefit":I
    .local v40, "appBenefit":I
    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 398
    .local v0, "appAccuracy":D
    iget v2, v13, Lcom/android/server/ipm/BigData$1ActInfo;->preloadCnt:I

    int-to-double v2, v2

    move/from16 v41, v4

    .end local v4    # "totalBenefitPkgNum":I
    .local v41, "totalBenefitPkgNum":I
    iget v4, v13, Lcom/android/server/ipm/BigData$1ActInfo;->cnt:I

    move-wide/from16 v42, v5

    .end local v5    # "totalBenefit":J
    .local v42, "totalBenefit":J
    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 399
    .local v2, "appPreloadRatio":D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "appCompName":Ljava/lang/String;
    new-instance v5, Lcom/android/server/ipm/AppData;

    iget-object v6, v13, Lcom/android/server/ipm/BigData$1ActInfo;->apk_version:Ljava/lang/String;

    move-object/from16 v31, v5

    move-object/from16 v32, v4

    move-object/from16 v33, v6

    move-wide/from16 v34, v0

    move-wide/from16 v36, v2

    move/from16 v38, v18

    move/from16 v39, v19

    invoke-direct/range {v31 .. v39}, Lcom/android/server/ipm/AppData;-><init>(Ljava/lang/String;Ljava/lang/String;DDII)V

    .line 402
    .local v5, "appData":Lcom/android/server/ipm/AppData;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v0    # "appAccuracy":D
    .end local v2    # "appPreloadRatio":D
    .end local v4    # "appCompName":Ljava/lang/String;
    .end local v5    # "appData":Lcom/android/server/ipm/AppData;
    .end local v10    # "_activityName":Ljava/lang/String;
    .end local v13    # "actInfo":Lcom/android/server/ipm/BigData$1ActInfo;
    .end local v18    # "avgHitConTime":I
    .end local v19    # "avgNoHitConTime":I
    .end local v40    # "appBenefit":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v16

    move-object/from16 v13, v17

    move/from16 v0, v20

    move-object/from16 v10, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v4, v41

    move-wide/from16 v5, v42

    goto/16 :goto_20a

    .end local v17    # "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    .end local v20    # "totalCnt":I
    .end local v29    # "totalSuccess":I
    .end local v30    # "totalPreload":I
    .end local v41    # "totalBenefitPkgNum":I
    .end local v42    # "totalBenefit":J
    .local v0, "totalCnt":I
    .restart local v1    # "totalSuccess":I
    .local v2, "totalPreload":I
    .local v4, "totalBenefitPkgNum":I
    .local v5, "totalBenefit":J
    .local v13, "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    :cond_2bc
    move-object/from16 v16, v3

    move-object/from16 v17, v13

    .line 407
    .end local v9    # "j":I
    .end local v13    # "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    .restart local v17    # "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    const-wide/16 v9, 0x0

    .line 409
    .local v9, "pkgAccuracy":D
    if-lez v8, :cond_2d5

    .line 410
    move v3, v0

    move v13, v1

    .end local v0    # "totalCnt":I
    .end local v1    # "totalSuccess":I
    .local v3, "totalCnt":I
    .local v13, "totalSuccess":I
    int-to-double v0, v15

    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "totalPreload":I
    .end local v3    # "totalCnt":I
    .local v18, "totalPreload":I
    .local v19, "totalCnt":I
    int-to-double v2, v8

    div-double/2addr v0, v2

    .line 411
    .end local v9    # "pkgAccuracy":D
    .local v0, "pkgAccuracy":D
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v14, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2da

    .line 409
    .end local v13    # "totalSuccess":I
    .end local v18    # "totalPreload":I
    .end local v19    # "totalCnt":I
    .local v0, "totalCnt":I
    .restart local v1    # "totalSuccess":I
    .restart local v2    # "totalPreload":I
    .restart local v9    # "pkgAccuracy":D
    :cond_2d5
    move/from16 v19, v0

    move v13, v1

    move/from16 v18, v2

    .line 356
    .end local v0    # "totalCnt":I
    .end local v1    # "totalSuccess":I
    .end local v2    # "totalPreload":I
    .end local v8    # "pkgCnt":I
    .end local v9    # "pkgAccuracy":D
    .end local v12    # "_pkgName":Ljava/lang/String;
    .end local v15    # "pkgSuccessCnt":I
    .end local v17    # "actInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;"
    .restart local v13    # "totalSuccess":I
    .restart local v18    # "totalPreload":I
    .restart local v19    # "totalCnt":I
    :goto_2da
    add-int/lit8 v11, v11, 0x1

    move v1, v13

    move-object/from16 v3, v16

    move/from16 v2, v18

    move/from16 v0, v19

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v10, v28

    goto/16 :goto_1eb

    .end local v13    # "totalSuccess":I
    .end local v18    # "totalPreload":I
    .end local v19    # "totalCnt":I
    .end local v26    # "sql":Ljava/lang/String;
    .end local v27    # "bigDataInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;>;"
    .end local v28    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "totalCnt":I
    .restart local v1    # "totalSuccess":I
    .restart local v2    # "totalPreload":I
    .local v8, "sql":Ljava/lang/String;
    .local v9, "bigDataInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;>;"
    .local v10, "cursor":Landroid/database/Cursor;
    :cond_2eb
    move-object/from16 v16, v3

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    .line 417
    .end local v8    # "sql":Ljava/lang/String;
    .end local v9    # "bigDataInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;>;"
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "i":I
    .restart local v26    # "sql":Ljava/lang/String;
    .restart local v27    # "bigDataInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;>;"
    .restart local v28    # "cursor":Landroid/database/Cursor;
    invoke-static {v14}, Lcom/android/server/ipm/NapBigDataService;->updatePkgAccuracyMap(Ljava/util/HashMap;)V

    .line 420
    sget-boolean v3, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v3, :cond_36d

    .line 421
    const-string v3, "----------------------------"

    move-object/from16 v8, v16

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "totalCnt = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "totalSuccess = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "totalPreload = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "totalPreloadedCompNum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "totalBenefit = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_36d
    const-wide/16 v8, 0x0

    .line 431
    .local v8, "totalAccuracy":D
    const-wide/16 v10, 0x0

    .line 432
    .local v10, "totalPreRatio":D
    const-wide/16 v12, 0x0

    .line 433
    .local v12, "maxTrainingTime":D
    if-lez v0, :cond_383

    .line 434
    move-wide v15, v8

    .end local v8    # "totalAccuracy":D
    .local v15, "totalAccuracy":D
    int-to-double v8, v1

    move-wide/from16 v17, v10

    .end local v10    # "totalPreRatio":D
    .local v17, "totalPreRatio":D
    int-to-double v10, v0

    div-double/2addr v8, v10

    .line 435
    .end local v15    # "totalAccuracy":D
    .restart local v8    # "totalAccuracy":D
    int-to-double v10, v2

    move v3, v1

    move/from16 v29, v2

    .end local v1    # "totalSuccess":I
    .end local v2    # "totalPreload":I
    .local v3, "totalSuccess":I
    .local v29, "totalPreload":I
    int-to-double v1, v0

    div-double/2addr v10, v1

    move-wide v1, v10

    .end local v17    # "totalPreRatio":D
    .restart local v10    # "totalPreRatio":D
    goto :goto_38b

    .line 433
    .end local v3    # "totalSuccess":I
    .end local v29    # "totalPreload":I
    .restart local v1    # "totalSuccess":I
    .restart local v2    # "totalPreload":I
    :cond_383
    move v3, v1

    move/from16 v29, v2

    move-wide v15, v8

    move-wide/from16 v17, v10

    .end local v1    # "totalSuccess":I
    .end local v2    # "totalPreload":I
    .end local v8    # "totalAccuracy":D
    .end local v10    # "totalPreRatio":D
    .restart local v3    # "totalSuccess":I
    .restart local v15    # "totalAccuracy":D
    .restart local v17    # "totalPreRatio":D
    .restart local v29    # "totalPreload":I
    move-wide/from16 v1, v17

    .line 437
    .end local v15    # "totalAccuracy":D
    .end local v17    # "totalPreRatio":D
    .local v1, "totalPreRatio":D
    .restart local v8    # "totalAccuracy":D
    :goto_38b
    const-wide/16 v10, 0x0

    .line 438
    .local v10, "avgTotalBenefit":J
    if-lez v4, :cond_396

    .line 439
    move-wide v15, v10

    .end local v10    # "avgTotalBenefit":J
    .local v15, "avgTotalBenefit":J
    int-to-long v10, v4

    div-long v10, v5, v10

    move-wide/from16 v30, v10

    .end local v15    # "avgTotalBenefit":J
    .restart local v10    # "avgTotalBenefit":J
    goto :goto_399

    .line 438
    :cond_396
    move-wide v15, v10

    .end local v10    # "avgTotalBenefit":J
    .restart local v15    # "avgTotalBenefit":J
    move-wide/from16 v30, v15

    .line 441
    .end local v15    # "avgTotalBenefit":J
    .local v30, "avgTotalBenefit":J
    :goto_399
    invoke-static {}, Lcom/android/server/ipm/BigData;->getMaxTrainingTime()I

    move-result v10

    int-to-double v10, v10

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v15

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double v32, v10, v15

    .line 443
    .end local v12    # "maxTrainingTime":D
    .local v32, "maxTrainingTime":D
    new-instance v10, Lcom/android/server/ipm/BigData;

    move-object v11, v10

    move-wide v12, v8

    move-object/from16 v34, v14

    .end local v14    # "pkgAccuracyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .local v34, "pkgAccuracyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    move-wide/from16 v14, v30

    move-wide/from16 v16, v1

    move-wide/from16 v18, v32

    move-object/from16 v20, v7

    invoke-direct/range {v11 .. v20}, Lcom/android/server/ipm/BigData;-><init>(DJDDLjava/util/ArrayList;)V

    .line 445
    .local v10, "bData":Lcom/android/server/ipm/BigData;
    return-object v10

    .line 341
    .end local v0    # "totalCnt":I
    .end local v1    # "totalPreRatio":D
    .end local v3    # "totalSuccess":I
    .end local v4    # "totalBenefitPkgNum":I
    .end local v5    # "totalBenefit":J
    .end local v7    # "appDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/AppData;>;"
    .end local v26    # "sql":Ljava/lang/String;
    .end local v27    # "bigDataInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;>;"
    .end local v28    # "cursor":Landroid/database/Cursor;
    .end local v29    # "totalPreload":I
    .end local v30    # "avgTotalBenefit":J
    .end local v32    # "maxTrainingTime":D
    .end local v34    # "pkgAccuracyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .local v8, "sql":Ljava/lang/String;
    .restart local v9    # "bigDataInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;>;"
    .local v10, "cursor":Landroid/database/Cursor;
    :catchall_3ba
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    .end local v8    # "sql":Ljava/lang/String;
    .end local v9    # "bigDataInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;>;"
    .restart local v26    # "sql":Ljava/lang/String;
    .restart local v27    # "bigDataInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/BigData$1ActInfo;>;>;"
    :goto_3bf
    if-eqz v10, :cond_3c4

    .line 342
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_3c4
    throw v0
.end method

.method public static getMaxTrainingTime()I
    .registers 10

    .line 80
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v0

    .line 81
    .local v0, "db":Lcom/android/server/ipm/DBManager;
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 82
    const-string v1, "PkgPredictorService-NapBigDataService"

    const-string v2, "Get max training time failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x0

    return v1

    .line 85
    :cond_13
    const/4 v1, 0x0

    .line 86
    .local v1, "trainTime":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    sub-long/2addr v2, v4

    .line 87
    .local v2, "deadline":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "select * from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ipm/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " where build_time > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " order by train_time desc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x0

    .line 89
    .local v5, "cursor":Landroid/database/Cursor;
    sget-object v6, Lcom/android/server/ipm/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v6

    .line 91
    const/4 v7, 0x0

    :try_start_42
    invoke-virtual {v0, v4, v7}, Lcom/android/server/ipm/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v5, v7

    .line 92
    if-eqz v5, :cond_6e

    .line 93
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 94
    const-string/jumbo v7, "train_time"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move v1, v7

    .line 95
    const-string v7, "PkgPredictorService-NapBigDataService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get max training time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_6e} :catch_76
    .catchall {:try_start_42 .. :try_end_6e} :catchall_74

    .line 100
    :cond_6e
    if-eqz v5, :cond_7d

    :goto_70
    :try_start_70
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_7f

    goto :goto_7d

    :catchall_74
    move-exception v7

    goto :goto_81

    .line 97
    :catch_76
    move-exception v7

    .line 98
    .local v7, "e":Ljava/lang/Exception;
    :try_start_77
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_74

    .line 100
    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_7d

    goto :goto_70

    .line 102
    :cond_7d
    :goto_7d
    :try_start_7d
    monitor-exit v6

    .line 103
    return v1

    .line 102
    :catchall_7f
    move-exception v7

    goto :goto_88

    .line 100
    :goto_81
    if-eqz v5, :cond_86

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_86
    nop

    .end local v0    # "db":Lcom/android/server/ipm/DBManager;
    .end local v1    # "trainTime":I
    .end local v2    # "deadline":J
    .end local v4    # "sql":Ljava/lang/String;
    .end local v5    # "cursor":Landroid/database/Cursor;
    throw v7

    .line 102
    .restart local v0    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v1    # "trainTime":I
    .restart local v2    # "deadline":J
    .restart local v4    # "sql":Ljava/lang/String;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    :goto_88
    monitor-exit v6
    :try_end_89
    .catchall {:try_start_7d .. :try_end_89} :catchall_7f

    throw v7
.end method


# virtual methods
.method public toStringList()Ljava/util/ArrayList;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"DWHR\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ipm/BigData;->totalAccuracy:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\"DWLG\":\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/ipm/BigData;->totalBenefit:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\"DWOM\":\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/ipm/BigData;->maxTrainTime:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_67
    iget-object v7, v0, Lcom/android/server/ipm/BigData;->appDataList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_125

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v7

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 121
    iget-object v7, v0, Lcom/android/server/ipm/BigData;->appDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ipm/AppData;

    .line 122
    .local v7, "appData":Lcom/android/server/ipm/AppData;
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    iget-wide v11, v7, Lcom/android/server/ipm/AppData;->accuracy:D

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v3

    const-string v11, "%.2f"

    invoke-static {v8, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "accuracy":Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v12, v9, [Ljava/lang/Object;

    move-object v15, v10

    iget-wide v9, v7, Lcom/android/server/ipm/AppData;->preRatio:D

    mul-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v12, v3

    move-object v9, v15

    invoke-static {v9, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "preRatio":Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget v12, v7, Lcom/android/server/ipm/AppData;->benefit:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    const-string v12, "%s"

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, "benefit":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\"NAPN\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v7, Lcom/android/server/ipm/AppData;->compName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\"NAHR\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\"NALG\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\"NAOM\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v7    # "appData":Lcom/android/server/ipm/AppData;
    .end local v8    # "accuracy":Ljava/lang/String;
    .end local v9    # "preRatio":Ljava/lang/String;
    .end local v10    # "benefit":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_67

    .line 136
    .end local v4    # "i":I
    :cond_125
    return-object v1
.end method
