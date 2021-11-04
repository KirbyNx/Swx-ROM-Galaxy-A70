.class public Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IbsQuickDim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IbsQuickDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SQLiteSQDwhilteList"
.end annotation


# static fields
.field private static final COL_EVENT_PKG:Ljava/lang/String; = "PackageName"

.field private static final COL_EVENT_UID:Ljava/lang/String; = "Uid"

.field public static final DB_NAME:Ljava/lang/String; = "SQD_whilte_list"

.field public static final DB_TABLE_NAME:Ljava/lang/String; = "whilteList"

.field public static final DB_VERSION:I = 0x1


# instance fields
.field public mDb:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic this$0:Lcom/android/server/ibs/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IbsQuickDim;Landroid/content/Context;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p2, "context"    # Landroid/content/Context;

    .line 545
    iput-object p1, p0, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    .line 546
    const-string v0, "SQD_whilte_list"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 543
    iput-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 547
    invoke-virtual {p0}, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 548
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "whilteList"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insert(Landroid/content/ContentValues;)J
    .registers 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 570
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "whilteList"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 552
    const-string v0, "CREATE TABLE IF NOT EXISTS  whilteList(_id INTEGER PRIMARY KEY AUTOINCREMENT,PackageName TEXT,Uid INT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 559
    return-void
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .param p1, "dbase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 564
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 565
    .local v0, "sqlBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "whilteList"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 566
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method
