.class Lcom/android/server/enterprise/application/NetworkDataUsageDb;
.super Ljava/lang/Object;
.source "NetworkDataUsageDb.java"


# static fields
.field public static final MOBILE_DATA_USAGE_RCV:Ljava/lang/String; = "mobiledatausagercv"

.field public static final MOBILE_DATA_USAGE_SEND:Ljava/lang/String; = "mobiledatausagesend"

.field public static final TABLE_NAME:Ljava/lang/String; = "NetworkDataUsage"

.field private static final TAG:Ljava/lang/String; = "NetworkDataUsageDb"

.field public static final UID:Ljava/lang/String; = "_id"

.field public static final WIFI_DATA_USAGE_RCV:Ljava/lang/String; = "wifidatausagesendrcv"

.field public static final WIFI_DATA_USAGE_SEND:Ljava/lang/String; = "wifidatausagesend"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    .line 116
    iput-object p1, p0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    .line 118
    return-void
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 415
    const-string v0, "NetworkDataUsageDb"

    :try_start_2
    const-string v1, " (_id integer primary key , mobiledatausagercv long, wifidatausagesendrcv long, mobiledatausagesend long, wifidatausagesend long );"

    .line 425
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table NetworkDataUsage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 427
    const-string v2, "::createDmAppMgrTable: Table is Created "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1f

    .line 433
    nop

    .end local v1    # "s":Ljava/lang/String;
    goto :goto_25

    .line 429
    :catch_1f
    move-exception v1

    .line 431
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "::createDmAppMgrTable: Exception while table is creating "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_25
    return-void
.end method

.method private static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;

    .line 381
    const-string v0, "NetworkDataUsageDb"

    const/4 v1, 0x0

    .line 383
    .local v1, "dmappmgrDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "dmappmgr.db"

    .line 387
    .local v2, "dmappmgrDBPath":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_7
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v1, v3

    .line 391
    const-string v3, "::getAppControlDB: DB is Created "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    .line 397
    goto :goto_18

    .line 393
    :catch_12
    move-exception v3

    .line 395
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "::getAppControlDB: Exception to create DB"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_18
    if-eqz v1, :cond_25

    const-string v0, "NetworkDataUsage"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 401
    invoke-static {v1}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 405
    :cond_25
    return-object v1
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .line 441
    const-string v0, "NetworkDataUsageDb"

    const/4 v1, 0x0

    .line 443
    .local v1, "exists":Z
    if-eqz p0, :cond_39

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object p1, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_39

    .line 447
    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const/4 v1, 0x1

    .line 451
    const-string v2, "::isTableExists: Table exists "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_31} :catch_32

    .line 459
    goto :goto_39

    .line 453
    :catch_32
    move-exception v2

    .line 455
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 457
    const-string v3, "::isTableExists:Table Does not exists "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_39
    :goto_39
    return v1
.end method


