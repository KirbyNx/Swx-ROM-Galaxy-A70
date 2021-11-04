.class Lcom/android/server/accessibility/SamsungMagnifierWindow$2;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;->setFollowingMagnifierWindow(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field animation_offsetX:F

.field animation_offsetY:F

.field frameCnt:I

.field gap_offsetX:F

.field gap_offsetY:F

.field next_offsetX:F

.field prev_offsetX:F

.field prev_offsetY:F

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$offsetX:F

.field final synthetic val$offsetY:F


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;FFLandroid/os/Handler;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 831
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iput p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->val$offsetX:F

    iput p3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->val$offsetY:F

    iput-object p4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    const/4 p2, 0x5

    iput p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->frameCnt:I

    .line 833
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->animation_offsetX:F

    .line 834
    iput p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->animation_offsetY:F

    .line 835
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object p2

    iget p2, p2, Landroid/view/MagnificationSpec;->offsetX:F

    iput p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->prev_offsetX:F

    .line 836
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object p2

    iget p2, p2, Landroid/view/MagnificationSpec;->offsetY:F

    iput p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->prev_offsetY:F

    .line 837
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_editBox_right:I
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1200()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->val$offsetX:F

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_40

    .line 838
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_editBox_right:I
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1200()I

    move-result p2

    int-to-float p3, p2

    goto :goto_41

    :cond_40
    nop

    :goto_41
    iput p3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->next_offsetX:F

    .line 839
    iget p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->prev_offsetX:F

    sub-float/2addr p3, p2

    const/high16 p2, 0x40a00000    # 5.0f

    div-float/2addr p3, p2

    iput p3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->gap_offsetX:F

    .line 840
    iget p3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->val$offsetY:F

    iget p4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->prev_offsetY:F

    sub-float/2addr p3, p4

    div-float/2addr p3, p2

    iput p3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->gap_offsetY:F

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 843
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->gap_offsetX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_17

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->gap_offsetY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_70

    .line 844
    :cond_17
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->frameCnt:I

    if-lez v0, :cond_66

    .line 845
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->prev_offsetX:F

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->gap_offsetX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->animation_offsetX:F

    .line 846
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->prev_offsetY:F

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->gap_offsetY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->animation_offsetY:F

    .line 847
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->prev_offsetX:F

    iget v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->prev_offsetY:F

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    .line 848
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->animation_offsetX:F

    iget v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->animation_offsetY:F

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->moveWindow(FF)V
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1300(Lcom/android/server/accessibility/SamsungMagnifierWindow;FF)V

    .line 849
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v1, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    .line 850
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->animation_offsetX:F

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->prev_offsetX:F

    .line 851
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->animation_offsetY:F

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->prev_offsetY:F

    .line 852
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->frameCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->frameCnt:I

    .line 853
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1400(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 855
    :cond_66
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->animation_offsetX:F

    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1502(F)F

    .line 856
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->animation_offsetY:F

    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1602(F)F

    .line 858
    :cond_70
    return-void
.end method
