.class final Lcom/android/server/wm/DexHelpController$H;
.super Landroid/os/Handler;
.source "DexHelpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexHelpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field static final DEX_HELP_TIMEOUT:I = 0xc8


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DexHelpController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DexHelpController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/DexHelpController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 108
    iput-object p1, p0, Lcom/android/server/wm/DexHelpController$H;->this$0:Lcom/android/server/wm/DexHelpController;

    .line 109
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_7

    goto :goto_21

    .line 116
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 117
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/server/wm/DexHelpController$H;->this$0:Lcom/android/server/wm/DexHelpController;

    # getter for: Lcom/android/server/wm/DexHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/DexHelpController;->access$000(Lcom/android/server/wm/DexHelpController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v1

    monitor-enter v1

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 118
    iget-object v2, p0, Lcom/android/server/wm/DexHelpController$H;->this$0:Lcom/android/server/wm/DexHelpController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DexHelpController;->timeout(I)V

    .line 119
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    .end local v0    # "mode":I
    nop

    .line 124
    :goto_21
    return-void

    .line 119
    .restart local v0    # "mode":I
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
