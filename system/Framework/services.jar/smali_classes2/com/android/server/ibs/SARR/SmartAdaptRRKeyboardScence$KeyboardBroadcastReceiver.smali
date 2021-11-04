.class Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$KeyboardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartAdaptRRKeyboardScence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)V
    .registers 4

    .line 107
    iput-object p1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$KeyboardBroadcastReceiver;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$500(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 116
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$KeyboardBroadcastReceiver;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    iget-boolean v0, v0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mKeyboardEnable:Z

    if-nez v0, :cond_13

    return-void

    .line 117
    :cond_13
    const/4 v0, 0x0

    const-string v1, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    .local v0, "flag":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartAdaptRRKeyboardScence"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v0, :cond_47

    .line 120
    iget-object v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$KeyboardBroadcastReceiver;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mIsKeyboardShow:Z
    invoke-static {v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$600(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    return-void

    .line 121
    :cond_3b
    iget-object v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$KeyboardBroadcastReceiver;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    invoke-static {v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    move-result-object v1

    const/16 v2, 0x12d

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->sendEmptyMessage(I)Z

    goto :goto_52

    .line 123
    :cond_47
    iget-object v1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$KeyboardBroadcastReceiver;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    invoke-static {v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    move-result-object v1

    const/16 v2, 0x12e

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->sendEmptyMessage(I)Z

    .line 126
    .end local v0    # "flag":Z
    :cond_52
    :goto_52
    return-void
.end method
