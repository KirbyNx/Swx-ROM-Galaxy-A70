.class Lcom/android/server/ipm/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field public static final LOCK_DATABASE:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-DBManager"

.field private static volatile mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/android/server/ipm/DBManager;


# instance fields
.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mDBHelper:Lcom/android/server/ipm/DBHelper;

.field protected mInfoTable:Ljava/lang/String;

.field protected mSampleTable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ipm/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "tbl_Sample"

    iput-object v0, p0, Lcom/android/server/ipm/DBManager;->mSampleTable:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "tbl_Summary"

    iput-object v0, p0, Lcom/android/server/ipm/DBManager;->mInfoTable:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/android/server/ipm/DBManager;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_28

    .line 25
    sget-object v0, Lcom/android/server/ipm/DBManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 26
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_28

    .line 27
    new-instance v1, Lcom/android/server/ipm/DBHelper;

    invoke-direct {v1, v0}, Lcom/android/server/ipm/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ipm/DBManager;->mDBHelper:Lcom/android/server/ipm/DBHelper;

    .line 28
    invoke-virtual {v1}, Lcom/android/server/ipm/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    .end local v0    # "context":Landroid/content/Context;
    :cond_28
    return-void
.end method

.method protected static destroyInstance()V
    .registers 2

    .line 49
    sget-object v0, Lcom/android/server/ipm/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-object v1, Lcom/android/server/ipm/DBManager;->mInstance:Lcom/android/server/ipm/DBManager;

    if-eqz v1, :cond_c

    .line 51
    sget-object v1, Lcom/android/server/ipm/DBManager;->mInstance:Lcom/android/server/ipm/DBManager;

    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->destroy()V

    .line 53
    :cond_c
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/ipm/DBManager;->mInstance:Lcom/android/server/ipm/DBManager;

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected static getInstance()Lcom/android/server/ipm/DBManager;
    .registers 2

    .line 40
    sget-object v0, Lcom/android/server/ipm/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_3
    sget-object v1, Lcom/android/server/ipm/DBManager;->mInstance:Lcom/android/server/ipm/DBManager;

    if-nez v1, :cond_e

    .line 42
    new-instance v1, Lcom/android/server/ipm/DBManager;

    invoke-direct {v1}, Lcom/android/server/ipm/DBManager;-><init>()V

    sput-object v1, Lcom/android/server/ipm/DBManager;->mInstance:Lcom/android/server/ipm/DBManager;

    .line 44
    :cond_e
    sget-object v1, Lcom/android/server/ipm/DBManager;->mInstance:Lcom/android/server/ipm/DBManager;

    monitor-exit v0

    return-object v1

    .line 45
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method protected static init(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    if-eqz p0, :cond_9

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/ipm/DBManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 37
    :cond_9
    return-void
.end method


# virtual methods
.method protected beginTransaction()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    .line 94
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 96
    :cond_7
    return-void
.end method

.method protected destroy()V
    .registers 5

    .line 112
    const-string v0, "PkgPredictorService-DBManager"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_e
    .catchall {:try_start_3 .. :try_end_8} :catchall_c

    .line 116
    nop

    :goto_9
    iput-object v1, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 117
    goto :goto_16

    .line 116
    :catchall_c
    move-exception v0

    goto :goto_2d

    .line 113
    :catch_e
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_f
    const-string v3, "Error on closing database"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_c

    .line 116
    nop

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_9

    .line 120
    :goto_16
    :try_start_16
    iget-object v2, p0, Lcom/android/server/ipm/DBManager;->mDBHelper:Lcom/android/server/ipm/DBHelper;

    invoke-virtual {v2}, Lcom/android/server/ipm/DBHelper;->close()V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1b} :catch_21
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1f

    .line 124
    nop

    :goto_1c
    iput-object v1, p0, Lcom/android/server/ipm/DBManager;->mDBHelper:Lcom/android/server/ipm/DBHelper;

    .line 125
    goto :goto_29

    .line 124
    :catchall_1f
    move-exception v0

    goto :goto_2a

    .line 121
    :catch_21
    move-exception v2

    .line 122
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    :try_start_22
    const-string v3, "Error on closing database helper"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    .line 124
    nop

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_1c

    .line 126
    :goto_29
    return-void

    .line 124
    :goto_2a
    iput-object v1, p0, Lcom/android/server/ipm/DBManager;->mDBHelper:Lcom/android/server/ipm/DBHelper;

    .line 125
    throw v0

    .line 116
    :goto_2d
    iput-object v1, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 117
    throw v0
.end method

.method protected endTransaction()V
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    .line 106
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 108
    :cond_7
    return-void
.end method

.method protected execSQL(Ljava/lang/String;)V
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 77
    iget-object v0, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 78
    .local v0, "id":J
    return-wide v0
.end method

.method public insertOrReplace(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "result":I
    if-gtz v0, :cond_24

    .line 84
    iget-object v1, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 86
    :cond_24
    return-void
.end method

.method protected isDBClosed()Z
    .registers 4

    .line 58
    sget-object v0, Lcom/android/server/ipm/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 60
    iget-object v1, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0

    return v2

    .line 62
    :cond_14
    monitor-exit v0

    return v2

    .line 64
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method protected rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_6
    sget-object v0, Lcom/android/server/ipm/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 72
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected setTransactionSuccessful()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/server/ipm/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    .line 100
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 102
    :cond_7
    return-void
.end method
