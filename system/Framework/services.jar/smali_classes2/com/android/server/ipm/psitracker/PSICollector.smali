.class public Lcom/android/server/ipm/psitracker/PSICollector;
.super Ljava/lang/Object;
.source "PSICollector.java"


# static fields
.field private static final AVAILMEM_MAX_SIZE:I = 0x0

.field private static final COUNT_AVAILMEMRECORD_ONE_DAY:I = 0x6

.field private static final COUNT_ENTRYAPPRECORD_ONE_DAY:I = 0xc8

.field private static final COUNT_PSIRECORD_ONE_DAY:I = 0x120

.field private static DEBUG:Z = false

.field private static final LIMIT_AVAILABLEMEM_RECORDS:I = 0x2f80

.field private static final LIMIT_ENTRYAPP_RECORDS:I = 0x12688

.field private static final LIMIT_PSI_RECORDS:I = 0x1a668

.field private static final MAX_SIZE:I = 0x1

.field private static final ONE_YEAR:I = 0x174

.field private static final TAG:Ljava/lang/String; = "PSITracker-Collector"

.field private static availableMemSaveCount:I

.field private static availableMemUpdateFlag:Z

.field private static entryAppSaveCount:I

.field private static entryAppUpdateFlag:Z

.field private static psiSaveCount:I

.field private static psiUpdateFlag:Z


# instance fields
.field private mAvailableMemRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEntryAppRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/psitracker/PSIRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    .line 33
    sput-boolean v0, Lcom/android/server/ipm/psitracker/PSICollector;->psiUpdateFlag:Z

    .line 34
    sput v0, Lcom/android/server/ipm/psitracker/PSICollector;->psiSaveCount:I

    .line 35
    sput-boolean v0, Lcom/android/server/ipm/psitracker/PSICollector;->entryAppUpdateFlag:Z

    .line 36
    sput v0, Lcom/android/server/ipm/psitracker/PSICollector;->entryAppSaveCount:I

    .line 37
    sput-boolean v0, Lcom/android/server/ipm/psitracker/PSICollector;->availableMemUpdateFlag:Z

    .line 38
    sput v0, Lcom/android/server/ipm/psitracker/PSICollector;->availableMemSaveCount:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-boolean v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    .line 42
    iput-object p1, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mRecords:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mEntryAppRecords:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mAvailableMemRecords:Ljava/util/List;

    .line 46
    return-void
.end method

