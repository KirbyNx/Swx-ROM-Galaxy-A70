.class public Lcom/samsung/android/server/audio/AudioSettingsHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AudioSettingsHelper.java"


# static fields
.field private static final APP_VOLUME_TABLE:Ljava/lang/String; = "app_volume"

.field private static final CATEGORY_TABLE:Ljava/lang/String; = "category_packages"

.field private static final DB_NAME:Ljava/lang/String; = "audioservice_sec.db"

.field private static final DB_VERSION:I = 0x9

.field private static final DEVICE_ADDR_TABLE:Ljava/lang/String; = "device_addr"

.field private static final PACKAGE_TABLE:Ljava/lang/String; = "selectedpkg"

.field private static final SETTINGS_TABLE:Ljava/lang/String; = "audio_settings"

.field private static final TAG:Ljava/lang/String; = "AudioService.DB"

.field private static final _ADDR:Ljava/lang/String; = "_addr"

.field private static final _CATEGORY:Ljava/lang/String; = "_category"

.field private static final _ID:Ljava/lang/String; = "_id"

.field private static final _INDEX:Ljava/lang/String; = "_index"

.field private static final _KEY:Ljava/lang/String; = "_key"

.field private static final _PACKAGE:Ljava/lang/String; = "_package"

.field private static final _UID:Ljava/lang/String; = "_uid"

.field private static final _VALUE:Ljava/lang/String; = "_value"

.field private static sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const-string v0, "audioservice_sec.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    return-void
.end method

.method public static destroy()V
    .registers 1

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 80
    return-void
.end method

.method private enableSyncParentSound()V
    .registers 7

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 216
    .local v0, "userManager":Landroid/os/UserManager;
    if-nez v0, :cond_d

    return-void

    .line 217
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 218
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 219
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "sync_parent_sounds"

    const/4 v4, 0x1

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3c

    .line 221
    return-void

    .line 223
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3a
    goto :goto_19

    .line 226
    .end local v0    # "userManager":Landroid/os/UserManager;
    :cond_3b
    goto :goto_44

    .line 224
    :catch_3c
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AudioService.DB"

    const-string v2, "Enable sync sound error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;

    monitor-enter v0

    .line 71
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    if-nez v1, :cond_e

    .line 72
    new-instance v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 74
    :cond_e
    sget-object v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 70
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I
    .registers 15
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "columnIndex"    # I
    .param p5, "defaultValue"    # I

    .line 242
    move v0, p5

    .line 243
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_e} :catch_32

    .line 244
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2c

    :try_start_10
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 246
    invoke-interface {v1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_20

    move v0, v2

    goto :goto_2c

    .line 243
    :catchall_20
    move-exception v2

    if-eqz v1, :cond_2b

    :try_start_23
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v3

    :try_start_28
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":I
    .end local p0    # "this":Lcom/samsung/android/server/audio/AudioSettingsHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "columns":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "columnIndex":I
    .end local p5    # "defaultValue":I
    :cond_2b
    :goto_2b
    throw v2

    .line 248
    .restart local v0    # "result":I
    .restart local p0    # "this":Lcom/samsung/android/server/audio/AudioSettingsHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "columns":[Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    .restart local p4    # "columnIndex":I
    .restart local p5    # "defaultValue":I
    :cond_2c
    :goto_2c
    if-eqz v1, :cond_31

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_31} :catch_32

    .line 250
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_31
    goto :goto_36

    .line 248
    :catch_32
    move-exception v1

    .line 249
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 251
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_36
    return v0
.end method

