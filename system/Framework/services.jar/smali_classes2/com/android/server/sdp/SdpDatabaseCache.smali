.class public Lcom/android/server/sdp/SdpDatabaseCache;
.super Ljava/lang/Object;
.source "SdpDatabaseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USER:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DATABASE_NAME:Ljava/lang/String; = "sdp.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final INT_CACHE_SIZE:I = 0xa

.field private static final MAX_CACHE_SIZE:I = 0x1e

.field private static final TABLE:Ljava/lang/String; = "sdp_info"

.field private static final TAG:Ljava/lang/String; = "SdpDatabaseCache"


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDatabaseHelper:Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/server/sdp/SdpDatabaseCache$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/sdp/SdpDatabaseCache$1;-><init>(Lcom/android/server/sdp/SdpDatabaseCache;IFZ)V

    iput-object v0, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 46
    new-instance v0, Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mDatabaseHelper:Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;

    .line 47
    return-void
.end method

.method private static LogD(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 320
    return-void
.end method

.method private static LogE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 323
    const-string v0, "SdpDatabaseCache"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method private static LogI(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 313
    const-string v0, "SdpDatabaseCache"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 19
    invoke-static {p0}, Lcom/android/server/sdp/SdpDatabaseCache;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method private cache(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 196
    invoke-static {p1, p2}, Lcom/android/server/sdp/SdpDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 198
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache - [ Tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Val : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method private decache(ILjava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 204
    invoke-static {p1, p2}, Lcom/android/server/sdp/SdpDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 206
    :try_start_7
    iget-object v2, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decache - [ Tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_2d
    monitor-exit v1

    .line 211
    return-void

    .line 210
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method private getInternal(ILjava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/server/sdp/SdpDatabaseCache;->hitOrNull(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 135
    return-object v0

    .line 138
    :cond_7
    const/4 v1, 0x0

    .line 139
    .local v1, "success":Z
    const/4 v2, 0x0

    .line 141
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_9
    iget-object v3, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mDatabaseHelper:Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 142
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v5, "sdp_info"

    const-string/jumbo v3, "value"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "name=? AND user=?"

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v8, v3

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v8, v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 142
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v2, v5

    if-eqz v5, :cond_42

    .line 146
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3d} :catch_4a
    .catchall {:try_start_9 .. :try_end_3d} :catchall_48

    move-object v0, v5

    if-eqz v5, :cond_41

    move v3, v12

    :cond_41
    move v1, v3

    .line 153
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_42
    if-eqz v2, :cond_53

    :goto_44
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_53

    :catchall_48
    move-exception v3

    goto :goto_59

    .line 148
    :catch_4a
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4b
    const-string v4, "get"

    invoke-static {v4, v3}, Lcom/android/server/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_48

    .line 153
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_53

    goto :goto_44

    .line 155
    :cond_53
    :goto_53
    if-eqz v1, :cond_58

    .line 156
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sdp/SdpDatabaseCache;->cache(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_58
    return-object v0

    .line 153
    :goto_59
    if-eqz v2, :cond_5e

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_5e
    throw v3
.end method

.method private hitOrNull(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 185
    invoke-static {p1, p2}, Lcom/android/server/sdp/SdpDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 187
    :try_start_7
    iget-object v2, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hit - [ Tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v1

    return-object v2

    .line 191
    :cond_33
    monitor-exit v1

    .line 192
    const/4 v1, 0x0

    return-object v1

    .line 191
    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v2
.end method

.method private static synthetic lambda$dump$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump - [Tag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Val : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method private static makeTag(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private putInternal(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "sdp_info"

    if-eqz p2, :cond_68

    if-nez p3, :cond_8

    goto :goto_68

    .line 70
    :cond_8
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 78
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_25
    iget-object v4, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mDatabaseHelper:Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v3, v4

    .line 80
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 81
    const-string/jumbo v4, "name=? AND user=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 81
    invoke-virtual {v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 84
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_49} :catch_52
    .catchall {:try_start_25 .. :try_end_49} :catchall_50

    .line 85
    const/4 v2, 0x1

    .line 91
    if-eqz v3, :cond_5c

    :goto_4c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5c

    :catchall_50
    move-exception v0

    goto :goto_62

    .line 86
    :catch_52
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    :try_start_53
    const-string/jumbo v4, "put"

    invoke-static {v4, v0}, Lcom/android/server/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_50

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_5c

    goto :goto_4c

    .line 93
    :cond_5c
    :goto_5c
    if-eqz v2, :cond_61

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sdp/SdpDatabaseCache;->cache(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_61
    return-void

    .line 91
    :goto_62
    if-eqz v3, :cond_67

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    :cond_67
    throw v0

    .line 68
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "success":Z
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_68
    :goto_68
    return-void
.end method

.method private static reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "where"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurred in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpDatabaseCache"

    invoke-static {v1, v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {p1}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/Exception;)V

    .line 310
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public delete(ILjava/lang/String;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 165
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mDatabaseHelper:Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v1, v2

    .line 167
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 168
    const-string/jumbo v2, "sdp_info"

    const-string/jumbo v3, "name=? AND user=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 168
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_2e
    .catchall {:try_start_2 .. :try_end_25} :catchall_2c

    .line 171
    const/4 v0, 0x1

    .line 177
    if-eqz v1, :cond_37

    :goto_28
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_37

    :catchall_2c
    move-exception v2

    goto :goto_3d

    .line 172
    :catch_2e
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v3, "del"

    invoke-static {v3, v2}, Lcom/android/server/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    .line 177
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_37

    goto :goto_28

    .line 179
    :cond_37
    :goto_37
    if-eqz v0, :cond_3c

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/sdp/SdpDatabaseCache;->decache(ILjava/lang/String;)V

    .line 182
    :cond_3c
    return-void

    .line 177
    :goto_3d
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    :cond_42
    throw v2
.end method

.method public destroy(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "noError":Z
    const/4 v1, 0x0

    .line 241
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mDatabaseHelper:Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v1, v2

    .line 243
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 244
    const-string/jumbo v2, "sdp_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_33
    .catchall {:try_start_2 .. :try_end_2d} :catchall_31

    .line 246
    const/4 v0, 0x1

    .line 252
    if-eqz v1, :cond_3f

    goto :goto_3c

    :catchall_31
    move-exception v2

    goto :goto_8a

    .line 247
    :catch_33
    move-exception v2

    .line 250
    .local v2, "e":Ljava/lang/Exception;
    :try_start_34
    const-string/jumbo v3, "remove"

    invoke-static {v3, v2}, Lcom/android/server/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_31

    .line 252
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3f

    :goto_3c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 254
    :cond_3f
    move v2, v0

    move-object v3, v1

    .end local v0    # "noError":Z
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v2, "noError":Z
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_44

    .line 255
    return-void

    .line 257
    :cond_44
    iget-object v4, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 258
    :try_start_47
    iget-object v0, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 259
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "prefix":Ljava/lang/String;
    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 262
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove - Val of key [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    .line 266
    .end local v5    # "key":Ljava/lang/String;
    :cond_84
    goto :goto_55

    .line 267
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_85
    monitor-exit v4

    .line 268
    return-void

    .line 267
    :catchall_87
    move-exception v0

    monitor-exit v4
    :try_end_89
    .catchall {:try_start_47 .. :try_end_89} :catchall_87

    throw v0

    .line 252
    .end local v2    # "noError":Z
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v0, "noError":Z
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_8a
    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 253
    :cond_8f
    throw v2
.end method

.method public dump()V
    .registers 1

    .line 272
    return-void
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/sdp/SdpDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "val":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    if-eqz p3, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    return v1
.end method

.method public getInt(ILjava/lang/String;I)I
    .registers 7
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 104
    move v0, p3

    .line 107
    .local v0, "ret":I
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/sdp/SdpDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "val":Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 111
    :cond_d
    goto :goto_f

    .line 110
    .end local v2    # "val":Ljava/lang/String;
    :catch_e
    move-exception v1

    .line 112
    :goto_f
    return v0
.end method

.method public getLong(ILjava/lang/String;J)J
    .registers 11
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 116
    move-wide v0, p3

    .line 119
    .local v0, "ret":J
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/sdp/SdpDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "val":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 120
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_c} :catch_e

    move-wide v0, v4

    .line 123
    :cond_d
    goto :goto_f

    .line 122
    .end local v3    # "val":Ljava/lang/String;
    :catch_e
    move-exception v2

    .line 124
    :goto_f
    return-wide v0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/sdp/SdpDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_9

    :cond_8
    move-object v1, p3

    :goto_9
    return-object v1
.end method

.method public preload(I)V
    .registers 13
    .param p1, "userId"    # I

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sdp/SdpDatabaseCache;->mDatabaseHelper:Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/sdp/SdpDatabaseCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 217
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v3, "sdp_info"

    const-string/jumbo v1, "name"

    const-string/jumbo v4, "value"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 217
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    if-eqz v3, :cond_3d

    .line 222
    :goto_2b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 223
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "value":Ljava/lang/String;
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_45
    .catchall {:try_start_1 .. :try_end_3c} :catchall_43

    .line 226
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_2b

    .line 233
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3d
    if-eqz v0, :cond_4f

    :goto_3f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4f

    :catchall_43
    move-exception v1

    goto :goto_50

    .line 228
    :catch_45
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    :try_start_46
    const-string/jumbo v2, "preload"

    invoke-static {v2, v1}, Lcom/android/server/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_43

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_4f

    goto :goto_3f

    .line 235
    :cond_4f
    :goto_4f
    return-void

    .line 233
    :goto_50
    if-eqz v0, :cond_55

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_55
    throw v1
.end method

.method public putBoolean(ILjava/lang/String;Z)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 50
    if-eqz p3, :cond_5

    const-string v0, "1"

    goto :goto_7

    :cond_5
    const-string v0, "0"

    :goto_7
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public putInt(ILjava/lang/String;I)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 54
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public putLong(ILjava/lang/String;J)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 58
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public putString(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
