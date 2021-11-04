.class Lcom/android/server/ipm/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field public static final AUF_TABLE:Ljava/lang/String; = "tbl_AufSummary"

.field private static final DB_NAME:Ljava/lang/String; = "PkgPredictions.db"

.field private static final DB_VERSION:I = 0x7

.field public static final INFO_TABLE:Ljava/lang/String; = "tbl_Summary"

.field private static final LOG_TAG:Ljava/lang/String; = "PkgPredictorService-DBHelper"

.field public static final PACKAGE_TABLE:Ljava/lang/String; = "tbl_PkgSummary"

.field public static final SAMPLE_TABLE:Ljava/lang/String; = "tbl_Sample"


# instance fields
.field private CREATE_INFO_TABLE:Ljava/lang/String;

.field private CREATE_SAMPLE_TABLE:Ljava/lang/String;

.field private DATABASE_UPDATE_TEAM_1:Ljava/lang/String;

.field private DATABASE_UPDATE_TEAM_2:Ljava/lang/String;

.field private DATABASE_UPDATE_TEAM_3:Ljava/lang/String;

.field private DATABASE_UPDATE_TEAM_4:Ljava/lang/String;

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

    .line 52
    const-string v0, "PkgPredictions.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    const-string v0, "create table if not exists tbl_Sample(id integer primary key autoincrement,hour_of_day integer,day_of_week integer,previous_one varchar(128),previous_two varchar(128),previous_three varchar(128),running_pkg varchar(128),user_id integer,activity_name varchar(128),screen_orientation integer,wifi_status integer,bt_status integer,prediction varchar(512),predict_time integer,apk_version varchar(128),launch_time integer,consume_time integer,success integer,is_preloaded integer,error varchar(512))"

    iput-object v0, p0, Lcom/android/server/ipm/DBHelper;->CREATE_SAMPLE_TABLE:Ljava/lang/String;

    .line 34
    const-string v0, "create table if not exists tbl_Summary(id integer primary key autoincrement,build_time integer,total_num integer,right_num integer,train_time integer,train_sets integer)"

    iput-object v0, p0, Lcom/android/server/ipm/DBHelper;->CREATE_INFO_TABLE:Ljava/lang/String;

    .line 40
    const-string v0, "ALTER TABLE tbl_Sample ADD COLUMN user_id integer"

    iput-object v0, p0, Lcom/android/server/ipm/DBHelper;->DATABASE_UPDATE_TEAM_1:Ljava/lang/String;

    .line 41
    const-string v0, "ALTER TABLE tbl_Summary ADD COLUMN train_sets integer"

    iput-object v0, p0, Lcom/android/server/ipm/DBHelper;->DATABASE_UPDATE_TEAM_2:Ljava/lang/String;

    .line 42
    const-string v0, "create table if not exists tbl_PkgSummary(id integer primary key autoincrement,user_pkg varchar(128) UNIQUE,launched integer,dex_compiled integer,time_add integer DEFAULT 0, time_gap integer DEFAULT 0)"

    iput-object v0, p0, Lcom/android/server/ipm/DBHelper;->DATABASE_UPDATE_TEAM_3:Ljava/lang/String;

    .line 46
    const-string v0, "ALTER TABLE tbl_PkgSummary ADD COLUMN dex_compiled integer"

    iput-object v0, p0, Lcom/android/server/ipm/DBHelper;->DATABASE_UPDATE_TEAM_4:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/ipm/DBHelper;->contextReference:Ljava/lang/ref/WeakReference;

    .line 54
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ipm/DBHelper;->CREATE_SAMPLE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/server/ipm/DBHelper;->CREATE_INFO_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/server/ipm/DBHelper;->DATABASE_UPDATE_TEAM_3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 64
    goto :goto_27

    .line 62
    :catch_10
    move-exception v0

    .line 63
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PkgPredictorService-DBHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_27
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 105
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS tbl_AufSummary"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "DROP TABLE IF EXISTS tbl_Sample"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    const-string v0, "DROP TABLE IF EXISTS tbl_Summary"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string v0, "DROP TABLE IF EXISTS tbl_PkgSummary"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_17} :catch_18

    .line 112
    goto :goto_2f

    .line 110
    :catch_18
    move-exception v0

    .line 111
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PkgPredictorService-DBHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_2f
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 70
    const/4 v0, 0x3

    if-ge p2, v0, :cond_10

    .line 71
    const/4 v0, 0x2

    if-ne p2, v0, :cond_b

    .line 72
    :try_start_6
    const-string v0, "DROP TABLE IF EXISTS tbl_AufSummary"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    :cond_b
    iget-object v0, p0, Lcom/android/server/ipm/DBHelper;->DATABASE_UPDATE_TEAM_1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    :cond_10
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1b

    .line 78
    iget-object v0, p0, Lcom/android/server/ipm/DBHelper;->DATABASE_UPDATE_TEAM_2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1b

    .line 97
    :catch_19
    move-exception v0

    goto :goto_4c

    .line 81
    :cond_1b
    :goto_1b
    const/4 v0, 0x5

    if-ge p2, v0, :cond_2b

    .line 82
    const-string v0, "DexPreload"

    const-string/jumbo v1, "upgrade pkg table"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/server/ipm/DBHelper;->DATABASE_UPDATE_TEAM_3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    :cond_2b
    const/4 v0, 0x6

    if-ge p2, v0, :cond_33

    .line 88
    iget-object v0, p0, Lcom/android/server/ipm/DBHelper;->DATABASE_UPDATE_TEAM_4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    :cond_33
    const/4 v0, 0x7

    if-ge p2, v0, :cond_63

    .line 92
    const-string v0, "CREATE TABLE tbl_PkgSummary2(id integer primary key autoincrement,user_pkg varchar(128) UNIQUE,launched integer,dex_compiled integer, time_add integer DEFAULT 0, time_gap integer DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "insert or replace into tbl_PkgSummary2(id, user_pkg,launched, dex_compiled) select * from tbl_PkgSummary"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v0, "drop table tbl_PkgSummary"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string v0, "ALTER table tbl_PkgSummary2 rename to tbl_PkgSummary"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_4b} :catch_19

    goto :goto_63

    .line 98
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PkgPredictorService-DBHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 99
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_63
    :goto_63
    nop

    .line 100
    :goto_64
    return-void
.end method