.method private initSystemVibration(Ljava/lang/String;I)V
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 418
    const/4 v0, 0x1

    .line 419
    .local v0, "needInitialize":Z
    const/4 v1, 0x0

    .line 420
    .local v1, "cursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 422
    .local v2, "cr":Landroid/content/ContentResolver;
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://settings/system/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 425
    if-eqz v1, :cond_5a

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5a

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 426
    const-string v3, "value"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "value":Ljava/lang/String;
    const-string v4, "package"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "pkgs":Ljava/lang/String;
    const-string v5, "android"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "com.android.providers.settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_57} :catch_62
    .catchall {:try_start_8 .. :try_end_57} :catchall_60

    if-nez v5, :cond_5a

    .line 430
    const/4 v0, 0x0

    .line 436
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "pkgs":Ljava/lang/String;
    :cond_5a
    if-eqz v1, :cond_69

    .line 437
    :goto_5c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_69

    .line 436
    :catchall_60
    move-exception v3

    goto :goto_8e

    .line 433
    :catch_62
    move-exception v3

    .line 434
    .local v3, "e":Ljava/lang/Exception;
    :try_start_63
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    .line 436
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_69

    .line 437
    goto :goto_5c

    .line 441
    :cond_69
    :goto_69
    if-eqz v0, :cond_8d

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioService.DB"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v3, -0x2

    invoke-static {v2, p1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 445
    :cond_8d
    return-void

    .line 436
    :goto_8e
    if-eqz v1, :cond_93

    .line 437
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_93
    throw v3
.end method

.method private remove(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "ret":I
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_8} :catch_a

    move v0, v1

    .line 271
    goto :goto_12

    .line 269
    :catch_a
    move-exception v1

    .line 270
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "AudioService.DB"

    const-string v3, "DB error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_12
    return v0
.end method

.method private set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 257
    .local v0, "updateResult":I
    if-gtz v0, :cond_e

    .line 258
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 262
    .end local v0    # "updateResult":I
    :cond_e
    goto :goto_17

    .line 260
    :catch_f
    move-exception v0

    .line 261
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "AudioService.DB"

    const-string v2, "DB error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_17
    return-void
.end method


# virtual methods
.method public checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_package=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "selection":Ljava/lang/String;
    const-string v2, "_package"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "columns":[Ljava/lang/String;
    :try_start_2e
    iget-object v3, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "category_packages"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3b} :catch_5d

    .line 404
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_57

    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_4b

    const/4 v3, 0x1

    if-lt v2, v3, :cond_57

    .line 405
    nop

    .line 407
    if-eqz v1, :cond_4a

    :try_start_47
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_5d

    .line 405
    :cond_4a
    return v3

    .line 403
    :catchall_4b
    move-exception v2

    if-eqz v1, :cond_56

    :try_start_4e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception v3

    :try_start_53
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "selection":Ljava/lang/String;
    .end local v5    # "columns":[Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/server/audio/AudioSettingsHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "category":Ljava/lang/String;
    :cond_56
    :goto_56
    throw v2

    .line 407
    .restart local v0    # "selection":Ljava/lang/String;
    .restart local v5    # "columns":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/server/audio/AudioSettingsHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "category":Ljava/lang/String;
    :cond_57
    if-eqz v1, :cond_5c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5c} :catch_5d

    .line 409
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_5c
    goto :goto_65

    .line 407
    :catch_5d
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AudioService.DB"

    const-string v3, "DB error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_65
    const/4 v1, 0x0

    return v1
.end method

.method public getAppList()Ljava/util/Hashtable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 377
    .local v0, "appList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "category_packages"

    const-string v3, "_package"

    const-string v4, "_category"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_49

    .line 380
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_43

    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 382
    :cond_22
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "category":Ljava/lang/String;
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    nop

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "category":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_37

    if-nez v2, :cond_22

    goto :goto_43

    .line 377
    :catchall_37
    move-exception v2

    if-eqz v1, :cond_42

    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v3

    :try_start_3f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "appList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/server/audio/AudioSettingsHelper;
    :cond_42
    :goto_42
    throw v2

    .line 387
    .restart local v0    # "appList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/server/audio/AudioSettingsHelper;
    :cond_43
    :goto_43
    if-eqz v1, :cond_48

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_49

    .line 389
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_48
    goto :goto_51

    .line 387
    :catch_49
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AudioService.DB"

    const-string v3, "DB error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_51
    return-object v0
.end method