.method private save2db(Lcom/android/server/ipm/psitracker/PSIRecord;)V
    .registers 10
    .param p1, "rcd"    # Lcom/android/server/ipm/psitracker/PSIRecord;

    .line 179
    invoke-static {}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getInstance()Lcom/android/server/ipm/psitracker/PSIDBManager;

    move-result-object v0

    .line 180
    .local v0, "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 181
    const-string v1, "PSITracker-Collector"

    const-string/jumbo v2, "save PSIRecord failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 185
    :cond_13
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSICollector;->psiUpdateFlag:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2f

    sget v1, Lcom/android/server/ipm/psitracker/PSICollector;->psiSaveCount:I

    rem-int/lit16 v1, v1, 0x120

    if-nez v1, :cond_2f

    .line 186
    iget-object v1, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getRecordsCount(Ljava/lang/String;)I

    move-result v1

    const v3, 0x1a668

    if-lt v1, v3, :cond_2c

    .line 187
    sput-boolean v2, Lcom/android/server/ipm/psitracker/PSICollector;->psiUpdateFlag:Z

    goto :goto_2f

    .line 189
    :cond_2c
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ipm/psitracker/PSICollector;->psiUpdateFlag:Z

    .line 192
    :cond_2f
    :goto_2f
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSICollector;->psiUpdateFlag:Z

    if-nez v1, :cond_38

    sget v1, Lcom/android/server/ipm/psitracker/PSICollector;->psiSaveCount:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/ipm/psitracker/PSICollector;->psiSaveCount:I

    .line 194
    :cond_38
    sget-object v1, Lcom/android/server/ipm/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_3b
    sget-boolean v2, Lcom/android/server/ipm/psitracker/PSICollector;->psiUpdateFlag:Z

    if-nez v2, :cond_b5

    .line 196
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->beginTransaction()V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_155

    .line 198
    :try_start_42
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "processName"

    iget-object v4, p1, Lcom/android/server/ipm/psitracker/PSIRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v3, "psiMax"

    iget v4, p1, Lcom/android/server/ipm/psitracker/PSIRecord;->psiMax:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 201
    const-string/jumbo v3, "pss"

    iget v4, p1, Lcom/android/server/ipm/psitracker/PSIRecord;->pss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string/jumbo v3, "type"

    iget v4, p1, Lcom/android/server/ipm/psitracker/PSIRecord;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v3, "checkTime"

    iget-wide v4, p1, Lcom/android/server/ipm/psitracker/PSIRecord;->checkTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    const-string/jumbo v3, "userId"

    iget v4, p1, Lcom/android/server/ipm/psitracker/PSIRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    iget-object v3, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/ipm/psitracker/PSIDBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 207
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->setTransactionSuccessful()V

    .line 208
    sget-boolean v3, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    if-eqz v3, :cond_ab

    const-string v3, "PSITracker-Collector"

    const-string/jumbo v4, "save one PSIRecord successfully!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_9e} :catch_a1
    .catchall {:try_start_42 .. :try_end_9e} :catchall_9f

    goto :goto_ab

    .line 212
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_9f
    move-exception v2

    goto :goto_b0

    .line 209
    :catch_a1
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/Exception;
    :try_start_a2
    const-string v3, "PSITracker-Collector"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_9f

    .line 212
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_ab
    :goto_ab
    :try_start_ab
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 213
    goto/16 :goto_14e

    .line 212
    :goto_b0
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 213
    nop

    .end local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .end local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .end local p1    # "rcd":Lcom/android/server/ipm/psitracker/PSIRecord;
    throw v2

    .line 215
    .restart local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .restart local p1    # "rcd":Lcom/android/server/ipm/psitracker/PSIRecord;
    :cond_b5
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->beginTransaction()V
    :try_end_b8
    .catchall {:try_start_ab .. :try_end_b8} :catchall_155

    .line 218
    :try_start_b8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "processName"

    iget-object v4, p1, Lcom/android/server/ipm/psitracker/PSIRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v3, "psiMax"

    iget v4, p1, Lcom/android/server/ipm/psitracker/PSIRecord;->psiMax:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 221
    const-string/jumbo v3, "pss"

    iget v4, p1, Lcom/android/server/ipm/psitracker/PSIRecord;->pss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const-string/jumbo v3, "type"

    iget v4, p1, Lcom/android/server/ipm/psitracker/PSIRecord;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string v3, "checkTime"

    iget-wide v4, p1, Lcom/android/server/ipm/psitracker/PSIRecord;->checkTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string/jumbo v3, "userId"

    iget v4, p1, Lcom/android/server/ipm/psitracker/PSIRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    iget-object v3, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mSampleTable:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTime=(select min(checkTime) from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/android/server/ipm/psitracker/PSIDBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    .line 227
    .local v3, "id":J
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->setTransactionSuccessful()V

    .line 228
    sget-boolean v5, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    if-eqz v5, :cond_14a

    const-string v5, "PSITracker-Collector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update one PSIRecord successfully!, num="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_13d} :catch_140
    .catchall {:try_start_b8 .. :try_end_13d} :catchall_13e

    goto :goto_14a

    .line 232
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "id":J
    :catchall_13e
    move-exception v2

    goto :goto_150

    .line 229
    :catch_140
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/Exception;
    :try_start_141
    const-string v3, "PSITracker-Collector"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14a
    .catchall {:try_start_141 .. :try_end_14a} :catchall_13e

    .line 232
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_14a
    :goto_14a
    :try_start_14a
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 233
    nop

    .line 235
    :goto_14e
    monitor-exit v1

    .line 236
    return-void

    .line 232
    :goto_150
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 233
    nop

    .end local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .end local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .end local p1    # "rcd":Lcom/android/server/ipm/psitracker/PSIRecord;
    throw v2

    .line 235
    .restart local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .restart local p1    # "rcd":Lcom/android/server/ipm/psitracker/PSIRecord;
    :catchall_155
    move-exception v2

    monitor-exit v1
    :try_end_157
    .catchall {:try_start_14a .. :try_end_157} :catchall_155

    throw v2
