.class final Lcom/android/server/policy/TspStateManager$H;
.super Landroid/os/Handler;
.source "TspStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TspStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TspStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/TspStateManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/TspStateManager;

    .line 148
    iput-object p1, p0, Lcom/android/server/policy/TspStateManager$H;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto :goto_26

    .line 159
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$H;->this$0:Lcom/android/server/policy/TspStateManager;

    # invokes: Lcom/android/server/policy/TspStateManager;->finishScreenTurningOnInner()V
    invoke-static {v0}, Lcom/android/server/policy/TspStateManager;->access$200(Lcom/android/server/policy/TspStateManager;)V

    goto :goto_26

    .line 156
    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$H;->this$0:Lcom/android/server/policy/TspStateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/server/policy/TspStateManager;->updateImePolicyInner(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/TspStateManager;->access$100(Lcom/android/server/policy/TspStateManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 157
    goto :goto_26

    .line 153
    :cond_1c
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$H;->this$0:Lcom/android/server/policy/TspStateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/server/policy/TspStateManager;->updateWindowPolicyInner(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/TspStateManager;->access$000(Lcom/android/server/policy/TspStateManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 154
    nop

    .line 162
    :goto_26
    return-void
.end method
