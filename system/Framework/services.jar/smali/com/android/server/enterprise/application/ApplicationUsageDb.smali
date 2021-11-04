.class public Lcom/android/server/enterprise/application/ApplicationUsageDb;
.super Ljava/lang/Object;
.source "ApplicationUsageDb.java"


# static fields
.field public static final APP_LAST_LAUNCH_TIME:Ljava/lang/String; = "lastlaunchtime"

.field public static final APP_LAST_PAUSE_TIME:Ljava/lang/String; = "lastpausetime"

.field public static final APP_LAST_SERVICE_START_TIME:Ljava/lang/String; = "applastservicestarttime"

.field public static final APP_LAST_SERVICE_STOP_TIME:Ljava/lang/String; = "applastservicestoptime"

.field public static final APP_TOTAL_USAGE_TIME:Ljava/lang/String; = "totalusagetime"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LAUNCH_COUNT:Ljava/lang/String; = "launchcount"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "ApplicationControl"

.field private static final TAG:Ljava/lang/String; = "ApplicationUsageDb"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private calculateLastUsageTime(JJJJ)J
    .registers 14
    .param p1, "launchTime"    # J
    .param p3, "pauseTime"    # J
    .param p5, "serviceStartTime"    # J
    .param p7, "serviceStopTime"    # J

    .line 300
    const-wide/16 v0, 0x0

    .line 301
    .local v0, "lastUsageTIme":J
    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    if-eqz v4, :cond_2b

    cmp-long v4, p7, v2

    if-eqz v4, :cond_2b

    .line 302
    cmp-long v2, p1, v2

    if-eqz v2, :cond_28

    .line 303
    cmp-long v2, p3, p7

    if-lez v2, :cond_1e

    .line 304
    cmp-long v2, p1, p5

    if-gez v2, :cond_1b

    .line 305
    sub-long v0, p3, p1

    goto :goto_31

    .line 309
    :cond_1b
    sub-long v0, p3, p5

    goto :goto_31

    .line 313
    :cond_1e
    cmp-long v2, p1, p5

    if-gez v2, :cond_25

    .line 315
    sub-long v0, p7, p1

    goto :goto_31

    .line 319
    :cond_25
    sub-long v0, p7, p5

    goto :goto_31

    .line 324
    :cond_28
    sub-long v0, p7, p5

    goto :goto_31

    .line 326
    :cond_2b
    cmp-long v2, p3, v2

    if-eqz v2, :cond_31

    .line 327
    sub-long v0, p3, p1

    .line 331
    :cond_31
    :goto_31
    return-wide v0
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 370
    const-string v0, "ApplicationUsageDb"

    :try_start_2
    const-string v1, " (_id integer primary key autoincrement, pkgname text, lastpausetime long, applastservicestarttime long, applastservicestoptime long, totalusagetime long, launchcount integer, lastlaunchtime long );"

    .line 378
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table ApplicationControl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 379
    const-string v2, "::createDmAppMgrTable: Table is Created "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1f

    .line 383
    nop

    .end local v1    # "s":Ljava/lang/String;
    goto :goto_28

    .line 380
    :catch_1f
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "::createDmAppMgrTable: Exception while table is creating "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_28
    return-void
.end method

.method private static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "dmappmgrDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dmappmgr.db"

    .line 352
    .local v1, "dmappmgrDBPath":Ljava/lang/String;
    if-eqz p0, :cond_25

    .line 355
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_d

    move-object v0, v2

    .line 360
    goto :goto_18

    .line 357
    :catch_d
    move-exception v2

    .line 358
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ApplicationUsageDb"

    const-string v4, "::getAppControlDB: Exception to create DB"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_18
    if-eqz v0, :cond_25

    const-string v2, "ApplicationControl"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 362
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 365
    :cond_25
    return-object v0
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "exists":Z
    if-eqz p0, :cond_34

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    .line 390
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT 1 FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE 1=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_2b

    .line 391
    const/4 v0, 0x1

    .line 395
    goto :goto_34

    .line 392
    :catch_2b
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 394
    const-string v2, "ApplicationUsageDb"

    const-string v3, "::isTableExists:Table Does not exists "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_34
    :goto_34
    return v0
