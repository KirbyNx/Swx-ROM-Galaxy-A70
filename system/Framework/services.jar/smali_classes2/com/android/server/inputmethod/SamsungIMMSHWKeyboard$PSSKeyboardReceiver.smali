.class Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungIMMSHWKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PSSKeyboardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 312
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "intentAction":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSSKeyboardReceiver : onReceive() intentAction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungIMMSHWKeyboard"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v1, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 318
    const/4 v1, -0x1

    const-string v3, "device_state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 319
    .local v1, "extra":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSSKeyboardReceiver : onReceive(), getIntExtra - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4d

    .line 321
    iget-object v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/16 v4, 0x10

    # |= operator for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$276(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 322
    iget-object v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # invokes: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->connectedHWKeyboard()V
    invoke-static {v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$300(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    goto :goto_59

    .line 325
    :cond_4d
    iget-object v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/16 v4, -0x11

    # &= operator for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$272(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 326
    iget-object v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # invokes: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->updateBrightnessMode()V
    invoke-static {v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$400(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 329
    .end local v1    # "extra":I
    :cond_59
    :goto_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSSKeyboardReceiver :  onReceive(), keyboardState - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$200(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method
