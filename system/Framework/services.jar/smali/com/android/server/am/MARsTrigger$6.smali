.class Lcom/android/server/am/MARsTrigger$6;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/MARsTrigger;

    .line 510
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$6;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 513
    if-eqz p2, :cond_a9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_a9

    .line 516
    :cond_a
    const-string/jumbo v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_1c

    const-string v1, "com.samsung.android.game.gos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 518
    return-void

    .line 520
    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "action":Ljava/lang/String;
    const-string v2, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x9

    if-eqz v2, :cond_72

    .line 522
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 523
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_a7

    .line 524
    const-string/jumbo v4, "survive_app"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 525
    .local v4, "surviveAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "lru_num"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 526
    .local v5, "count":I
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->setProtectAppCntForGame(I)V

    .line 528
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v6

    if-eqz v6, :cond_5c

    sget-boolean v6, Lcom/android/server/am/FreecessController;->IS_SUPPORT_CALM_MODE:Z

    if-nez v6, :cond_54

    goto :goto_5c

    .line 533
    :cond_54
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/am/FreecessHandler;->sendCalmModeTriggerMsg(Ljava/util/ArrayList;)V

    goto :goto_a7

    .line 529
    :cond_5c
    :goto_5c
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$6;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 530
    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v1}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$6;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-virtual {v6, v4, v3, v7, v8}, Lcom/android/server/am/MARsHandler;->sendRunPolicySepcificPkgMsgToMainHandler(Ljava/util/ArrayList;ILjava/lang/String;I)V

    goto :goto_a7

    .line 536
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v4    # "surviveAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "count":I
    :cond_72
    const-string v2, "com.android.server.am.MARS_CANCEL_GAME_MODE_POLICY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 537
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->isCalmModeOnoff()Z

    move-result v2

    if-nez v2, :cond_98

    .line 538
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v2

    if-nez v2, :cond_9f

    .line 539
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/am/MARsHandler;->sendCancelPolicyMsgToMainHandler(Ljava/util/ArrayList;II)V

    goto :goto_9f

    .line 543
    :cond_98
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessHandler;->sendCalmModeCancelMsg()V

    .line 545
    :cond_9f
    :goto_9f
    const-string v2, "MARsTrigger"

    const-string v3, "broadcast received action : MARS_CANCEL_GAME_MODE_POLICY"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 536
    :cond_a7
    :goto_a7
    nop

    .line 547
    :goto_a8
    return-void

    .line 514
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "action":Ljava/lang/String;
    :cond_a9
    :goto_a9
    return-void
.end method
