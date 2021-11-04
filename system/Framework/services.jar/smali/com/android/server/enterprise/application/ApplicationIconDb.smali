.class public Lcom/android/server/enterprise/application/ApplicationIconDb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ApplicationIconDb.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "dmappmgr.db"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IMAGE_DATA:Ljava/lang/String; = "imagedata"

.field public static final NAME_OWNER:Ljava/lang/String; = "nameowner"

.field public static final NEW_NAME:Ljava/lang/String; = "newname"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "ApplicationIcon"

.field private static final TAG:Ljava/lang/String; = "ApplicationIconDb"

.field public static final USER_ID:Ljava/lang/String; = "userid"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    const-string v0, "dmappmgr.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 74
    return-void
.end method

.method private insertNewColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 537
    const-string v0, "INT"

    const-string v1, "%s %s"

    const-string v2, "ALTER TABLE %s ADD COLUMN %s;"

    const-string v3, "ApplicationIcon"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/application/ApplicationIconDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 540
    const/4 v4, 0x2

    :try_start_f
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    new-array v7, v4, [Ljava/lang/Object;

    const-string/jumbo v8, "newname"

    aput-object v8, v7, v6

    const-string v8, "TEXT"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 542
    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    .line 540
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 543
    new-array v5, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "userid"

    aput-object v7, v5, v6

    aput-object v0, v5, v9

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "insertUserId":Ljava/lang/String;
    const-string v7, "%s DEFAULT %s"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v5, v8, v6

    .line 545
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 544
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 546
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v3, v7, v6

    aput-object v5, v7, v9

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 550
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v3, v7, v6

    new-array v3, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "nameowner"

    aput-object v4, v3, v6

    aput-object v0, v3, v9

    .line 552
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v9

    .line 550
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_72
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_72} :catch_73

    .line 556
    .end local v5    # "insertUserId":Ljava/lang/String;
    goto :goto_7e

    .line 553
    :catch_73
    move-exception v0

    .line 554
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "ApplicationIconDb"

    const-string v2, "::insertNewColumns: Exception while table is upgrading "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 558
    .end local v0    # "e":Landroid/database/SQLException;
    :cond_7e
    :goto_7e
    return-void
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "exists":Z
    if-eqz p0, :cond_34

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    .line 498
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

    .line 499
    const/4 v0, 0x1

    .line 503
    goto :goto_34

    .line 500
    :catch_2b
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 502
    const-string v2, "ApplicationIconDb"

    const-string v3, "::isTableExists:Table Does not exists "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_34
    :goto_34
    return v0
.end method


# virtual methods
.method clearApplicationData()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "deletedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 305
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 307
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v1, v3

    .line 308
    if-eqz v1, :cond_35

    .line 310
    const-string v3, "SELECT * FROM ApplicationIcon"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 311
    const-string/jumbo v3, "pkgname"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 312
    .local v3, "columnIndex":I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 314
    :cond_23
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_23

    .line 319
    :cond_30
    const-string v5, "ApplicationIcon"

    invoke-virtual {v1, v5, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_35} :catch_3d
    .catchall {:try_start_7 .. :try_end_35} :catchall_3b

    .line 324
    .end local v3    # "columnIndex":I
    :cond_35
    if-eqz v2, :cond_44

    .line 325
    :goto_37
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_44

    .line 324
    :catchall_3b
    move-exception v3

    goto :goto_45

    .line 321
    :catch_3d
    move-exception v3

    .line 322
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3e
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    .line 324
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v2, :cond_44

    .line 325
    goto :goto_37

    .line 328
    :cond_44
    :goto_44
    return-object v0

    .line 324
    :goto_45
    if-eqz v2, :cond_4a

    .line 325
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_4a
    throw v3
.end method

