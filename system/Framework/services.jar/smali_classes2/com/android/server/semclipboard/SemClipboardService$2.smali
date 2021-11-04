.class Lcom/android/server/semclipboard/SemClipboardService$2;
.super Landroid/os/Handler;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/semclipboard/SemClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 1632
    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1635
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_bd

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9a

    const/4 v1, 0x4

    const-string v2, "SemClipboardService"

    if-eq v0, v1, :cond_77

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1e

    .line 1669
    const-string/jumbo v0, "handler msg : default"

    invoke-static {v2, v0}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_e1

    .line 1654
    :cond_1e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1655
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_e1

    .line 1656
    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1657
    .local v3, "filePath":Ljava/lang/String;
    const-string v4, "extra_path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1659
    .local v5, "extraFilePath":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1660
    .local v6, "deleteIntent":Landroid/content/Intent;
    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1661
    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.samsung.clipboardsaveservice"

    const-string v7, "com.samsung.clipboardsaveservice.ClipboardDeleteFileAppService"

    invoke-direct {v1, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1663
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-virtual {v7}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v7

    invoke-direct {v4, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_DELETE_TEMP_FILE, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-virtual {v4}, Lcom/android/server/semclipboard/SemClipboardService;->getPersonaId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v5    # "extraFilePath":Ljava/lang/String;
    .end local v6    # "deleteIntent":Landroid/content/Intent;
    goto :goto_e1

    .line 1648
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_77
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$1200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v1

    # setter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1102(Lcom/android/server/semclipboard/SemClipboardService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    .line 1649
    const-string/jumbo v0, "mCBUIManager enter case. MSG_DISMISS_DIALOG"

    invoke-static {v2, v0}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$1100(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardUIManager;->dismiss()V

    .line 1651
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1102(Lcom/android/server/semclipboard/SemClipboardService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    .line 1652
    goto :goto_e1

    .line 1644
    :cond_9a
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$1200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v1

    # setter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1102(Lcom/android/server/semclipboard/SemClipboardService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    .line 1645
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$1100(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1300(Lcom/android/server/semclipboard/SemClipboardService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$1400(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardUIManager;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1646
    goto :goto_e1

    .line 1640
    :cond_bd
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$1200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v1

    # setter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1102(Lcom/android/server/semclipboard/SemClipboardService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    .line 1641
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$1100(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$1300(Lcom/android/server/semclipboard/SemClipboardService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$2;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$1400(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardUIManager;->show(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1642
    goto :goto_e1

    .line 1637
    :cond_e0
    nop

    .line 1672
    :cond_e1
    :goto_e1
    return-void
.end method
