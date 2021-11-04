.class Lcom/android/server/DualAppManagerService$2;
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

    .line 1423
    iput-object p1, p0, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;II)V
    .registers 22
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

    .line 1426
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    move-object/from16 v8, p0

    move/from16 v9, p3

    const-string v0, " / "

    const-string v10, "DualAppManagerService"

    const-string/jumbo v1, "onChange "

    invoke-static {v10, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :try_start_e
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v1

    move v11, v1

    .line 1429
    .local v11, "dualProfileId":I
    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 1430
    const/4 v1, 0x0

    .line 1431
    .local v1, "compareUri":Landroid/net/Uri;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object v13, v2

    .line 1432
    .local v13, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri  / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_42} :catch_bc

    move/from16 v14, p4

    :try_start_44
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    if-eqz v13, :cond_b2

    invoke-virtual {v13, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 1434
    move-object v15, v13

    .line 1435
    .end local v1    # "compareUri":Landroid/net/Uri;
    .local v15, "compareUri":Landroid/net/Uri;
    const/16 v1, 0x10

    if-ne v9, v1, :cond_88

    .line 1436
    iget-object v1, v8, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    # getter for: Lcom/android/server/DualAppManagerService;->Flag_Timer_running:Z
    invoke-static {v1}, Lcom/android/server/DualAppManagerService;->access$500(Lcom/android/server/DualAppManagerService;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6a

    .line 1437
    iget-object v1, v8, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    # setter for: Lcom/android/server/DualAppManagerService;->Flag_Request_on_Timer_running:Z
    invoke-static {v1, v2}, Lcom/android/server/DualAppManagerService;->access$602(Lcom/android/server/DualAppManagerService;Z)Z

    goto :goto_b1

    .line 1439
    :cond_6a
    iget-object v1, v8, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    # setter for: Lcom/android/server/DualAppManagerService;->Flag_Timer_running:Z
    invoke-static {v1, v2}, Lcom/android/server/DualAppManagerService;->access$502(Lcom/android/server/DualAppManagerService;Z)Z

    .line 1440
    iget-object v1, v8, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-virtual {v1, v11}, Lcom/android/server/DualAppManagerService;->mediaScanFileForDeleteSync(I)V

    .line 1441
    new-instance v16, Lcom/android/server/DualAppManagerService$2$1;

    const-wide/32 v3, 0x83d60

    const-wide/32 v5, 0x2bf20

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/DualAppManagerService$2$1;-><init>(Lcom/android/server/DualAppManagerService$2;JJI)V

    .line 1458
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/DualAppManagerService$2$1;->start()Landroid/os/CountDownTimer;

    .line 1459
    goto :goto_b1

    .line 1460
    :cond_88
    const/4 v1, 0x4

    if-eq v9, v1, :cond_8f

    const/16 v1, 0x8

    if-ne v9, v1, :cond_b1

    .line 1461
    :cond_8f
    iget-object v1, v8, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    # invokes: Lcom/android/server/DualAppManagerService;->getPathFromURI(Landroid/net/Uri;I)Ljava/lang/String;
    invoke-static {v1, v13, v11}, Lcom/android/server/DualAppManagerService;->access$800(Lcom/android/server/DualAppManagerService;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 1462
    .local v1, "convertedFilepath":Ljava/lang/String;
    if-eqz v1, :cond_b1

    iget-object v2, v8, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    # getter for: Lcom/android/server/DualAppManagerService;->alreadyScanedPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->access$900(Lcom/android/server/DualAppManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 1463
    const/4 v2, 0x6

    const/4 v4, 0x0

    const-wide/16 v6, 0x1f4

    move v3, v11

    move-object v5, v1

    # invokes: Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;J)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/DualAppManagerService;->access$1000(IIILjava/lang/Object;J)V

    .line 1465
    iget-object v2, v8, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    # setter for: Lcom/android/server/DualAppManagerService;->alreadyScanedPath:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/server/DualAppManagerService;->access$902(Lcom/android/server/DualAppManagerService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_b1} :catch_b4

    .line 1469
    .end local v1    # "convertedFilepath":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_b1
    :goto_b1
    move-object v1, v15

    .end local v15    # "compareUri":Landroid/net/Uri;
    .local v1, "compareUri":Landroid/net/Uri;
    :cond_b2
    goto/16 :goto_1e

    .line 1471
    .end local v1    # "compareUri":Landroid/net/Uri;
    .end local v11    # "dualProfileId":I
    :catch_b4
    move-exception v0

    goto :goto_bf

    .line 1431
    .restart local v1    # "compareUri":Landroid/net/Uri;
    .restart local v11    # "dualProfileId":I
    :cond_b6
    move/from16 v14, p4

    goto :goto_bb

    .line 1429
    .end local v1    # "compareUri":Landroid/net/Uri;
    :cond_b9
    move/from16 v14, p4

    .line 1473
    .end local v11    # "dualProfileId":I
    :goto_bb
    goto :goto_c2

    .line 1471
    :catch_bc
    move-exception v0

    move/from16 v14, p4

    .line 1472
    .local v0, "e":Ljava/lang/Exception;
    :goto_bf
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1474
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c2
    return-void
.end method
