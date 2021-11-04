.class final Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;
.super Landroid/os/Handler;
.source "GearVrManagerExternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GearVrExternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerExternal;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/GearVrManagerExternal;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 71
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    const/4 v2, 0x2

    if-eq v0, v2, :cond_26

    const/4 v2, 0x3

    if-eq v0, v2, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    goto :goto_45

    .line 95
    :cond_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;

    .line 96
    .local v0, "vrActivityRecord":Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v1, v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleNotifyVrActivityFocusChanged(Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;)V

    .line 97
    goto :goto_45

    .line 90
    .end local v0    # "vrActivityRecord":Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;
    :cond_19
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    move v0, v1

    .line 91
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v1, v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleVrMode(Z)V

    .line 92
    goto :goto_45

    .line 84
    .end local v0    # "enabled":Z
    :cond_26
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 85
    .local v0, "event":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 86
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerExternal;->handleHmtEventChanged(II)V

    .line 87
    goto :goto_45

    .line 78
    .end local v0    # "event":I
    .end local v1    # "type":I
    :cond_30
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    # getter for: Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerExternal;->access$000(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 79
    :try_start_37
    const-string v1, "GearVrManagerExternal"

    const-string v2, "VRConnection timeout for VRService!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    # invokes: Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$100(Lcom/android/server/vr/GearVrManagerExternal;)V

    .line 81
    monitor-exit v0

    .line 82
    nop

    .line 101
    :goto_45
    return-void

    .line 81
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_46

    throw v1
.end method
