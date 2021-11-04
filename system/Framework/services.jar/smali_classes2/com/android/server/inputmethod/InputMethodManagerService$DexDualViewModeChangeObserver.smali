.class Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexDualViewModeChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 8113
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 8114
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8115
    return-void
.end method

.method private restorePreviousUsedInputMethod()V
    .registers 8

    .line 8168
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->isDexSetting()Z
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$7300(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v0

    const-string v1, "InputMethodManagerService"

    if-eqz v0, :cond_10

    .line 8169
    const-string v0, "DexDualViewModeChangeObserver : isDexSetting true, so do not need restore"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8170
    return-void

    .line 8174
    :cond_10
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8176
    .local v0, "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    if-eqz v0, :cond_34

    .line 8177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DexDualViewModeChangeObserver : restorePreviousUsedInputMethod - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8179
    :cond_34
    if-eqz v0, :cond_b4

    .line 8180
    const-string v3, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_b4

    .line 8185
    :cond_3f
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z
    invoke-static {v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6000(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 8186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DexDualViewModeChangeObserver : Failed to return the previous IME becuase the stored ime is uninstalled pre imi id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8187
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8188
    return-void

    .line 8191
    :cond_67
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v4, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 8192
    .local v4, "currentIME":Ljava/lang/String;
    if-eqz v4, :cond_9f

    .line 8193
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 8194
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    if-eqz v0, :cond_9f

    .line 8197
    const-string v5, "Restore the Previous Used IME because KnoxDesktop Disconnected"

    invoke-static {v1, v5}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8198
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 8199
    invoke-virtual {v5, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v5

    .line 8198
    invoke-virtual {v1, v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 8200
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_b3

    .line 8202
    :cond_9f
    const-string v2, "DexDualViewModeChangeObserver  restorePreviousUsedInputMethod reset Client because DualView option is change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8203
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 8204
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->getDisplayIdOfInputMethodWindowToBeAddedForDEX()I
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$7100(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v2

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedInnerLocked(I)Lcom/android/internal/view/InputBindResult;
    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$7200(Lcom/android/server/inputmethod/InputMethodManagerService;I)Lcom/android/internal/view/InputBindResult;

    .line 8206
    :goto_b3
    return-void

    .line 8181
    .end local v4    # "currentIME":Ljava/lang/String;
    :cond_b4
    :goto_b4
    const-string v2, "DexDualViewModeChangeObserver : Failed to return the previous IME becuase the stored info is null or do not need restore"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8182
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .line 8118
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8119
    :try_start_5
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DexDualViewModeChangeObserver- selfChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8120
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->isSamsungDefaultMethodID()Z
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6500(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v1

    .line 8121
    .local v1, "isCurrentInputMethodSamsungKeypad":Z
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6200(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v3

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->getDisplayIdOfInputMethodWindowToBeAdded(I)I
    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6300(Lcom/android/server/inputmethod/InputMethodManagerService;I)I

    move-result v2

    .line 8123
    .local v2, "displayId":I
    const/4 v3, 0x0

    if-eqz p1, :cond_76

    .line 8124
    if-eqz v1, :cond_4c

    .line 8126
    if-eqz v2, :cond_48

    .line 8127
    const-string v4, "InputMethodManagerService"

    const-string v5, "DexDualViewModeChangeObserver  Client because DualView option is change"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8128
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 8129
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    goto/16 :goto_be

    .line 8131
    :cond_48
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->restorePreviousUsedInputMethod()V

    goto :goto_be

    .line 8135
    :cond_4c
    if-eqz v2, :cond_be

    .line 8136
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 8138
    .local v3, "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8139
    const-string v4, "InputMethodManagerService"

    const-string v5, "DexDualViewModeChangeObserver set Default keyboard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8140
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->setDefaultInputMethod()V
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6600(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 8141
    .end local v3    # "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    goto :goto_be

    .line 8145
    :cond_76
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 8146
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->restorePreviousUsedInputMethod()V

    goto :goto_be

    .line 8148
    :cond_82
    if-eqz v1, :cond_95

    .line 8149
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 8150
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->getDisplayIdOfInputMethodWindowToBeAddedForDEX()I
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$7100(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v4

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedInnerLocked(I)Lcom/android/internal/view/InputBindResult;
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$7200(Lcom/android/server/inputmethod/InputMethodManagerService;I)Lcom/android/internal/view/InputBindResult;

    goto :goto_be

    .line 8153
    :cond_95
    if-eqz v2, :cond_be

    .line 8154
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 8156
    .restart local v3    # "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8157
    const-string v4, "InputMethodManagerService"

    const-string v5, "DexDualViewModeChangeObserver set Default keyboard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8158
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->setDefaultInputMethod()V
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$6600(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 8163
    .end local v1    # "isCurrentInputMethodSamsungKeypad":Z
    .end local v2    # "displayId":I
    .end local v3    # "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    :cond_be
    :goto_be
    monitor-exit v0

    .line 8164
    return-void

    .line 8163
    :catchall_c0
    move-exception v1

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_5 .. :try_end_c2} :catchall_c0

    throw v1
.end method
