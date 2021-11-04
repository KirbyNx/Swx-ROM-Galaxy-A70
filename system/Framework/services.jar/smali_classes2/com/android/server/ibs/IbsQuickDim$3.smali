.class Lcom/android/server/ibs/IbsQuickDim$3;
.super Ljava/lang/Object;
.source "IbsQuickDim.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IbsQuickDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IbsQuickDim;


# direct methods
.method constructor <init>(Lcom/android/server/ibs/IbsQuickDim;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 316
    iput-object p1, p0, Lcom/android/server/ibs/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_19

    .line 320
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$400(Lcom/android/server/ibs/IbsQuickDim;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 321
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$800(Lcom/android/server/ibs/IbsQuickDim;)Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessage(I)Z

    .line 324
    :cond_19
    return-void
.end method