.method public getAppVolume(I)I
    .registers 10
    .param p1, "uid"    # I

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "selection":Ljava/lang/String;
    const-string v1, "_uid"

    const-string v2, "_index"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "app_volume"

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v2, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getBTVolumeIndex(Ljava/lang/String;)I
    .registers 10
    .param p1, "addr"    # Ljava/lang/String;

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_addr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "selection":Ljava/lang/String;
    const-string v1, "_addr"

    const-string v2, "_index"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "device_addr"

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v2, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getBooleanValue(Ljava/lang/String;)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "selection":Ljava/lang/String;
    const-string v1, "_key"

    const-string v2, "_value"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "audio_settings"

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v2, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 278
    .local v1, "ret":I
    if-lez v1, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    return v2
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "selection":Ljava/lang/String;
    const-string v1, "_key"

    const-string v2, "_value"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "audio_settings"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v5, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getPackageList()Ljava/util/Hashtable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 341
    .local v0, "packageList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "selectedpkg"

    const-string v3, "_uid"

    const-string v4, "_package"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_4d

    .line 344
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_47

    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 346
    :cond_22
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 347
    .local v2, "uid":I
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    nop

    .end local v2    # "uid":I
    .end local v3    # "packageName":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_3b

    if-nez v2, :cond_22

    goto :goto_47

    .line 341
    :catchall_3b
    move-exception v2

    if-eqz v1, :cond_46

    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v3

    :try_start_43
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "packageList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/samsung/android/server/audio/AudioSettingsHelper;
    :cond_46
    :goto_46
    throw v2

    .line 351
    .restart local v0    # "packageList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/samsung/android/server/audio/AudioSettingsHelper;
    :cond_47
    :goto_47
    if-eqz v1, :cond_4c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_4d

    .line 353
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_4c
    goto :goto_55

    .line 351
    :catch_4d
    move-exception v1

    .line 352
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AudioService.DB"

    const-string v3, "DB error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_55
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    :try_start_0
    const-string v0, "CREATE TABLE audio_settings (_id INTEGER PRIMARY KEY AUTOINCREMENT, _key TEXT UNIQUE, _value INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v0, "CREATE TABLE device_addr (_id INTEGER PRIMARY KEY AUTOINCREMENT, _addr TEXT UNIQUE, _index INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string v0, "CREATE TABLE app_volume (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTEGER UNIQUE, _index INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v0, "CREATE TABLE selectedpkg (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTERGER, _package TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v0, "CREATE TABLE category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT,_category TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 125
    goto :goto_22

    .line 123
    :catch_1a
    move-exception v0

    .line 124
    .local v0, "ex":Landroid/database/SQLException;
    const-string v1, "AudioService.DB"

    const-string v2, "Create DB Create failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0    # "ex":Landroid/database/SQLException;
    :goto_22
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 231
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 232
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading settings database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService.DB"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    move v0, p2

    .line 142
    .local v0, "upgradeVersion":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 143
    const-string v2, "DROP TABLE IF EXISTS category_packages"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string v2, "CREATE TABLE selectedpkg (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTEGER, _package TEXT);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x2

    .line 154
    :cond_2d
    const/4 v2, 0x2

    if-ne v0, v2, :cond_36

    .line 155
    const-string v2, "CREATE TABLE category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT,_category TEXT);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x3

    .line 165
    :cond_36
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3f

    .line 167
    const-string v2, "delete from device_addr"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x4

    .line 171
    :cond_3f
    const/4 v2, 0x4

    if-ne v0, v2, :cond_43

    .line 173
    const/4 v0, 0x5

    .line 176
    :cond_43
    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v0, v2, :cond_61

    .line 177
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "adjust_media_volume_only"

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 179
    .local v2, "adjustMediaVolumeOnly":I
    if-ne v2, v5, :cond_60

    .line 180
    iget-object v5, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v3, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 183
    :cond_60
    const/4 v0, 0x6

    .line 185
    .end local v2    # "adjustMediaVolumeOnly":I
    :cond_61
    const/4 v2, 0x6

    if-ne v0, v2, :cond_6a

    .line 186
    const-string v2, "update audio_settings set _value = 0 where _key = \'APP_LIST_VERSION\'"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x7

    .line 189
    :cond_6a
    const/4 v2, 0x7

    if-ne v0, v2, :cond_72

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->enableSyncParentSound()V

    .line 191
    const/16 v0, 0x8

    .line 193
    :cond_72
    const/16 v2, 0x8

    if-ne v0, v2, :cond_ad

    .line 194
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 195
    .local v2, "vibrator":Landroid/os/Vibrator;
    if-eqz v2, :cond_ab

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 196
    invoke-virtual {v2}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v4

    if-ne v4, v1, :cond_ab

    .line 197
    sget-boolean v4, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v4, :cond_97

    .line 198
    const-string v4, "haptic_feedback_enabled"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(Ljava/lang/String;I)V

    .line 200
    :cond_97
    const-string v4, "sip_key_feedback_vibration"

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(Ljava/lang/String;I)V

    .line 201
    const-string v3, "dialing_keypad_vibrate"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(Ljava/lang/String;I)V

    .line 202
    const-string v3, "navigation_gestures_vibrate"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(Ljava/lang/String;I)V

    .line 203
    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(Ljava/lang/String;I)V

    .line 205
    :cond_ab
    const/16 v0, 0x9

    .line 207
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_ad
    return-void
.end method

.method public putAppList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .line 394
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, "_category"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_package=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "selection":Ljava/lang/String;
    const-string v2, "category_packages"

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public putPackage(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 358
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 359
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    const-string v1, "_package"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_uid=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "selection":Ljava/lang/String;
    const-string v2, "selectedpkg"

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public removeAppVolume(I)I
    .registers 4
    .param p1, "uid"    # I

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "selection":Ljava/lang/String;
    const-string v1, "app_volume"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public removePackage(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "selection":Ljava/lang/String;
    const-string v1, "selectedpkg"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_package=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "selection":Ljava/lang/String;
    const-string v1, "selectedpkg"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method public removeValue(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "selection":Ljava/lang/String;
    const-string v1, "audio_settings"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public resetAllowedListTable()V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from category_packages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public resetTable()V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from audio_settings"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from device_addr"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from app_volume"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from selectedpkg"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public setAppVolume(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "index"    # I

    .line 327
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 328
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_uid=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "selection":Ljava/lang/String;
    const-string v2, "app_volume"

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public setBTVolumeIndex(Ljava/lang/String;I)V
    .registers 6
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 314
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "_addr"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_addr=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "selection":Ljava/lang/String;
    const-string v2, "device_addr"

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public setBooleanValue(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 288
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 289
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_key=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "selection":Ljava/lang/String;
    const-string v2, "audio_settings"

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 296
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 297
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_key=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "selection":Ljava/lang/String;
    const-string v2, "audio_settings"

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 301
    return-void
.end method
