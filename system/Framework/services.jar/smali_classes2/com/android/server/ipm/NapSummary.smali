.class public Lcom/android/server/ipm/NapSummary;
.super Ljava/lang/Object;
.source "NapSummary.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-NapSummary"


# instance fields
.field public dataProcessEndTime:J

.field public dataProcessStartTime:J

.field predict_right:I

.field predict_totals:I

.field rf_build_time:J

.field training_sets:I

.field training_time:J

.field public treeNumAdjust:I

.field public treeNumAdjustEndTime:J

.field public treeNumAdjustStartTime:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    .line 30
    iput v0, p0, Lcom/android/server/ipm/NapSummary;->predict_right:I

    .line 31
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/ipm/NapSummary;->rf_build_time:J

    .line 32
    iput-wide v1, p0, Lcom/android/server/ipm/NapSummary;->training_time:J

    .line 33
    iput v0, p0, Lcom/android/server/ipm/NapSummary;->training_sets:I

    .line 35
    iput-wide v1, p0, Lcom/android/server/ipm/NapSummary;->dataProcessEndTime:J

    iput-wide v1, p0, Lcom/android/server/ipm/NapSummary;->dataProcessStartTime:J

    .line 36
    iput-wide v1, p0, Lcom/android/server/ipm/NapSummary;->treeNumAdjustEndTime:J

    iput-wide v1, p0, Lcom/android/server/ipm/NapSummary;->treeNumAdjustStartTime:J

    .line 37
    iput v0, p0, Lcom/android/server/ipm/NapSummary;->treeNumAdjust:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/server/ipm/NapSummary;)V
    .registers 2
    .param p1, "s"    # Lcom/android/server/ipm/NapSummary;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/NapSummary;->set(Lcom/android/server/ipm/NapSummary;)V

    .line 42
    return-void
.end method

