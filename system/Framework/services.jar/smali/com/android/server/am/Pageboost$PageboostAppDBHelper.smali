.class final Lcom/android/server/am/Pageboost$PageboostAppDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageboostAppDBHelper"
.end annotation


# static fields
.field private static final COLUMN_ACCTIME:Ljava/lang/String; = "ACC_ETIME"

.field private static final COLUMN_ANON:Ljava/lang/String; = "ANON"

.field private static final COLUMN_APKPATH:Ljava/lang/String; = "APK_PATH"

.field private static final COLUMN_CAPTURED:Ljava/lang/String; = "CAPTURED"

.field private static final COLUMN_EXEC:Ljava/lang/String; = "EXEC_CNT"

.field private static final COLUMN_GPU:Ljava/lang/String; = "GPU"

.field private static final COLUMN_HIT:Ljava/lang/String; = "HIT_CNT"

.field private static final COLUMN_ID:Ljava/lang/String; = "ID"

.field private static final COLUMN_ION:Ljava/lang/String; = "ION"

.field private static final COLUMN_NAME:Ljava/lang/String; = "APPNAME"

.field private static final COLUMN_PREFETCH:Ljava/lang/String; = "PREFETCH_CNT"

.field private static final COLUMN_SCORE:Ljava/lang/String; = "SCORE"

.field private static final COLUMN_SIZE_MAP_PR:Ljava/lang/String; = "SIZE_MAP_PR"

.field private static final COLUMN_SIZE_PR:Ljava/lang/String; = "SIZE_PR"

.field private static final DATABASE_NAME:Ljava/lang/String; = "/data/misc/pageboost/pageboost_app_db.db"

.field private static final DATABASE_VERSION:I = 0x7

.field private static final TABLE_NAME:Ljava/lang/String; = "AppLRU"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 2990
    const-string v0, "/data/misc/pageboost/pageboost_app_db.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2991
    return-void
.end method

.method public static clearTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 3038
    const-string v0, "AppLRU"

    const-string v1, "1"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 3039
    .local v0, "ret":J
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db clear : ret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    return-void
.end method

.method public static restoreAppLRU(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/server/am/Pageboost$PageboostAppList;
    .registers 29
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 3095
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    move-object v1, v0

    .line 3096
    .local v1, "list":Lcom/android/server/am/Pageboost$PageboostAppList;
    const-string v10, "ID ASC"

    .line 3097
    .local v10, "sortOrder":Ljava/lang/String;
    const-string v3, "AppLRU"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3098
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_b4

    .line 3100
    :goto_18
    :try_start_18
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 3101
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    const-string v3, "APPNAME"

    .line 3102
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v3, "CAPTURED"

    .line 3103
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v3, "ANON"

    .line 3104
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v3, "ION"

    .line 3105
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v3, "GPU"

    .line 3106
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string v3, "SIZE_PR"

    .line 3107
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const-string v3, "SIZE_MAP_PR"

    .line 3108
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const-string v3, "SCORE"

    .line 3109
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const-string v3, "EXEC_CNT"

    .line 3110
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string v3, "ACC_ETIME"

    .line 3111
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    const-string v3, "PREFETCH_CNT"

    .line 3112
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const-string v3, "HIT_CNT"

    .line 3113
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const-string v3, "APK_PATH"

    .line 3114
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object v11, v0

    invoke-direct/range {v11 .. v27}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;IIIIJJIIJIILjava/lang/String;)V

    .line 3116
    .local v0, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_aa} :catch_ad

    .line 3117
    .end local v0    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    goto/16 :goto_18

    .line 3120
    :cond_ac
    goto :goto_b1

    .line 3118
    :catch_ad
    move-exception v0

    .line 3119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3121
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3123
    :cond_b4
    return-object v1
.end method