.end method

.method private saveAvailableMemRecord2db(Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;)V
    .registers 10
    .param p1, "rcd"    # Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;

    .line 298
    invoke-static {}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getInstance()Lcom/android/server/ipm/psitracker/PSIDBManager;

    move-result-object v0

    .line 299
    .local v0, "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 300
    const-string v1, "PSITracker-Collector"

    const-string/jumbo v2, "save PSIEntryAppRecord failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 304
    :cond_13
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSICollector;->availableMemUpdateFlag:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2d

    sget v1, Lcom/android/server/ipm/psitracker/PSICollector;->availableMemSaveCount:I

    const/16 v3, 0x2f80

    rem-int/2addr v1, v3

    if-nez v1, :cond_2d

    .line 305
    iget-object v1, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getRecordsCount(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v3, :cond_2a

    .line 306
    sput-boolean v2, Lcom/android/server/ipm/psitracker/PSICollector;->availableMemUpdateFlag:Z

    goto :goto_2d

    .line 308
    :cond_2a
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ipm/psitracker/PSICollector;->availableMemUpdateFlag:Z

    .line 311
    :cond_2d
    :goto_2d
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSICollector;->availableMemUpdateFlag:Z

    if-nez v1, :cond_36

    sget v1, Lcom/android/server/ipm/psitracker/PSICollector;->availableMemSaveCount:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/ipm/psitracker/PSICollector;->availableMemSaveCount:I

    .line 313
    :cond_36
    sget-object v1, Lcom/android/server/ipm/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_39
    sget-boolean v2, Lcom/android/server/ipm/psitracker/PSICollector;->availableMemUpdateFlag:Z

    if-nez v2, :cond_9d

    .line 315
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->beginTransaction()V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_127

    .line 317
    :try_start_40
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "availMem"

    iget-wide v4, p1, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->availMem:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 319
    const-string v3, "cached"

    iget-wide v4, p1, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->cached:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 320
    const-string/jumbo v3, "running"

    iget-wide v4, p1, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->running:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 321
    const-string v3, "checkTime"

    iget-wide v4, p1, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->checkTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 323
    iget-object v3, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/ipm/psitracker/PSIDBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 324
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->setTransactionSuccessful()V

    .line 325
    sget-boolean v3, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    if-eqz v3, :cond_93

    const-string v3, "PSITracker-Collector"

    const-string/jumbo v4, "save one PSIAvailableMemRecord successfully!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_86} :catch_89
    .catchall {:try_start_40 .. :try_end_86} :catchall_87

    goto :goto_93

    .line 329
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_87
    move-exception v2

    goto :goto_98

    .line 326
    :catch_89
    move-exception v2

    .line 327
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8a
    const-string v3, "PSITracker-Collector"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_87

    .line 329
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_93
    :goto_93
    :try_start_93
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 330
    goto/16 :goto_120

    .line 329
    :goto_98
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 330
    nop

    .end local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .end local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .end local p1    # "rcd":Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;
    throw v2

    .line 332
    .restart local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .restart local p1    # "rcd":Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;
    :cond_9d
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->beginTransaction()V
    :try_end_a0
    .catchall {:try_start_93 .. :try_end_a0} :catchall_127

    .line 335
    :try_start_a0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "availMem"

    iget-wide v4, p1, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->availMem:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 337
    const-string v3, "cached"

    iget-wide v4, p1, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->cached:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 338
    const-string/jumbo v3, "running"

    iget-wide v4, p1, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->running:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    const-string v3, "checkTime"

    iget-wide v4, p1, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->checkTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 341
    iget-object v3, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTime=(select min(checkTime) from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/android/server/ipm/psitracker/PSIDBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    .line 343
    .local v3, "id":J
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->setTransactionSuccessful()V

    .line 344
    sget-boolean v5, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    if-eqz v5, :cond_11c

    const-string v5, "PSITracker-Collector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update one PSIAvailableMemRecord successfully!, num="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_10f} :catch_112
    .catchall {:try_start_a0 .. :try_end_10f} :catchall_110

    goto :goto_11c

    .line 348
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "id":J
    :catchall_110
    move-exception v2

    goto :goto_122

    .line 345
    :catch_112
    move-exception v2

    .line 346
    .local v2, "e":Ljava/lang/Exception;
    :try_start_113
    const-string v3, "PSITracker-Collector"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catchall {:try_start_113 .. :try_end_11c} :catchall_110

    .line 348
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_11c
    :goto_11c
    :try_start_11c
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 349
    nop

    .line 351
    :goto_120
    monitor-exit v1

    .line 352
    return-void

    .line 348
    :goto_122
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 349
    nop

    .end local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .end local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .end local p1    # "rcd":Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;
    throw v2

    .line 351
    .restart local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .restart local p1    # "rcd":Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;
    :catchall_127
    move-exception v2

    monitor-exit v1
    :try_end_129
    .catchall {:try_start_11c .. :try_end_129} :catchall_127

    throw v2
.end method

.method private saveEntryAppRecord2db(Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;)V
    .registers 10
    .param p1, "rcd"    # Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;

    .line 240
    invoke-static {}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getInstance()Lcom/android/server/ipm/psitracker/PSIDBManager;

    move-result-object v0

    .line 241
    .local v0, "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 242
    const-string v1, "PSITracker-Collector"

    const-string/jumbo v2, "save PSIEntryAppRecord failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 246
    :cond_13
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSICollector;->entryAppUpdateFlag:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2f

    sget v1, Lcom/android/server/ipm/psitracker/PSICollector;->entryAppSaveCount:I

    rem-int/lit16 v1, v1, 0xc8

    if-nez v1, :cond_2f

    .line 247
    iget-object v1, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mEntryAppTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getRecordsCount(Ljava/lang/String;)I

    move-result v1

    const v3, 0x12688

    if-lt v1, v3, :cond_2c

    .line 248
    sput-boolean v2, Lcom/android/server/ipm/psitracker/PSICollector;->entryAppUpdateFlag:Z

    goto :goto_2f

    .line 250
    :cond_2c
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ipm/psitracker/PSICollector;->entryAppUpdateFlag:Z

    .line 253
    :cond_2f
    :goto_2f
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSICollector;->entryAppUpdateFlag:Z

    if-nez v1, :cond_38

    sget v1, Lcom/android/server/ipm/psitracker/PSICollector;->entryAppSaveCount:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/ipm/psitracker/PSICollector;->entryAppSaveCount:I

    .line 255
    :cond_38
    sget-object v1, Lcom/android/server/ipm/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_3b
    sget-boolean v2, Lcom/android/server/ipm/psitracker/PSICollector;->entryAppUpdateFlag:Z

    if-nez v2, :cond_9d

    .line 257
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->beginTransaction()V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_125

    .line 259
    :try_start_42
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "processName"

    iget-object v4, p1, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v3, "pss"

    iget v4, p1, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->pss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string/jumbo v3, "userId"

    iget v4, p1, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v3, "checkTime"

    iget-wide v4, p1, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->checkTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 265
    iget-object v3, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mEntryAppTable:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/ipm/psitracker/PSIDBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 266
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->setTransactionSuccessful()V

    .line 267
    sget-boolean v3, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    if-eqz v3, :cond_93

    const-string v3, "PSITracker-Collector"

    const-string/jumbo v4, "save one PSIEntryAppRecord successfully!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_86} :catch_89
    .catchall {:try_start_42 .. :try_end_86} :catchall_87

    goto :goto_93

    .line 271
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_87
    move-exception v2

    goto :goto_98

    .line 268
    :catch_89
    move-exception v2

    .line 269
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8a
    const-string v3, "PSITracker-Collector"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_87

    .line 271
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_93
    :goto_93
    :try_start_93
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 272
    goto/16 :goto_11e

    .line 271
    :goto_98
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 272
    nop

    .end local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .end local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .end local p1    # "rcd":Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;
    throw v2

    .line 274
    .restart local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .restart local p1    # "rcd":Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;
    :cond_9d
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->beginTransaction()V
    :try_end_a0
    .catchall {:try_start_93 .. :try_end_a0} :catchall_125

    .line 277
    :try_start_a0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "processName"

    iget-object v4, p1, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v3, "pss"

    iget v4, p1, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->pss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string/jumbo v3, "userId"

    iget v4, p1, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string v3, "checkTime"

    iget-wide v4, p1, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->checkTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    iget-object v3, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mEntryAppTable:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTime=(select min(checkTime) from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mEntryAppTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/android/server/ipm/psitracker/PSIDBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    .line 285
    .local v3, "id":J
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->setTransactionSuccessful()V

    .line 286
    sget-boolean v5, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    if-eqz v5, :cond_11a

    const-string v5, "PSITracker-Collector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update one PSIEntryAppRecord successfully!, num="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_10d} :catch_110
    .catchall {:try_start_a0 .. :try_end_10d} :catchall_10e

    goto :goto_11a

    .line 290
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "id":J
    :catchall_10e
    move-exception v2

    goto :goto_120

    .line 287
    :catch_110
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/Exception;
    :try_start_111
    const-string v3, "PSITracker-Collector"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_111 .. :try_end_11a} :catchall_10e

    .line 290
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_11a
    :goto_11a
    :try_start_11a
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 291
    nop

    .line 293
    :goto_11e
    monitor-exit v1

    .line 294
    return-void

    .line 290
    :goto_120
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 291
    nop

    .end local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .end local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .end local p1    # "rcd":Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;
    throw v2

    .line 293
    .restart local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .restart local p1    # "rcd":Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;
    :catchall_125
    move-exception v2

    monitor-exit v1
    :try_end_127
    .catchall {:try_start_11a .. :try_end_127} :catchall_125

    throw v2
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 155
    const-string v0, "cached Records<unsaved to db>:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mRecords:Ljava/util/List;

    monitor-enter v0

    .line 157
    :try_start_8
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/psitracker/PSIRecord;

    .line 158
    .local v2, "r":Lcom/android/server/ipm/psitracker/PSIRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/ipm/psitracker/PSIRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .end local v2    # "r":Lcom/android/server/ipm/psitracker/PSIRecord;
    goto :goto_e

    .line 160
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_ab

    .line 161
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mEntryAppRecords:Ljava/util/List;

    monitor-enter v1

    .line 163
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mEntryAppRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;

    .line 164
    .local v2, "r":Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .end local v2    # "r":Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;
    goto :goto_42

    .line 166
    :cond_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_3c .. :try_end_68} :catchall_a8

    .line 167
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mAvailableMemRecords:Ljava/util/List;

    monitor-enter v0

    .line 169
    :try_start_70
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mAvailableMemRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;

    .line 170
    .local v2, "r":Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    .end local v2    # "r":Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;
    goto :goto_76

    .line 172
    :cond_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_70 .. :try_end_9c} :catchall_a5

    .line 173
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 175
    return-void

    .line 172
    :catchall_a5
    move-exception v1

    :try_start_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v1

    .line 166
    :catchall_a8
    move-exception v0

    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v0

    .line 160
    :catchall_ab
    move-exception v1

    :try_start_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method protected generateAvailableMemRecord(JJJJ)Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;
    .registers 10
    .param p1, "availMem"    # J
    .param p3, "running"    # J
    .param p5, "cached"    # J
    .param p7, "checkTime"    # J

    .line 69
    new-instance v0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;

    invoke-direct {v0}, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;-><init>()V

    .line 70
    .local v0, "rcd":Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;
    iput-wide p1, v0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->availMem:J

    .line 71
    iput-wide p3, v0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->running:J

    .line 72
    iput-wide p5, v0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->cached:J

    .line 73
    iput-wide p7, v0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->checkTime:J

    .line 74
    return-object v0
