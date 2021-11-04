.class public Lcom/samsung/server/wallpaper/Knox;
.super Ljava/lang/Object;
.source "Knox.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Knox"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "Knox"

    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-object p1, p0, Lcom/samsung/server/wallpaper/Knox;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public isWallpaperChangeAllowed(Z)Z
    .registers 14
    .param p1, "showMsg"    # Z

    .line 40
    const/4 v0, 0x1

    .line 42
    .local v0, "isAllowed":Z
    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 43
    .local v1, "uri":Landroid/net/Uri;
    const-string v8, "isWallpaperChangeAllowed"

    .line 44
    .local v8, "queryValue":Ljava/lang/String;
    const-string v9, "false"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 45
    .local v10, "q_showNotMsg":[Ljava/lang/String;
    const-string v2, "true"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 46
    .local v11, "q_showMsg":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/server/wallpaper/Knox;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p1, :cond_21

    move-object v6, v11

    goto :goto_22

    :cond_21
    move-object v6, v10

    :goto_22
    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, v1

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 47
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_49

    .line 49
    :try_start_2c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 50
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3b} :catch_47
    .catchall {:try_start_2c .. :try_end_3b} :catchall_42

    if-eqz v3, :cond_3e

    .line 51
    const/4 v0, 0x0

    .line 55
    :cond_3e
    :goto_3e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 56
    goto :goto_49

    .line 55
    :catchall_42
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 56
    throw v3

    .line 53
    :catch_47
    move-exception v3

    goto :goto_3e

    .line 59
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v8    # "queryValue":Ljava/lang/String;
    .end local v10    # "q_showNotMsg":[Ljava/lang/String;
    .end local v11    # "q_showMsg":[Ljava/lang/String;
    :cond_49
    :goto_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWallpaperChangeAllowed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Knox"

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v0
.end method
