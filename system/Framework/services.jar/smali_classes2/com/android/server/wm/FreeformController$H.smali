.class final Lcom/android/server/wm/FreeformController$H;
.super Landroid/os/Handler;
.source "FreeformController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FreeformController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final BIND_MINIMIZE_CONTAINER_SERVICE:I = 0x65

.field public static final BIND_SMART_POPUP_VIEW_SERVICE:I = 0x67

.field public static final NOTIFY_FREEFORM_MINIMIZED:I = 0xc9

.field public static final NOTIFY_FREEFORM_MINIMIZE_ANIMATION_END:I = 0xcb

.field public static final NOTIFY_FREEFORM_UNMINIMIZED:I = 0xca

.field static final SHOW_NOT_SUPPORT_MULTI_WINDOW_TOAST:I = 0x1

.field public static final UNBIND_MINIMIZE_CONTAINER_SERVICE:I = 0x66

.field public static final UNBIND_SMART_POPUP_VIEW_SERVICE:I = 0x68


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FreeformController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FreeformController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/FreeformController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 237
    iput-object p1, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 238
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 243
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_119

    packed-switch v0, :pswitch_data_14a

    packed-switch v0, :pswitch_data_156

    goto/16 :goto_148

    .line 314
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 315
    :try_start_14
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 316
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 318
    .local v2, "taskId":I
    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/wm/FreeformController;->access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 319
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-ge v4, v3, :cond_43

    .line 320
    iget-object v5, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/wm/FreeformController;->access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_4f

    .line 322
    .local v5, "obs":Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_start_33
    invoke-interface {v5, v2}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onMinimizeAnimationEnd(I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37
    .catchall {:try_start_33 .. :try_end_36} :catchall_4f

    .line 325
    goto :goto_40

    .line 323
    :catch_37
    move-exception v6

    .line 324
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_38
    const-string v7, "FreeformController"

    const-string/jumbo v8, "onMinimizeAnimationEnd, RemoteException occurred"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v5    # "obs":Lcom/samsung/android/multiwindow/IFreeformCallback;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 327
    .end local v4    # "i":I
    :cond_43
    iget-object v4, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/wm/FreeformController;->access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 328
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "taskId":I
    .end local v3    # "N":I
    monitor-exit v0

    .line 329
    goto/16 :goto_148

    .line 328
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_38 .. :try_end_51} :catchall_4f

    throw v1

    .line 296
    :pswitch_52
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 297
    :try_start_59
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 298
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 300
    .restart local v2    # "taskId":I
    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/wm/FreeformController;->access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 301
    .restart local v3    # "N":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6a
    if-ge v4, v3, :cond_88

    .line 302
    iget-object v5, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/wm/FreeformController;->access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_78
    .catchall {:try_start_59 .. :try_end_78} :catchall_94

    .line 304
    .restart local v5    # "obs":Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_start_78
    invoke-interface {v5, v2}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onUnminimized(I)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_7b} :catch_7c
    .catchall {:try_start_78 .. :try_end_7b} :catchall_94

    .line 307
    goto :goto_85

    .line 305
    :catch_7c
    move-exception v6

    .line 306
    .restart local v6    # "e":Landroid/os/RemoteException;
    :try_start_7d
    const-string v7, "FreeformController"

    const-string/jumbo v8, "onRestored, RemoteException occurred"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v5    # "obs":Lcom/samsung/android/multiwindow/IFreeformCallback;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 309
    .end local v4    # "i":I
    :cond_88
    iget-object v4, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/wm/FreeformController;->access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 310
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "taskId":I
    .end local v3    # "N":I
    monitor-exit v0

    .line 311
    goto/16 :goto_148

    .line 310
    :catchall_94
    move-exception v1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_7d .. :try_end_96} :catchall_94

    throw v1

    .line 276
    :pswitch_97
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 277
    :try_start_9e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 278
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    .line 279
    .local v2, "realActivity":Landroid/content/ComponentName;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 280
    .local v3, "taskId":I
    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 282
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/wm/FreeformController;->access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 283
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b5
    if-ge v6, v5, :cond_d3

    .line 284
    iget-object v7, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v7}, Lcom/android/server/wm/FreeformController;->access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_c3
    .catchall {:try_start_9e .. :try_end_c3} :catchall_de

    .line 286
    .local v7, "obs":Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_start_c3
    invoke-interface {v7, v2, v3, v4}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onMinimized(Landroid/content/ComponentName;II)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_c6} :catch_c7
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_de

    .line 289
    goto :goto_d0

    .line 287
    :catch_c7
    move-exception v8

    .line 288
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_c8
    const-string v9, "FreeformController"

    const-string/jumbo v10, "onMinimized, RemoteException occurred"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v7    # "obs":Lcom/samsung/android/multiwindow/IFreeformCallback;
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_d0
    add-int/lit8 v6, v6, 0x1

    goto :goto_b5

    .line 291
    .end local v6    # "i":I
    :cond_d3
    iget-object v6, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/wm/FreeformController;->access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 292
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "realActivity":Landroid/content/ComponentName;
    .end local v3    # "taskId":I
    .end local v4    # "userId":I
    .end local v5    # "N":I
    monitor-exit v0

    .line 293
    goto :goto_148

    .line 292
    :catchall_de
    move-exception v1

    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_c8 .. :try_end_e0} :catchall_de

    throw v1

    .line 270
    :pswitch_e1
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/BubbleContainerServiceBinder;
    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->access$200(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/BubbleContainerServiceBinder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BubbleContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    .line 271
    goto :goto_148

    .line 267
    :pswitch_ef
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/BubbleContainerServiceBinder;
    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->access$200(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/BubbleContainerServiceBinder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BubbleContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    .line 268
    goto :goto_148

    .line 261
    :pswitch_fd
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/BubbleContainerServiceBinder;
    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->access$100(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/BubbleContainerServiceBinder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BubbleContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    .line 262
    goto :goto_148

    .line 258
    :pswitch_10b
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/BubbleContainerServiceBinder;
    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->access$100(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/BubbleContainerServiceBinder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BubbleContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    .line 259
    goto :goto_148

    .line 246
    :cond_119
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/FreeformController;->access$000(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 248
    .local v0, "themeContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    # getter for: Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/FreeformController;->access$000(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 251
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 252
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 253
    .end local v0    # "themeContext":Landroid/content/Context;
    .end local v1    # "toast":Landroid/widget/Toast;
    nop

    .line 334
    :goto_148
    return-void

    nop

    :pswitch_data_14a
    .packed-switch 0x65
        :pswitch_10b
        :pswitch_fd
        :pswitch_ef
        :pswitch_e1
    .end packed-switch

    :pswitch_data_156
    .packed-switch 0xc9
        :pswitch_97
        :pswitch_52
        :pswitch_d
    .end packed-switch
.end method