.end method

.method protected generateEntryAppRecord(Ljava/lang/String;IIJ)Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;
    .registers 7
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pss"    # I
    .param p3, "userId"    # I
    .param p4, "checkTime"    # J

    .line 60
    new-instance v0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;

    invoke-direct {v0}, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;-><init>()V

    .line 61
    .local v0, "rcd":Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;
    iput-object p1, v0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->processName:Ljava/lang/String;

    .line 62
    iput p2, v0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->pss:I

    .line 63
    iput p3, v0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->userId:I

    .line 64
    iput-wide p4, v0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->checkTime:J

    .line 65
    return-object v0
.end method

.method protected generateRecord(Ljava/lang/String;FIIJI)Lcom/android/server/ipm/psitracker/PSIRecord;
    .registers 9
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "psiMax"    # F
    .param p3, "pss"    # I
    .param p4, "type"    # I
    .param p5, "checkTime"    # J
    .param p7, "userId"    # I

    .line 49
    new-instance v0, Lcom/android/server/ipm/psitracker/PSIRecord;

    invoke-direct {v0}, Lcom/android/server/ipm/psitracker/PSIRecord;-><init>()V

    .line 50
    .local v0, "rcd":Lcom/android/server/ipm/psitracker/PSIRecord;
    iput-object p1, v0, Lcom/android/server/ipm/psitracker/PSIRecord;->processName:Ljava/lang/String;

    .line 51
    iput p2, v0, Lcom/android/server/ipm/psitracker/PSIRecord;->psiMax:F

    .line 52
    iput p3, v0, Lcom/android/server/ipm/psitracker/PSIRecord;->pss:I

    .line 53
    iput p4, v0, Lcom/android/server/ipm/psitracker/PSIRecord;->type:I

    .line 54
    iput-wide p5, v0, Lcom/android/server/ipm/psitracker/PSIRecord;->checkTime:J

    .line 55
    iput p7, v0, Lcom/android/server/ipm/psitracker/PSIRecord;->userId:I

    .line 56
    return-object v0
