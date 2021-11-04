.class Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungIMMSHWKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BTKeyboardReceiver"
.end annotation


# instance fields
.field private final BLUETOOTH_PROFILE_EXTRA_IS_KEYBOARD:Ljava/lang/String;

.field private final BLUETOOTH_PROFILE_EXTRA_PREVIOUS_STATE:Ljava/lang/String;

.field private mIsBTConnect:Z

.field final synthetic this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 195
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 196
    const-string v0, "android.bluetooth.profile.extra.isKeyboard"

    iput-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->BLUETOOTH_PROFILE_EXTRA_IS_KEYBOARD:Ljava/lang/String;

    .line 197
    const-string v0, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    iput-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->BLUETOOTH_PROFILE_EXTRA_PREVIOUS_STATE:Ljava/lang/String;

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    return-void
.end method

.method private resetBTKeyboardState()V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$200(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    .line 202
    .local v0, "checkBTKeyboard":I
    if-ne v0, v1, :cond_15

    .line 203
    iget-object v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/4 v2, -0x3

    # &= operator for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v1, v2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$272(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 204
    iget-object v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # invokes: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->updateBrightnessMode()V
    invoke-static {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$400(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 206
    :cond_15
    iget-object v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v1, v2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$502(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetBTKeyboardState : keyboardState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$200(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungIMMSHWKeyboard"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "intentAction":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputMethodService onReceive() intentAction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungIMMSHWKeyboard"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ")"

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-eqz v1, :cond_e9

    .line 214
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 215
    .local v1, "state":I
    const-string v8, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 216
    .local v6, "prevState":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BT Setting State] state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " prevState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/16 v8, 0xa

    const-string v9, ", KEYBOARD_BT("

    if-eq v1, v8, :cond_b8

    const/16 v8, 0xc

    if-eq v1, v8, :cond_8a

    const/16 v4, 0xd

    if-eq v1, v4, :cond_b8

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT] mBTKeyboardCount ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v4}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$500(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v4}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$200(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v4

    and-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20b

    .line 225
    :cond_8a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BT Setting off -> on] mBTKeyboardCount ="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v8}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$500(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v8}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$200(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v8

    and-int/2addr v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-boolean v4, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 227
    goto/16 :goto_20b

    .line 220
    :cond_b8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BT Setting on -> off] mBTKeyboardCount ="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v8}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$500(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v8}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$200(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v8

    and-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->resetBTKeyboardState()V

    .line 222
    iput-boolean v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 223
    goto/16 :goto_20b

    .line 231
    .end local v1    # "state":I
    .end local v6    # "prevState":I
    :cond_e9
    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 232
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 233
    .local v1, "extra":I
    const-string v8, "android.bluetooth.profile.extra.isKeyboard"

    invoke-virtual {p2, v8, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 234
    .local v8, "isKeyboard":Z
    const-string v9, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 236
    .restart local v6    # "prevState":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive() isKeyboard = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v9, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v9}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$200(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v9

    and-int/2addr v9, v7

    .line 239
    .local v9, "checkBTKeyboard":I
    if-eqz v8, :cond_20c

    .line 240
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive() state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", prevState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-ne v1, v7, :cond_198

    .line 242
    iput-boolean v4, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 243
    iget-object v4, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v4}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$500(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v4

    if-gez v4, :cond_16e

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[STATE_CONNECTED] change mBTKeyboardCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v5}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$500(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "--> 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v4, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # setter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v4, v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$502(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 247
    :cond_16e
    iget-object v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # operator++ for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$508(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[STATE_CONNECTED] mBTKeyboardCount[+] -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v4}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$500(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # |= operator for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v2, v7}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$276(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 250
    iget-object v2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # invokes: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->connectedHWKeyboard()V
    invoke-static {v2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$300(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    goto :goto_20c

    .line 252
    :cond_198
    if-ne v6, v7, :cond_20c

    .line 253
    iget-object v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$500(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v3

    if-ge v3, v4, :cond_1c6

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[prevState : STATE_CONNECTED] change mBTKeyboardCount "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v10}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$500(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "--> 1"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # setter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$502(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 257
    :cond_1c6
    iget-object v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # --operator for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$506(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v3

    if-eqz v3, :cond_1db

    iget-boolean v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->mIsBTConnect:Z

    if-nez v3, :cond_1de

    iget-object v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$200(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v3

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_1de

    .line 258
    :cond_1db
    invoke-direct {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->resetBTKeyboardState()V

    .line 260
    :cond_1de
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[prevState : STATE_CONNECTED] mBTKeyboardCount[-] -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I
    invoke-static {v4}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$500(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "keyboardState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v4}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$200(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20c

    .line 231
    .end local v1    # "extra":I
    .end local v6    # "prevState":I
    .end local v8    # "isKeyboard":Z
    .end local v9    # "checkBTKeyboard":I
    :cond_20b
    :goto_20b
    nop

    .line 264
    :cond_20c
    :goto_20c
    return-void
.end method
