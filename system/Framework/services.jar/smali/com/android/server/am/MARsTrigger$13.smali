.class Lcom/android/server/am/MARsTrigger$13;
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

    .line 708
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$13;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 711
    if-eqz p2, :cond_58

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_58

    .line 714
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 717
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "MARS_REQUEST_PKG_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 718
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v2, :cond_26

    .line 723
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->postInit(Z)V

    goto :goto_57

    .line 726
    :cond_26
    const/4 v2, 0x0

    .line 727
    .local v2, "onCreate":Z
    const/4 v3, 0x0

    .line 728
    .local v3, "onUpgrade":Z
    const/4 v4, 0x0

    .line 729
    .local v4, "onInit":Z
    if-eqz v1, :cond_50

    .line 730
    const-string v5, "MARS_EXTRA"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 731
    .local v5, "tmp":Ljava/lang/String;
    const-string v6, "create"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 732
    const/4 v2, 0x1

    .line 733
    :cond_3c
    const-string/jumbo v6, "update"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 734
    const/4 v3, 0x1

    .line 735
    :cond_46
    const-string/jumbo v6, "init"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 736
    const/4 v4, 0x1

    .line 738
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_50
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/server/am/mars/database/MARsDBManager;->sendSMDBChangedMsgToDBHandler(ZZZ)V

    .line 741
    .end local v2    # "onCreate":Z
    .end local v3    # "onUpgrade":Z
    .end local v4    # "onInit":Z
    :cond_57
    :goto_57
    return-void

    .line 712
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_58
    :goto_58
    return-void
.end method
