.class Lcom/android/server/ipm/AufBigData;
.super Ljava/lang/Object;
.source "AufBigData.java"


# static fields
.field private static final DATA_PERIOD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-AufBigData"

.field private static bSend:Z


# instance fields
.field private mhit10Radio:Ljava/lang/String;

.field private mhit15Radio:Ljava/lang/String;

.field private mhit20Radio:Ljava/lang/String;

.field private mhit25Radio:Ljava/lang/String;

.field private mhit30Radio:Ljava/lang/String;

.field private mhit5Radio:Ljava/lang/String;

.field private pkg_count:I

.field private total_count:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ipm/AufBigData;->bSend:Z

    return-void
.end method

.method public constructor <init>(IIDDDDDD)V
    .registers 24
    .param p1, "pkg_count"    # I
    .param p2, "total_count"    # I
    .param p3, "hit5Ratio"    # D
    .param p5, "hit10Ratio"    # D
    .param p7, "hit15Ratio"    # D
    .param p9, "hit20Ratio"    # D
    .param p11, "hit25Ratio"    # D
    .param p13, "hit30Ratio"    # D

    .line 31
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    move v1, p1

    iput v1, v0, Lcom/android/server/ipm/AufBigData;->pkg_count:I

    .line 34
    move v2, p2

    iput v2, v0, Lcom/android/server/ipm/AufBigData;->total_count:I

    .line 35
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "%.2f"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/ipm/AufBigData;->mhit5Radio:Ljava/lang/String;

    .line 36
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/ipm/AufBigData;->mhit10Radio:Ljava/lang/String;

    .line 37
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/ipm/AufBigData;->mhit15Radio:Ljava/lang/String;

    .line 38
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/ipm/AufBigData;->mhit20Radio:Ljava/lang/String;

    .line 39
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/ipm/AufBigData;->mhit25Radio:Ljava/lang/String;

    .line 40
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p13 .. p14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/ipm/AufBigData;->mhit30Radio:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static bSendAufBigData(Z)V
    .registers 2
    .param p0, "isSend"    # Z

    .line 48
    xor-int/lit8 v0, p0, 0x1

    sput-boolean v0, Lcom/android/server/ipm/AufBigData;->bSend:Z

    .line 49
    return-void
.end method

.method public static bSendAufBigData()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/android/server/ipm/AufBigData;->bSend:Z

    return v0
.end method

