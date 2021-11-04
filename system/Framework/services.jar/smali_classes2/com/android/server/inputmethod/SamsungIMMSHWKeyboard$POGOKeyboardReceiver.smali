.class Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungIMMSHWKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "POGOKeyboardReceiver"
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mIsPOGOConnect:Z

.field final synthetic this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 267
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mIsPOGOConnect:Z

    .line 269
    nop

    .line 270
    const-string/jumbo v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 272
    new-instance v0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-eqz v0, :cond_9

    .line 287
    iget-object v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setInputMethodManagerCallbacks(Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;)V

    .line 289
    :cond_9
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 293
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "intentAction":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputMethodManagerService onReceive() intentAction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungIMMSHWKeyboard"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 296
    const/4 v1, 0x0

    const-string/jumbo v3, "status"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 297
    .local v1, "isConnection":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputMethodManagerService onReceive() isConnection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz v1, :cond_50

    .line 299
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mIsPOGOConnect:Z

    .line 300
    iget-object v2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/16 v3, 0x40

    # |= operator for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v2, v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$276(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 301
    iget-object v2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # invokes: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->connectedHWKeyboard()V
    invoke-static {v2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$300(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    goto :goto_63

    .line 303
    :cond_50
    const-string v3, "InputMethodManagerService onReceive() POGO_KEYBOARD_REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/16 v3, -0x41

    # &= operator for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v2, v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$272(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 305
    iget-object v2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/16 v3, -0x9

    # &= operator for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v2, v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$272(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 308
    .end local v1    # "isConnection":Z
    :cond_63
    :goto_63
    return-void
.end method
