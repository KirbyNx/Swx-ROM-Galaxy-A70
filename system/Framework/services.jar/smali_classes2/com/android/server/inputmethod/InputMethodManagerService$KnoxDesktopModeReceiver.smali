.class Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KnoxDesktopModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 7283
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private restorePreviousUsedInputMethod()V
    .registers 8

    .line 7287
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7289
    .local v0, "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    const-string v2, "InputMethodManagerService"

    if-eqz v0, :cond_64

    const-string v3, "-1"

    if-ne v0, v3, :cond_17

    goto :goto_64

    .line 7294
    :cond_17
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z
    invoke-static {v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6000(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 7295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxDesktopModeReceiver : Failed to return the previous IME becuase the stored ime is uninstalled pre imi id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7296
    return-void

    .line 7299
    :cond_34
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v4, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 7300
    .local v4, "currentIME":Ljava/lang/String;
    if-eqz v4, :cond_63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_63

    .line 7302
    const-string v5, "Restore the Previous Used IME because KnoxDesktop Disconnected"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7303
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 7304
    invoke-virtual {v5, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v5

    .line 7303
    invoke-virtual {v2, v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 7305
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7308
    :cond_63
    return-void

    .line 7291
    .end local v4    # "currentIME":Ljava/lang/String;
    :cond_64
    :goto_64
    const-string v1, "KnoxDesktopModeReceiver : Failed to return the previous IME becuase the stored info is null or do not need restore"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7292
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 7312
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7313
    if-eqz p2, :cond_e3

    :try_start_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e3

    .line 7314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 7315
    .local v1, "intentAction":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6200(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v3

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->getDisplayIdOfInputMethodWindowToBeAdded(I)I
    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6300(Lcom/android/server/inputmethod/InputMethodManagerService;I)I

    move-result v2

    .line 7316
    .local v2, "mAddedWindowDisplayId":I
    sget-object v3, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 7317
    const-string v3, "InputMethodManagerService"

    const-string v4, "KnoxDesktop Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7318
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->isDEXStandAloneMode()Z
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6400(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result v3

    if-nez v3, :cond_e3

    :cond_3c
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->isSamsungDefaultMethodID()Z
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6500(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v3

    if-nez v3, :cond_e3

    .line 7320
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 7322
    .local v3, "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7323
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->setDefaultInputMethod()V
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6600(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 7324
    .end local v3    # "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    goto/16 :goto_e3

    .line 7325
    :cond_66
    sget-object v3, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 7328
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_98

    if-eqz v2, :cond_98

    .line 7330
    const-string v3, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unbind service when Desktop disconnected and Keyboard not in default display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7331
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mDeXDualViewChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$600(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->onChange(Z)V

    .line 7333
    :cond_98
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->isSamsungDefaultMethodID()Z
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6500(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v3

    .line 7334
    .local v3, "isCurrentInputMethodSamsungKeypad":Z
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentFocusDisplayID()I

    move-result v5

    .line 7335
    .local v5, "displayId":I
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7336
    .local v6, "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    const-string v7, "-1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_bf

    if-nez v6, :cond_be

    goto :goto_bf

    :cond_be
    move v4, v8

    .line 7337
    .local v4, "shouldNotRestorePrevInputMethod":Z
    :cond_bf
    :goto_bf
    if-eqz v3, :cond_d0

    if-eqz v4, :cond_d0

    .line 7338
    const-string v7, "InputMethodManagerService"

    const-string v9, "KnoxDesktop Disconnected startInputInnerLocked"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7339
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    goto :goto_e3

    .line 7342
    :cond_d0
    if-nez v4, :cond_dc

    .line 7343
    const-string v7, "InputMethodManagerService"

    const-string v8, "KnoxDesktop Disconnected Restore previous inputmethod"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7344
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;->restorePreviousUsedInputMethod()V

    .line 7346
    :cond_dc
    const-string v7, "InputMethodManagerService"

    const-string v8, "KnoxDesktop Disconnected it do not need to unbind service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7350
    .end local v1    # "intentAction":Ljava/lang/String;
    .end local v2    # "mAddedWindowDisplayId":I
    .end local v3    # "isCurrentInputMethodSamsungKeypad":Z
    .end local v4    # "shouldNotRestorePrevInputMethod":Z
    .end local v5    # "displayId":I
    .end local v6    # "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    :cond_e3
    :goto_e3
    monitor-exit v0

    .line 7351
    return-void

    .line 7350
    :catchall_e5
    move-exception v1

    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_7 .. :try_end_e7} :catchall_e5

    throw v1
.end method