# virtual methods
.method public getMobileDataUsage()Ljava/util/Hashtable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation

    .line 287
    const-string v0, "_id"

    const/4 v1, 0x0

    .line 289
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 291
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 297
    .local v3, "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    :try_start_5
    iget-object v4, p0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_9d
    .catchall {:try_start_5 .. :try_end_b} :catchall_9b

    move-object v2, v4

    .line 299
    if-nez v2, :cond_1a

    .line 301
    const/4 v0, 0x0

    .line 357
    if-eqz v1, :cond_14

    .line 359
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_14
    if-eqz v2, :cond_19

    .line 363
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 301
    :cond_19
    return-object v0

    .line 305
    :cond_1a
    :try_start_1a
    const-string v6, "NetworkDataUsage"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    .line 309
    if-eqz v1, :cond_90

    .line 311
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    move-object v3, v4

    .line 313
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 317
    :cond_36
    new-instance v4, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-direct {v4}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 319
    .local v4, "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    nop

    .line 321
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 319
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    .line 323
    const-string/jumbo v5, "mobiledatausagesend"

    .line 325
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 323
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 327
    const-string/jumbo v5, "mobiledatausagercv"

    .line 329
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 327
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 331
    const-string/jumbo v5, "wifidatausagesend"

    .line 333
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 331
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 335
    const-string/jumbo v5, "wifidatausagesendrcv"

    .line 337
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 335
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 339
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    nop

    .end local v4    # "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_8e} :catch_9d
    .catchall {:try_start_1a .. :try_end_8e} :catchall_9b

    if-nez v4, :cond_36

    .line 357
    :cond_90
    if-eqz v1, :cond_95

    .line 359
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_95
    if-eqz v2, :cond_be

    .line 363
    :goto_97
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_be

    .line 357
    :catchall_9b
    move-exception v0

    goto :goto_bf

    .line 349
    :catch_9d
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9e
    const-string v4, "NetworkDataUsageDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getMobileDataUsage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_9e .. :try_end_b5} :catchall_9b

    .line 357
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_bb

    .line 359
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_bb
    if-eqz v2, :cond_be

    .line 363
    goto :goto_97

    .line 371
    :cond_be
    :goto_be
    return-object v3

    .line 357
    :goto_bf
    if-eqz v1, :cond_c4

    .line 359
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_c4
    if-eqz v2, :cond_c9

    .line 363
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 367
    :cond_c9
    throw v0
.end method

