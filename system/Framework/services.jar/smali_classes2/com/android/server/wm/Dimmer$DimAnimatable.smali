.class Lcom/android/server/wm/Dimmer$DimAnimatable;
.super Ljava/lang/Object;
.source "Dimmer.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Dimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimAnimatable"
.end annotation


# instance fields
.field private mDimLayer:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/Dimmer;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V
    .registers 3
    .param p2, "dimLayer"    # Landroid/view/SurfaceControl;

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;Lcom/android/server/wm/Dimmer$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/wm/Dimmer;
    .param p2, "x1"    # Landroid/view/SurfaceControl;
    .param p3, "x2"    # Lcom/android/server/wm/Dimmer$1;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Dimmer$DimAnimatable;-><init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V

    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    # getter for: Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;
    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    .line 72
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    # getter for: Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;
    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    # getter for: Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;
    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    # getter for: Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;
    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    # getter for: Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;
    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    # getter for: Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;
    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    # getter for: Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;
    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 76
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 80
    return-void
.end method

.method removeSurface()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 120
    invoke-virtual {p0}, Lcom/android/server/wm/Dimmer$DimAnimatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 122
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    .line 123
    return-void
.end method