.method public static declared-synchronized getDefault()Lcom/android/server/ipm/NapSummary;
    .registers 7

    const-class v0, Lcom/android/server/ipm/NapSummary;

    monitor-enter v0

    .line 65
    :try_start_3
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v1

    .line 66
    .local v1, "db":Lcom/android/server/ipm/DBManager;
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 67
    const-string v2, "PkgPredictorService-NapSummary"

    const-string v3, "get NapSummary failed! db is closed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v2, Lcom/android/server/ipm/NapSummary;

    invoke-direct {v2}, Lcom/android/server/ipm/NapSummary;-><init>()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_6b

    monitor-exit v0

    return-object v2

    .line 71
    :cond_1b
    :try_start_1b
    new-instance v2, Lcom/android/server/ipm/NapSummary;

    invoke-direct {v2}, Lcom/android/server/ipm/NapSummary;-><init>()V

    .line 72
    .local v2, "summary":Lcom/android/server/ipm/NapSummary;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "select * from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/ipm/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " order by id desc limit 0,1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_6b

    .line 73
    .local v3, "statement":Ljava/lang/String;
    const/4 v4, 0x0

    .line 75
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_3b
    invoke-virtual {v1, v3, v5}, Lcom/android/server/ipm/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v4, v5

    .line 76
    if-eqz v4, :cond_54

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 77
    const-string v5, "build_time"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/server/ipm/NapSummary;->rf_build_time:J
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_54} :catch_5c
    .catchall {:try_start_3b .. :try_end_54} :catchall_5a

    .line 82
    :cond_54
    if-eqz v4, :cond_63

    .line 83
    :goto_56
    :try_start_56
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_6b

    goto :goto_63

    .line 82
    :catchall_5a
    move-exception v5

    goto :goto_65

    .line 79
    :catch_5c
    move-exception v5

    .line 80
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5d
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5a

    .line 82
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_63

    .line 83
    goto :goto_56

    .line 86
    :cond_63
    :goto_63
    monitor-exit v0

    return-object v2

    .line 82
    :goto_65
    if-eqz v4, :cond_6a

    .line 83
    :try_start_67
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_6a
    throw v5
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_6b

    .line 64
    .end local v1    # "db":Lcom/android/server/ipm/DBManager;
    .end local v2    # "summary":Lcom/android/server/ipm/NapSummary;
    .end local v3    # "statement":Ljava/lang/String;
    .end local v4    # "cursor":Landroid/database/Cursor;
    :catchall_6b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized save(Lcom/android/server/ipm/NapSummary;)V
    .registers 11
    .param p0, "summary"    # Lcom/android/server/ipm/NapSummary;

    const-class v0, Lcom/android/server/ipm/NapSummary;

    monitor-enter v0

    .line 90
    :try_start_3
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v1

    .line 91
    .local v1, "db":Lcom/android/server/ipm/DBManager;
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 92
    const-string v2, "PkgPredictorService-NapSummary"

    const-string/jumbo v3, "save NapSummary failed! db is closed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_145

    .line 93
    monitor-exit v0

    return-void

    .line 96
    :cond_17
    const/4 v2, 0x0

    .line 97
    .local v2, "update":Z
    :try_start_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "select * from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/ipm/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " where build_time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/ipm/NapSummary;->rf_build_time:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_145

    .line 99
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x0

    .line 101
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_38
    invoke-virtual {v1, v3, v5}, Lcom/android/server/ipm/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v4, v5

    .line 102
    if-eqz v4, :cond_66

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 103
    iget v5, p0, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    const-string/jumbo v6, "total_num"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    .line 104
    iget v5, p0, Lcom/android/server/ipm/NapSummary;->predict_right:I

    const-string/jumbo v6, "right_num"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/ipm/NapSummary;->predict_right:I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_65} :catch_6f
    .catchall {:try_start_38 .. :try_end_65} :catchall_6c

    .line 105
    const/4 v2, 0x1

    .line 110
    :cond_66
    if-eqz v4, :cond_76

    .line 111
    :goto_68
    :try_start_68
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_145

    goto :goto_76

    .line 110
    :catchall_6c
    move-exception v5

    goto/16 :goto_13f

    .line 107
    :catch_6f
    move-exception v5

    .line 108
    .local v5, "e":Ljava/lang/Exception;
    :try_start_70
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_6c

    .line 110
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_76

    .line 111
    goto :goto_68

    .line 115
    :cond_76
    :goto_76
    if-eqz v2, :cond_d2

    .line 116
    :try_start_78
    sget-object v5, Lcom/android/server/ipm/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v5
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_145

    .line 117
    :try_start_7b
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->beginTransaction()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_cf

    .line 119
    :try_start_7e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/ipm/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " set right_num = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/ipm/NapSummary;->predict_right:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", total_num = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " where build_time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/ipm/NapSummary;->rf_build_time:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 123
    invoke-virtual {v1, v3}, Lcom/android/server/ipm/DBManager;->execSQL(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->setTransactionSuccessful()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_b7} :catch_ba
    .catchall {:try_start_7e .. :try_end_b7} :catchall_b8

    goto :goto_c4

    .line 128
    :catchall_b8
    move-exception v6

    goto :goto_ca

    .line 125
    :catch_ba
    move-exception v6

    .line 126
    .local v6, "e":Ljava/lang/Exception;
    :try_start_bb
    const-string v7, "PkgPredictorService-NapSummary"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_bb .. :try_end_c4} :catchall_b8

    .line 128
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_c4
    :try_start_c4
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->endTransaction()V

    .line 129
    nop

    .line 130
    monitor-exit v5

    goto :goto_135

    .line 128
    :goto_ca
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->endTransaction()V

    .line 129
    nop

    .end local v1    # "db":Lcom/android/server/ipm/DBManager;
    .end local v2    # "update":Z
    .end local v3    # "sql":Ljava/lang/String;
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local p0    # "summary":Lcom/android/server/ipm/NapSummary;
    throw v6

    .line 130
    .restart local v1    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v2    # "update":Z
    .restart local v3    # "sql":Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "summary":Lcom/android/server/ipm/NapSummary;
    :catchall_cf
    move-exception v6

    monitor-exit v5
    :try_end_d1
    .catchall {:try_start_c4 .. :try_end_d1} :catchall_cf

    :try_start_d1
    throw v6

    .line 132
    :cond_d2
    sget-object v5, Lcom/android/server/ipm/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v5
    :try_end_d5
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_145

    .line 133
    :try_start_d5
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->beginTransaction()V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_13c

    .line 135
    :try_start_d8
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "build_time"

    iget-wide v8, p0, Lcom/android/server/ipm/NapSummary;->rf_build_time:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string/jumbo v7, "total_num"

    iget v8, p0, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string/jumbo v7, "right_num"

    iget v8, p0, Lcom/android/server/ipm/NapSummary;->predict_right:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string/jumbo v7, "train_time"

    iget-wide v8, p0, Lcom/android/server/ipm/NapSummary;->training_time:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    const-string/jumbo v7, "train_sets"

    iget v8, p0, Lcom/android/server/ipm/NapSummary;->training_sets:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    iget-object v7, v1, Lcom/android/server/ipm/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Lcom/android/server/ipm/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 142
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->setTransactionSuccessful()V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_120} :catch_126
    .catchall {:try_start_d8 .. :try_end_120} :catchall_124

    .line 146
    .end local v6    # "values":Landroid/content/ContentValues;
    :try_start_120
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->endTransaction()V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_13c

    goto :goto_133

    :catchall_124
    move-exception v6

    goto :goto_137

    .line 143
    :catch_126
    move-exception v6

    .line 144
    .local v6, "e":Ljava/lang/Exception;
    :try_start_127
    const-string v7, "PkgPredictorService-NapSummary"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_130
    .catchall {:try_start_127 .. :try_end_130} :catchall_124

    .line 146
    .end local v6    # "e":Ljava/lang/Exception;
    :try_start_130
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->endTransaction()V

    .line 147
    :goto_133
    nop

    .line 148
    monitor-exit v5
    :try_end_135
    .catchall {:try_start_130 .. :try_end_135} :catchall_13c

    .line 150
    :goto_135
    monitor-exit v0

    return-void

    .line 146
    :goto_137
    :try_start_137
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->endTransaction()V

    .line 147
    nop

    .end local v1    # "db":Lcom/android/server/ipm/DBManager;
    .end local v2    # "update":Z
    .end local v3    # "sql":Ljava/lang/String;
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local p0    # "summary":Lcom/android/server/ipm/NapSummary;
    throw v6

    .line 148
    .restart local v1    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v2    # "update":Z
    .restart local v3    # "sql":Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "summary":Lcom/android/server/ipm/NapSummary;
    :catchall_13c
    move-exception v6

    monitor-exit v5
    :try_end_13e
    .catchall {:try_start_137 .. :try_end_13e} :catchall_13c

    :try_start_13e
    throw v6

    .line 110
    :goto_13f
    if-eqz v4, :cond_144

    .line 111
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_144
    throw v5
    :try_end_145
    .catchall {:try_start_13e .. :try_end_145} :catchall_145

    .line 89
    .end local v1    # "db":Lcom/android/server/ipm/DBManager;
    .end local v2    # "update":Z
    .end local v3    # "sql":Ljava/lang/String;
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local p0    # "summary":Lcom/android/server/ipm/NapSummary;
    :catchall_145
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public set(Lcom/android/server/ipm/NapSummary;)V
    .registers 4
    .param p1, "s"    # Lcom/android/server/ipm/NapSummary;

    .line 45
    iget v0, p1, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    iput v0, p0, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    .line 46
    iget v0, p1, Lcom/android/server/ipm/NapSummary;->predict_right:I

    iput v0, p0, Lcom/android/server/ipm/NapSummary;->predict_right:I

    .line 47
    iget-wide v0, p1, Lcom/android/server/ipm/NapSummary;->rf_build_time:J

    iput-wide v0, p0, Lcom/android/server/ipm/NapSummary;->rf_build_time:J

    .line 48
    iget-wide v0, p1, Lcom/android/server/ipm/NapSummary;->training_time:J

    iput-wide v0, p0, Lcom/android/server/ipm/NapSummary;->training_time:J

    .line 49
    iget v0, p1, Lcom/android/server/ipm/NapSummary;->training_sets:I

    iput v0, p0, Lcom/android/server/ipm/NapSummary;->training_sets:I

    .line 51
    iget-wide v0, p1, Lcom/android/server/ipm/NapSummary;->dataProcessStartTime:J

    iput-wide v0, p0, Lcom/android/server/ipm/NapSummary;->dataProcessStartTime:J

    .line 52
    iget-wide v0, p1, Lcom/android/server/ipm/NapSummary;->dataProcessEndTime:J

    iput-wide v0, p0, Lcom/android/server/ipm/NapSummary;->dataProcessEndTime:J

    .line 53
    iget-wide v0, p1, Lcom/android/server/ipm/NapSummary;->treeNumAdjustStartTime:J

    iput-wide v0, p0, Lcom/android/server/ipm/NapSummary;->treeNumAdjustStartTime:J

    .line 54
    iget-wide v0, p1, Lcom/android/server/ipm/NapSummary;->treeNumAdjustEndTime:J

    iput-wide v0, p0, Lcom/android/server/ipm/NapSummary;->treeNumAdjustEndTime:J

    .line 55
    iget v0, p1, Lcom/android/server/ipm/NapSummary;->treeNumAdjust:I

    iput v0, p0, Lcom/android/server/ipm/NapSummary;->treeNumAdjust:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 154
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 155
    .local v0, "format":Ljava/text/SimpleDateFormat;
    iget-wide v1, p0, Lcom/android/server/ipm/NapSummary;->rf_build_time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "build_time":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " right:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/ipm/NapSummary;->predict_right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " buildtime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " trainTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/ipm/NapSummary;->training_time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " trainSets:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/ipm/NapSummary;->training_sets:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected declared-synchronized updateSummary(Z)V
    .registers 3
    .param p1, "predictSuccess"    # Z

    monitor-enter p0

    .line 59
    :try_start_1
    iget v0, p0, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    .line 60
    if-eqz p1, :cond_f

    .line 61
    iget v0, p0, Lcom/android/server/ipm/NapSummary;->predict_right:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ipm/NapSummary;->predict_right:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 62
    .end local p0    # "this":Lcom/android/server/ipm/NapSummary;
    :cond_f
    monitor-exit p0

    return-void

    .line 58
    .end local p1    # "predictSuccess":Z
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
