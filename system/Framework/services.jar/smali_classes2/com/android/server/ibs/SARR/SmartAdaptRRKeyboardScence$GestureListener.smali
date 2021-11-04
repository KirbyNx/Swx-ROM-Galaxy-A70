.class Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SmartAdaptRRKeyboardScence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;


# direct methods
.method private constructor <init>(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;
    .param p2, "x1"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$1;

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;-><init>(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 265
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mMultiWindowEnable:Z
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$900(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastUserAction:Z
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$1000(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Z

    move-result v0

    if-ne v1, v0, :cond_12

    goto :goto_65

    .line 266
    :cond_12
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    move-result-object v0

    const/16 v2, 0x130

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->hasMessages(I)Z

    move-result v0

    iget-object v3, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    invoke-static {v3}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    move-result-object v3

    const/16 v4, 0x131

    invoke-virtual {v3, v4}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->hasMessages(I)Z

    move-result v3

    or-int/2addr v0, v3

    if-eqz v0, :cond_3f

    .line 267
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->removeMessages(I)V

    .line 268
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->removeMessages(I)V

    .line 272
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onDown Action change mLastUserAction = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastUserAction:Z
    invoke-static {v3}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$1000(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SmartAdaptRRKeyboardScence"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->sendEmptyMessage(I)Z

    .line 274
    return v1

    .line 265
    :cond_65
    :goto_65
    return v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 279
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mMultiWindowEnable:Z
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$900(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastUserAction:Z
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$1000(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_65

    .line 280
    :cond_12
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    move-result-object v0

    const/16 v2, 0x130

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->hasMessages(I)Z

    move-result v0

    iget-object v3, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    invoke-static {v3}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    move-result-object v3

    const/16 v4, 0x131

    invoke-virtual {v3, v4}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->hasMessages(I)Z

    move-result v3

    or-int/2addr v0, v3

    if-eqz v0, :cond_3f

    .line 281
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->removeMessages(I)V

    .line 282
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->removeMessages(I)V

    .line 284
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onScroll Action change mLastUserAction = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mLastUserAction:Z
    invoke-static {v2}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$1000(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmartAdaptRRKeyboardScence"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$GestureListener;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mHandler:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$700(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->sendEmptyMessage(I)Z

    .line 286
    return v1

    .line 279
    :cond_65
    :goto_65
    return v1
.end method
