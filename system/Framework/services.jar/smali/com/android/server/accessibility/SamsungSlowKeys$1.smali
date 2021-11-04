.class Lcom/android/server/accessibility/SamsungSlowKeys$1;
.super Landroid/os/Handler;
.source "SamsungSlowKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungSlowKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungSlowKeys;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungSlowKeys;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungSlowKeys;

    .line 36
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .line 39
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    # getter for: Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungSlowKeys;->access$000(Lcom/android/server/accessibility/SamsungSlowKeys;)Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 40
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    # getter for: Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungSlowKeys;->access$000(Lcom/android/server/accessibility/SamsungSlowKeys;)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungSlowKeys"

    # invokes: Lcom/android/server/accessibility/SamsungSlowKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/SamsungSlowKeys;->access$100(Lcom/android/server/accessibility/SamsungSlowKeys;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    # getter for: Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungSlowKeys;->access$200(Lcom/android/server/accessibility/SamsungSlowKeys;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 43
    .local v0, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 44
    .local v2, "eventTime":J
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    # getter for: Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungSlowKeys;->access$000(Lcom/android/server/accessibility/SamsungSlowKeys;)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/KeyEvent;->setTime(JJ)V

    .line 45
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    # getter for: Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungSlowKeys;->access$200(Lcom/android/server/accessibility/SamsungSlowKeys;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    # getter for: Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungSlowKeys;->access$000(Lcom/android/server/accessibility/SamsungSlowKeys;)Landroid/view/KeyEvent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    # getter for: Lcom/android/server/accessibility/SamsungSlowKeys;->mPolicyFlags:I
    invoke-static {v6}, Lcom/android/server/accessibility/SamsungSlowKeys;->access$300(Lcom/android/server/accessibility/SamsungSlowKeys;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 46
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v4, v5}, Lcom/android/server/accessibility/SamsungSlowKeys;->access$002(Lcom/android/server/accessibility/SamsungSlowKeys;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 49
    .end local v0    # "downTime":J
    .end local v2    # "eventTime":J
    :cond_5f
    return-void
.end method
