.class Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$1;
.super Ljava/lang/Object;
.source "SmartAdaptRRKeyboardScence.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;


# direct methods
.method constructor <init>(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 253
    iput-object p1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$1;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 256
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$1;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    iget-boolean v0, v0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mKeyboardEnable:Z

    if-nez v0, :cond_7

    return-void

    .line 257
    :cond_7
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$1;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # getter for: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$800(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 258
    return-void
.end method
