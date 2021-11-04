.class public Lcom/samsung/android/server/audio/SamsungMusicHelper;
.super Ljava/lang/Object;
.source "SamsungMusicHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AS.SamsungMusicHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isScreenOffMusicEnabled(Landroid/content/Context;)Z
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .line 30
    const-string v0, "com.sec.android.app.music.shared"

    .line 31
    .local v0, "secMusicPackageName":Ljava/lang/String;
    const-string v1, "com.samsung.android.app.music.chn.setting"

    .line 32
    .local v1, "onlineMusicPackageName":Ljava/lang/String;
    const-string v2, "setting/ready_screen_off_music"

    .line 33
    .local v2, "tableName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 34
    .local v3, "isEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 36
    .local v10, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.music.shared"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    const/4 v11, 0x1

    if-eqz v4, :cond_1b

    move v4, v11

    goto :goto_1c

    :cond_1b
    move v4, v6

    :goto_1c
    move v12, v4

    .line 38
    .local v12, "isSecMusicScreenOffProviderExist":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v7, "com.samsung.android.app.music.chn.setting"

    invoke-virtual {v4, v7, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_2b

    move v4, v11

    goto :goto_2c

    :cond_2b
    move v4, v6

    :goto_2c
    move v13, v4

    .line 41
    .local v13, "isOnlineMusicScreenOffProviderExist":Z
    const-string v14, "AS.SamsungMusicHelper"

    if-nez v12, :cond_3a

    if-nez v13, :cond_3a

    .line 42
    const-string v4, "ScreenOffMusicProvider does not exist"

    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v3, 0x0

    goto :goto_98

    .line 51
    :cond_3a
    :try_start_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    if-eqz v13, :cond_48

    move-object v5, v7

    goto :goto_49

    .line 53
    :cond_48
    nop

    :goto_49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "setting/ready_screen_off_music"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_5a} :catch_99

    .line 56
    .local v5, "uri":Landroid/net/Uri;
    nop

    .line 58
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    :try_start_60
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_64} :catch_94

    .line 59
    .local v4, "itemCursor":Landroid/database/Cursor;
    if-eqz v4, :cond_7e

    :try_start_66
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gtz v6, :cond_6d

    goto :goto_7e

    .line 62
    :cond_6d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "result":Ljava/lang/String;
    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move v3, v7

    goto :goto_83

    .line 58
    .end local v6    # "result":Ljava/lang/String;
    :catchall_7c
    move-exception v6

    goto :goto_89

    .line 60
    :cond_7e
    :goto_7e
    const-string v6, "screen off music query failed"

    invoke-static {v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_66 .. :try_end_83} :catchall_7c

    .line 66
    :goto_83
    if-eqz v4, :cond_88

    :try_start_85
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_94

    .line 68
    .end local v4    # "itemCursor":Landroid/database/Cursor;
    :cond_88
    goto :goto_98

    .line 58
    .restart local v4    # "itemCursor":Landroid/database/Cursor;
    :goto_89
    if-eqz v4, :cond_93

    :try_start_8b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_93

    :catchall_8f
    move-exception v7

    :try_start_90
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "secMusicPackageName":Ljava/lang/String;
    .end local v1    # "onlineMusicPackageName":Ljava/lang/String;
    .end local v2    # "tableName":Ljava/lang/String;
    .end local v3    # "isEnabled":Z
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "isSecMusicScreenOffProviderExist":Z
    .end local v13    # "isOnlineMusicScreenOffProviderExist":Z
    .end local p0    # "context":Landroid/content/Context;
    :cond_93
    :goto_93
    throw v6
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_94} :catch_94

    .line 66
    .end local v4    # "itemCursor":Landroid/database/Cursor;
    .restart local v0    # "secMusicPackageName":Ljava/lang/String;
    .restart local v1    # "onlineMusicPackageName":Ljava/lang/String;
    .restart local v2    # "tableName":Ljava/lang/String;
    .restart local v3    # "isEnabled":Z
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    .restart local v12    # "isSecMusicScreenOffProviderExist":Z
    .restart local v13    # "isOnlineMusicScreenOffProviderExist":Z
    .restart local p0    # "context":Landroid/content/Context;
    :catch_94
    move-exception v4

    .line 67
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_98
    return v3

    .line 54
    :catch_99
    move-exception v4

    .line 55
    .local v4, "e":Ljava/lang/NullPointerException;
    return v6
.end method
