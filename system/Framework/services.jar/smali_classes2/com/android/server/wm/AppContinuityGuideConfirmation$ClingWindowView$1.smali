.class Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$1;
.super Ljava/lang/Object;
.source "AppContinuityGuideConfirmation.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mLocationInWindow:[I

.field final synthetic this$1:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    .line 289
    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$1;->this$1:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$1;->mLocationInWindow:[I

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 8
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$1;->this$1:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->access$000(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$1;->mLocationInWindow:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 297
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 299
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$1;->mLocationInWindow:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$1;->this$1:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    .line 302
    # getter for: Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->access$000(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$1;->mLocationInWindow:[I

    aget v2, v2, v4

    iget-object v4, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$1;->this$1:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    .line 303
    # getter for: Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->access$000(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 299
    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Region;->set(IIII)Z

    .line 304
    return-void
.end method
