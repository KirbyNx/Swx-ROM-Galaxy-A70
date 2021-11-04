.class Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KNOXReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/semclipboard/SemClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 359
    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "intentAction":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KNOXReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemClipboardService"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_1a0

    :cond_24
    goto :goto_4d

    :sswitch_25
    const-string v1, "enterprise.container.uninstalled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x2

    goto :goto_4e

    :sswitch_2f
    const-string v1, "enterprise.container.remove.progress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v4

    goto :goto_4e

    :sswitch_39
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v5

    goto :goto_4e

    :sswitch_43
    const-string v1, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v3

    goto :goto_4e

    :goto_4d
    const/4 v1, -0x1

    :goto_4e
    if-eqz v1, :cond_162

    if-eq v1, v3, :cond_54

    goto/16 :goto_19e

    .line 390
    :cond_54
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-virtual {v1}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive intent from KNOX-clipboard : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isKnoxTwoEnabled mDataList.size()  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    .line 397
    :cond_a0
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->isKioskEnabled()Z
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$900(Lcom/android/server/semclipboard/SemClipboardService;)Z

    move-result v1

    if-eqz v1, :cond_19e

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->getPersonaManager()Z
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$600(Lcom/android/server/semclipboard/SemClipboardService;)Z

    move-result v1

    if-eqz v1, :cond_19e

    .line 399
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$700(Lcom/android/server/semclipboard/SemClipboardService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    .line 400
    .local v1, "personasIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_f0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f0

    .line 401
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "SWITCHED"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/semclipboard/SemClipboardService;->multiUserMode(ILjava/lang/String;)V

    .line 402
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_f0

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "kiosk container id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_f0
    const-string/jumbo v3, "resetOnReoot"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_112

    .line 409
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v4}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    .line 410
    .local v4, "sharedClipDataMgrSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_104
    if-ge v6, v4, :cond_112

    .line 411
    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v7}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    .line 410
    add-int/lit8 v6, v6, 0x1

    goto :goto_104

    .line 414
    .end local v4    # "sharedClipDataMgrSize":I
    .end local v6    # "i":I
    :cond_112
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v4}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isKioskEnabled mDataList.size()  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_158

    .line 418
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    .line 419
    .local v2, "clipDataMgrSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14a
    if-ge v3, v2, :cond_158

    .line 420
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v4}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    .line 419
    add-int/lit8 v3, v3, 0x1

    goto :goto_14a

    .line 423
    .end local v2    # "clipDataMgrSize":I
    .end local v3    # "i":I
    :cond_158
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    goto :goto_19e

    .line 368
    .end local v1    # "personasIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_162
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->getPersonaManager()Z
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$600(Lcom/android/server/semclipboard/SemClipboardService;)Z

    move-result v1

    if-nez v1, :cond_171

    .line 369
    const-string/jumbo v1, "null"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    .line 374
    :cond_171
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$700(Lcom/android/server/semclipboard/SemClipboardService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    .line 375
    .local v1, "size":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v1, :cond_184

    .line 376
    const-string/jumbo v3, "size is null"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 380
    :cond_184
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_185
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_19d

    .line 381
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->doSyncForFota(I)V
    invoke-static {v3, v4}, Lcom/android/server/semclipboard/SemClipboardService;->access$800(Lcom/android/server/semclipboard/SemClipboardService;I)V

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_185

    .line 384
    .end local v2    # "i":I
    :cond_19d
    nop

    .line 427
    .end local v1    # "size":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_19e
    :goto_19e
    return-void

    nop

    :sswitch_data_1a0
    .sparse-switch
        -0x796b1f4c -> :sswitch_43
        0x2f94f923 -> :sswitch_39
        0x60c4d49d -> :sswitch_2f
        0x7ef25c47 -> :sswitch_25
    .end sparse-switch
.end method