.method public static getAufBigData()Lcom/android/server/ipm/AufBigData;
    .registers 51

    .line 77
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v1

    .line 78
    .local v1, "db":Lcom/android/server/ipm/DBManager;
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v0

    const-string v2, "PkgPredictorService-AufBigData"

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    .line 79
    const-string v0, "get Dataset failed! db is closed!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v3

    .line 82
    :cond_13
    const/4 v4, 0x0

    .line 83
    .local v4, "pkgNumCursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 84
    .local v5, "curTime":J
    const-wide/32 v7, 0xf731400

    sub-long v7, v5, v7

    .line 86
    .local v7, "lastTime":J
    const/4 v0, 0x0

    .line 88
    .local v0, "mTotal_count":I
    const-wide/16 v9, 0x0

    move-wide v11, v9

    .local v11, "mHit30":J
    move-wide v13, v9

    .local v13, "mHit25":J
    move-wide v15, v9

    .local v15, "mHit20":J
    move-wide/from16 v17, v9

    .local v17, "mHit15":J
    move-wide/from16 v19, v9

    .line 107
    .local v9, "mHit5":J
    .local v19, "mHit10":J
    const/16 v21, 0x0

    .line 108
    .local v21, "m_Pkg_count":I
    invoke-static {}, Lcom/android/server/ipm/AufPredictor;->getExceptionPkgs()[Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "exceptionPkgs":[Ljava/lang/String;
    move-object/from16 v23, v4

    .end local v4    # "pkgNumCursor":Landroid/database/Cursor;
    .local v23, "pkgNumCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/android/server/ipm/AufHitCalculation;->getAufSummary()Lcom/android/server/ipm/AufSummary;

    move-result-object v4

    .line 110
    .local v4, "mSummary":Lcom/android/server/ipm/AufSummary;
    if-nez v4, :cond_37

    .line 111
    const/4 v2, 0x0

    return-object v2

    .line 113
    :cond_37
    move-wide/from16 v24, v7

    .end local v7    # "lastTime":J
    .local v24, "lastTime":J
    iget v7, v4, Lcom/android/server/ipm/AufSummary;->totalcount:I

    .line 114
    .end local v0    # "mTotal_count":I
    .local v7, "mTotal_count":I
    move-wide/from16 v26, v9

    .end local v9    # "mHit5":J
    .local v26, "mHit5":J
    iget-wide v8, v4, Lcom/android/server/ipm/AufSummary;->resetTime:J

    .line 115
    .end local v24    # "lastTime":J
    .local v8, "lastTime":J
    iget v0, v4, Lcom/android/server/ipm/AufSummary;->hit5:I

    move-wide/from16 v24, v11

    .end local v11    # "mHit30":J
    .local v24, "mHit30":J
    int-to-long v10, v0

    .line 116
    .end local v26    # "mHit5":J
    .local v10, "mHit5":J
    iget v0, v4, Lcom/android/server/ipm/AufSummary;->hit10:I

    move-wide/from16 v26, v13

    .end local v13    # "mHit25":J
    .local v26, "mHit25":J
    int-to-long v12, v0

    .line 117
    .end local v19    # "mHit10":J
    .local v12, "mHit10":J
    iget v0, v4, Lcom/android/server/ipm/AufSummary;->hit15:I

    move-wide/from16 v19, v15

    .end local v15    # "mHit20":J
    .local v19, "mHit20":J
    int-to-long v14, v0

    .line 118
    .end local v17    # "mHit15":J
    .local v14, "mHit15":J
    iget v0, v4, Lcom/android/server/ipm/AufSummary;->hit20:I

    move-wide/from16 v16, v14

    .end local v14    # "mHit15":J
    .local v16, "mHit15":J
    int-to-long v14, v0

    .line 119
    .end local v19    # "mHit20":J
    .local v14, "mHit20":J
    iget v0, v4, Lcom/android/server/ipm/AufSummary;->hit25:I

    move-wide/from16 v18, v14

    .end local v14    # "mHit20":J
    .local v18, "mHit20":J
    int-to-long v14, v0

    .line 120
    .end local v26    # "mHit25":J
    .local v14, "mHit25":J
    iget v0, v4, Lcom/android/server/ipm/AufSummary;->hit30:I

    move-wide/from16 v39, v14

    .end local v14    # "mHit25":J
    .local v39, "mHit25":J
    int-to-long v14, v0

    .line 123
    .end local v24    # "mHit30":J
    .local v14, "mHit30":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v4

    .end local v4    # "mSummary":Lcom/android/server/ipm/AufSummary;
    .local v20, "mSummary":Lcom/android/server/ipm/AufSummary;
    const-string/jumbo v4, "select running_pkg as pkgName from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/ipm/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " where launch_time > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " and launch_time < "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " GROUP BY pkgName"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "sqlNOFP":Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_89
    invoke-virtual {v1, v4, v0}, Lcom/android/server/ipm/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8d} :catch_138
    .catchall {:try_start_89 .. :try_end_8d} :catchall_12c

    move-object/from16 v22, v0

    .line 131
    .end local v23    # "pkgNumCursor":Landroid/database/Cursor;
    .local v22, "pkgNumCursor":Landroid/database/Cursor;
    move-object/from16 v41, v1

    move-object/from16 v1, v22

    .end local v22    # "pkgNumCursor":Landroid/database/Cursor;
    .local v1, "pkgNumCursor":Landroid/database/Cursor;
    .local v41, "db":Lcom/android/server/ipm/DBManager;
    if-eqz v1, :cond_122

    .line 132
    :try_start_95
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 134
    :goto_9b
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9f} :catch_11b
    .catchall {:try_start_95 .. :try_end_9f} :catchall_112

    if-nez v0, :cond_108

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "bExist":Z
    const/16 v22, 0x0

    move/from16 v23, v0

    move/from16 v0, v22

    .local v0, "iPkg":I
    .local v23, "bExist":Z
    :goto_a8
    move-object/from16 v22, v4

    .end local v4    # "sqlNOFP":Ljava/lang/String;
    .local v22, "sqlNOFP":Ljava/lang/String;
    :try_start_aa
    array-length v4, v3

    if-ge v0, v4, :cond_e4

    .line 137
    const-string/jumbo v4, "pkgName"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b8} :catch_103
    .catchall {:try_start_aa .. :try_end_b8} :catchall_fc

    .line 138
    .local v4, "pkgName":Ljava/lang/String;
    move-wide/from16 v42, v5

    .end local v5    # "curTime":J
    .local v42, "curTime":J
    :try_start_ba
    aget-object v5, v3, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dd

    .line 139
    sget-boolean v5, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v5, :cond_da

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exceptionPkgs same as pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_da
    const/4 v5, 0x1

    .line 142
    .end local v23    # "bExist":Z
    .local v5, "bExist":Z
    move v0, v5

    goto :goto_e8

    .line 136
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "bExist":Z
    .restart local v23    # "bExist":Z
    :cond_dd
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v22

    move-wide/from16 v5, v42

    goto :goto_a8

    .end local v42    # "curTime":J
    .local v5, "curTime":J
    :cond_e4
    move-wide/from16 v42, v5

    .end local v5    # "curTime":J
    .restart local v42    # "curTime":J
    move/from16 v0, v23

    .line 145
    .end local v23    # "bExist":Z
    .local v0, "bExist":Z
    :goto_e8
    if-nez v0, :cond_ec

    .line 146
    add-int/lit8 v21, v21, 0x1

    .line 148
    :cond_ec
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_ef} :catch_f9
    .catchall {:try_start_ba .. :try_end_ef} :catchall_f4

    move-object/from16 v4, v22

    move-wide/from16 v5, v42

    goto :goto_9b

    .line 155
    .end local v0    # "bExist":Z
    :catchall_f4
    move-exception v0

    move-object v4, v1

    move-object v6, v3

    goto/16 :goto_1b6

    .line 152
    :catch_f9
    move-exception v0

    move-object v4, v1

    goto :goto_141

    .line 155
    .end local v42    # "curTime":J
    .restart local v5    # "curTime":J
    :catchall_fc
    move-exception v0

    move-wide/from16 v42, v5

    move-object v4, v1

    move-object v6, v3

    .end local v5    # "curTime":J
    .restart local v42    # "curTime":J
    goto/16 :goto_1b6

    .line 152
    .end local v42    # "curTime":J
    .restart local v5    # "curTime":J
    :catch_103
    move-exception v0

    move-wide/from16 v42, v5

    move-object v4, v1

    .end local v5    # "curTime":J
    .restart local v42    # "curTime":J
    goto :goto_141

    .line 134
    .end local v22    # "sqlNOFP":Ljava/lang/String;
    .end local v42    # "curTime":J
    .local v4, "sqlNOFP":Ljava/lang/String;
    .restart local v5    # "curTime":J
    :cond_108
    move-object/from16 v22, v4

    move-wide/from16 v42, v5

    .end local v4    # "sqlNOFP":Ljava/lang/String;
    .end local v5    # "curTime":J
    .restart local v22    # "sqlNOFP":Ljava/lang/String;
    .restart local v42    # "curTime":J
    goto :goto_126

    .line 132
    .end local v22    # "sqlNOFP":Ljava/lang/String;
    .end local v42    # "curTime":J
    .restart local v4    # "sqlNOFP":Ljava/lang/String;
    .restart local v5    # "curTime":J
    :cond_10d
    move-object/from16 v22, v4

    move-wide/from16 v42, v5

    .end local v4    # "sqlNOFP":Ljava/lang/String;
    .end local v5    # "curTime":J
    .restart local v22    # "sqlNOFP":Ljava/lang/String;
    .restart local v42    # "curTime":J
    goto :goto_126

    .line 155
    .end local v22    # "sqlNOFP":Ljava/lang/String;
    .end local v42    # "curTime":J
    .restart local v4    # "sqlNOFP":Ljava/lang/String;
    .restart local v5    # "curTime":J
    :catchall_112
    move-exception v0

    move-object/from16 v22, v4

    move-wide/from16 v42, v5

    move-object v4, v1

    move-object v6, v3

    .end local v4    # "sqlNOFP":Ljava/lang/String;
    .end local v5    # "curTime":J
    .restart local v22    # "sqlNOFP":Ljava/lang/String;
    .restart local v42    # "curTime":J
    goto/16 :goto_1b6

    .line 152
    .end local v22    # "sqlNOFP":Ljava/lang/String;
    .end local v42    # "curTime":J
    .restart local v4    # "sqlNOFP":Ljava/lang/String;
    .restart local v5    # "curTime":J
    :catch_11b
    move-exception v0

    move-object/from16 v22, v4

    move-wide/from16 v42, v5

    move-object v4, v1

    .end local v4    # "sqlNOFP":Ljava/lang/String;
    .end local v5    # "curTime":J
    .restart local v22    # "sqlNOFP":Ljava/lang/String;
    .restart local v42    # "curTime":J
    goto :goto_141

    .line 131
    .end local v22    # "sqlNOFP":Ljava/lang/String;
    .end local v42    # "curTime":J
    .restart local v4    # "sqlNOFP":Ljava/lang/String;
    .restart local v5    # "curTime":J
    :cond_122
    move-object/from16 v22, v4

    move-wide/from16 v42, v5

    .line 155
    .end local v4    # "sqlNOFP":Ljava/lang/String;
    .end local v5    # "curTime":J
    .restart local v22    # "sqlNOFP":Ljava/lang/String;
    .restart local v42    # "curTime":J
    :goto_126
    if-eqz v1, :cond_14a

    .line 156
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_14a

    .line 155
    .end local v22    # "sqlNOFP":Ljava/lang/String;
    .end local v41    # "db":Lcom/android/server/ipm/DBManager;
    .end local v42    # "curTime":J
    .local v1, "db":Lcom/android/server/ipm/DBManager;
    .restart local v4    # "sqlNOFP":Ljava/lang/String;
    .restart local v5    # "curTime":J
    .local v23, "pkgNumCursor":Landroid/database/Cursor;
    :catchall_12c
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v22, v4

    move-wide/from16 v42, v5

    move-object v6, v3

    move-object/from16 v4, v23

    .end local v1    # "db":Lcom/android/server/ipm/DBManager;
    .end local v4    # "sqlNOFP":Ljava/lang/String;
    .end local v5    # "curTime":J
    .restart local v22    # "sqlNOFP":Ljava/lang/String;
    .restart local v41    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v42    # "curTime":J
    goto/16 :goto_1b6

    .line 152
    .end local v22    # "sqlNOFP":Ljava/lang/String;
    .end local v41    # "db":Lcom/android/server/ipm/DBManager;
    .end local v42    # "curTime":J
    .restart local v1    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v4    # "sqlNOFP":Ljava/lang/String;
    .restart local v5    # "curTime":J
    :catch_138
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v22, v4

    move-wide/from16 v42, v5

    move-object/from16 v4, v23

    .line 153
    .end local v1    # "db":Lcom/android/server/ipm/DBManager;
    .end local v5    # "curTime":J
    .end local v23    # "pkgNumCursor":Landroid/database/Cursor;
    .local v0, "e":Ljava/lang/Exception;
    .local v4, "pkgNumCursor":Landroid/database/Cursor;
    .restart local v22    # "sqlNOFP":Ljava/lang/String;
    .restart local v41    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v42    # "curTime":J
    :goto_141
    :try_start_141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_144
    .catchall {:try_start_141 .. :try_end_144} :catchall_1b4

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_149

    .line 156
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_149
    move-object v1, v4

    .end local v4    # "pkgNumCursor":Landroid/database/Cursor;
    .local v1, "pkgNumCursor":Landroid/database/Cursor;
    :cond_14a
    :goto_14a
    const-wide/16 v4, 0x0

    .line 161
    .local v4, "Hit5Ratio":D
    const-wide/16 v23, 0x0

    .line 162
    .local v23, "Hit10Ratio":D
    const-wide/16 v25, 0x0

    .line 163
    .local v25, "Hit15Ratio":D
    const-wide/16 v27, 0x0

    .line 164
    .local v27, "Hit20Ratio":D
    const-wide/16 v29, 0x0

    .line 165
    .local v29, "Hit25Ratio":D
    const-wide/16 v31, 0x0

    .line 167
    .local v31, "Hit30Ratio":D
    if-lez v7, :cond_18f

    .line 168
    const-wide/16 v33, 0x64

    mul-long v35, v10, v33

    move-object v2, v1

    .end local v1    # "pkgNumCursor":Landroid/database/Cursor;
    .local v2, "pkgNumCursor":Landroid/database/Cursor;
    int-to-long v0, v7

    div-long v0, v35, v0

    long-to-double v4, v0

    .line 169
    mul-long v0, v12, v33

    move-object/from16 v44, v2

    move-object v6, v3

    .end local v2    # "pkgNumCursor":Landroid/database/Cursor;
    .end local v3    # "exceptionPkgs":[Ljava/lang/String;
    .local v6, "exceptionPkgs":[Ljava/lang/String;
    .local v44, "pkgNumCursor":Landroid/database/Cursor;
    int-to-long v2, v7

    div-long/2addr v0, v2

    long-to-double v0, v0

    .line 170
    .end local v23    # "Hit10Ratio":D
    .local v0, "Hit10Ratio":D
    mul-long v2, v16, v33

    move-wide/from16 v23, v0

    .end local v0    # "Hit10Ratio":D
    .restart local v23    # "Hit10Ratio":D
    int-to-long v0, v7

    div-long/2addr v2, v0

    long-to-double v0, v2

    .line 171
    .end local v25    # "Hit15Ratio":D
    .local v0, "Hit15Ratio":D
    mul-long v2, v18, v33

    move-wide/from16 v25, v0

    .end local v0    # "Hit15Ratio":D
    .restart local v25    # "Hit15Ratio":D
    int-to-long v0, v7

    div-long/2addr v2, v0

    long-to-double v0, v2

    .line 172
    .end local v27    # "Hit20Ratio":D
    .local v0, "Hit20Ratio":D
    mul-long v2, v39, v33

    move-wide/from16 v27, v0

    .end local v0    # "Hit20Ratio":D
    .restart local v27    # "Hit20Ratio":D
    int-to-long v0, v7

    div-long/2addr v2, v0

    long-to-double v0, v2

    .line 173
    .end local v29    # "Hit25Ratio":D
    .local v0, "Hit25Ratio":D
    mul-long v33, v33, v14

    int-to-long v2, v7

    div-long v2, v33, v2

    long-to-double v2, v2

    move-wide/from16 v47, v0

    move-wide/from16 v49, v2

    move-wide/from16 v0, v23

    move-wide/from16 v2, v25

    move-wide/from16 v45, v27

    .end local v31    # "Hit30Ratio":D
    .local v2, "Hit30Ratio":D
    goto :goto_19c

    .line 167
    .end local v0    # "Hit25Ratio":D
    .end local v2    # "Hit30Ratio":D
    .end local v6    # "exceptionPkgs":[Ljava/lang/String;
    .end local v44    # "pkgNumCursor":Landroid/database/Cursor;
    .restart local v1    # "pkgNumCursor":Landroid/database/Cursor;
    .restart local v3    # "exceptionPkgs":[Ljava/lang/String;
    .restart local v29    # "Hit25Ratio":D
    .restart local v31    # "Hit30Ratio":D
    :cond_18f
    move-object/from16 v44, v1

    move-object v6, v3

    .end local v1    # "pkgNumCursor":Landroid/database/Cursor;
    .end local v3    # "exceptionPkgs":[Ljava/lang/String;
    .restart local v6    # "exceptionPkgs":[Ljava/lang/String;
    .restart local v44    # "pkgNumCursor":Landroid/database/Cursor;
    move-wide/from16 v0, v23

    move-wide/from16 v2, v25

    move-wide/from16 v45, v27

    move-wide/from16 v47, v29

    move-wide/from16 v49, v31

    .line 181
    .end local v23    # "Hit10Ratio":D
    .end local v25    # "Hit15Ratio":D
    .end local v27    # "Hit20Ratio":D
    .end local v29    # "Hit25Ratio":D
    .end local v31    # "Hit30Ratio":D
    .local v0, "Hit10Ratio":D
    .local v2, "Hit15Ratio":D
    .local v45, "Hit20Ratio":D
    .local v47, "Hit25Ratio":D
    .local v49, "Hit30Ratio":D
    :goto_19c
    new-instance v23, Lcom/android/server/ipm/AufBigData;

    move-object/from16 v24, v23

    move/from16 v25, v21

    move/from16 v26, v7

    move-wide/from16 v27, v4

    move-wide/from16 v29, v0

    move-wide/from16 v31, v2

    move-wide/from16 v33, v45

    move-wide/from16 v35, v47

    move-wide/from16 v37, v49

    invoke-direct/range {v24 .. v38}, Lcom/android/server/ipm/AufBigData;-><init>(IIDDDDDD)V

    .line 182
    .local v23, "bData":Lcom/android/server/ipm/AufBigData;
    return-object v23

    .line 155
    .end local v0    # "Hit10Ratio":D
    .end local v2    # "Hit15Ratio":D
    .end local v6    # "exceptionPkgs":[Ljava/lang/String;
    .end local v23    # "bData":Lcom/android/server/ipm/AufBigData;
    .end local v44    # "pkgNumCursor":Landroid/database/Cursor;
    .end local v45    # "Hit20Ratio":D
    .end local v47    # "Hit25Ratio":D
    .end local v49    # "Hit30Ratio":D
    .restart local v3    # "exceptionPkgs":[Ljava/lang/String;
    .local v4, "pkgNumCursor":Landroid/database/Cursor;
    :catchall_1b4
    move-exception v0

    move-object v6, v3

    .end local v3    # "exceptionPkgs":[Ljava/lang/String;
    .restart local v6    # "exceptionPkgs":[Ljava/lang/String;
    :goto_1b6
    if-eqz v4, :cond_1bb

    .line 156
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_1bb
    throw v0
.end method


# virtual methods
.method public toStringAufList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_a
    const-string v2, "NOFP"

    iget v3, p0, Lcom/android/server/ipm/AufBigData;->pkg_count:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v2, "TALC"

    iget v3, p0, Lcom/android/server/ipm/AufBigData;->total_count:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string v2, "HITR"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, p0, Lcom/android/server/ipm/AufBigData;->mhit5Radio:Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ipm/AufBigData;->mhit10Radio:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ipm/AufBigData;->mhit15Radio:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ipm/AufBigData;->mhit20Radio:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ipm/AufBigData;->mhit25Radio:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ipm/AufBigData;->mhit30Radio:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    .line 59
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_46} :catch_47

    .line 63
    goto :goto_49

    .line 61
    :catch_47
    move-exception v2

    .line 62
    .local v2, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    .line 65
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_49
    if-eqz v1, :cond_60

    .line 66
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "cvString":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v2    # "cvString":Ljava/lang/String;
    :cond_60
    return-object v0
.end method