.end method

.method protected isAvailableMemRecordsSizeMax()Z
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mAvailableMemRecords:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 147
    .local v0, "len":I
    if-lez v0, :cond_c

    .line 148
    const/4 v1, 0x1

    return v1

    .line 151
    .end local v0    # "len":I
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected isEntryAppRecordsSizeMax()Z
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mEntryAppRecords:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 138
    .local v0, "len":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    .line 139
    return v1

    .line 142
    .end local v0    # "len":I
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected isRecordsSizeMax()Z
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 129
    .local v0, "len":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    .line 130
    return v1

    .line 133
    .end local v0    # "len":I
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected saveAvailableMemRecord(Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;)V
    .registers 6
    .param p1, "rcd"    # Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;

    .line 91
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mAvailableMemRecords:Ljava/util/List;

    monitor-enter v0

    .line 92
    :try_start_3
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    if-eqz v1, :cond_27

    const-string v1, "PSITracker-Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save PSIAvailableMemRecord...\n ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_27
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mAvailableMemRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method protected saveAvailableMemRecords()V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mAvailableMemRecords:Ljava/util/List;

    monitor-enter v0

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mAvailableMemRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 119
    iget-object v2, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mAvailableMemRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;

    invoke-direct {p0, v2}, Lcom/android/server/ipm/psitracker/PSICollector;->saveAvailableMemRecord2db(Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 121
    .end local v1    # "i":I
    :cond_1a
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mAvailableMemRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 122
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_2c

    .line 123
    sget-boolean v0, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    if-eqz v0, :cond_2b

    const-string v0, "PSITracker-Collector"

    const-string v1, "finish save PSIAvailableMemRecords successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2b
    return-void

    .line 122
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method protected saveEntryAppRecord(Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;)V
    .registers 6
    .param p1, "rcd"    # Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;

    .line 85
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mEntryAppRecords:Ljava/util/List;

    monitor-enter v0

    .line 86
    :try_start_3
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    if-eqz v1, :cond_27

    const-string v1, "PSITracker-Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save PSIEntryAppRecord...\n ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_27
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mEntryAppRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method protected saveEntryAppRecords()V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mEntryAppRecords:Ljava/util/List;

    monitor-enter v0

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mEntryAppRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 110
    iget-object v2, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mEntryAppRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;

    invoke-direct {p0, v2}, Lcom/android/server/ipm/psitracker/PSICollector;->saveEntryAppRecord2db(Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 112
    .end local v1    # "i":I
    :cond_1a
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mEntryAppRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 113
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_2c

    .line 114
    sget-boolean v0, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    if-eqz v0, :cond_2b

    const-string v0, "PSITracker-Collector"

    const-string v1, "finish save PSIEntryAppRecord successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2b
    return-void

    .line 113
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method protected saveRecord(Lcom/android/server/ipm/psitracker/PSIRecord;)V
    .registers 6
    .param p1, "rcd"    # Lcom/android/server/ipm/psitracker/PSIRecord;

    .line 79
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mRecords:Ljava/util/List;

    monitor-enter v0

    .line 80
    :try_start_3
    sget-boolean v1, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    if-eqz v1, :cond_27

    const-string v1, "PSITracker-Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save PSIRecord...\n ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ipm/psitracker/PSIRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_27
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method protected saveRecords()V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mRecords:Ljava/util/List;

    monitor-enter v0

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 101
    iget-object v2, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/psitracker/PSIRecord;

    invoke-direct {p0, v2}, Lcom/android/server/ipm/psitracker/PSICollector;->save2db(Lcom/android/server/ipm/psitracker/PSIRecord;)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 103
    .end local v1    # "i":I
    :cond_1a
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSICollector;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 104
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_2c

    .line 105
    sget-boolean v0, Lcom/android/server/ipm/psitracker/PSICollector;->DEBUG:Z

    if-eqz v0, :cond_2b

    const-string v0, "PSITracker-Collector"

    const-string v1, "finish save PSIRecord successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2b
    return-void

    .line 104
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method protected trimAvailableMemRecord(J)V
    .registers 9
    .param p1, "period"    # J

    .line 397
    invoke-static {}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getInstance()Lcom/android/server/ipm/psitracker/PSIDBManager;

    move-result-object v0

    .line 398
    .local v0, "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 399
    const-string v1, "PSITracker-Collector"

    const-string/jumbo v2, "trim failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 402
    :cond_13
    sget-object v1, Lcom/android/server/ipm/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v1

    .line 403
    :try_start_16
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->beginTransaction()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_5a

    .line 405
    :try_start_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 406
    .local v2, "deadline":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " where checkTime < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "sql":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/server/ipm/psitracker/PSIDBManager;->execSQL(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->setTransactionSuccessful()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3f} :catch_45
    .catchall {:try_start_19 .. :try_end_3f} :catchall_43

    .line 413
    .end local v2    # "deadline":J
    .end local v4    # "sql":Ljava/lang/String;
    :try_start_3f
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_5a

    goto :goto_52

    :catchall_43
    move-exception v2

    goto :goto_55

    .line 410
    :catch_45
    move-exception v2

    .line 411
    .local v2, "e":Ljava/lang/Exception;
    :try_start_46
    const-string v3, "PSITracker-Collector"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_43

    .line 413
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_4f
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 414
    :goto_52
    nop

    .line 415
    monitor-exit v1

    .line 416
    return-void

    .line 413
    :goto_55
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 414
    nop

    .end local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .end local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .end local p1    # "period":J
    throw v2

    .line 415
    .restart local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .restart local p1    # "period":J
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method protected trimEntryAppRecord(J)V
    .registers 9
    .param p1, "period"    # J

    .line 376
    invoke-static {}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getInstance()Lcom/android/server/ipm/psitracker/PSIDBManager;

    move-result-object v0

    .line 377
    .local v0, "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 378
    const-string v1, "PSITracker-Collector"

    const-string/jumbo v2, "trim failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void

    .line 381
    :cond_13
    sget-object v1, Lcom/android/server/ipm/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_16
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->beginTransaction()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_5a

    .line 384
    :try_start_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 385
    .local v2, "deadline":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mEntryAppTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " where checkTime < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "sql":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/server/ipm/psitracker/PSIDBManager;->execSQL(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->setTransactionSuccessful()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3f} :catch_45
    .catchall {:try_start_19 .. :try_end_3f} :catchall_43

    .line 392
    .end local v2    # "deadline":J
    .end local v4    # "sql":Ljava/lang/String;
    :try_start_3f
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_5a

    goto :goto_52

    :catchall_43
    move-exception v2

    goto :goto_55

    .line 389
    :catch_45
    move-exception v2

    .line 390
    .local v2, "e":Ljava/lang/Exception;
    :try_start_46
    const-string v3, "PSITracker-Collector"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_43

    .line 392
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_4f
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 393
    :goto_52
    nop

    .line 394
    monitor-exit v1

    .line 395
    return-void

    .line 392
    :goto_55
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 393
    nop

    .end local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .end local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .end local p1    # "period":J
    throw v2

    .line 394
    .restart local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .restart local p1    # "period":J
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method protected trimPSIRecord(J)V
    .registers 9
    .param p1, "period"    # J

    .line 355
    invoke-static {}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getInstance()Lcom/android/server/ipm/psitracker/PSIDBManager;

    move-result-object v0

    .line 356
    .local v0, "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 357
    const-string v1, "PSITracker-Collector"

    const-string/jumbo v2, "trim failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 360
    :cond_13
    sget-object v1, Lcom/android/server/ipm/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_16
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->beginTransaction()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_5a

    .line 363
    :try_start_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 364
    .local v2, "deadline":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " where checkTime < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "sql":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/server/ipm/psitracker/PSIDBManager;->execSQL(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->setTransactionSuccessful()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3f} :catch_45
    .catchall {:try_start_19 .. :try_end_3f} :catchall_43

    .line 371
    .end local v2    # "deadline":J
    .end local v4    # "sql":Ljava/lang/String;
    :try_start_3f
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_5a

    goto :goto_52

    :catchall_43
    move-exception v2

    goto :goto_55

    .line 368
    :catch_45
    move-exception v2

    .line 369
    .local v2, "e":Ljava/lang/Exception;
    :try_start_46
    const-string v3, "PSITracker-Collector"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_43

    .line 371
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_4f
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 372
    :goto_52
    nop

    .line 373
    monitor-exit v1

    .line 374
    return-void

    .line 371
    :goto_55
    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->endTransaction()V

    .line 372
    nop

    .end local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .end local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .end local p1    # "period":J
    throw v2

    .line 373
    .restart local v0    # "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/psitracker/PSICollector;
    .restart local p1    # "period":J
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5a

    throw v2
.end method
