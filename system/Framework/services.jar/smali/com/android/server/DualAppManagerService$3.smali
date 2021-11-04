.class Lcom/android/server/DualAppManagerService$3;
.super Landroid/database/ContentObserver;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DualAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DualAppManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DualAppManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/DualAppManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1476
    iput-object p1, p0, Lcom/android/server/DualAppManagerService$3;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;II)V
    .registers 21
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 1479
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    move-object/from16 v1, p0

    move/from16 v2, p3

    const-string v0, " / "

    const-string v3, "DualAppManagerService"

    const-string/jumbo v4, "onChange contentObserverForDualUser"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    const/4 v4, 0x0

    .line 1482
    .local v4, "compareUri":Landroid/net/Uri;
    :try_start_f
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1483
    .local v6, "uri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uri  / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_84

    move/from16 v8, p4

    :try_start_38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    if-eqz v6, :cond_7e

    invoke-virtual {v6, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7e

    .line 1485
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v7

    .line 1486
    .local v7, "dualProfileId":I
    invoke-static {v6, v7}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v9

    move-object v6, v9

    .line 1487
    move-object v4, v6

    .line 1488
    const/4 v9, 0x4

    if-eq v2, v9, :cond_5b

    const/16 v9, 0x8

    if-ne v2, v9, :cond_7e

    .line 1489
    :cond_5b
    iget-object v9, v1, Lcom/android/server/DualAppManagerService$3;->this$0:Lcom/android/server/DualAppManagerService;

    const/4 v10, 0x0

    # invokes: Lcom/android/server/DualAppManagerService;->getPathFromURI(Landroid/net/Uri;I)Ljava/lang/String;
    invoke-static {v9, v6, v10}, Lcom/android/server/DualAppManagerService;->access$800(Lcom/android/server/DualAppManagerService;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    .line 1490
    .local v9, "convertedFilepath":Ljava/lang/String;
    if-eqz v9, :cond_7e

    iget-object v10, v1, Lcom/android/server/DualAppManagerService$3;->this$0:Lcom/android/server/DualAppManagerService;

    # getter for: Lcom/android/server/DualAppManagerService;->alreadyScanedPath:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/DualAppManagerService;->access$900(Lcom/android/server/DualAppManagerService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7e

    .line 1491
    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v14, 0x1f4

    move-object v13, v9

    # invokes: Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;J)V
    invoke-static/range {v10 .. v15}, Lcom/android/server/DualAppManagerService;->access$1000(IIILjava/lang/Object;J)V

    .line 1493
    iget-object v10, v1, Lcom/android/server/DualAppManagerService$3;->this$0:Lcom/android/server/DualAppManagerService;

    # setter for: Lcom/android/server/DualAppManagerService;->alreadyScanedPath:Ljava/lang/String;
    invoke-static {v10, v9}, Lcom/android/server/DualAppManagerService;->access$902(Lcom/android/server/DualAppManagerService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_7e} :catch_7f

    .line 1497
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "dualProfileId":I
    .end local v9    # "convertedFilepath":Ljava/lang/String;
    :cond_7e
    goto :goto_13

    .line 1498
    .end local v4    # "compareUri":Landroid/net/Uri;
    :catch_7f
    move-exception v0

    goto :goto_87

    .line 1482
    .restart local v4    # "compareUri":Landroid/net/Uri;
    :cond_81
    move/from16 v8, p4

    .line 1500
    .end local v4    # "compareUri":Landroid/net/Uri;
    goto :goto_8a

    .line 1498
    :catch_84
    move-exception v0

    move/from16 v8, p4

    .line 1499
    .local v0, "e":Ljava/lang/Exception;
    :goto_87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1501
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8a
    return-void
.end method