.method clearApplicationDataForUid(I)Ljava/util/ArrayList;
    .registers 10
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v0, "deletedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 334
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 336
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v1, v3

    .line 337
    if-eqz v1, :cond_56

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM ApplicationIcon WHERE nameowner = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 341
    const-string/jumbo v3, "pkgname"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 342
    .local v3, "columnIndex":I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 344
    :cond_32
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_32

    .line 349
    :cond_3f
    const-string v5, "ApplicationIcon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nameowner = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_56} :catch_5e
    .catchall {:try_start_7 .. :try_end_56} :catchall_5c

    .line 355
    .end local v3    # "columnIndex":I
    :cond_56
    if-eqz v2, :cond_65

    .line 356
    :goto_58
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_65

    .line 355
    :catchall_5c
    move-exception v3

    goto :goto_66

    .line 352
    :catch_5e
    move-exception v3

    .line 353
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_5f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_5c

    .line 355
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v2, :cond_65

    .line 356
    goto :goto_58

    .line 359
    :cond_65
    :goto_65
    return-object v0

    .line 355
    :goto_66
    if-eqz v2, :cond_6b

    .line 356
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_6b
    throw v3
.end method

.method deleteApplicationIcon(Ljava/lang/String;I)Z
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 131
    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    const-string/jumbo v3, "nameowner"

    const-string v4, " = "

    const-string v5, "\' AND "

    const/4 v6, 0x0

    .line 132
    .local v6, "success":Z
    const/4 v7, 0x0

    .line 133
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 135
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_101
    .catchall {:try_start_e .. :try_end_12} :catchall_fd

    move-object v7, v0

    .line 136
    if-nez v7, :cond_1c

    .line 137
    const/4 v0, 0x0

    .line 199
    if-eqz v8, :cond_1b

    .line 200
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_1b
    return v0

    .line 141
    :cond_1c
    move-object v9, v3

    .line 142
    .local v9, "selectionParam":Ljava/lang/String;
    move/from16 v10, p2

    .line 144
    .local v10, "selectionValue":I
    :try_start_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    const/4 v11, 0x0

    invoke-virtual {v7, v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 150
    if-eqz v8, :cond_48

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_46} :catch_101
    .catchall {:try_start_1f .. :try_end_46} :catchall_fd

    if-nez v0, :cond_78

    .line 153
    :cond_48
    if-eqz v8, :cond_4f

    .line 155
    :try_start_4a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_fd

    .line 157
    goto :goto_4f

    .line 156
    :catch_4e
    move-exception v0

    .line 160
    :cond_4f
    :goto_4f
    :try_start_4f
    const-string/jumbo v0, "userid"

    move-object v9, v0

    .line 161
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v10, v0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v7, v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 170
    :cond_78
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 171
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_86} :catch_101
    .catchall {:try_start_4f .. :try_end_86} :catchall_fd

    .line 174
    .local v0, "ownerUid":I
    if-eqz v0, :cond_8d

    move/from16 v2, p2

    if-ne v0, v2, :cond_f7

    goto :goto_8f

    :cond_8d
    move/from16 v2, p2

    .line 176
    :goto_8f
    :try_start_8f
    const-string/jumbo v3, "newname"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9a} :catch_f3
    .catchall {:try_start_8f .. :try_end_9a} :catchall_10b

    .line 177
    .local v3, "newName":Ljava/lang/String;
    const-string/jumbo v12, "pkgname = \'"

    const-string v13, "ApplicationIcon"

    if-eqz v3, :cond_cf

    .line 178
    :try_start_a1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v15, "imagedata"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 180
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v13, v14, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 183
    .local v4, "count":I
    if-lez v4, :cond_ce

    .line 184
    const/4 v6, 0x1

    .line 185
    .end local v4    # "count":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_ce
    goto :goto_f7

    .line 186
    :cond_cf
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v13, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ee} :catch_f3
    .catchall {:try_start_a1 .. :try_end_ee} :catchall_10b

    .line 191
    .restart local v4    # "count":I
    if-lez v4, :cond_f7

    .line 192
    const/4 v5, 0x1

    move v6, v5

    .end local v6    # "success":Z
    .local v5, "success":Z
    goto :goto_f7

    .line 196
    .end local v0    # "ownerUid":I
    .end local v3    # "newName":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v5    # "success":Z
    .end local v9    # "selectionParam":Ljava/lang/String;
    .end local v10    # "selectionValue":I
    .restart local v6    # "success":Z
    :catch_f3
    move-exception v0

    goto :goto_104

    .line 170
    .restart local v9    # "selectionParam":Ljava/lang/String;
    .restart local v10    # "selectionValue":I
    :cond_f5
    move/from16 v2, p2

    .line 199
    .end local v9    # "selectionParam":Ljava/lang/String;
    .end local v10    # "selectionValue":I
    :cond_f7
    :goto_f7
    if-eqz v8, :cond_10a

    .line 200
    :goto_f9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_10a

    .line 199
    :catchall_fd
    move-exception v0

    move/from16 v2, p2

    goto :goto_10c

    .line 196
    :catch_101
    move-exception v0

    move/from16 v2, p2

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    :goto_104
    :try_start_104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_10b

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_10a

    .line 200
    goto :goto_f9

    .line 204
    :cond_10a
    :goto_10a
    return v6

    .line 199
    :catchall_10b
    move-exception v0

    :goto_10c
    if-eqz v8, :cond_111

    .line 200
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_111
    throw v0
