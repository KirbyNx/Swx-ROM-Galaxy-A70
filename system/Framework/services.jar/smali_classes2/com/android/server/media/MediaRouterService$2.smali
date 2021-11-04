.class Lcom/android/server/media/MediaRouterService$2;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaRouterService;

    .line 191
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .registers 8
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .line 194
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    # getter for: Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 196
    :try_start_7
    const-string v1, "BT"

    iget-object v2, p1, Landroid/media/AudioRoutesInfo;->setForcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    iget-object v1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1d

    .line 197
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    # setter for: Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z
    invoke-static {v1, v2}, Lcom/android/server/media/MediaRouterService;->access$502(Lcom/android/server/media/MediaRouterService;Z)Z

    goto :goto_2c

    .line 198
    :cond_1d
    const-string v1, "OTHERS"

    iget-object v4, p1, Landroid/media/AudioRoutesInfo;->setForcePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 199
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    # setter for: Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z
    invoke-static {v1, v3}, Lcom/android/server/media/MediaRouterService;->access$502(Lcom/android/server/media/MediaRouterService;Z)Z

    .line 201
    :cond_2c
    :goto_2c
    const-string v1, "MediaRouterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchAudioRoutesChanged setForcePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/media/AudioRoutesInfo;->setForcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mForceBluetoothA2dpOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    # getter for: Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z
    invoke-static {v5}, Lcom/android/server/media/MediaRouterService;->access$500(Lcom/android/server/media/MediaRouterService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget v4, v4, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    if-eq v1, v4, :cond_96

    .line 204
    iget v1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v1, v1, 0x13

    if-nez v1, :cond_8c

    .line 208
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v4, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-nez v4, :cond_6e

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v4, v4, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_6d

    goto :goto_6e

    :cond_6d
    move v2, v3

    :cond_6e
    :goto_6e
    iput-boolean v2, v1, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 210
    iget-object v1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-boolean v1, v1, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    if-eqz v1, :cond_90

    .line 211
    const-string v1, "MediaRouterService"

    const-string v2, "force restoreBluetoothA2dp()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    .line 213
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    # setter for: Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z
    invoke-static {v1, v3}, Lcom/android/server/media/MediaRouterService;->access$502(Lcom/android/server/media/MediaRouterService;Z)Z

    goto :goto_90

    .line 217
    :cond_8c
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iput-boolean v3, v1, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 219
    :cond_90
    :goto_90
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v2, v1, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    .line 224
    :cond_96
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_98
    move-exception v1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_7 .. :try_end_9a} :catchall_98

    throw v1
.end method