.end method


# virtual methods
.method public deletePackageFromDb(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 179
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v1, v2

    .line 180
    if-nez v1, :cond_d

    .line 181
    const/4 v2, 0x0

    return v2

    .line 182
    :cond_d
    const-string v2, "ApplicationControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkgname = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2f

    .line 184
    .local v2, "count":I
    if-lez v2, :cond_2e

    .line 185
    const/4 v0, 0x1

    .line 188
    .end local v2    # "count":I
    :cond_2e
    goto :goto_33

    .line 186
    :catch_2f
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_33
    if-eqz v1, :cond_38

    .line 191
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 194
    :cond_38
    return v0
.end method

.method public getAppUsageData()Ljava/util/HashMap;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/application/AppInfoLastUsage;",
            ">;"
        }
    .end annotation

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 240
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 241
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/application/AppInfoLastUsage;>;"
    const-string/jumbo v0, "pkgname"

    const-string/jumbo v4, "lastlaunchtime"

    const-string/jumbo v5, "lastpausetime"

    const-string v6, "applastservicestarttime"

    const-string v7, "applastservicestoptime"

    filled-new-array {v0, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v10

    .line 247
    .local v10, "col":[Ljava/lang/String;
    move-object/from16 v15, p0

    :try_start_16
    iget-object v8, v15, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_c7
    .catchall {:try_start_16 .. :try_end_1c} :catchall_c5

    move-object v2, v8

    .line 248
    if-nez v2, :cond_2b

    .line 249
    const/4 v0, 0x0

    .line 289
    if-eqz v1, :cond_25

    .line 290
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_25
    if-eqz v2, :cond_2a

    .line 292
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 249
    :cond_2a
    return-object v0

    .line 250
    :cond_2b
    :try_start_2b
    const-string v9, "ApplicationControl"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v8, v2

    move-object/from16 v15, v16

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v1, v8

    .line 251
    if-eqz v1, :cond_ba

    .line 253
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_ba

    .line 254
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v3, v8

    .line 257
    :goto_49
    nop

    .line 258
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 257
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, "packageName":Ljava/lang/String;
    nop

    .line 260
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 259
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move-wide v12, v11

    .line 261
    .local v12, "lastLaunchTime":J
    nop

    .line 262
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 261
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 263
    .local v14, "lastPauseTime":J
    nop

    .line 264
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 263
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v20, v16

    .line 265
    .local v20, "lastServiceStartTime":J
    nop

    .line 266
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 265
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 267
    .local v18, "lastServiceStopTime":J
    move-object/from16 v11, p0

    move-wide/from16 v22, v12

    .end local v12    # "lastLaunchTime":J
    .local v22, "lastLaunchTime":J
    move-wide/from16 v16, v20

    invoke-direct/range {v11 .. v19}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->calculateLastUsageTime(JJJJ)J

    move-result-wide v11

    .line 270
    .local v11, "lastUsageTime":J
    const-wide/16 v16, 0x0

    cmp-long v9, v11, v16

    if-nez v9, :cond_8d

    .line 271
    move-object v13, v4

    move-object/from16 v24, v5

    goto :goto_af

    .line 273
    :cond_8d
    new-instance v9, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    invoke-direct {v9}, Lcom/samsung/android/knox/application/AppInfoLastUsage;-><init>()V

    .line 274
    .local v9, "lAppInfoLastUsage":Lcom/samsung/android/knox/application/AppInfoLastUsage;
    iput-object v8, v9, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    .line 275
    iput-wide v11, v9, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastAppUsage:J

    .line 276
    move-object v13, v4

    move-object/from16 v24, v5

    move-wide/from16 v4, v22

    .end local v22    # "lastLaunchTime":J
    .local v4, "lastLaunchTime":J
    cmp-long v16, v4, v16

    if-eqz v16, :cond_a6

    .line 277
    iput-wide v4, v9, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    move-wide/from16 v22, v4

    move-wide/from16 v4, v20

    goto :goto_ac

    .line 279
    :cond_a6
    move-wide/from16 v22, v4

    move-wide/from16 v4, v20

    .end local v20    # "lastServiceStartTime":J
    .local v4, "lastServiceStartTime":J
    .restart local v22    # "lastLaunchTime":J
    iput-wide v4, v9, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    .line 280
    :goto_ac
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .end local v4    # "lastServiceStartTime":J
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "lAppInfoLastUsage":Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .end local v11    # "lastUsageTime":J
    .end local v14    # "lastPauseTime":J
    .end local v18    # "lastServiceStopTime":J
    .end local v22    # "lastLaunchTime":J
    :goto_af
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_b3} :catch_c7
    .catchall {:try_start_2b .. :try_end_b3} :catchall_c5

    if-nez v4, :cond_b6

    goto :goto_ba

    :cond_b6
    move-object v4, v13

    move-object/from16 v5, v24

    goto :goto_49

    .line 289
    :cond_ba
    :goto_ba
    if-eqz v1, :cond_bf

    .line 290
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_bf
    if-eqz v2, :cond_d3

    .line 292
    :goto_c1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_d3

    .line 289
    :catchall_c5
    move-exception v0

    goto :goto_d4

    .line 285
    :catch_c7
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_c5

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_d0

    .line 290
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_d0
    if-eqz v2, :cond_d3

    .line 292
    goto :goto_c1

    .line 295
    :cond_d3
    :goto_d3
    return-object v3

    .line 289
    :goto_d4
    if-eqz v1, :cond_d9

    .line 290
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_d9
    if-eqz v2, :cond_de

    .line 292
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 294
    :cond_de
    throw v0
.end method

.method public getLaunchCountOfAllApplication()Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 200
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 203
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_3
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v1, v3

    .line 204
    if-eqz v1, :cond_4c

    .line 205
    const-string v5, "ApplicationControl"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 207
    if-eqz v0, :cond_4c

    .line 208
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 210
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 212
    :cond_28
    const-string/jumbo v3, "pkgname"

    .line 213
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 212
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "launchcount"

    .line 216
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 215
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 217
    .local v4, "launchCount":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    nop

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "launchCount":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4a} :catch_59
    .catchall {:try_start_3 .. :try_end_4a} :catchall_57

    if-nez v3, :cond_28

    .line 226
    :cond_4c
    if-eqz v0, :cond_51

    .line 227
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_51
    if-eqz v1, :cond_65

    .line 229
    :goto_53
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_65

    .line 226
    :catchall_57
    move-exception v3

    goto :goto_66

    .line 222
    :catch_59
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_57

    .line 226
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_62

    .line 227
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_62
    if-eqz v1, :cond_65

    .line 229
    goto :goto_53

    .line 233
    :cond_65
    :goto_65
    return-object v2

    .line 226
    :goto_66
    if-eqz v0, :cond_6b

    .line 227
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_6b
    if-eqz v1, :cond_70

    .line 229
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 231
    :cond_70
    throw v3
