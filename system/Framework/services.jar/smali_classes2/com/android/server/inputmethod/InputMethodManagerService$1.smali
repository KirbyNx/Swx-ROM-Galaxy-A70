.class Lcom/android/server/inputmethod/InputMethodManagerService$1;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 542
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 546
    .local v0, "action":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    if-nez v0, :cond_3c

    .line 548
    :cond_a
    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mbWACOMPen:Z
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$000()Z

    move-result v1

    const-string v2, "InputMethodManagerService"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_26

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v3, :cond_26

    .line 549
    const-string v1, "PointerEventListener set true"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->setWACOMPen(Z)V
    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$100(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V

    goto :goto_3c

    .line 551
    :cond_26
    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mbWACOMPen:Z
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-eq v1, v3, :cond_3c

    .line 552
    const-string v1, "PointerEventListener set false"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    # invokes: Lcom/android/server/inputmethod/InputMethodManagerService;->setWACOMPen(Z)V
    invoke-static {v1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$100(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V

    .line 556
    :cond_3c
    :goto_3c
    return-void
.end method
