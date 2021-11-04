.class public Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;
.super Ljava/lang/Object;
.source "KnoxAnalyticsQueryResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEvent(Landroid/content/Context;JLjava/lang/String;I)J
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "type"    # I

    .line 26
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "addEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 29
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .local v1, "contentValues":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    const-string v2, "data"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p4}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getUriFromType(I)Landroid/net/Uri;

    move-result-object v2

    .line 34
    .local v2, "uri":Landroid/net/Uri;
    const-wide/16 v3, -0x1

    const-string v5, "addEvent(): null ret uri"

    if-nez v2, :cond_2e

    .line 35
    sget-object v6, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-wide v3

    .line 39
    :cond_2e
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 40
    .local v6, "ret":Landroid/net/Uri;
    if-nez v6, :cond_3a

    .line 41
    sget-object v7, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-wide v3

    .line 45
    :cond_3a
    const-wide/16 v3, -0x1

    .line 47
    .local v3, "actualId":J
    :try_start_3c
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_40} :catch_42

    move-wide v3, v7

    .line 50
    goto :goto_5d

    .line 48
    :catch_42
    move-exception v5

    .line 49
    .local v5, "ex":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addEvent(): error parsing return id - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    :goto_5d
    sget-object v5, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addEvent(): actualId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-wide v3
.end method

.method public static addVersioningBlob(Landroid/content/Context;ILjava/lang/String;J)J
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "eventId"    # J

    .line 216
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "addVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 219
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v1, "contentValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "eventId"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 225
    .local v2, "ret":Landroid/net/Uri;
    if-nez v2, :cond_39

    .line 226
    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "addVersioningBlob(): null ret uri"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-wide/16 v3, -0x1

    return-wide v3

    .line 230
    :cond_39
    const-wide/16 v3, -0x1

    .line 232
    .local v3, "actualId":J
    :try_start_3b
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_3f} :catch_41

    move-wide v3, v5

    .line 235
    goto :goto_49

    .line 233
    :catch_41
    move-exception v5

    .line 234
    .local v5, "ex":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v7, "addVersioningBlob(): error parsing return id"

    invoke-static {v6, v7}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    :goto_49
    return-wide v3
.end method

.method public static callDatabaseClean(Landroid/content/Context;J)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetDbSize"    # J

    .line 185
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "callDatabaseClean()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "targetDbSize"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 189
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "databaseClean"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 190
    .local v2, "result":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    move-result-object v3

    return-object v3
.end method

