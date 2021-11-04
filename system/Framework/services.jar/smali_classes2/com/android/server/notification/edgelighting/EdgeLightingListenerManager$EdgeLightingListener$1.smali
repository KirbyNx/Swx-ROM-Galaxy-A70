.class Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;
.super Landroid/os/Handler;
.source "EdgeLightingListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;


# direct methods
.method constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 152
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 156
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    goto :goto_18

    .line 162
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    # invokes: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->_onEdgeLightingStopped()V
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$500(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)V

    .line 163
    goto :goto_18

    .line 159
    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    # invokes: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->_onEdgeLightingStarted()V
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$400(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)V

    .line 160
    nop

    .line 168
    :goto_18
    return-void
.end method
