.class Lcom/android/server/wm/VrController$2;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
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

    .line 141
    iput-object p1, p0, Lcom/android/server/wm/VrController$2;->this$0:Lcom/android/server/wm/VrController;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/VrController$2;->this$0:Lcom/android/server/wm/VrController;

    # getter for: Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/wm/VrController;->access$000(Lcom/android/server/wm/VrController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 145
    const/16 v1, 0x40

    if-eq p1, v1, :cond_17

    const/16 v1, 0x80

    if-eq p1, v1, :cond_10

    goto :goto_1e

    .line 150
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/wm/VrController$2;->this$0:Lcom/android/server/wm/VrController;

    const/4 v2, -0x3

    # &= operator for: Lcom/android/server/wm/VrController;->mGearVrState:I
    invoke-static {v1, v2}, Lcom/android/server/wm/VrController;->access$472(Lcom/android/server/wm/VrController;I)I

    .line 151
    goto :goto_1e

    .line 147
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/VrController$2;->this$0:Lcom/android/server/wm/VrController;

    const/4 v2, 0x2

    # |= operator for: Lcom/android/server/wm/VrController;->mGearVrState:I
    invoke-static {v1, v2}, Lcom/android/server/wm/VrController;->access$476(Lcom/android/server/wm/VrController;I)I

    .line 148
    nop

    .line 155
    :goto_1e
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_20

    throw v1
.end method