.end method

.method deleteApplicationName(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 259
    const-string v0, " = "

    const-string/jumbo v1, "nameowner"

    const-string v2, "\' AND "

    const/4 v3, 0x0

    .line 260
    .local v3, "success":Z
    const/4 v4, 0x0

    .line 261
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 263
    .local v5, "cursor":Landroid/database/Cursor;
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_e} :catch_ac
    .catchall {:try_start_a .. :try_end_e} :catchall_aa

    move-object v4, v6

    .line 264
    if-nez v4, :cond_18

    .line 265
    const/4 v0, 0x0

    .line 295
    if-eqz v5, :cond_17

    .line 296
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_17
    return v0

    .line 267
    :cond_18
    :try_start_18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 268
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v5, v6

    .line 272
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 273
    const-string/jumbo v6, "imagedata"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_4c} :catch_ac
    .catchall {:try_start_18 .. :try_end_4c} :catchall_aa

    .line 274
    .local v6, "icon":[B
    const-string/jumbo v8, "pkgname = \'"

    const-string v9, "ApplicationIcon"

    if-eqz v6, :cond_81

    .line 275
    :try_start_53
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "newname"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 277
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v10, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 280
    .local v0, "count":I
    if-lez v0, :cond_80

    .line 281
    const/4 v3, 0x1

    .line 282
    .end local v0    # "count":I
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_80
    goto :goto_a4

    .line 283
    :cond_81
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_a0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_a0} :catch_ac
    .catchall {:try_start_53 .. :try_end_a0} :catchall_aa

    .line 288
    .restart local v0    # "count":I
    if-lez v0, :cond_a4

    .line 289
    const/4 v1, 0x1

    move v3, v1

    .line 295
    .end local v0    # "count":I
    .end local v6    # "icon":[B
    :cond_a4
    :goto_a4
    if-eqz v5, :cond_b3

    .line 296
    :goto_a6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_b3

    .line 295
    :catchall_aa
    move-exception v0

    goto :goto_b4

    .line 292
    :catch_ac
    move-exception v0

    .line 293
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_ad
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_aa

    .line 295
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v5, :cond_b3

    .line 296
    goto :goto_a6

    .line 299
    :cond_b3
    :goto_b3
    return v3

    .line 295
    :goto_b4
    if-eqz v5, :cond_b9

    .line 296
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_b9
    throw v0
.end method