.end method

.method public updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastServiceStartTime"    # J
    .param p4, "lastServiceStopTime"    # J

    .line 130
    const-string v0, "\'"

    const/4 v1, 0x0

    .line 131
    .local v1, "success":Z
    const/4 v2, 0x0

    .line 132
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 134
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_97
    .catchall {:try_start_5 .. :try_end_b} :catchall_95

    move-object v3, v4

    .line 135
    if-nez v3, :cond_15

    .line 136
    const/4 v0, 0x0

    .line 164
    if-eqz v2, :cond_14

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_14
    return v0

    .line 137
    :cond_15
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 142
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_33} :catch_97
    .catchall {:try_start_15 .. :try_end_33} :catchall_95

    const-string v6, "ApplicationControl"

    const-string v7, "applastservicestoptime"

    const-string v8, "applastservicestarttime"

    if-eqz v4, :cond_6b

    .line 144
    :try_start_3b
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 145
    .local v4, "values":Landroid/content/ContentValues;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pkgname = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "count":I
    if-lez v0, :cond_6a

    .line 150
    const/4 v1, 0x1

    .line 151
    .end local v0    # "count":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_6a
    goto :goto_8f

    .line 152
    :cond_6b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "pkgname"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    invoke-virtual {v3, v6, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_88} :catch_97
    .catchall {:try_start_3b .. :try_end_88} :catchall_95

    .line 157
    .local v4, "count":J
    const-wide/16 v6, 0x0

    cmp-long v6, v6, v4

    if-gez v6, :cond_8f

    .line 158
    const/4 v1, 0x1

    .line 164
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v4    # "count":J
    :cond_8f
    :goto_8f
    if-eqz v2, :cond_9e

    .line 165
    :goto_91
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9e

    .line 164
    :catchall_95
    move-exception v0

    goto :goto_a4

    .line 161
    :catch_97
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    :try_start_98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_95

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_9e

    .line 165
    goto :goto_91

    .line 167
    :cond_9e
    :goto_9e
    if-eqz v3, :cond_a3

    .line 168
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    :cond_a3
    return v1

    .line 164
    :goto_a4
    if-eqz v2, :cond_a9

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_a9
    throw v0
