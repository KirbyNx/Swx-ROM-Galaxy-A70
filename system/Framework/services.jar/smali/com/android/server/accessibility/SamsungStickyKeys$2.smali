.class Lcom/android/server/accessibility/SamsungStickyKeys$2;
.super Landroid/os/Handler;
.source "SamsungStickyKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungStickyKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungStickyKeys;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungStickyKeys;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungStickyKeys;

    .line 83
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "index":I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_96

    goto :goto_2a

    .line 102
    :pswitch_7
    const/4 v0, 0x3

    .line 103
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    const/16 v2, -0x1001

    # &= operator for: Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I
    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$172(Lcom/android/server/accessibility/SamsungStickyKeys;I)I

    goto :goto_2a

    .line 98
    :pswitch_10
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    const/16 v2, -0x11

    # &= operator for: Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I
    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$172(Lcom/android/server/accessibility/SamsungStickyKeys;I)I

    .line 100
    goto :goto_2a

    .line 94
    :pswitch_19
    const/4 v0, 0x1

    .line 95
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    const/16 v2, -0x101

    # &= operator for: Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I
    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$172(Lcom/android/server/accessibility/SamsungStickyKeys;I)I

    .line 96
    goto :goto_2a

    .line 90
    :pswitch_22
    const/4 v0, 0x2

    .line 91
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    const/4 v2, -0x2

    # &= operator for: Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I
    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$172(Lcom/android/server/accessibility/SamsungStickyKeys;I)I

    .line 92
    nop

    .line 107
    :goto_2a
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    # getter for: Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$300(Lcom/android/server/accessibility/SamsungStickyKeys;)[Landroid/view/KeyEvent;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_94

    .line 108
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    # getter for: Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$400(Lcom/android/server/accessibility/SamsungStickyKeys;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 109
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send KEY_UP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    # getter for: Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$300(Lcom/android/server/accessibility/SamsungStickyKeys;)[Landroid/view/KeyEvent;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SamsungStickyKeys"

    # invokes: Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$500(Lcom/android/server/accessibility/SamsungStickyKeys;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    # getter for: Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$400(Lcom/android/server/accessibility/SamsungStickyKeys;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    # getter for: Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$300(Lcom/android/server/accessibility/SamsungStickyKeys;)[Landroid/view/KeyEvent;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    # getter for: Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpPolicyFlags:[I
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$600(Lcom/android/server/accessibility/SamsungStickyKeys;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 111
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    # getter for: Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$300(Lcom/android/server/accessibility/SamsungStickyKeys;)[Landroid/view/KeyEvent;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 112
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys$2;->this$0:Lcom/android/server/accessibility/SamsungStickyKeys;

    # getter for: Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpPolicyFlags:[I
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->access$600(Lcom/android/server/accessibility/SamsungStickyKeys;)[I

    move-result-object v1

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 116
    :cond_94
    return-void

    nop

    :pswitch_data_96
    .packed-switch 0x64
        :pswitch_22
        :pswitch_19
        :pswitch_10
        :pswitch_7
    .end packed-switch
.end method
