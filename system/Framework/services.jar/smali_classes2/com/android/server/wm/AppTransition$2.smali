.class Lcom/android/server/wm/AppTransition$2;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/AppTransition;

    .line 328
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$2;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "input"    # F

    .line 332
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_13

    .line 333
    div-float v0, p1, v0

    .line 334
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/server/wm/AppTransition$2;->this$0:Lcom/android/server/wm/AppTransition;

    # getter for: Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    return v1

    .line 336
    .end local v0    # "t":F
    :cond_13
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
