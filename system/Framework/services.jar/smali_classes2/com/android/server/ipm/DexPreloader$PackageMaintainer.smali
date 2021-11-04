.class Lcom/android/server/ipm/DexPreloader$PackageMaintainer;
.super Ljava/lang/Object;
.source "DexPreloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/DexPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageMaintainer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/DexPreloader;


# direct methods
.method private constructor <init>(Lcom/android/server/ipm/DexPreloader;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/android/server/ipm/DexPreloader$PackageMaintainer;->this$0:Lcom/android/server/ipm/DexPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ipm/DexPreloader;Lcom/android/server/ipm/DexPreloader$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/ipm/DexPreloader;
    .param p2, "x1"    # Lcom/android/server/ipm/DexPreloader$1;

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/ipm/DexPreloader$PackageMaintainer;-><init>(Lcom/android/server/ipm/DexPreloader;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .line 268
    move-object/from16 v1, p0

    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v2

    .line 269
    .local v2, "db":Lcom/android/server/ipm/DBManager;
    invoke-virtual {v2}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 270
    # getter for: Lcom/android/server/ipm/DexPreloader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ipm/DexPreloader;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v3, "get Dataset failed! db is closed!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void

    .line 273
    :cond_16
    const-string/jumbo v3, "select * from tbl_PkgSummary where time_add>0"

    .line 274
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x0

    .line 276
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_1b
    invoke-virtual {v2, v3, v0}, Lcom/android/server/ipm/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    .line 277
    if-eqz v4, :cond_96

    .line 278
    :goto_22
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 279
    const-string/jumbo v0, "user_pkg"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 280
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v0, "launched"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 281
    .local v8, "launched":I
    const-string v0, "dex_compiled"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 282
    .local v14, "size":I
    const-string/jumbo v0, "time_add"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-wide/from16 v16, v5

    .line 283
    .local v16, "time_add":J
    const-string/jumbo v0, "time_gap"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-wide/from16 v18, v5

    .line 284
    .local v18, "time_gap":J
    iget-object v0, v1, Lcom/android/server/ipm/DexPreloader$PackageMaintainer;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v20

    monitor-enter v20
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_6a} :catch_a2
    .catchall {:try_start_1b .. :try_end_6a} :catchall_9e

    .line 285
    :try_start_6a
    iget-object v0, v1, Lcom/android/server/ipm/DexPreloader$PackageMaintainer;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mCachedApps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/ipm/DexPreloader;->access$400(Lcom/android/server/ipm/DexPreloader;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v12, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget-object v6, v1, Lcom/android/server/ipm/DexPreloader$PackageMaintainer;->this$0:Lcom/android/server/ipm/DexPreloader;
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_8a

    const/4 v9, 0x0

    sub-long v21, v16, v18

    move-object v5, v12

    move-object v7, v15

    move-wide/from16 v10, v16

    move-object/from16 v23, v2

    move-object v2, v12

    .end local v2    # "db":Lcom/android/server/ipm/DBManager;
    .local v23, "db":Lcom/android/server/ipm/DBManager;
    move-wide/from16 v12, v21

    :try_start_80
    invoke-direct/range {v5 .. v14}, Lcom/android/server/ipm/DexPreloader$CacheAPP;-><init>(Lcom/android/server/ipm/DexPreloader;Ljava/lang/String;IZJJI)V

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    monitor-exit v20

    .line 287
    .end local v8    # "launched":I
    .end local v14    # "size":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "time_add":J
    .end local v18    # "time_gap":J
    move-object/from16 v2, v23

    goto :goto_22

    .line 286
    .end local v23    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v2    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v8    # "launched":I
    .restart local v14    # "size":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "time_add":J
    .restart local v18    # "time_gap":J
    :catchall_8a
    move-exception v0

    move-object/from16 v23, v2

    .end local v2    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v23    # "db":Lcom/android/server/ipm/DBManager;
    :goto_8d
    monitor-exit v20
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_91

    .end local v3    # "sql":Ljava/lang/String;
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v23    # "db":Lcom/android/server/ipm/DBManager;
    .end local p0    # "this":Lcom/android/server/ipm/DexPreloader$PackageMaintainer;
    :try_start_8e
    throw v0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8f} :catch_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_d0

    .line 289
    .end local v8    # "launched":I
    .end local v14    # "size":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "time_add":J
    .end local v18    # "time_gap":J
    .restart local v3    # "sql":Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v23    # "db":Lcom/android/server/ipm/DBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/DexPreloader$PackageMaintainer;
    :catch_8f
    move-exception v0

    goto :goto_a5

    .line 286
    .restart local v8    # "launched":I
    .restart local v14    # "size":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "time_add":J
    .restart local v18    # "time_gap":J
    :catchall_91
    move-exception v0

    goto :goto_8d

    .line 278
    .end local v8    # "launched":I
    .end local v14    # "size":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "time_add":J
    .end local v18    # "time_gap":J
    .end local v23    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v2    # "db":Lcom/android/server/ipm/DBManager;
    :cond_93
    move-object/from16 v23, v2

    .end local v2    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v23    # "db":Lcom/android/server/ipm/DBManager;
    goto :goto_98

    .line 277
    .end local v23    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v2    # "db":Lcom/android/server/ipm/DBManager;
    :cond_96
    move-object/from16 v23, v2

    .line 292
    .end local v2    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v23    # "db":Lcom/android/server/ipm/DBManager;
    :goto_98
    if-eqz v4, :cond_ab

    .line 293
    :goto_9a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_ab

    .line 292
    .end local v23    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v2    # "db":Lcom/android/server/ipm/DBManager;
    :catchall_9e
    move-exception v0

    move-object/from16 v23, v2

    .end local v2    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v23    # "db":Lcom/android/server/ipm/DBManager;
    goto :goto_d1

    .line 289
    .end local v23    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v2    # "db":Lcom/android/server/ipm/DBManager;
    :catch_a2
    move-exception v0

    move-object/from16 v23, v2

    .line 290
    .end local v2    # "db":Lcom/android/server/ipm/DBManager;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v23    # "db":Lcom/android/server/ipm/DBManager;
    :goto_a5
    :try_start_a5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_d0

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_ab

    .line 293
    goto :goto_9a

    .line 296
    :cond_ab
    :goto_ab
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    .local v0, "pkgFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 300
    iget-object v2, v1, Lcom/android/server/ipm/DexPreloader$PackageMaintainer;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ipm/DexPreloader;->access$800(Lcom/android/server/ipm/DexPreloader;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, v1, Lcom/android/server/ipm/DexPreloader$PackageMaintainer;->this$0:Lcom/android/server/ipm/DexPreloader;

    # getter for: Lcom/android/server/ipm/DexPreloader;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/android/server/ipm/DexPreloader;->access$700(Lcom/android/server/ipm/DexPreloader;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    return-void

    .line 292
    .end local v0    # "pkgFilter":Landroid/content/IntentFilter;
    :catchall_d0
    move-exception v0

    :goto_d1
    if-eqz v4, :cond_d6

    .line 293
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_d6
    throw v0
.end method
