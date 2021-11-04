.class Lcom/android/server/ipm/psitracker/PSIDBManager;
.super Ljava/lang/Object;
.source "PSIDBManager.java"


# static fields
.field public static final LOCK_DATABASE:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "PSITracker-DBManager"

.field private static volatile mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/android/server/ipm/psitracker/PSIDBManager;


# instance fields
.field protected mAvailMemTable:Ljava/lang/String;

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mDBHelper:Lcom/android/server/ipm/psitracker/PSIDBHelper;

.field protected mEntryAppTable:Ljava/lang/String;

.field protected mSampleTable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "psi_Sample"

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mSampleTable:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "psi_Entry_App"

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mEntryAppTable:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "psi_Available_Mem"

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2d

    .line 26
    sget-object v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 27
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_2d

    .line 28
    new-instance v1, Lcom/android/server/ipm/psitracker/PSIDBHelper;

    invoke-direct {v1, v0}, Lcom/android/server/ipm/psitracker/PSIDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDBHelper:Lcom/android/server/ipm/psitracker/PSIDBHelper;

    .line 29
    invoke-virtual {v1}, Lcom/android/server/ipm/psitracker/PSIDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    .end local v0    # "context":Landroid/content/Context;
    :cond_2d
    return-void
.end method

.method protected static destroyInstance()V
    .registers 2

    .line 50
    sget-object v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_3
    sget-object v1, Lcom/android/server/ipm/psitracker/PSIDBManager;->mInstance:Lcom/android/server/ipm/psitracker/PSIDBManager;

    if-eqz v1, :cond_c

    .line 52
    sget-object v1, Lcom/android/server/ipm/psitracker/PSIDBManager;->mInstance:Lcom/android/server/ipm/psitracker/PSIDBManager;

    invoke-virtual {v1}, Lcom/android/server/ipm/psitracker/PSIDBManager;->destroy()V

    .line 54
    :cond_c
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/ipm/psitracker/PSIDBManager;->mInstance:Lcom/android/server/ipm/psitracker/PSIDBManager;

    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 55
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected static getInstance()Lcom/android/server/ipm/psitracker/PSIDBManager;
    .registers 2

    .line 41
    sget-object v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-object v1, Lcom/android/server/ipm/psitracker/PSIDBManager;->mInstance:Lcom/android/server/ipm/psitracker/PSIDBManager;

    if-nez v1, :cond_e

    .line 43
    new-instance v1, Lcom/android/server/ipm/psitracker/PSIDBManager;

    invoke-direct {v1}, Lcom/android/server/ipm/psitracker/PSIDBManager;-><init>()V

    sput-object v1, Lcom/android/server/ipm/psitracker/PSIDBManager;->mInstance:Lcom/android/server/ipm/psitracker/PSIDBManager;

    .line 45
    :cond_e
    sget-object v1, Lcom/android/server/ipm/psitracker/PSIDBManager;->mInstance:Lcom/android/server/ipm/psitracker/PSIDBManager;

    monitor-exit v0

    return-object v1

    .line 46
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

    .line 35
    if-eqz p0, :cond_9

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 38
    :cond_9
    return-void
.end method


# virtual methods
.method protected beginTransaction()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    .line 111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 113
    :cond_7
    return-void
.end method

.method protected destroy()V
    .registers 5

    .line 129
    const-string v0, "PSITracker-DBManager"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_e
    .catchall {:try_start_3 .. :try_end_8} :catchall_c

    .line 133
    nop

    :goto_9
    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 134
    goto :goto_16

    .line 133
    :catchall_c
    move-exception v0

    goto :goto_2d

    .line 130
    :catch_e
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_f
    const-string v3, "Error on closing database"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_c

    .line 133
    nop

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_9

    .line 137
    :goto_16
    :try_start_16
    iget-object v2, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDBHelper:Lcom/android/server/ipm/psitracker/PSIDBHelper;

    invoke-virtual {v2}, Lcom/android/server/ipm/psitracker/PSIDBHelper;->close()V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1b} :catch_21
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1f

    .line 141
    nop

    :goto_1c
    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDBHelper:Lcom/android/server/ipm/psitracker/PSIDBHelper;

    .line 142
    goto :goto_29

    .line 141
    :catchall_1f
    move-exception v0

    goto :goto_2a

    .line 138
    :catch_21
    move-exception v2

    .line 139
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    :try_start_22
    const-string v3, "Error on closing database helper"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    .line 141
    nop

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_1c

    .line 143
    :goto_29
    return-void

    .line 141
    :goto_2a
    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDBHelper:Lcom/android/server/ipm/psitracker/PSIDBHelper;

    .line 142
    throw v0

    .line 133
    :goto_2d
    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 134
    throw v0
.end method

.method protected endTransaction()V
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    .line 123
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 125
    :cond_7
    return-void
.end method

.method protected execSQL(Ljava/lang/String;)V
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected getRecordsCount(Ljava/lang/String;)I
    .registers 6
    .param p1, "tableName"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "count":I
    const/4 v1, 0x0

    .line 80
    .local v1, "mCount":Landroid/database/Cursor;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select count(*) from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ipm/psitracker/PSIDBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 81
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_2b
    .catchall {:try_start_2 .. :try_end_22} :catchall_29

    move v0, v2

    .line 86
    if-eqz v1, :cond_32

    .line 87
    :goto_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_32

    .line 86
    :catchall_29
    move-exception v2

    goto :goto_33

    .line 83
    :catch_2b
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_29

    .line 86
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_32

    .line 87
    goto :goto_25

    .line 90
    :cond_32
    :goto_32
    return v0

    .line 86
    :goto_33
    if-eqz v1, :cond_38

    .line 87
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_38
    throw v2
.end method

.method protected insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 95
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 96
    .local v0, "id":J
    return-wide v0
.end method

.method protected isDBClosed()Z
    .registers 4

    .line 59
    sget-object v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 61
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0

    return v2

    .line 63
    :cond_14
    monitor-exit v0

    return v2

    .line 65
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

    .line 69
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_6
    sget-object v0, Lcom/android/server/ipm/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 73
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected setTransactionSuccessful()V
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    .line 117
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 119
    :cond_7
    return-void
.end method

.method protected update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 102
    .local v0, "id":J
    return-wide v0
.end method
