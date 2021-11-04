.class Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;
.super Ljava/lang/Object;
.source "SamsungIMMSHWKeyboard.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    .line 273
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;->this$1:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyKeyboardCoverBackfolded(JZ)V
    .registers 6
    .param p1, "whenNanos"    # J
    .param p3, "backfolded"    # Z

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyKeyboardCoverBackfolded, backfolded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungIMMSHWKeyboard"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-eqz p3, :cond_23

    .line 278
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;->this$1:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    iget-object v0, v0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/16 v1, 0x8

    # |= operator for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v0, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$276(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    goto :goto_2c

    .line 280
    :cond_23
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;->this$1:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    iget-object v0, v0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/16 v1, -0x9

    # &= operator for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v0, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$272(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 282
    :goto_2c
    return-void
.end method