.method public static callNotifyVersioningCompleted(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 260
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "callNotifyVersioningCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 262
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "notifyVersioningCompleted"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 264
    return-void
.end method

.method public static getB2CFeatureByPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 344
    const-string v0, "feature_name"

    sget-object v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v2, "getB2CFeatureFeaturesList()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 346
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_e
    sget-object v4, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "packageName"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v7, v3

    const/4 v8, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_22} :catch_53

    .line 349
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_22
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_36

    .line 350
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getB2CFeatureFeaturesList(): empty cursor"

    invoke-static {v0, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_47

    .line 351
    nop

    .line 357
    if-eqz v3, :cond_35

    :try_start_32
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_35} :catch_53

    .line 351
    :cond_35
    return-object v2

    .line 354
    :cond_36
    :try_start_36
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 355
    .local v0, "columnFeature":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 356
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_47

    .line 357
    if-eqz v3, :cond_46

    :try_start_43
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Ljava/lang/IllegalStateException; {:try_start_43 .. :try_end_46} :catch_53

    .line 356
    :cond_46
    return-object v4

    .line 346
    .end local v0    # "columnFeature":I
    :catchall_47
    move-exception v0

    if-eqz v3, :cond_52

    :try_start_4a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v4

    :try_start_4f
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    :cond_52
    :goto_52
    throw v0
    :try_end_53
    .catch Ljava/lang/IllegalStateException; {:try_start_4f .. :try_end_53} :catch_53

    .line 357
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_53
    move-exception v0

    .line 358
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getB2CFeatureFeaturesList(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-object v2
.end method

.method public static getB2CFeaturePackageList(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getB2CFeaturePackages()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 296
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_12} :catch_5c

    .line 297
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_12
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_29

    .line 298
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v3, "getB2CFeaturePackages(): empty cursor"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_50

    .line 312
    if-eqz v1, :cond_28

    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_28} :catch_5c

    .line 299
    :cond_28
    return-object v2

    .line 302
    :cond_29
    :try_start_29
    const-string v2, "packageName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 304
    .local v2, "columnPackage":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    .local v3, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 308
    :cond_3b
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    nop

    .end local v4    # "packageName":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_50

    if-nez v4, :cond_3b

    .line 311
    nop

    .line 312
    if-eqz v1, :cond_4f

    :try_start_4c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_4f} :catch_5c

    .line 311
    :cond_4f
    return-object v3

    .line 296
    .end local v2    # "columnPackage":I
    .end local v3    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_50
    move-exception v2

    if-eqz v1, :cond_5b

    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v3

    :try_start_58
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_5b
    :goto_5b
    throw v2
    :try_end_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_5c} :catch_5c

    .line 312
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_5c
    move-exception v1

    .line 313
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getB2CFeaturePackages(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getB2CFeaturesList(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getB2CFeatureFeaturesList()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 321
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_12} :catch_5c

    .line 322
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_12
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_29

    .line 323
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v3, "getB2CFeatureFeaturesList(): empty cursor"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_50

    .line 337
    if-eqz v1, :cond_28

    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_28} :catch_5c

    .line 324
    :cond_28
    return-object v2

    .line 327
    :cond_29
    :try_start_29
    const-string v2, "feature_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 329
    .local v2, "columnFeature":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .local v3, "featuresList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 333
    :cond_3b
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "feature":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    nop

    .end local v4    # "feature":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_50

    if-nez v4, :cond_3b

    .line 336
    nop

    .line 337
    if-eqz v1, :cond_4f

    :try_start_4c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_4f} :catch_5c

    .line 336
    :cond_4f
    return-object v3

    .line 321
    .end local v2    # "columnFeature":I
    .end local v3    # "featuresList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_50
    move-exception v2

    if-eqz v1, :cond_5b

    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v3

    :try_start_58
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_5b
    :goto_5b
    throw v2
    :try_end_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_5c} :catch_5c

    .line 337
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_5c
    move-exception v1

    .line 338
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getB2CFeatureFeaturesList(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getDatabaseSize(Landroid/content/Context;)J
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 240
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getDatabaseSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseSize;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_12} :catch_4e

    .line 243
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_33

    :try_start_14
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_33

    .line 247
    :cond_1b
    const-wide/16 v2, -0x1

    .line 248
    .local v2, "res":J
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 249
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 250
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_42

    move-wide v2, v4

    .line 252
    :cond_2c
    nop

    .line 253
    if-eqz v1, :cond_32

    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_32} :catch_4e

    .line 252
    :cond_32
    return-wide v2

    .line 244
    .end local v2    # "res":J
    :cond_33
    :goto_33
    :try_start_33
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v3, "getDatabaseSize(): empty cursor"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_42

    .line 245
    const-wide/16 v2, -0x1

    .line 253
    if-eqz v1, :cond_41

    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_41} :catch_4e

    .line 245
    :cond_41
    return-wide v2

    .line 242
    :catchall_42
    move-exception v2

    if-eqz v1, :cond_4d

    :try_start_45
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v3

    :try_start_4a
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_4d
    :goto_4d
    throw v2
    :try_end_4e
    .catch Ljava/lang/IllegalStateException; {:try_start_4a .. :try_end_4e} :catch_4e

    .line 253
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_4e
    move-exception v1

    .line 254
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDatabaseSize(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    throw v1
.end method

.method public static getEventCount(Landroid/content/Context;)J
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 142
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getEventCount()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-wide/16 v1, -0x1

    :try_start_d
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "count"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_1a} :catch_4b

    .line 145
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_31

    :try_start_1c
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_23

    goto :goto_31

    .line 149
    :cond_23
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_3f

    .line 151
    if-eqz v3, :cond_30

    :try_start_2d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_30} :catch_4b

    .line 150
    :cond_30
    return-wide v4

    .line 146
    :cond_31
    :goto_31
    :try_start_31
    sget-object v4, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v5, "getEventCount(): empty cursor"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3f

    .line 147
    nop

    .line 151
    if-eqz v3, :cond_3e

    :try_start_3b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_3e} :catch_4b

    .line 147
    :cond_3e
    return-wide v1

    .line 144
    :catchall_3f
    move-exception v4

    if-eqz v3, :cond_4a

    :try_start_42
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception v5

    :try_start_47
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_4a
    :goto_4a
    throw v4
    :try_end_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_4b} :catch_4b

    .line 151
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_4b
    move-exception v3

    .line 152
    .local v3, "ex":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEventCount(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-wide v1
.end method

.method public static getFeaturesBlacklist(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;",
            ">;"
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    :try_start_c
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_12} :catch_77

    .line 161
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_12
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_29

    .line 162
    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getFeaturesBlacklist(): empty cursor"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_6b

    .line 178
    if-eqz v2, :cond_28

    :try_start_25
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_28} :catch_77

    .line 163
    :cond_28
    return-object v3

    .line 166
    :cond_29
    :try_start_29
    const-string v3, "feature"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 167
    .local v3, "columnFeature":I
    const-string v4, "disable_type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 169
    .local v4, "columnDisableType":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v5, "featuresBlacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 173
    :cond_41
    new-instance v6, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4f

    move-object v8, v1

    goto :goto_57

    :cond_4f
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_57
    invoke-direct {v6, v7, v8}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    .local v6, "feature":Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    nop

    .end local v6    # "feature":Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_62
    .catchall {:try_start_29 .. :try_end_62} :catchall_6b

    if-nez v6, :cond_41

    .line 177
    nop

    .line 178
    if-eqz v2, :cond_6a

    :try_start_67
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_6a} :catch_77

    .line 177
    :cond_6a
    return-object v5

    .line 160
    .end local v3    # "columnFeature":I
    .end local v4    # "columnDisableType":I
    .end local v5    # "featuresBlacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;>;"
    :catchall_6b
    move-exception v3

    if-eqz v2, :cond_76

    :try_start_6e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception v4

    :try_start_73
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_76
    :goto_76
    throw v3
    :try_end_77
    .catch Ljava/lang/IllegalStateException; {:try_start_73 .. :try_end_77} :catch_77

    .line 178
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_77
    move-exception v2

    .line 179
    .local v2, "ex":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFeaturesBlacklist(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-object v1
.end method

.method public static getFeaturesWhitelist(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;",
            ">;"
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getFeaturesWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_12} :catch_77

    .line 270
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_12
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_29

    .line 271
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v3, "getFeaturesWhitelist(): empty cursor"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_6b

    .line 287
    if-eqz v1, :cond_28

    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_28} :catch_77

    .line 272
    :cond_28
    return-object v2

    .line 275
    :cond_29
    :try_start_29
    const-string v3, "feature"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 276
    .local v3, "columnFeature":I
    const-string v4, "enable_type"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 278
    .local v4, "columnEnableType":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    .local v5, "featuresWhitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 282
    :cond_41
    new-instance v6, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 283
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4f

    move-object v8, v2

    goto :goto_57

    :cond_4f
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_57
    invoke-direct {v6, v7, v8}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    .local v6, "feature":Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    nop

    .end local v6    # "feature":Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_62
    .catchall {:try_start_29 .. :try_end_62} :catchall_6b

    if-nez v6, :cond_41

    .line 286
    nop

    .line 287
    if-eqz v1, :cond_6a

    :try_start_67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_6a} :catch_77

    .line 286
    :cond_6a
    return-object v5

    .line 269
    .end local v3    # "columnFeature":I
    .end local v4    # "columnEnableType":I
    .end local v5    # "featuresWhitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;>;"
    :catchall_6b
    move-exception v2

    if-eqz v1, :cond_76

    :try_start_6e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception v3

    :try_start_73
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_76
    :goto_76
    throw v2
    :try_end_77
    .catch Ljava/lang/IllegalStateException; {:try_start_73 .. :try_end_77} :catch_77

    .line 287
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_77
    move-exception v1

    .line 288
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFeaturesWhitelist(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getLastEventId(Landroid/content/Context;)J
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 122
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getLastEventId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "lastEventId"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_18} :catch_54

    .line 125
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_39

    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_21

    goto :goto_39

    .line 129
    :cond_21
    const-wide/16 v2, -0x1

    .line 130
    .local v2, "res":J
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_32

    .line 131
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_48

    move-wide v2, v4

    .line 134
    :cond_32
    nop

    .line 135
    if-eqz v1, :cond_38

    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_38} :catch_54

    .line 134
    :cond_38
    return-wide v2

    .line 126
    .end local v2    # "res":J
    :cond_39
    :goto_39
    :try_start_39
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v3, "getLastEventId(): empty cursor"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_48

    .line 127
    const-wide/16 v2, -0x1

    .line 135
    if-eqz v1, :cond_47

    :try_start_44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catch Ljava/lang/IllegalStateException; {:try_start_44 .. :try_end_47} :catch_54

    .line 127
    :cond_47
    return-wide v2

    .line 124
    :catchall_48
    move-exception v2

    if-eqz v1, :cond_53

    :try_start_4b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v3

    :try_start_50
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_53
    :goto_53
    throw v2
    :try_end_54
    .catch Ljava/lang/IllegalStateException; {:try_start_50 .. :try_end_54} :catch_54

    .line 135
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_54
    move-exception v1

    .line 136
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastEventId(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    throw v1
.end method

.method private static getUriFromType(I)Landroid/net/Uri;
    .registers 4
    .param p0, "type"    # I

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p0, :cond_11

    const/4 v1, 0x1

    if-eq p0, v1, :cond_e

    .line 116
    sget-object v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v2, "getUriFromType(): not URI associated with this log type"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 113
    :cond_e
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 114
    goto :goto_14

    .line 110
    :cond_11
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;->CONTENT_URI:Landroid/net/Uri;

    .line 111
    nop

    .line 118
    :goto_14
    return-object v0
.end method

.method public static getVersioningBlob(Landroid/content/Context;)[Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 194
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 196
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    :try_start_c
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_12} :catch_8a

    .line 197
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_12
    const-string v3, "-1"

    const-string v4, ""

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "res":[Ljava/lang/String;
    if-eqz v2, :cond_70

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_23

    goto :goto_70

    .line 203
    :cond_23
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 204
    const-string v4, "id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 205
    const-string v4, "data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 206
    sget-object v4, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVersioningBlob() - id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", data = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v6

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_12 .. :try_end_69} :catchall_7e

    .line 208
    :cond_69
    nop

    .line 209
    if-eqz v2, :cond_6f

    :try_start_6c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catch Ljava/lang/IllegalStateException; {:try_start_6c .. :try_end_6f} :catch_8a

    .line 208
    :cond_6f
    return-object v3

    .line 199
    :cond_70
    :goto_70
    :try_start_70
    sget-object v4, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v5, "getVersioningBlob(): empty cursor"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_7e

    .line 200
    nop

    .line 209
    if-eqz v2, :cond_7d

    :try_start_7a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7d
    .catch Ljava/lang/IllegalStateException; {:try_start_7a .. :try_end_7d} :catch_8a

    .line 200
    :cond_7d
    return-object v3

    .line 196
    .end local v3    # "res":[Ljava/lang/String;
    :catchall_7e
    move-exception v3

    if-eqz v2, :cond_89

    :try_start_81
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_89

    :catchall_85
    move-exception v4

    :try_start_86
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_89
    :goto_89
    throw v3
    :try_end_8a
    .catch Ljava/lang/IllegalStateException; {:try_start_86 .. :try_end_8a} :catch_8a

    .line 209
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_8a
    move-exception v2

    .line 210
    .local v2, "ex":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getFeaturesBlacklist(): ERROR READING CONTENT PROVIDER! "

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-object v1
.end method

.method public static performCompressedEventsTransaction(Landroid/content/Context;Lcom/samsung/android/knox/analytics/model/EventList;)Landroid/os/Bundle;
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "events"    # Lcom/samsung/android/knox/analytics/model/EventList;

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/model/EventList;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/ZipHandler;->deflate([B)Lcom/samsung/android/knox/analytics/util/ZipResult;

    move-result-object v0

    .line 85
    .local v0, "result":Lcom/samsung/android/knox/analytics/util/ZipResult;
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 86
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v3, "performCompressedEventsTransaction(): null input data"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-object v1

    .line 89
    :cond_13
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getContent()[B

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "length"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getOriginalLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "original_length"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/model/EventList;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "plainEventsSize"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v3, "extras":Landroid/os/Bundle;
    const-string v4, "cv"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 99
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget-object v5, Lcom/samsung/android/knox/analytics/database/Contract$CompressedEvents;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "performCompressedEventsTransaction"

    invoke-virtual {v4, v5, v6, v1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public static queryEventChunk(Landroid/content/Context;)Lcom/samsung/android/knox/analytics/model/EventList;
    .registers 11
    .param p0, "ctx"    # Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 57
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    new-instance v0, Lcom/samsung/android/knox/analytics/model/EventList;

    invoke-direct {v0}, Lcom/samsung/android/knox/analytics/model/EventList;-><init>()V

    move-object v7, v0

    .line 58
    .local v7, "events":Lcom/samsung/android/knox/analytics/model/EventList;
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "chunkSizePlainEvents"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 60
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_70

    :try_start_1c
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_23

    goto :goto_70

    .line 63
    :cond_23
    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 64
    const-string v1, "id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 65
    .local v1, "id":I
    const-string v2, "vid"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 66
    .local v2, "vid":I
    const-string v3, "data"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_47
    .catchall {:try_start_1c .. :try_end_47} :catchall_64

    .line 68
    .local v3, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 70
    .local v4, "event":Lcom/samsung/android/knox/analytics/model/Event;
    :try_start_48
    new-instance v5, Lcom/samsung/android/knox/analytics/model/Event;

    invoke-direct {v5, v1, v2, v3}, Lcom/samsung/android/knox/analytics/model/Event;-><init>(IILjava/lang/String;)V
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_4d} :catch_4f
    .catchall {:try_start_48 .. :try_end_4d} :catchall_64

    move-object v4, v5

    .line 73
    goto :goto_57

    .line 71
    :catch_4f
    move-exception v5

    .line 72
    .local v5, "e":Lorg/json/JSONException;
    :try_start_50
    sget-object v8, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v9, "Could not parse JSON. Invalid format"

    invoke-static {v8, v9, v5}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_57
    if-nez v4, :cond_5a

    .line 75
    goto :goto_23

    .line 77
    :cond_5a
    invoke-virtual {v7, v4}, Lcom/samsung/android/knox/analytics/model/EventList;->put(Lcom/samsung/android/knox/analytics/model/Event;)V
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_64

    .line 78
    .end local v1    # "id":I
    .end local v2    # "vid":I
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "event":Lcom/samsung/android/knox/analytics/model/Event;
    goto :goto_23

    .line 79
    :cond_5e
    if-eqz v0, :cond_63

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 80
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_63
    return-object v7

    .line 58
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_64
    move-exception v1

    if-eqz v0, :cond_6f

    :try_start_67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6f
    :goto_6f
    throw v1

    .line 61
    :cond_70
    :goto_70
    const/4 v1, 0x0

    .line 79
    if-eqz v0, :cond_76

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_76
    return-object v1
.end method
