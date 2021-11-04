.class Lcom/android/server/wm/VrController$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "VrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/VrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/VrController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/VrController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/VrController;

    .line 123
    iput-object p1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    # getter for: Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/wm/VrController;->access$000(Lcom/android/server/wm/VrController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 129
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 130
    :try_start_b
    iget-object v3, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    const/4 v4, 0x3

    # invokes: Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I
    invoke-static {v3, v2, v4, v1}, Lcom/android/server/wm/VrController;->access$100(Lcom/android/server/wm/VrController;IIZ)I

    .line 131
    iget-object v1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    const/4 v2, 0x2

    # |= operator for: Lcom/android/server/wm/VrController;->mVrState:I
    invoke-static {v1, v2}, Lcom/android/server/wm/VrController;->access$276(Lcom/android/server/wm/VrController;I)I

    goto :goto_23

    .line 133
    :cond_18
    iget-object v3, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    # invokes: Lcom/android/server/wm/VrController;->setPersistentVrRenderThreadLocked(IZ)I
    invoke-static {v3, v2, v1}, Lcom/android/server/wm/VrController;->access$300(Lcom/android/server/wm/VrController;IZ)I

    .line 134
    iget-object v1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    const/4 v2, -0x3

    # &= operator for: Lcom/android/server/wm/VrController;->mVrState:I
    invoke-static {v1, v2}, Lcom/android/server/wm/VrController;->access$272(Lcom/android/server/wm/VrController;I)I

    .line 136
    :goto_23
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v1
.end method
