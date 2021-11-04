.class public Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VpnStorageHelper.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "KnoxVpn.StorageHelper"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "dbVersion"    # I

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 55
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->mContext:Landroid/content/Context;

    .line 62
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Lcom/android/server/enterprise/storage/Table;

    .line 53
    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Lcom/android/server/enterprise/storage/Table;

    .line 53
    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Lcom/android/server/enterprise/storage/Table;

    .line 53
    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 3
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Lcom/android/server/enterprise/storage/Table;

    .line 53
    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .registers 4
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/enterprise/storage/Table;

    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 53
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    return v0
.end method

.method private convertAdminIdToLUID(Landroid/content/ContentValues;)V
    .registers 12
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 497
    const-string v0, "containerID"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 498
    .local v1, "hasContainerId":Z
    const-string v2, "adminUid"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 499
    .local v3, "hasAdminId":Z
    const/4 v4, -0x1

    .line 500
    .local v4, "containerId":I
    const/4 v5, -0x1

    .line 502
    .local v5, "adminId":I
    if-eqz v3, :cond_41

    if-eqz v1, :cond_41

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_41

    .line 503
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_41

    .line 505
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 506
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 507
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 509
    int-to-long v6, v5

    int-to-long v8, v4

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->translateToAdminLUID(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 512
    :cond_41
    return-void
.end method

.method private static createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Lcom/android/server/enterprise/storage/Table;

    .line 173
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 174
    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/Table;->buildTableColumns()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 173
    const-string v2, "CREATE TABLE %s (%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/Table;->buildPrimaryKeys()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "primarykeys":Ljava/lang/String;
    if-eqz v2, :cond_27

    .line 179
    new-array v5, v0, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v2, v5, v4

    const-string v6, "%s, PRIMARY KEY (%s)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_27
    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    if-eqz v5, :cond_4b

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    if-eqz v5, :cond_4b

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    if-eqz v5, :cond_4b

    .line 185
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    iget-object v6, p1, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v6, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    aput-object v6, v5, v0

    const/4 v6, 0x3

    iget-object v7, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    aput-object v7, v5, v6

    const-string v6, "%s FOREIGN KEY (%s) REFERENCES %s(%s) ON DELETE CASCADE ON UPDATE CASCADE"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 190
    :cond_4b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-eqz v5, :cond_81

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    aput-object v5, v0, v3

    iget-object v3, p1, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    .line 192
    const-string/jumbo v3, "onTableFound Created Table %s with Columns %d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "KnoxVpn.StorageHelper"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_81
    return-void
.end method

.method private static getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "table"    # Lcom/android/server/enterprise/storage/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/storage/Table;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/storage/Column;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 160
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/enterprise/storage/Table;->getMissingColumns(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 162
    .local v1, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/storage/Column;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 164
    return-object v1
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "exists":Z
    if-eqz p0, :cond_2d

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2d

    .line 147
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

    .line 148
    const/4 v0, 0x1

    .line 151
    goto :goto_2d

    .line 149
    :catch_2b
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2d
    :goto_2d
    return v0
.end method

.method private static postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Lcom/android/server/enterprise/storage/Table;

    .line 211
    return-void
.end method

.method private static preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Lcom/android/server/enterprise/storage/Table;

    .line 202
    return-void
.end method

.method private static preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Lcom/android/server/enterprise/storage/Table;

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method static translateToAdminLUID(JJ)J
    .registers 7
    .param p0, "adminId"    # J
    .param p2, "containerId"    # J

    .line 517
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_11

    cmp-long v0, p2, v0

    if-gtz v0, :cond_b

    goto :goto_11

    .line 521
    :cond_b
    const/16 v0, 0x20

    shl-long v0, p2, v0

    or-long/2addr v0, p0

    return-wide v0

    .line 518
    :cond_11
    :goto_11
    return-wide p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 11
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "whereColums"    # [Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "result":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 260
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 261
    .local v2, "where":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    array-length v4, p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_55

    if-ge v3, v4, :cond_45

    .line 262
    const-string v4, "=?"

    if-nez v2, :cond_29

    .line 263
    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v5

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 266
    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 270
    .end local v3    # "i":I
    :cond_45
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    invoke-virtual {v1, p1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_51} :catch_55

    if-lez v3, :cond_54

    .line 271
    const/4 v0, 0x1

    .line 277
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "where":Ljava/lang/StringBuilder;
    :cond_54
    goto :goto_60

    .line 274
    :catch_55
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpn.StorageHelper"

    const-string v3, "delete operation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_60
    return v0
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 12
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "where":Ljava/lang/String;
    const/4 v1, 0x0

    .line 425
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    if-eqz p2, :cond_38

    if-nez p3, :cond_8

    goto :goto_38

    .line 428
    :cond_8
    :try_start_8
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    .line 429
    array-length v3, p2

    move v4, v2

    :goto_10
    if-ge v4, v3, :cond_2c

    aget-object v5, p2, v4

    .line 430
    .local v5, "column":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "= ? AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    nop

    .end local v5    # "column":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 432
    :cond_2c
    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_39

    .line 426
    :cond_38
    :goto_38
    const/4 p3, 0x0

    .line 434
    :goto_39
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 436
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3, p1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_46

    if-lez v4, :cond_45

    .line 437
    const/4 v2, 0x1

    return v2

    .line 441
    .end local v0    # "where":Ljava/lang/String;
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_45
    goto :goto_4e

    .line 439
    :catch_46
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxVpn.StorageHelper"

    const-string v3, "could not execute deleteDataByFields"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4e
    return v2
.end method

.method public doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    const-string v1, "KnoxVpn.StorageHelper"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doTableCreationOrUpdate Starting + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1e
    :try_start_1e
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_26
    .catchall {:try_start_1e .. :try_end_23} :catchall_24

    .line 139
    goto :goto_2d

    .line 135
    :catchall_24
    move-exception v0

    goto :goto_4a

    .line 133
    :catch_26
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    :try_start_27
    const-string v2, "doTableCreationOrUpdate EX:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    .line 139
    nop

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doTableCreationOrUpdate Done + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_49
    return-void

    .line 139
    :goto_4a
    throw v0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 22
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "returnColumns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 453
    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 454
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 455
    .local v11, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v12, 0x0

    .line 456
    .local v12, "count":I
    const/4 v2, 0x0

    .line 457
    .local v2, "where":Ljava/lang/String;
    const/4 v3, 0x0

    .line 458
    .local v3, "buf":Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .line 461
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_54

    if-nez p3, :cond_15

    goto :goto_54

    .line 465
    :cond_15
    :try_start_15
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v0

    .line 466
    array-length v0, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1e
    if-ge v5, v0, :cond_3a

    aget-object v6, v1, v5

    .line 467
    .local v6, "column":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "= ? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    nop

    .end local v6    # "column":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 469
    :cond_3a
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_44} :catch_50
    .catchall {:try_start_15 .. :try_end_44} :catchall_4b

    move-object v2, v0

    move-object/from16 v14, p3

    move-object v15, v2

    move-object/from16 v16, v3

    goto :goto_59

    .line 486
    :catchall_4b
    move-exception v0

    move-object/from16 v14, p3

    goto/16 :goto_b7

    .line 483
    :catch_50
    move-exception v0

    move-object/from16 v14, p3

    goto :goto_a5

    .line 462
    :cond_54
    :goto_54
    const/4 v0, 0x0

    move-object v14, v0

    move-object v15, v2

    move-object/from16 v16, v3

    .line 472
    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "buf":Ljava/lang/StringBuffer;
    .end local p3    # "sValues":[Ljava/lang/String;
    .local v14, "sValues":[Ljava/lang/String;
    .local v15, "where":Ljava/lang/String;
    .local v16, "buf":Ljava/lang/StringBuffer;
    :goto_59
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object v5, v15

    move-object v6, v14

    :try_start_63
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v13, v0

    .line 474
    if-eqz v13, :cond_96

    .line 475
    :goto_6a
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 476
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_79
    invoke-interface {v13}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v0, v2, :cond_93

    .line 478
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_90} :catch_a1
    .catchall {:try_start_63 .. :try_end_90} :catchall_9c

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 480
    .end local v0    # "i":I
    :cond_93
    add-int/lit8 v12, v12, 0x1

    goto :goto_6a

    .line 486
    :cond_96
    if-eqz v13, :cond_b5

    .line 487
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_b5

    .line 486
    :catchall_9c
    move-exception v0

    move-object v2, v15

    move-object/from16 v3, v16

    goto :goto_b7

    .line 483
    :catch_a1
    move-exception v0

    move-object v2, v15

    move-object/from16 v3, v16

    .line 484
    .end local v15    # "where":Ljava/lang/String;
    .end local v16    # "buf":Ljava/lang/StringBuffer;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "where":Ljava/lang/String;
    .restart local v3    # "buf":Ljava/lang/StringBuffer;
    :goto_a5
    :try_start_a5
    const-string v4, "KnoxVpn.StorageHelper"

    const-string v5, "could not execute getDataByFields"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_b6

    .line 486
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v13, :cond_b2

    .line 487
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_b2
    move-object v15, v2

    move-object/from16 v16, v3

    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "buf":Ljava/lang/StringBuffer;
    .restart local v15    # "where":Ljava/lang/String;
    .restart local v16    # "buf":Ljava/lang/StringBuffer;
    :cond_b5
    :goto_b5
    return-object v11

    .line 486
    .end local v15    # "where":Ljava/lang/String;
    .end local v16    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "where":Ljava/lang/String;
    .restart local v3    # "buf":Ljava/lang/StringBuffer;
    :catchall_b6
    move-exception v0

    :goto_b7
    if-eqz v13, :cond_bc

    .line 487
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 489
    :cond_bc
    throw v0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 9
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "result":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 236
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_12

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    .line 237
    const/4 v0, 0x1

    .line 243
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_11
    goto :goto_1e

    .line 240
    :catch_12
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpn.StorageHelper"

    const-string/jumbo v3, "insert operation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    return v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 91
    goto :goto_10

    .line 89
    :catch_8
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxVpn.StorageHelper"

    const-string v2, "Foreign Key Config failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    const-string v0, "KnoxVpn.StorageHelper"

    const-string/jumbo v1, "onCreate is called .."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 81
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 82
    :cond_7
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 75
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpgrade from : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxVpn.StorageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    return-void
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 15
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "cv"    # Landroid/content/ContentValues;

    .line 390
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 392
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 393
    const/4 v2, 0x1

    if-eqz p2, :cond_43

    if-eqz p3, :cond_43

    .line 394
    const/4 v3, 0x0

    .line 395
    .local v3, "where":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 396
    .local v4, "buf":Ljava/lang/StringBuffer;
    array-length v5, p2

    move v6, v0

    :goto_15
    if-ge v6, v5, :cond_31

    aget-object v7, p2, v6

    .line 397
    .local v7, "column":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "= ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    nop

    .end local v7    # "column":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 399
    :cond_31
    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 401
    invoke-virtual {v1, p1, p4, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_43

    .line 402
    return v2

    .line 406
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "buf":Ljava/lang/StringBuffer;
    :cond_43
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_50

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4f

    .line 407
    return v2

    .line 411
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4f
    goto :goto_67

    .line 409
    :catch_50
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not execute putDataByFields"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KnoxVpn.StorageHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_67
    return v0
.end method

.method public declared-synchronized query(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .param p1, "tableName"    # Ljava/lang/String;

    monitor-enter p0

    .line 289
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 289
    .end local p0    # "this":Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;
    .end local p1    # "tableName":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;

    monitor-enter p0

    .line 299
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 299
    .end local p0    # "this":Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;
    .end local p1    # "tableName":Ljava/lang/String;
    .end local p2    # "columns":[Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "whereColums"    # [Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    monitor-enter p0

    .line 313
    const/4 v0, 0x0

    .line 315
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 316
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 317
    .local v2, "where":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_4c

    .line 318
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    array-length v4, p3

    if-ge v3, v4, :cond_4a

    .line 319
    if-nez v2, :cond_2c

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v4

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 323
    .end local p0    # "this":Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;
    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_4a
    move-object v10, v2

    goto :goto_4d

    .line 317
    .end local v3    # "i":I
    :cond_4c
    move-object v10, v2

    .line 327
    .end local v2    # "where":Ljava/lang/StringBuilder;
    .local v10, "where":Ljava/lang/StringBuilder;
    :goto_4d
    nop

    .line 328
    if-eqz v10, :cond_55

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_56

    :cond_55
    const/4 v2, 0x0

    :goto_56
    move-object v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 327
    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_62} :catch_66
    .catchall {:try_start_2 .. :try_end_62} :catchall_64

    move-object v0, v2

    .line 337
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "where":Ljava/lang/StringBuilder;
    goto :goto_77

    .line 312
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p1    # "tableName":Ljava/lang/String;
    .end local p2    # "columns":[Ljava/lang/String;
    .end local p3    # "whereColums":[Ljava/lang/String;
    .end local p4    # "whereArgs":[Ljava/lang/String;
    :catchall_64
    move-exception p1

    goto :goto_79

    .line 330
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "tableName":Ljava/lang/String;
    .restart local p2    # "columns":[Ljava/lang/String;
    .restart local p3    # "whereColums":[Ljava/lang/String;
    .restart local p4    # "whereArgs":[Ljava/lang/String;
    :catch_66
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    :try_start_67
    const-string v2, "KnoxVpn.StorageHelper"

    const-string v3, "Failed on query"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz v0, :cond_77

    .line 333
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 334
    const/4 v0, 0x0

    .line 335
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_67 .. :try_end_77} :catchall_64

    .line 338
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_77
    :goto_77
    monitor-exit p0

    return-object v0

    .line 312
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p1    # "tableName":Ljava/lang/String;
    .end local p2    # "columns":[Ljava/lang/String;
    .end local p3    # "whereColums":[Ljava/lang/String;
    .end local p4    # "whereArgs":[Ljava/lang/String;
    :goto_79
    monitor-exit p0

    throw p1
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 12
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "whereColums"    # [Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, "result":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 358
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 359
    .local v2, "where":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    array-length v4, p3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_55

    if-ge v3, v4, :cond_45

    .line 360
    const-string v4, "=?"

    if-nez v2, :cond_29

    .line 361
    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v5

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 364
    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 368
    .end local v3    # "i":I
    :cond_45
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    invoke-virtual {v1, p1, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_51} :catch_55

    if-lez v3, :cond_54

    .line 370
    const/4 v0, 0x1

    .line 376
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "where":Ljava/lang/StringBuilder;
    :cond_54
    goto :goto_61

    .line 373
    :catch_55
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpn.StorageHelper"

    const-string/jumbo v3, "update operation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_61
    return v0
.end method
