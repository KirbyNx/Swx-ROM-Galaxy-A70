.class Lcom/android/server/ipm/psitracker/PSIDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PSIDBHelper.java"


# static fields
.field public static final AVAIL_MEM_TABLE:Ljava/lang/String; = "psi_Available_Mem"

.field private static final DB_NAME:Ljava/lang/String; = "PSITracker.db"

.field private static final DB_VERSION:I = 0x2

.field public static final ENTRY_APP_TABLE:Ljava/lang/String; = "psi_Entry_App"

.field private static final LOG_TAG:Ljava/lang/String; = "PSITracker-DBHelper"

.field public static final SAMPLE_TABLE:Ljava/lang/String; = "psi_Sample"


# instance fields
.field private CREATE_AVAIL_MEM_TABLE:Ljava/lang/String;

.field private CREATE_ENTRY_APP_TABLE:Ljava/lang/String;

.field private CREATE_INFO_TABLE:Ljava/lang/String;

.field private DATABASE_UPDATE_TEAM_1:Ljava/lang/String;

.field private final contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;

    .line 41
    const-string v0, "PSITracker.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 20
    const-string v0, "create table if not exists psi_Sample(id integer primary key autoincrement,processName varchar(128), psiMax float,pss integer, type integer, checkTime integer, userId integer)"

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBHelper;->CREATE_INFO_TABLE:Ljava/lang/String;

    .line 25
    const-string v0, "create table if not exists psi_Entry_App(id integer primary key autoincrement,processName varchar(128), pss integer, userId integer,checkTime integer)"

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBHelper;->CREATE_ENTRY_APP_TABLE:Ljava/lang/String;

    .line 30
    const-string v0, "create table if not exists psi_Available_Mem(id integer primary key autoincrement,availMem integer, cached integer, running integer,checkTime integer)"

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBHelper;->CREATE_AVAIL_MEM_TABLE:Ljava/lang/String;

    .line 36
    const-string v0, "ALTER TABLE psi_Available_Mem ADD COLUMN running integer"

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBHelper;->DATABASE_UPDATE_TEAM_1:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBHelper;->contextReference:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBHelper;->CREATE_INFO_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBHelper;->CREATE_ENTRY_APP_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBHelper;->CREATE_AVAIL_MEM_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 73
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS psi_Sample"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v0, "DROP TABLE IF EXISTS psi_Entry_App"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSIDBHelper;->CREATE_AVAIL_MEM_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/psitracker/PSIDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_23} :catch_24

    .line 79
    goto :goto_3b

    .line 77
    :catch_24
    move-exception v0

    .line 78
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PSITracker-DBHelper"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_3b
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 55
    const/4 v0, 0x2

    if-ge p2, v0, :cond_21

    .line 56
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSIDBHelper;->DATABASE_UPDATE_TEAM_1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_21

    .line 65
    :catch_9
    move-exception v0

    .line 66
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PSITracker-DBHelper"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 67
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_21
    :goto_21
    nop

    .line 68
    :goto_22
    return-void
.end method
