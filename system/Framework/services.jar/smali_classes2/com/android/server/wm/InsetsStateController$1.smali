.class Lcom/android/server/wm/InsetsStateController$1;
.super Ljava/lang/Object;
.source "InsetsStateController.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsStateController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/InsetsStateController;

    .line 86
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController$1;->this$0:Lcom/android/server/wm/InsetsStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$notifyInsetsControlChanged$0()V
    .registers 1

    .line 96
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->removeImeSurface()V

    return-void
.end method


# virtual methods
.method public notifyInsetsControlChanged()V
    .registers 7

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController$1;->this$0:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v0

    .line 90
    .local v0, "controls":[Landroid/view/InsetsSourceControl;
    if-nez v0, :cond_9

    .line 91
    return-void

    .line 93
    :cond_9
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 94
    .local v3, "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_26

    .line 95
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController$1;->this$0:Lcom/android/server/wm/InsetsStateController;

    # getter for: Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v4}, Lcom/android/server/wm/InsetsStateController;->access$000(Lcom/android/server/wm/InsetsStateController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    sget-object v5, Lcom/android/server/wm/-$$Lambda$InsetsStateController$1$-dEtYGbz4qvW5yFCIz0yJqWDBWA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$1$-dEtYGbz4qvW5yFCIz0yJqWDBWA;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 93
    .end local v3    # "control":Landroid/view/InsetsSourceControl;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 99
    :cond_29
    return-void
.end method