.method public updateDataUsage(Ljava/util/Hashtable;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;)Z"
        }
    .end annotation

    .line 126
    .local p1, "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    move-object/from16 v1, p1

    const-string v2, "\'"

    const/4 v3, 0x0

    .line 128
    .local v3, "success":Z
    const/4 v4, 0x0

    .line 130
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 134
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v6, p0

    :try_start_9
    iget-object v0, v6, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v5, v0

    .line 136
    if-nez v5, :cond_13

    .line 138
    return v3

    .line 142
    :cond_13
    if-eqz v1, :cond_162

    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_162

    .line 144
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v7, v0

    .line 148
    .local v7, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_24
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_160

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_163

    move-object v9, v0

    .line 152
    .local v9, "key":Ljava/lang/Integer;
    :try_start_31
    invoke-virtual {v1, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/application/NetworkStats;

    .line 154
    .local v0, "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT * FROM NetworkDataUsage WHERE _id = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v4, v10

    .line 160
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_55} :catch_130
    .catchall {:try_start_31 .. :try_end_55} :catchall_12c

    const-string v12, "NetworkDataUsage"

    const-string/jumbo v13, "wifidatausagesendrcv"

    const-string/jumbo v14, "wifidatausagesend"

    const-string/jumbo v15, "mobiledatausagercv"

    const-string/jumbo v11, "mobiledatausagesend"

    if-eqz v10, :cond_e8

    .line 162
    :try_start_65
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v10, "values":Landroid/content/ContentValues;
    nop

    .line 168
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 166
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_73} :catch_130
    .catchall {:try_start_65 .. :try_end_73} :catchall_12c

    .line 170
    .local v16, "mobileSendDataUsageInDb":J
    move-object v1, v7

    .end local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_74
    iget-wide v6, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_76} :catch_e4
    .catchall {:try_start_74 .. :try_end_76} :catchall_df

    add-long v6, v6, v16

    .line 172
    .local v6, "value":J
    move-object/from16 v18, v1

    .end local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v18, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_7a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    nop

    .line 178
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 176
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 180
    .local v19, "mobileRcvDataUsageInDb":J
    move-wide/from16 v21, v6

    .end local v6    # "value":J
    .local v21, "value":J
    iget-wide v6, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    add-long v6, v6, v19

    .line 182
    .end local v21    # "value":J
    .restart local v6    # "value":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    nop

    .line 188
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 186
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 190
    .local v21, "wifiSendDataUsageInDb":J
    move-wide/from16 v23, v6

    .end local v6    # "value":J
    .local v23, "value":J
    iget-wide v6, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    add-long v6, v6, v21

    .line 192
    .end local v23    # "value":J
    .restart local v6    # "value":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    nop

    .line 198
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 196
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 200
    .local v14, "wifiRcvDataUsageInDb":J
    move-wide/from16 v23, v6

    .end local v6    # "value":J
    .restart local v23    # "value":J
    iget-wide v6, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    add-long/2addr v6, v14

    .line 202
    .end local v23    # "value":J
    .restart local v6    # "value":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id = \'"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v5, v12, v10, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 210
    .local v1, "count":I
    if-lez v1, :cond_de

    .line 212
    const/4 v3, 0x1

    .line 218
    .end local v1    # "count":I
    .end local v6    # "value":J
    .end local v10    # "values":Landroid/content/ContentValues;
    .end local v14    # "wifiRcvDataUsageInDb":J
    .end local v16    # "mobileSendDataUsageInDb":J
    .end local v19    # "mobileRcvDataUsageInDb":J
    .end local v21    # "wifiSendDataUsageInDb":J
    :cond_de
    goto :goto_124

    .line 254
    .end local v0    # "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    .end local v18    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_df
    move-exception v0

    move-object/from16 v18, v1

    .end local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto/16 :goto_159

    .line 251
    .end local v18    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_e4
    move-exception v0

    move-object/from16 v18, v1

    .end local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_133

    .line 220
    .end local v18    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v0    # "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    .restart local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_e8
    move-object/from16 v18, v7

    .end local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v1, "values":Landroid/content/ContentValues;
    const-string v6, "_id"

    invoke-virtual {v1, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    iget-wide v6, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 226
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 224
    invoke-virtual {v1, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    iget-wide v6, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 230
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 228
    invoke-virtual {v1, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    iget-wide v6, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 234
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 232
    invoke-virtual {v1, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    iget-wide v6, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    const/4 v6, 0x0

    invoke-virtual {v5, v12, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_11d} :catch_12a
    .catchall {:try_start_7a .. :try_end_11d} :catchall_158

    .line 242
    .local v6, "count":J
    const-wide/16 v10, 0x0

    cmp-long v10, v10, v6

    if-gez v10, :cond_124

    .line 244
    const/4 v3, 0x1

    .line 254
    .end local v0    # "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v6    # "count":J
    :cond_124
    :goto_124
    if-eqz v4, :cond_150

    .line 255
    :goto_126
    :try_start_126
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_129} :catch_163

    goto :goto_150

    .line 251
    :catch_12a
    move-exception v0

    goto :goto_133

    .line 254
    .end local v18    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_12c
    move-exception v0

    move-object/from16 v18, v7

    .end local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_159

    .line 251
    .end local v18    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_130
    move-exception v0

    move-object/from16 v18, v7

    .line 252
    .end local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_133
    :try_start_133
    const-string v1, "NetworkDataUsageDb"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception occurred "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14d
    .catchall {:try_start_133 .. :try_end_14d} :catchall_158

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_150

    .line 255
    goto :goto_126

    .line 261
    .end local v9    # "key":Ljava/lang/Integer;
    :cond_150
    :goto_150
    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v7, v18

    goto/16 :goto_24

    .line 254
    .restart local v9    # "key":Ljava/lang/Integer;
    :catchall_158
    move-exception v0

    :goto_159
    if-eqz v4, :cond_15e

    .line 255
    :try_start_15b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_15e
    nop

    .end local v3    # "success":Z
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/android/server/enterprise/application/NetworkDataUsageDb;
    .end local p1    # "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    throw v0
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_160} :catch_163

    .line 148
    .end local v9    # "key":Ljava/lang/Integer;
    .end local v18    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v3    # "success":Z
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/android/server/enterprise/application/NetworkDataUsageDb;
    .restart local p1    # "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    :cond_160
    move-object/from16 v18, v7

    .line 271
    .end local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_162
    goto :goto_165

    .line 267
    :catch_163
    move-exception v0

    .line 269
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_165
    if-eqz v5, :cond_16a

    .line 275
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 279
    :cond_16a
    return v3
.end method
