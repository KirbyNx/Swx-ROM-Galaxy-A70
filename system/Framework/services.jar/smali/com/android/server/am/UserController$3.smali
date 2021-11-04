.class Lcom/android/server/am/UserController$3;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Lcom/android/server/am/UserState$KeyEvictedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->restartUser(IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$foreground:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/UserController;

    .line 1078
    iput-object p1, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    iput-boolean p2, p0, Lcom/android/server/am/UserController$3;->val$foreground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyEvicted(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1083
    iget-object v0, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    # getter for: Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/am/UserController;->access$300(Lcom/android/server/am/UserController;)Landroid/os/Handler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/UserController$3;->val$foreground:Z

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$3$A5KxB7wo13M_s4_guYgNtw-Vi9U;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/am/-$$Lambda$UserController$3$A5KxB7wo13M_s4_guYgNtw-Vi9U;-><init>(Lcom/android/server/am/UserController$3;IZ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1084
    return-void
.end method

.method public synthetic lambda$keyEvicted$0$UserController$3(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .line 1083
    iget-object v0, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    return-void
.end method
