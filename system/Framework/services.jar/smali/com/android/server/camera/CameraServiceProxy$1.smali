.class Lcom/android/server/camera/CameraServiceProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 164
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    return-void

    .line 170
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_72

    :cond_13
    goto :goto_45

    :sswitch_14
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x0

    goto :goto_45

    :sswitch_1e
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v1, v3

    goto :goto_45

    :sswitch_28
    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v1, v5

    goto :goto_45

    :sswitch_32
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v1, v4

    goto :goto_45

    :sswitch_3c
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v1, v6

    :goto_45
    if-eqz v1, :cond_50

    if-eq v1, v6, :cond_50

    if-eq v1, v5, :cond_50

    if-eq v1, v4, :cond_50

    if-eq v1, v3, :cond_50

    goto :goto_6e

    .line 176
    :cond_50
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    # getter for: Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/camera/CameraServiceProxy;->access$000(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_57
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    # getter for: Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/server/camera/CameraServiceProxy;->access$100(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_61

    monitor-exit v1

    return-void

    .line 179
    :cond_61
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    # getter for: Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I
    invoke-static {v3}, Lcom/android/server/camera/CameraServiceProxy;->access$200(Lcom/android/server/camera/CameraServiceProxy;)I

    move-result v3

    # invokes: Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V
    invoke-static {v2, v3}, Lcom/android/server/camera/CameraServiceProxy;->access$300(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 180
    monitor-exit v1

    .line 181
    nop

    .line 186
    :goto_6e
    return-void

    .line 180
    :catchall_6f
    move-exception v2

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_57 .. :try_end_71} :catchall_6f

    throw v2

    :sswitch_data_72
    .sparse-switch
        -0x7ad942ef -> :sswitch_3c
        -0x16fbb1bb -> :sswitch_32
        -0xc02da2e -> :sswitch_28
        0x3eac4465 -> :sswitch_1e
        0x42dd01f1 -> :sswitch_14
    .end sparse-switch
.end method
