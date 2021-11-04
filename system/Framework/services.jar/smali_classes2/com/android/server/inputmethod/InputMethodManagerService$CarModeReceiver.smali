.class Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 7361
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private restorePreviousUsedInputMethod()V
    .registers 6

    .line 7365
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6700(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    if-nez v0, :cond_10

    .line 7366
    const-string v0, "CarModeReceiver : Failed to return the previous IME becuase the stored info is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7367
    return-void

    .line 7370
    :cond_10
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 7371
    .local v0, "currentIME":Ljava/lang/String;
    if-eqz v0, :cond_4c

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6700(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 7373
    const-string v2, "Restore the Previous Used IME because MirrorLink Disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7374
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6700(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 7375
    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6700(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v3

    .line 7374
    invoke-virtual {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 7376
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6702(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 7379
    :cond_4c
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 7383
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 7384
    const/4 v0, 0x0

    const-string/jumbo v1, "mlstatus"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7385
    .local v0, "mlstatus":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->isSamsungDefaultMethodID()Z
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6500(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 7386
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6702(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 7388
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->setDefaultInputMethod()V
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6600(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    goto :goto_39

    .line 7389
    :cond_34
    if-nez v0, :cond_39

    .line 7390
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$CarModeReceiver;->restorePreviousUsedInputMethod()V

    .line 7393
    .end local v0    # "mlstatus":I
    :cond_39
    :goto_39
    return-void
.end method