.end method

.method public updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lCount"    # I
    .param p3, "launchTime"    # J
    .param p5, "lastPauseTime"    # J

    .line 78
    move-object v1, p1

    const-string v0, "\'"

    const/4 v2, 0x0

    .line 79
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 80
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 82
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v5, p0

    :try_start_7
    iget-object v6, v5, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_b7
    .catchall {:try_start_7 .. :try_end_d} :catchall_b5

    move-object v4, v6

    .line 83
    if-nez v4, :cond_17

    .line 84
    const/4 v0, 0x0

    .line 117
    if-eqz v3, :cond_16

    .line 118
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_16
    return v0

    .line 85
    :cond_17
    :try_start_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v3, v6

    .line 90
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_35} :catch_b7
    .catchall {:try_start_17 .. :try_end_35} :catchall_b5

    const-string v8, "ApplicationControl"

    const-string/jumbo v9, "lastpausetime"

    const-string/jumbo v10, "lastlaunchtime"

    const-string/jumbo v11, "launchcount"

    if-eqz v6, :cond_84

    .line 92
    nop

    .line 93
    :try_start_43
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 92
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 94
    .local v6, "launchCount":I
    add-int v6, p2, v6

    .line 95
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v12, "values":Landroid/content/ContentValues;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v12, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v12, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkgname = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v8, v12, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, "count":I
    if-lez v0, :cond_83

    .line 102
    const/4 v2, 0x1

    .line 103
    .end local v0    # "count":I
    .end local v6    # "launchCount":I
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_83
    goto :goto_af

    .line 104
    :cond_84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string/jumbo v6, "pkgname"

    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    invoke-virtual {v4, v8, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_a8} :catch_b7
    .catchall {:try_start_43 .. :try_end_a8} :catchall_b5

    .line 110
    .local v6, "count":J
    const-wide/16 v8, 0x0

    cmp-long v8, v8, v6

    if-gez v8, :cond_af

    .line 111
    const/4 v2, 0x1

    .line 117
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v6    # "count":J
    :cond_af
    :goto_af
    if-eqz v3, :cond_be

    .line 118
    :goto_b1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_be

    .line 117
    :catchall_b5
    move-exception v0

    goto :goto_c4

    .line 114
    :catch_b7
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_b5

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_be

    .line 118
    goto :goto_b1

    .line 120
    :cond_be
    :goto_be
    if-eqz v4, :cond_c3

    .line 121
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 124
    :cond_c3
    return v2

    .line 117
    :goto_c4
    if-eqz v3, :cond_c9

    .line 118
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_c9
    throw v0
.end method