.method private static setContentValue(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Landroid/content/ContentValues;
    .registers 5
    .param p0, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .param p1, "idx"    # I

    .line 3043
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3044
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3045
    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    const-string v2, "APPNAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CAPTURED"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3047
    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ANON"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3048
    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ION"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3049
    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GPU"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3050
    iget-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "SIZE_PR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3051
    iget-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "SIZE_MAP_PR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3052
    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SCORE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3053
    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EXEC_CNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3054
    iget-wide v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ACC_ETIME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3055
    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PREFETCH_CNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3056
    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HIT_CNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3057
    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    const-string v2, "APK_PATH"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3058
    return-object v0
.end method

.method public static storeApp(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;Lcom/android/server/am/Pageboost$PageboostAppInfo;)V
    .registers 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "list"    # Lcom/android/server/am/Pageboost$PageboostAppList;
    .param p2, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 3062
    if-eqz p1, :cond_54

    if-nez p2, :cond_5

    goto :goto_54

    .line 3066
    :cond_5
    iget-object v0, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v0

    .line 3068
    const/4 v1, 0x0

    :try_start_9
    invoke-static {p2, v1}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->setContentValue(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 3069
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "AppLRU"

    const-string v4, "APPNAME = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    .line 3070
    .local v3, "ret":J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2c

    .line 3071
    const-string v1, "AppLRU"

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {p0, v1, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5

    move-wide v3, v5

    .line 3073
    :cond_2c
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "db update :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ret "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    nop

    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "ret":J
    monitor-exit v0

    .line 3075
    return-void

    .line 3074
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_9 .. :try_end_53} :catchall_51

    throw v1

    .line 3063
    :cond_54
    :goto_54
    return-void
.end method

.method public static storeAppLRU(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;)V
    .registers 13
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "list"    # Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 3078
    const/4 v0, 0x0

    .line 3080
    .local v0, "i":I
    const-string v1, "AppLRU"

    const-string v2, "1"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 3081
    .local v1, "ret":J
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "db clear : ret "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    if-nez p1, :cond_26

    .line 3083
    return-void

    .line 3085
    :cond_26
    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v4

    .line 3086
    :try_start_29
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_6c

    .line 3087
    .local v6, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    :try_start_3b
    invoke-static {v6, v0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->setContentValue(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 3088
    .local v0, "values":Landroid/content/ContentValues;
    const-string v8, "AppLRU"

    invoke-virtual {p0, v8, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    move-wide v1, v8

    .line 3089
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "db insert :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ret "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_3b .. :try_end_68} :catchall_71

    .line 3090
    move v0, v7

    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v6    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    goto :goto_2d

    .line 3091
    .end local v7    # "i":I
    .local v0, "i":I
    :cond_6a
    :try_start_6a
    monitor-exit v4
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6c

    .line 3092
    return-void

    .line 3091
    :catchall_6c
    move-exception v3

    move v7, v0

    move-object v0, v3

    .end local v0    # "i":I
    .restart local v7    # "i":I
    :goto_6f
    :try_start_6f
    monitor-exit v4
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_71

    throw v0

    :catchall_71
    move-exception v0

    goto :goto_6f
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 2995
    const-string v0, "CREATE TABLE IF NOT EXISTS AppLRU (ID INTEGER, APPNAME TEXT NOT NULL UNIQUE, CAPTURED INTEGER, ANON INTEGER, ION INTEGER, GPU INTEGER, SIZE_PR INTEGER, SIZE_MAP_PR INTEGER, SCORE INTEGER, EXEC_CNT INTEGER, ACC_ETIME INTEGER, PREFETCH_CNT INTEGER, HIT_CNT INTEGER, APK_PATH TEXT NOT NULL );"

    .line 3012
    .local v0, "sqlite_cmd":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3013
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppDB table creation done"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    .line 3017
    goto :goto_1c

    .line 3014
    :catch_f
    move-exception v1

    .line 3015
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to create AppDB table"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3018
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 3034
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 3035
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 3022
    const-string v0, "DROP TABLE IF EXISTS AppLRU"

    .line 3024
    .local v0, "sqlite_cmd":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3025
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    .line 3029
    goto :goto_2d

    .line 3026
    :catch_9
    move-exception v1

    .line 3027
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to upgrade or downgrade AppDB table : from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3030
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method