.method getApplicationIcon(Ljava/lang/String;I)[B
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 437
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 439
    .local v2, "bitmapData":[B
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_57
    .catchall {:try_start_3 .. :try_end_7} :catchall_55

    move-object v1, v3

    .line 440
    const/4 v3, 0x0

    if-nez v1, :cond_12

    .line 441
    nop

    .line 457
    if-eqz v0, :cond_11

    .line 458
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_11
    return-object v3

    .line 443
    :cond_12
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "userid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 447
    if-eqz v0, :cond_4f

    .line 448
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 449
    const-string/jumbo v3, "imagedata"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4e} :catch_57
    .catchall {:try_start_12 .. :try_end_4e} :catchall_55

    move-object v2, v3

    .line 457
    :cond_4f
    if-eqz v0, :cond_77

    .line 458
    :goto_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_77

    .line 457
    :catchall_55
    move-exception v3

    goto :goto_78

    .line 453
    :catch_57
    move-exception v3

    .line 454
    .local v3, "e":Ljava/lang/Exception;
    :try_start_58
    const-string v4, "ApplicationIconDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getApplicationIcon  : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_55

    .line 457
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_77

    .line 458
    goto :goto_51

    .line 460
    :cond_77
    :goto_77
    return-object v2

    .line 457
    :goto_78
    if-eqz v0, :cond_7d

    .line 458
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_7d
    throw v3
.end method

.method getApplicationIconChangedMap()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 365
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v2, "mapChangedIcon":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_7a
    .catchall {:try_start_7 .. :try_end_b} :catchall_78

    move-object v1, v3

    .line 369
    if-nez v1, :cond_15

    .line 370
    nop

    .line 392
    if-eqz v0, :cond_14

    .line 393
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_14
    return-object v2

    .line 372
    :cond_15
    :try_start_15
    const-string v3, "SELECT * FROM ApplicationIcon WHERE imagedata IS NOT NULL"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 374
    if-eqz v0, :cond_72

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_72

    .line 375
    :goto_25
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 376
    const-string/jumbo v3, "imagedata"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 377
    .local v3, "blob":[B
    if-eqz v3, :cond_71

    .line 378
    const-string/jumbo v4, "userid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 379
    .local v4, "userId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_59

    .line 380
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_59
    const-string/jumbo v5, "pkgname"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "pkgName":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_71} :catch_7a
    .catchall {:try_start_15 .. :try_end_71} :catchall_78

    .line 385
    .end local v3    # "blob":[B
    .end local v4    # "userId":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_71
    goto :goto_25

    .line 392
    :cond_72
    if-eqz v0, :cond_9a

    .line 393
    :goto_74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_9a

    .line 392
    :catchall_78
    move-exception v3

    goto :goto_9b

    .line 388
    :catch_7a
    move-exception v3

    .line 389
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7b
    const-string v4, "ApplicationIconDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getApplicationIconChangedMap  : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_7b .. :try_end_96} :catchall_78

    .line 392
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_9a

    .line 393
    goto :goto_74

    .line 395
    :cond_9a
    :goto_9a
    return-object v2

    .line 392
    :goto_9b
    if-eqz v0, :cond_a0

    .line 393
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_a0
    throw v3
.end method

.method getApplicationName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 467
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 469
    .local v2, "newName":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_57
    .catchall {:try_start_3 .. :try_end_7} :catchall_55

    move-object v1, v3

    .line 471
    const/4 v3, 0x0

    if-nez v1, :cond_12

    .line 472
    nop

    .line 488
    if-eqz v0, :cond_11

    .line 489
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_11
    return-object v3

    .line 474
    :cond_12
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "userid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 478
    if-eqz v0, :cond_4f

    .line 479
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 480
    const-string/jumbo v3, "newname"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4e} :catch_57
    .catchall {:try_start_12 .. :try_end_4e} :catchall_55

    move-object v2, v3

    .line 488
    :cond_4f
    if-eqz v0, :cond_77

    .line 489
    :goto_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_77

    .line 488
    :catchall_55
    move-exception v3

    goto :goto_78

    .line 484
    :catch_57
    move-exception v3

    .line 485
    .local v3, "e":Ljava/lang/Exception;
    :try_start_58
    const-string v4, "ApplicationIconDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getApplicationName  : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_55

    .line 488
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_77

    .line 489
    goto :goto_51

    .line 491
    :cond_77
    :goto_77
    return-object v2

    .line 488
    :goto_78
    if-eqz v0, :cond_7d

    .line 489
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_7d
    throw v3
