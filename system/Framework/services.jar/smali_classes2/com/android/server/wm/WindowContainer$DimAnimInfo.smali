.class Lcom/android/server/wm/WindowContainer$DimAnimInfo;
.super Ljava/lang/Object;
.source "WindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DimAnimInfo"
.end annotation


# instance fields
.field mDimAnimDuration:I

.field mDimmer:Lcom/android/server/wm/Dimmer;

.field mIsExitingAnim:Z

.field final mOwner:Lcom/android/server/wm/WindowContainer;

.field mTargetDimAlpha:F

.field mTriggered:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "owner"    # Lcom/android/server/wm/WindowContainer;

    .line 3060
    .local p0, "this":Lcom/android/server/wm/WindowContainer$DimAnimInfo;, "Lcom/android/server/wm/WindowContainer<TE;>.DimAnimInfo;"
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3054
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mTargetDimAlpha:F

    .line 3058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mTriggered:Z

    .line 3061
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mOwner:Lcom/android/server/wm/WindowContainer;

    .line 3062
    return-void
.end method

.method private reset()V
    .registers 2

    .line 3120
    .local p0, "this":Lcom/android/server/wm/WindowContainer$DimAnimInfo;, "Lcom/android/server/wm/WindowContainer<TE;>.DimAnimInfo;"
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mTargetDimAlpha:F

    .line 3121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mIsExitingAnim:Z

    .line 3122
    iput v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimAnimDuration:I

    .line 3123
    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mTriggered:Z

    .line 3124
    return-void
.end method


# virtual methods
.method clearDimAnimation(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 3101
    .local p0, "this":Lcom/android/server/wm/WindowContainer$DimAnimInfo;, "Lcom/android/server/wm/WindowContainer<TE;>.DimAnimInfo;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    if-eqz v0, :cond_43

    .line 3102
    iget-boolean v1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mIsExitingAnim:Z

    if-nez v1, :cond_20

    .line 3103
    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 3104
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    .line 3106
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->this$0:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 3107
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->this$0:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    .line 3109
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->clearAnimDuration()V

    .line 3110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 3112
    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->reset()V

    .line 3114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearDimAnimation owner = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mOwner:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    :cond_43
    return-void
.end method

.method prepareDimAnimOnAnimating(FIZ)V
    .registers 6
    .param p1, "targetDimAlpha"    # F
    .param p2, "dimAnimDuration"    # I
    .param p3, "isExitingAnim"    # Z

    .line 3066
    .local p0, "this":Lcom/android/server/wm/WindowContainer$DimAnimInfo;, "Lcom/android/server/wm/WindowContainer<TE;>.DimAnimInfo;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prepareDimAnimOnAnimating owner = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mOwner:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mOwner:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 3069
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->clearDimAnimation(Landroid/view/SurfaceControl$Transaction;)V

    .line 3070
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 3072
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mTriggered:Z

    .line 3073
    iput p1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mTargetDimAlpha:F

    .line 3074
    iput p2, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimAnimDuration:I

    .line 3075
    iput-boolean p3, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mIsExitingAnim:Z

    .line 3076
    return-void
.end method

.method startDimAnimation(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 3079
    .local p0, "this":Lcom/android/server/wm/WindowContainer$DimAnimInfo;, "Lcom/android/server/wm/WindowContainer<TE;>.DimAnimInfo;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mTriggered:Z

    if-eqz v0, :cond_6a

    .line 3081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDimAnimation owner = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mOwner:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    new-instance v0, Lcom/android/server/wm/Dimmer;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mOwner:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 3084
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->setAnimatingDim(Z)V

    .line 3085
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mOwner:Lcom/android/server/wm/WindowContainer;

    iget v2, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mTargetDimAlpha:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    .line 3087
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->this$0:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 3088
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mIsExitingAnim:Z

    if-eqz v0, :cond_50

    .line 3089
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->this$0:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Dimmer;->startDim(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 3090
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 3093
    :cond_50
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->this$0:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDimAnimInfo:Lcom/android/server/wm/WindowContainer$DimAnimInfo;

    iget v1, v1, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimAnimDuration:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->setAnimDuration(I)V

    .line 3094
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->this$0:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 3095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mTriggered:Z

    .line 3098
    :cond_6a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 3128
    .local p0, "this":Lcom/android/server/wm/WindowContainer$DimAnimInfo;, "Lcom/android/server/wm/WindowContainer<TE;>.DimAnimInfo;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3129
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 3130
    .local v1, "isValid":Z
    const/4 v2, 0x0

    .line 3131
    .local v2, "isDimming":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    if-eqz v3, :cond_27

    iget-object v3, v3, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v3, v3, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v3, v3, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_27

    .line 3133
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v3, v3, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v3, v3, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    .line 3134
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v3, v3, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v2, v3, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    .line 3136
    :cond_27
    const-string v3, " mOwner="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3137
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mOwner:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3138
    const-string v3, " mDimmer="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3141
    const-string v3, " isDimLayerValid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3143
    const-string v3, " isDimming="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3146
    const-string v3, " mIsExitingAnim="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3147
    iget-boolean v3, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mIsExitingAnim:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3148
    const-string v3, " mTriggered="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3149
    iget-boolean v3, p0, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->mTriggered:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
