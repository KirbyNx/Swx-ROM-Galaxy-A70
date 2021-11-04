.class Lcom/android/server/accessibility/SamsungTapDuration$1;
.super Landroid/os/Handler;
.source "SamsungTapDuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTapDuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDuration;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTapDuration;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungTapDuration;

    .line 60
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    .line 64
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_89

    .line 66
    const/4 v2, 0x0

    .line 68
    .local v2, "pointerIdBits":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "SamsungTapDuration"

    if-ge v3, v4, :cond_7d

    .line 69
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTapDuration;->access$000(Lcom/android/server/accessibility/SamsungTapDuration;)[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    move-result-object v4

    aget-object v4, v4, v3

    if-eqz v4, :cond_22

    .line 70
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTapDuration;->access$000(Lcom/android/server/accessibility/SamsungTapDuration;)[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4, v5}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    .line 72
    :cond_22
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTapDuration;->access$100(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;

    move-result-object v4

    aget-object v4, v4, v3

    if-eqz v4, :cond_7a

    .line 73
    shl-int v4, v1, v3

    or-int/2addr v2, v4

    .line 75
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTapDuration;->access$100(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 78
    :try_start_3e
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungTapDuration;->access$100(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;
    invoke-static {v7}, Lcom/android/server/accessibility/SamsungTapDuration;->access$200(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # getter for: Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I
    invoke-static {v8}, Lcom/android/server/accessibility/SamsungTapDuration;->access$300(Lcom/android/server/accessibility/SamsungTapDuration;)[I

    move-result-object v8

    aget v8, v8, v3

    # invokes: Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v4, v5, v7, v8}, Lcom/android/server/accessibility/SamsungTapDuration;->access$400(Lcom/android/server/accessibility/SamsungTapDuration;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_63} :catch_66
    .catchall {:try_start_3e .. :try_end_63} :catchall_64

    .line 82
    goto :goto_6e

    :catchall_64
    move-exception v1

    goto :goto_74

    .line 79
    :catch_66
    move-exception v4

    .line 80
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_67
    const-string/jumbo v5, "idBits did not match any ids in the event"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_64

    .line 82
    nop

    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_6e
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # invokes: Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/SamsungTapDuration;->access$500(Lcom/android/server/accessibility/SamsungTapDuration;I)V

    .line 83
    goto :goto_7a

    .line 82
    :goto_74
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # invokes: Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/SamsungTapDuration;->access$500(Lcom/android/server/accessibility/SamsungTapDuration;I)V

    .line 83
    throw v1

    .line 68
    :cond_7a
    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 86
    .end local v3    # "i":I
    :cond_7d
    const-string v1, "Tap is valid"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$1;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    # setter for: Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z
    invoke-static {v1, v5}, Lcom/android/server/accessibility/SamsungTapDuration;->access$602(Lcom/android/server/accessibility/SamsungTapDuration;Z)Z

    .line 89
    .end local v2    # "pointerIdBits":I
    nop

    .line 94
    return-void

    .line 91
    :cond_89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unkwown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