.end method

.method getApplicationNameChangedMap()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 401
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 404
    .local v2, "mapChangedName":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_7a
    .catchall {:try_start_7 .. :try_end_b} :catchall_78

    move-object v1, v3

    .line 405
    if-nez v1, :cond_15

    .line 406
    nop

    .line 428
    if-eqz v0, :cond_14

    .line 429
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_14
    return-object v2

    .line 408
    :cond_15
    :try_start_15
    const-string v3, "SELECT * FROM ApplicationIcon WHERE newname IS NOT NULL"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 410
    if-eqz v0, :cond_72

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_72

    .line 411
    :goto_25
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 412
    const-string/jumbo v3, "newname"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "newname":Ljava/lang/String;
    if-eqz v3, :cond_71

    .line 414
    const-string/jumbo v4, "userid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 415
    .local v4, "userId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_59

    .line 416
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_59
    const-string/jumbo v5, "pkgname"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "pkgName":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_71} :catch_7a
    .catchall {:try_start_15 .. :try_end_71} :catchall_78

    .line 421
    .end local v3    # "newname":Ljava/lang/String;
    .end local v4    # "userId":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_71
    goto :goto_25

    .line 428
    :cond_72
    if-eqz v0, :cond_9a

    .line 429
    :goto_74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_9a

    .line 428
    :catchall_78
    move-exception v3

    goto :goto_9b

    .line 424
    :catch_7a
    move-exception v3

    .line 425
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7b
    const-string v4, "ApplicationIconDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getApplicationNameChangedMap  : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_7b .. :try_end_96} :catchall_78

    .line 428
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_9a

    .line 429
    goto :goto_74

    .line 431
    :cond_9a
    :goto_9a
    return-object v2

    .line 428
    :goto_9b
    if-eqz v0, :cond_a0

    .line 429
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 430
    :cond_a0
    throw v3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 510
    const-string v0, "ApplicationIconDb"

    const-string v1, "ApplicationIcon"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 512
    :try_start_a
    const-string v1, " (_id integer primary key autoincrement, pkgname text, imagedata BLOB, newname text, userid int, nameowner int);"

    .line 519
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table ApplicationIcon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 520
    const-string v2, "::onCreate: Table is Created "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_25} :catch_27

    .line 525
    nop

    .end local v1    # "s":Ljava/lang/String;
    goto :goto_34

    .line 522
    :catch_27
    move-exception v1

    .line 523
    .local v1, "e":Landroid/database/SQLException;
    const-string v2, "::onCreate: Exception while table is creating "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    .line 525
    .end local v1    # "e":Landroid/database/SQLException;
    goto :goto_34

    .line 527
    :cond_31
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->insertNewColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 529
    :goto_34
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 534
    return-void
.end method

