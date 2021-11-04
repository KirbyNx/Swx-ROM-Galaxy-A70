.class Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;
.super Landroid/os/Handler;
.source "SystemEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/SystemEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/chimera/SystemEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/SystemEventListener;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 117
    iput-object p1, p0, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/ipm/chimera/SystemEventListener;

    .line 118
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_d4

    goto/16 :goto_d3

    .line 155
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/ipm/chimera/SystemEventListener;

    # getter for: Lcom/android/server/ipm/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/SystemEventListener;->access$500(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;

    .line 156
    .local v1, "listener":Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;->onCarModeChanged(Z)V

    .line 157
    .end local v1    # "listener":Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;
    goto :goto_11

    .line 150
    :pswitch_22
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/ipm/chimera/SystemEventListener;

    # getter for: Lcom/android/server/ipm/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/SystemEventListener;->access$500(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;

    .line 151
    .restart local v1    # "listener":Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;->onCarModeChanged(Z)V

    .line 152
    .end local v1    # "listener":Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;
    goto :goto_2c

    .line 153
    :cond_3d
    goto/16 :goto_d3

    .line 145
    :pswitch_3f
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/ipm/chimera/SystemEventListener;

    # getter for: Lcom/android/server/ipm/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/SystemEventListener;->access$400(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;

    .line 146
    .local v1, "listener":Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;
    invoke-interface {v1}, Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;->onHomeLaunched()V

    .line 147
    .end local v1    # "listener":Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;
    goto :goto_49

    .line 148
    :cond_59
    goto/16 :goto_d3

    .line 140
    :pswitch_5b
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/ipm/chimera/SystemEventListener;

    # getter for: Lcom/android/server/ipm/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/SystemEventListener;->access$300(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;

    .line 141
    .local v1, "listener":Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;->onLmkdEventTriggered(II)V

    .line 142
    .end local v1    # "listener":Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;
    goto :goto_65

    .line 143
    :cond_79
    goto :goto_d3

    .line 130
    :pswitch_7a
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/ipm/chimera/SystemEventListener;

    # getter for: Lcom/android/server/ipm/chimera/SystemEventListener;->mPmmStateChangeListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/SystemEventListener;->access$100(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_84
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;

    .line 131
    .local v1, "listener":Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;->onPmmStateChanged(I)V

    .line 132
    .end local v1    # "listener":Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;
    goto :goto_84

    .line 133
    :cond_9c
    goto :goto_d3

    .line 125
    :pswitch_9d
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/ipm/chimera/SystemEventListener;

    # getter for: Lcom/android/server/ipm/chimera/SystemEventListener;->mBottleNeckHintListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/SystemEventListener;->access$000(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;

    .line 126
    .local v1, "listener":Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;
    invoke-interface {v1}, Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;->onBottleNeckHintTriggered()V

    .line 127
    .end local v1    # "listener":Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;
    goto :goto_a7

    .line 128
    :cond_b7
    goto :goto_d3

    .line 135
    :pswitch_b8
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/ipm/chimera/SystemEventListener;

    # getter for: Lcom/android/server/ipm/chimera/SystemEventListener;->mPmmCriticalListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/SystemEventListener;->access$200(Lcom/android/server/ipm/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;

    .line 136
    .local v1, "listener":Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;
    invoke-interface {v1}, Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;->onPmmCriticalTriggered()V

    .line 137
    .end local v1    # "listener":Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;
    goto :goto_c2

    .line 138
    :cond_d2
    nop

    .line 161
    :cond_d3
    :goto_d3
    return-void

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_9d
        :pswitch_7a
        :pswitch_5b
        :pswitch_3f
        :pswitch_22
        :pswitch_7
    .end packed-switch
.end method
