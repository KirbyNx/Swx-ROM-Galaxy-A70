.class Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskChangeNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 206
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 207
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 208
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_140

    :pswitch_5
    goto/16 :goto_131

    .line 295
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_131

    .line 292
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 293
    goto/16 :goto_131

    .line 289
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 290
    goto/16 :goto_131

    .line 286
    :pswitch_28
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 287
    goto/16 :goto_131

    .line 277
    :pswitch_33
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayEmpty:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 278
    goto/16 :goto_131

    .line 283
    :pswitch_3e
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 284
    goto/16 :goto_131

    .line 280
    :pswitch_49
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2300(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 281
    goto/16 :goto_131

    .line 274
    :pswitch_54
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayDrawn:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 275
    goto/16 :goto_131

    .line 271
    :pswitch_5f
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2000(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 272
    goto/16 :goto_131

    .line 268
    :pswitch_6a
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1900(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 269
    goto/16 :goto_131

    .line 259
    :pswitch_75
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 260
    goto/16 :goto_131

    .line 256
    :pswitch_80
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 257
    goto/16 :goto_131

    .line 244
    :pswitch_8b
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 245
    goto/16 :goto_131

    .line 265
    :pswitch_96
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 266
    goto/16 :goto_131

    .line 262
    :pswitch_a1
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 263
    goto/16 :goto_131

    .line 238
    :pswitch_ac
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$900(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 239
    goto/16 :goto_131

    .line 235
    :pswitch_b7
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 236
    goto/16 :goto_131

    .line 232
    :pswitch_c2
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 233
    goto :goto_131

    .line 229
    :pswitch_cc
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 230
    goto :goto_131

    .line 226
    :pswitch_d6
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 227
    goto :goto_131

    .line 223
    :pswitch_e0
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 224
    goto :goto_131

    .line 253
    :pswitch_ea
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 254
    goto :goto_131

    .line 250
    :pswitch_f4
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1300(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 251
    goto :goto_131

    .line 247
    :pswitch_fe
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 248
    goto :goto_131

    .line 241
    :pswitch_108
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1000(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 242
    goto :goto_131

    .line 220
    :pswitch_112
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 221
    goto :goto_131

    .line 214
    :pswitch_11c
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$000(Lcom/android/server/wm/TaskChangeNotificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 215
    :try_start_123
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    # getter for: Lcom/android/server/wm/TaskChangeNotificationController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;
    invoke-static {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/ActivityStackSupervisor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->logStackState()V

    .line 216
    monitor-exit v0

    .line 217
    goto :goto_131

    .line 216
    :catchall_12e
    move-exception v1

    monitor-exit v0
    :try_end_130
    .catchall {:try_start_123 .. :try_end_130} :catchall_12e

    throw v1

    .line 298
    :goto_131
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/os/SomeArgs;

    if-eqz v0, :cond_13e

    .line 299
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 301
    :cond_13e
    return-void

    nop

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_11c
        :pswitch_112
        :pswitch_108
        :pswitch_fe
        :pswitch_5
        :pswitch_f4
        :pswitch_ea
        :pswitch_e0
        :pswitch_d6
        :pswitch_cc
        :pswitch_c2
        :pswitch_b7
        :pswitch_ac
        :pswitch_a1
        :pswitch_96
        :pswitch_5
        :pswitch_8b
        :pswitch_80
        :pswitch_75
        :pswitch_6a
        :pswitch_5f
        :pswitch_54
        :pswitch_49
        :pswitch_3e
        :pswitch_33
        :pswitch_28
        :pswitch_1d
        :pswitch_12
        :pswitch_7
    .end packed-switch
.end method