.method updateApplicationIcon(Ljava/lang/String;[BI)Z
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "imageData"    # [B
    .param p3, "uid"    # I

    .line 78
    move-object/from16 v1, p1

    const-string v0, "_id"

    const-string/jumbo v2, "nameowner"

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 79
    .local v3, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 80
    .local v13, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v14, "ApplicationIconDb"

    const/4 v15, 0x0

    if-nez v13, :cond_1b

    .line 81
    const-string/jumbo v0, "updateApplicationIcon(): null db"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v15

    .line 85
    :cond_1b
    :try_start_1b
    const-string v5, "ApplicationIcon"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pkgname = ? AND userid= ?"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    aput-object v1, v8, v15

    .line 88
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v16, "1"

    .line 85
    move-object v4, v13

    move-object/from16 v12, v16

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_3c
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_3c} :catch_fc

    .line 89
    .local v4, "cursor":Landroid/database/Cursor;
    if-nez v4, :cond_4b

    .line 90
    :try_start_3e
    const-string/jumbo v0, "updateApplicationIcon(): null cursor"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_e8

    .line 91
    nop

    .line 124
    if-eqz v4, :cond_4a

    :try_start_47
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catch Landroid/database/SQLException; {:try_start_47 .. :try_end_4a} :catch_fc

    .line 91
    :cond_4a
    return v15

    .line 93
    :cond_4b
    :try_start_4b
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "imagedata"
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_e8

    move-object/from16 v7, p2

    :try_start_55
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 95
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_e6

    const-wide/16 v8, 0x0

    const-string v10, "ApplicationIcon"

    if-nez v6, :cond_8b

    .line 99
    :try_start_69
    const-string/jumbo v0, "userid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string/jumbo v0, "pkgname"

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {v13, v10, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10
    :try_end_7e
    .catchall {:try_start_69 .. :try_end_7e} :catchall_e6

    .line 102
    .local v10, "count":J
    cmp-long v0, v10, v8

    if-lez v0, :cond_84

    const/4 v12, 0x1

    goto :goto_85

    :cond_84
    move v12, v15

    .line 124
    :goto_85
    if-eqz v4, :cond_8a

    :try_start_87
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_8a
    .catch Landroid/database/SQLException; {:try_start_87 .. :try_end_8a} :catch_9e

    .line 102
    :cond_8a
    return v12

    .line 106
    .end local v10    # "count":J
    :cond_8b
    :try_start_8b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_a1

    .line 107
    const-string/jumbo v0, "updateApplicationIcon(): moveToFirst error!"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_e6

    .line 108
    nop

    .line 124
    if-eqz v4, :cond_a0

    :try_start_9a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_9d
    .catch Landroid/database/SQLException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_a0

    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v5    # "values":Landroid/content/ContentValues;
    :catch_9e
    move-exception v0

    goto :goto_ff

    .line 108
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_a0
    :goto_a0
    return v15

    .line 110
    :cond_a1
    :try_start_a1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 112
    .local v0, "id":I
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_b1
    .catchall {:try_start_a1 .. :try_end_b1} :catchall_e6

    .line 116
    .local v2, "ownerUid":I
    if-eqz v2, :cond_c4

    move/from16 v6, p3

    if-eq v2, v6, :cond_c6

    .line 117
    :try_start_b7
    const-string/jumbo v8, "updateApplicationIcon(): invalid ownerUid"

    invoke-static {v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_e4

    .line 118
    nop

    .line 124
    if-eqz v4, :cond_c3

    :try_start_c0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_c3
    .catch Landroid/database/SQLException; {:try_start_c0 .. :try_end_c3} :catch_fa

    .line 118
    :cond_c3
    return v15

    .line 116
    :cond_c4
    move/from16 v6, p3

    .line 121
    :cond_c6
    :try_start_c6
    const-string v11, "_id = ?"

    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/String;

    .line 122
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v15

    .line 121
    invoke-virtual {v13, v10, v5, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8
    :try_end_d5
    .catchall {:try_start_c6 .. :try_end_d5} :catchall_e4

    int-to-long v8, v8

    .line 123
    .local v8, "count":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_dd

    goto :goto_de

    :cond_dd
    move v12, v15

    .line 124
    :goto_de
    if-eqz v4, :cond_e3

    :try_start_e0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_e3
    .catch Landroid/database/SQLException; {:try_start_e0 .. :try_end_e3} :catch_fa

    .line 123
    :cond_e3
    return v12

    .line 85
    .end local v0    # "id":I
    .end local v2    # "ownerUid":I
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v8    # "count":J
    :catchall_e4
    move-exception v0

    goto :goto_ed

    :catchall_e6
    move-exception v0

    goto :goto_eb

    :catchall_e8
    move-exception v0

    move-object/from16 v7, p2

    :goto_eb
    move/from16 v6, p3

    :goto_ed
    move-object v2, v0

    if-eqz v4, :cond_f9

    :try_start_f0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_f4

    goto :goto_f9

    :catchall_f4
    move-exception v0

    move-object v5, v0

    :try_start_f6
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "userId":I
    .end local v13    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/android/server/enterprise/application/ApplicationIconDb;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "imageData":[B
    .end local p3    # "uid":I
    :cond_f9
    :goto_f9
    throw v2
    :try_end_fa
    .catch Landroid/database/SQLException; {:try_start_f6 .. :try_end_fa} :catch_fa

    .line 124
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "userId":I
    .restart local v13    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/android/server/enterprise/application/ApplicationIconDb;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "imageData":[B
    .restart local p3    # "uid":I
    :catch_fa
    move-exception v0

    goto :goto_101

    :catch_fc
    move-exception v0

    move-object/from16 v7, p2

    :goto_ff
    move/from16 v6, p3

    .line 125
    .local v0, "e":Landroid/database/SQLException;
    :goto_101
    const-string/jumbo v2, "updateApplicationIcon(): SQLException - "

    invoke-static {v14, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    return v15
.end method

.method updateApplicationName(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 209
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, " = "

    const-string v3, "\' AND "

    const-string/jumbo v4, "userid"

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 210
    .local v5, "userId":I
    const/4 v6, 0x0

    .line 211
    .local v6, "success":Z
    const/4 v7, 0x0

    .line 212
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 214
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_16} :catch_cd
    .catchall {:try_start_12 .. :try_end_16} :catchall_c9

    move-object v8, v9

    .line 215
    if-nez v8, :cond_20

    .line 216
    const/4 v0, 0x0

    .line 252
    if-eqz v7, :cond_1f

    .line 253
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_1f
    return v0

    .line 218
    :cond_20
    :try_start_20
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 219
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    move-object v7, v9

    .line 223
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_47} :catch_cd
    .catchall {:try_start_20 .. :try_end_47} :catchall_c9

    const-string v11, "ApplicationIcon"

    const-string/jumbo v12, "newname"

    const-string/jumbo v13, "nameowner"

    if-eqz v9, :cond_98

    .line 224
    :try_start_51
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9
    :try_end_59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_51 .. :try_end_59} :catch_cd
    .catchall {:try_start_51 .. :try_end_59} :catchall_c9

    .line 227
    .local v9, "ownerUid":I
    if-eqz v9, :cond_60

    move/from16 v14, p3

    if-ne v9, v14, :cond_97

    goto :goto_62

    :cond_60
    move/from16 v14, p3

    .line 229
    :goto_62
    :try_start_62
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v15, "values":Landroid/content/ContentValues;
    invoke-virtual {v15, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pkgname = \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v15, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "count":I
    if-lez v0, :cond_97

    .line 236
    const/4 v3, 0x1

    move v6, v3

    .line 238
    .end local v0    # "count":I
    .end local v9    # "ownerUid":I
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_97
    goto :goto_c1

    .line 239
    :cond_98
    move/from16 v14, p3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "pkgname"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    invoke-virtual {v8, v11, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3
    :try_end_ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_62 .. :try_end_ba} :catch_c7
    .catchall {:try_start_62 .. :try_end_ba} :catchall_d7

    .line 245
    .local v3, "count":J
    const-wide/16 v9, 0x0

    cmp-long v9, v9, v3

    if-gez v9, :cond_c1

    .line 246
    const/4 v6, 0x1

    .line 252
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v3    # "count":J
    :cond_c1
    :goto_c1
    if-eqz v7, :cond_d6

    .line 253
    :goto_c3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_d6

    .line 249
    :catch_c7
    move-exception v0

    goto :goto_d0

    .line 252
    :catchall_c9
    move-exception v0

    move/from16 v14, p3

    goto :goto_d8

    .line 249
    :catch_cd
    move-exception v0

    move/from16 v14, p3

    .line 250
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_d0
    :try_start_d0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d7

    .line 252
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v7, :cond_d6

    .line 253
    goto :goto_c3

    .line 255
    :cond_d6
    :goto_d6
    return v6

    .line 252
    :catchall_d7
    move-exception v0

    :goto_d8
    if-eqz v7, :cond_dd

    .line 253
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_dd
    throw v0
.end method
