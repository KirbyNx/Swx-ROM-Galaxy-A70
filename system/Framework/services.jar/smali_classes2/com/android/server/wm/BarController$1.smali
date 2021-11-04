.class Lcom/android/server/wm/BarController$1;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/BarController;->updateStateLw(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/BarController;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/BarController;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/BarController;

    .line 252
    iput-object p1, p0, Lcom/android/server/wm/BarController$1;->this$0:Lcom/android/server/wm/BarController;

    iput p2, p0, Lcom/android/server/wm/BarController$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/BarController$1;->this$0:Lcom/android/server/wm/BarController;

    invoke-virtual {v0}, Lcom/android/server/wm/BarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 256
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_17

    .line 257
    iget-object v1, p0, Lcom/android/server/wm/BarController$1;->this$0:Lcom/android/server/wm/BarController;

    iget v1, v1, Lcom/android/server/wm/BarController;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/BarController$1;->this$0:Lcom/android/server/wm/BarController;

    # getter for: Lcom/android/server/wm/BarController;->mStatusBarManagerId:I
    invoke-static {v2}, Lcom/android/server/wm/BarController;->access$000(Lcom/android/server/wm/BarController;)I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/BarController$1;->val$state:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setWindowState(III)V

    .line 259
    :cond_17
    return-void
.end method
