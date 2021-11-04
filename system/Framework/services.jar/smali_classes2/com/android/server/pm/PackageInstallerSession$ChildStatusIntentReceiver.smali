.class Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildStatusIntentReceiver"
.end annotation


# instance fields
.field private final mChildSessionsRemaining:Landroid/util/SparseIntArray;

.field private final mLocalSender:Landroid/content/IIntentSender$Stub;

.field private final mStatusReceiver:Landroid/content/IntentSender;

.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;)V
    .registers 4
    .param p2, "remainingSessions"    # Landroid/util/SparseIntArray;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1403
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1394
    new-instance p1, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;-><init>(Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    .line 1404
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    .line 1405
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    .line 1406
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "x1"    # Landroid/util/SparseIntArray;
    .param p3, "x2"    # Landroid/content/IntentSender;
    .param p4, "x3"    # Lcom/android/server/pm/PackageInstallerSession$1;

    .line 1391
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;)V

    return-void
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .registers 3

    .line 1409
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public synthetic lambda$statusUpdate$0$PackageInstallerSession$ChildStatusIntentReceiver(Landroid/content/Intent;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1414
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 1416
    return-void

    .line 1419
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$900(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1420
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$1000(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    .line 1421
    .local v1, "destroyed":Z
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_8d

    .line 1422
    if-eqz v1, :cond_1a

    .line 1424
    return-void

    .line 1426
    :cond_1a
    const/4 v0, 0x0

    const-string v2, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1428
    .local v0, "sessionId":I
    const/4 v2, 0x1

    const-string v3, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1430
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 1431
    .local v3, "sessionIndex":I
    if-nez v2, :cond_58

    .line 1432
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1433
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-nez v4, :cond_8c

    .line 1435
    :try_start_3d
    const-string v4, "android.content.pm.extra.SESSION_ID"

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v5, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1437
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_55
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3d .. :try_end_55} :catch_56

    goto :goto_57

    .line 1438
    :catch_56
    move-exception v4

    .line 1439
    :goto_57
    goto :goto_8c

    .line 1441
    :cond_58
    const/4 v4, -0x1

    if-ne v4, v2, :cond_6d

    .line 1443
    :try_start_5b
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_6a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5b .. :try_end_6a} :catch_6b

    goto :goto_6c

    .line 1444
    :catch_6b
    move-exception v4

    .line 1445
    :goto_6c
    goto :goto_8c

    .line 1447
    :cond_6d
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v4, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v5, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1449
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 1451
    :try_start_7b
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_8a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_7b .. :try_end_8a} :catch_8b

    .line 1453
    goto :goto_8c

    .line 1452
    :catch_8b
    move-exception v4

    .line 1455
    :cond_8c
    :goto_8c
    return-void

    .line 1421
    .end local v0    # "sessionId":I
    .end local v1    # "destroyed":Z
    .end local v2    # "status":I
    .end local v3    # "sessionIndex":I
    :catchall_8d
    move-exception v1

    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public statusUpdate(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1413
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$800(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$ChildStatusIntentReceiver$CIWymiEKCzNknV3an6tFtcz5-Mc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$ChildStatusIntentReceiver$CIWymiEKCzNknV3an6tFtcz5-Mc;-><init>(Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1456
    return-void
.end method
