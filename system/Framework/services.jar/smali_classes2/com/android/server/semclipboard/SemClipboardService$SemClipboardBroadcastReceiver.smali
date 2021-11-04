.class Lcom/android/server/semclipboard/SemClipboardService$SemClipboardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemClipboardBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/semclipboard/SemClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/semclipboard/SemClipboardService;

    .line 2302
    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$SemClipboardBroadcastReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2305
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2306
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2308
    .local v1, "id":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7ad942ef    # -7.8400085E-36f

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_34

    const v4, 0x2e65c08

    if-eq v3, v4, :cond_2a

    const v4, 0x42dd01f1

    if-eq v3, v4, :cond_21

    :cond_20
    goto :goto_3e

    :cond_21
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_3f

    :cond_2a
    const-string v2, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v2, v5

    goto :goto_3f

    :cond_34
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v2, v6

    goto :goto_3f

    :goto_3e
    const/4 v2, -0x1

    :goto_3f
    const-string v3, "SemClipboardService"

    if-eqz v2, :cond_73

    if-eq v2, v6, :cond_57

    if-eq v2, v5, :cond_48

    goto :goto_8f

    .line 2318
    :cond_48
    const-string v2, "ACTION_DEMO_RESET_STARTED, removeAll clipboard items"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$SemClipboardBroadcastReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    .line 2320
    goto :goto_8f

    .line 2314
    :cond_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_USER_REMOVED user...id :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$SemClipboardBroadcastReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    const-string v3, "REMOVED"

    invoke-virtual {v2, v1, v3}, Lcom/android/server/semclipboard/SemClipboardService;->multiUserMode(ILjava/lang/String;)V

    .line 2316
    goto :goto_8f

    .line 2310
    :cond_73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_USER_ADDED user...id :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$SemClipboardBroadcastReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    const-string v3, "ADDED"

    invoke-virtual {v2, v1, v3}, Lcom/android/server/semclipboard/SemClipboardService;->multiUserMode(ILjava/lang/String;)V

    .line 2312
    nop

    .line 2324
    :goto_8f
    return-void
.end method
