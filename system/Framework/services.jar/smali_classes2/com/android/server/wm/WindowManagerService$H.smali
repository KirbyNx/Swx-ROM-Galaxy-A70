.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final ANIMATION_FAILSAFE:I = 0x3c

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FORCE_GC:I = 0xf

.field public static final LAYOUT_AND_ASSIGN_WINDOW_LAYERS_IF_NEEDED:I = 0x3f

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final NOTIFY_POGO_KEYBOARD_STATUS:I = 0xc8

.field public static final ON_POINTER_DOWN_OUTSIDE_FOCUS:I = 0x3e

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final RECOMPUTE_FOCUS:I = 0x3d

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final RESTORE_POINTER_ICON:I = 0x37

.field public static final SEAMLESS_ROTATION_TIMEOUT:I = 0x36

.field public static final SET_HAS_OVERLAY_UI:I = 0x3a

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final UNUSED:I = 0x0

.field public static final UPDATE_ANIMATION_SCALE:I = 0x33

.field public static final UPDATE_MULTI_WINDOW_STACKS:I = 0x29

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb

.field public static final WINDOW_HIDE_TIMEOUT:I = 0x34

.field public static final WINDOW_REPLACEMENT_TIMEOUT:I = 0x2e

.field public static final WINDOW_STATE_BLAST_SYNC_TIMEOUT:I = 0x40


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 5351
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 5406
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v0, :cond_21

    .line 5407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage: entry what="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WindowManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5409
    :cond_21
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v4, :cond_53d

    if-eq v0, v3, :cond_4f0

    const/16 v3, 0xb

    if-eq v0, v3, :cond_4d4

    const/16 v3, 0x13

    if-eq v0, v3, :cond_4b1

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_488

    const/16 v3, 0x29

    if-eq v0, v3, :cond_469

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_433

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_422

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_40d

    const/16 v3, 0x33

    if-eq v0, v3, :cond_3b3

    const/16 v3, 0x34

    if-eq v0, v3, :cond_385

    const/16 v3, 0x36

    if-eq v0, v3, :cond_365

    const/16 v3, 0x37

    if-eq v0, v3, :cond_342

    packed-switch v0, :pswitch_data_610

    packed-switch v0, :pswitch_data_61c

    packed-switch v0, :pswitch_data_628

    packed-switch v0, :pswitch_data_632

    packed-switch v0, :pswitch_data_63e

    goto/16 :goto_5fd

    .line 5808
    :pswitch_69
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_6e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5809
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 5810
    .local v0, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->immediatelyNotifyBlastSync()V

    .line 5811
    .end local v0    # "ws":Lcom/android/server/wm/WindowState;
    monitor-exit v3
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_7e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5812
    goto/16 :goto_5fd

    .line 5811
    :catchall_7e
    move-exception v0

    :try_start_7f
    monitor-exit v3
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5801
    :pswitch_84
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_89
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5802
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 5803
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 5804
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_89 .. :try_end_94} :catchall_99

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5805
    goto/16 :goto_5fd

    .line 5804
    :catchall_99
    move-exception v0

    :try_start_9a
    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5783
    :pswitch_9f
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_a4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5786
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 5787
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    .line 5788
    .local v4, "touchedToken":Landroid/os/IBinder;
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 5789
    .local v5, "maskedAction":I
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 5790
    .local v6, "x":I
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 5791
    .local v7, "y":I
    iget-object v8, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->onPointerDownOutsideFocusLocked(Landroid/os/IBinder;III)V
    invoke-static {v8, v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->access$1700(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;III)V

    .line 5797
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "touchedToken":Landroid/os/IBinder;
    .end local v5    # "maskedAction":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    monitor-exit v3
    :try_end_bb
    .catchall {:try_start_a4 .. :try_end_bb} :catchall_c0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5798
    goto/16 :goto_5fd

    .line 5797
    :catchall_c0
    move-exception v0

    :try_start_c1
    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5776
    :pswitch_c6
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_cb
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5777
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 5779
    monitor-exit v3
    :try_end_d4
    .catchall {:try_start_cb .. :try_end_d4} :catchall_d9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5780
    goto/16 :goto_5fd

    .line 5779
    :catchall_d9
    move-exception v0

    :try_start_da
    monitor-exit v3
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5768
    :pswitch_df
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_e4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5769
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1600(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_f8

    .line 5770
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1600(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->scheduleFailsafe()V

    .line 5772
    :cond_f8
    monitor-exit v3
    :try_end_f9
    .catchall {:try_start_e4 .. :try_end_f9} :catchall_fe

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5773
    goto/16 :goto_5fd

    .line 5772
    :catchall_fe
    move-exception v0

    :try_start_ff
    monitor-exit v3
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5700
    :pswitch_104
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_109
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5701
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WallpaperController;

    .line 5703
    .local v0, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    if-eqz v0, :cond_11f

    .line 5704
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->processWallpaperDrawPendingTimeout()Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 5705
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5707
    .end local v0    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    :cond_11f
    monitor-exit v3
    :try_end_120
    .catchall {:try_start_109 .. :try_end_120} :catchall_125

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5708
    goto/16 :goto_5fd

    .line 5707
    :catchall_125
    move-exception v0

    :try_start_126
    monitor-exit v3
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5693
    :pswitch_12b
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_130
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5694
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 5695
    monitor-exit v3
    :try_end_138
    .catchall {:try_start_130 .. :try_end_138} :catchall_144

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5696
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearSavedANRState()V

    .line 5697
    goto/16 :goto_5fd

    .line 5695
    :catchall_144
    move-exception v0

    :try_start_145
    monitor-exit v3
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5683
    :pswitch_14a
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_14f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5684
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_BOOT_enabled:Z

    if-eqz v0, :cond_161

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x7948488b

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v7, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5685
    :cond_161
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v0

    .line 5686
    .local v0, "bootAnimationComplete":Z
    monitor-exit v3
    :try_end_168
    .catchall {:try_start_14f .. :try_end_168} :catchall_174

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5687
    if-eqz v0, :cond_5fd

    .line 5688
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_5fd

    .line 5686
    .end local v0    # "bootAnimationComplete":Z
    :catchall_174
    move-exception v0

    :try_start_175
    monitor-exit v3
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_174

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5632
    :pswitch_17a
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    .line 5633
    goto/16 :goto_5fd

    .line 5655
    :pswitch_181
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v3

    .line 5656
    .local v3, "scale":F
    invoke-static {v3}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 5657
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/Session;

    .line 5658
    .local v4, "session":Lcom/android/server/wm/Session;
    if-eqz v4, :cond_19a

    .line 5660
    :try_start_191
    iget-object v0, v4, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {v0, v3}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_196
    .catch Landroid/os/RemoteException; {:try_start_191 .. :try_end_196} :catch_197

    goto :goto_198

    .line 5661
    :catch_197
    move-exception v0

    .line 5662
    :goto_198
    goto/16 :goto_5fd

    .line 5664
    :cond_19a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 5666
    .local v5, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6

    :try_start_1a5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5667
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a9
    iget-object v7, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v0, v7, :cond_1c5

    .line 5668
    iget-object v7, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5667
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a9

    .line 5671
    .end local v0    # "i":I
    :cond_1c5
    monitor-exit v6
    :try_end_1c6
    .catchall {:try_start_1a5 .. :try_end_1c6} :catchall_1e1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5672
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_1cb
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1df

    .line 5674
    :try_start_1d1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowSessionCallback;

    invoke-interface {v0, v3}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_1da
    .catch Landroid/os/RemoteException; {:try_start_1d1 .. :try_end_1da} :catch_1db

    .line 5676
    goto :goto_1dc

    .line 5675
    :catch_1db
    move-exception v0

    .line 5672
    :goto_1dc
    add-int/lit8 v6, v6, 0x1

    goto :goto_1cb

    .line 5679
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .end local v6    # "i":I
    :cond_1df
    goto/16 :goto_5fd

    .line 5671
    .restart local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    :catchall_1e1
    move-exception v0

    :try_start_1e2
    monitor-exit v6
    :try_end_1e3
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_1e1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5645
    .end local v3    # "scale":F
    .end local v4    # "session":Lcom/android/server/wm/Session;
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    :pswitch_1e7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 5646
    .local v3, "container":Lcom/android/server/wm/WindowContainer;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_1f1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5647
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 5648
    .local v0, "callback":Ljava/lang/Runnable;
    monitor-exit v4
    :try_end_1ff
    .catchall {:try_start_1f1 .. :try_end_1ff} :catchall_209

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5649
    if-eqz v0, :cond_5fd

    .line 5650
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_5fd

    .line 5648
    .end local v0    # "callback":Ljava/lang/Runnable;
    :catchall_209
    move-exception v0

    :try_start_20a
    monitor-exit v4
    :try_end_20b
    .catchall {:try_start_20a .. :try_end_20b} :catchall_209

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5638
    .end local v3    # "container":Lcom/android/server/wm/WindowContainer;
    :pswitch_20f
    :try_start_20f
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v0, v3}, Landroid/app/IActivityTaskManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_21a
    .catch Landroid/os/RemoteException; {:try_start_20f .. :try_end_21a} :catch_21c

    .line 5640
    goto/16 :goto_5fd

    .line 5639
    :catch_21c
    move-exception v0

    .line 5641
    goto/16 :goto_5fd

    .line 5627
    :pswitch_21f
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V
    invoke-static {v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$1400(Lcom/android/server/wm/WindowManagerService;II)V

    .line 5628
    goto/16 :goto_5fd

    .line 5612
    :pswitch_22a
    const/4 v3, 0x0

    .line 5613
    .local v3, "callback":Ljava/lang/Runnable;
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 5614
    .local v4, "container":Lcom/android/server/wm/WindowContainer;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_235
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5615
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_ERROR_enabled:Z

    if-eqz v0, :cond_250

    iget-object v0, v4, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_ERROR:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x5afec1f7

    const-string v10, "Timeout waiting for drawn: undrawn=%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v8, v9, v7, v10, v6}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5617
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_250
    iget-object v0, v4, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5618
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v3, v0

    .line 5619
    monitor-exit v5
    :try_end_261
    .catchall {:try_start_235 .. :try_end_261} :catchall_26b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5620
    if-eqz v3, :cond_5fd

    .line 5621
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_5fd

    .line 5619
    :catchall_26b
    move-exception v0

    :try_start_26c
    monitor-exit v5
    :try_end_26d
    .catchall {:try_start_26c .. :try_end_26d} :catchall_26b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5607
    .end local v3    # "callback":Ljava/lang/Runnable;
    .end local v4    # "container":Lcom/android/server/wm/WindowContainer;
    :pswitch_271
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    .line 5608
    goto/16 :goto_5fd

    .line 5602
    :pswitch_278
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    .line 5603
    goto/16 :goto_5fd

    .line 5570
    :pswitch_27f
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_284
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5571
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_ERROR_enabled:Z

    if-eqz v0, :cond_297

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_ERROR:Lcom/android/server/wm/ProtoLogGroup;

    const v8, -0x1331e106

    const-string v9, "App freeze timeout expired."

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v8, v7, v9, v5}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5572
    :cond_297
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 5573
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    .local v0, "i":I
    :goto_2a4
    if-ltz v0, :cond_2b6

    .line 5574
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    invoke-interface {v4}, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;->onAppFreezeTimeout()V

    .line 5573
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a4

    .line 5576
    .end local v0    # "i":I
    :cond_2b6
    monitor-exit v3
    :try_end_2b7
    .catchall {:try_start_284 .. :try_end_2b7} :catchall_2bc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5577
    goto/16 :goto_5fd

    .line 5576
    :catchall_2bc
    move-exception v0

    :try_start_2bd
    monitor-exit v3
    :try_end_2be
    .catchall {:try_start_2bd .. :try_end_2be} :catchall_2bc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5565
    :pswitch_2c2
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;)V

    .line 5566
    goto/16 :goto_5fd

    .line 5545
    :pswitch_2c9
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_2ce
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5548
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->isAnimationScheduled()Z

    move-result v0

    if-eqz v0, :cond_2e7

    .line 5551
    const/16 v0, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5552
    monitor-exit v3
    :try_end_2e3
    .catchall {:try_start_2ce .. :try_end_2e3} :catchall_2ff

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5556
    :cond_2e7
    :try_start_2e7
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_2f2

    .line 5557
    monitor-exit v3
    :try_end_2ee
    .catchall {:try_start_2e7 .. :try_end_2ee} :catchall_2ff

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5559
    :cond_2f2
    :try_start_2f2
    monitor-exit v3
    :try_end_2f3
    .catchall {:try_start_2f2 .. :try_end_2f3} :catchall_2ff

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5560
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 5561
    goto/16 :goto_5fd

    .line 5559
    :catchall_2ff
    move-exception v0

    :try_start_300
    monitor-exit v3
    :try_end_301
    .catchall {:try_start_300 .. :try_end_301} :catchall_2ff

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5504
    :pswitch_305
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5505
    # getter for: Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)F

    move-result v3

    .line 5504
    const-string/jumbo v4, "window_animation_scale"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5506
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5508
    # getter for: Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)F

    move-result v3

    .line 5506
    const-string/jumbo v4, "transition_animation_scale"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5509
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5510
    # getter for: Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)F

    move-result v3

    .line 5509
    const-string v4, "animator_duration_scale"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5511
    goto/16 :goto_5fd

    .line 5751
    :cond_342
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_347
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5752
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    iget v5, v2, Landroid/os/Message;->arg1:I

    int-to-float v5, v5

    iget v6, v2, Landroid/os/Message;->arg2:I

    int-to-float v6, v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 5753
    monitor-exit v3
    :try_end_35a
    .catchall {:try_start_347 .. :try_end_35a} :catchall_35f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5754
    goto/16 :goto_5fd

    .line 5753
    :catchall_35f
    move-exception v0

    :try_start_360
    monitor-exit v3
    :try_end_361
    .catchall {:try_start_360 .. :try_end_361} :catchall_35f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5757
    :cond_365
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 5758
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_36f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5759
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->onSeamlessRotationTimeout()V

    .line 5760
    monitor-exit v4
    :try_end_37a
    .catchall {:try_start_36f .. :try_end_37a} :catchall_37f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5761
    goto/16 :goto_5fd

    .line 5760
    :catchall_37f
    move-exception v0

    :try_start_380
    monitor-exit v4
    :try_end_381
    .catchall {:try_start_380 .. :try_end_381} :catchall_37f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5730
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_385
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 5731
    .local v3, "window":Lcom/android/server/wm/WindowState;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_38f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5743
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x81

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5744
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hidePermanentlyLw()V

    .line 5745
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 5746
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5747
    monitor-exit v7
    :try_end_3a8
    .catchall {:try_start_38f .. :try_end_3a8} :catchall_3ad

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5748
    goto/16 :goto_5fd

    .line 5747
    :catchall_3ad
    move-exception v0

    :try_start_3ae
    monitor-exit v7
    :try_end_3af
    .catchall {:try_start_3ae .. :try_end_3af} :catchall_3ad

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5516
    .end local v3    # "window":Lcom/android/server/wm/WindowState;
    :cond_3b3
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 5517
    .local v0, "mode":I
    if-eqz v0, :cond_3f2

    if-eq v0, v6, :cond_3d9

    if-eq v0, v4, :cond_3bc

    goto :goto_40b

    .line 5533
    :cond_3bc
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5534
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5536
    # getter for: Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F
    invoke-static {v6}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)F

    move-result v6

    .line 5533
    const-string v7, "animator_duration_scale"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    # setter for: Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F
    invoke-static {v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$1102(Lcom/android/server/wm/WindowManagerService;F)F

    .line 5537
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    goto :goto_40b

    .line 5526
    :cond_3d9
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5527
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5529
    # getter for: Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)F

    move-result v5

    .line 5526
    const-string/jumbo v6, "transition_animation_scale"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    # setter for: Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F
    invoke-static {v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$1002(Lcom/android/server/wm/WindowManagerService;F)F

    .line 5530
    goto :goto_40b

    .line 5519
    :cond_3f2
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5520
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5522
    # getter for: Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)F

    move-result v5

    .line 5519
    const-string/jumbo v6, "window_animation_scale"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    # setter for: Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F
    invoke-static {v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$902(Lcom/android/server/wm/WindowManagerService;F)F

    .line 5523
    nop

    .line 5541
    :goto_40b
    goto/16 :goto_5fd

    .line 5820
    .end local v0    # "mode":I
    :cond_40d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_THREE_FINGER_GESTURE:Z

    if-eqz v0, :cond_5fd

    .line 5821
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    iget v3, v2, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_41c

    goto :goto_41d

    :cond_41c
    move v6, v7

    :goto_41d
    invoke-interface {v0, v6}, Lcom/android/server/policy/WindowManagerPolicyExt;->handleNotifyPogoKeyboardStatus(Z)V

    goto/16 :goto_5fd

    .line 5764
    :cond_422
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    if-ne v4, v6, :cond_42d

    goto :goto_42e

    :cond_42d
    move v6, v7

    :goto_42e
    invoke-virtual {v0, v3, v6}, Landroid/app/ActivityManagerInternal;->setHasOverlayUi(IZ)V

    .line 5765
    goto/16 :goto_5fd

    .line 5720
    :cond_433
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_438
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5721
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    .local v0, "i":I
    :goto_444
    if-ltz v0, :cond_456

    .line 5722
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 5723
    .local v4, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->onWindowReplacementTimeout()V

    .line 5721
    .end local v4    # "activity":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_444

    .line 5725
    .end local v0    # "i":I
    :cond_456
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5726
    monitor-exit v3
    :try_end_45e
    .catchall {:try_start_438 .. :try_end_45e} :catchall_463

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5727
    goto/16 :goto_5fd

    .line 5726
    :catchall_463
    move-exception v0

    :try_start_464
    monitor-exit v3
    :try_end_465
    .catchall {:try_start_464 .. :try_end_465} :catchall_463

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5711
    :cond_469
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_46e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5712
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5713
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_47c

    .line 5714
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 5716
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_47c
    monitor-exit v3
    :try_end_47d
    .catchall {:try_start_46e .. :try_end_47d} :catchall_482

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5717
    goto/16 :goto_5fd

    .line 5716
    :catchall_482
    move-exception v0

    :try_start_483
    monitor-exit v3
    :try_end_484
    .catchall {:try_start_483 .. :try_end_484} :catchall_482

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5581
    :cond_488
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_48d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5582
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v0, :cond_4a5

    .line 5583
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v7, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 5584
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "client-timeout"

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 5585
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 5587
    :cond_4a5
    monitor-exit v3
    :try_end_4a6
    .catchall {:try_start_48d .. :try_end_4a6} :catchall_4ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5588
    goto/16 :goto_5fd

    .line 5587
    :catchall_4ab
    move-exception v0

    :try_start_4ac
    monitor-exit v3
    :try_end_4ad
    .catchall {:try_start_4ac .. :try_end_4ad} :catchall_4ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5592
    :cond_4b1
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v0, :cond_5fd

    .line 5593
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_4bc
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5594
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v7, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 5595
    monitor-exit v3
    :try_end_4c4
    .catchall {:try_start_4bc .. :try_end_4c4} :catchall_4ce

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5596
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1300(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_5fd

    .line 5595
    :catchall_4ce
    move-exception v0

    :try_start_4cf
    monitor-exit v3
    :try_end_4d0
    .catchall {:try_start_4cf .. :try_end_4d0} :catchall_4ce

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5496
    :cond_4d4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 5497
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_4de
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5498
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->onWindowFreezeTimeout()V

    .line 5499
    monitor-exit v4
    :try_end_4e5
    .catchall {:try_start_4de .. :try_end_4e5} :catchall_4ea

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5500
    goto/16 :goto_5fd

    .line 5499
    :catchall_4ea
    move-exception v0

    :try_start_4eb
    monitor-exit v4
    :try_end_4ec
    .catchall {:try_start_4eb .. :try_end_4ec} :catchall_4ea

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5472
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_4f0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 5475
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v9

    :try_start_4fa
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5476
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    .line 5477
    .local v0, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v8, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    .line 5478
    monitor-exit v9
    :try_end_507
    .catchall {:try_start_4fa .. :try_end_507} :catchall_537

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5480
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5481
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_50f
    if-ge v4, v3, :cond_535

    .line 5482
    sget-boolean v9, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v9, :cond_529

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam0":Ljava/lang/String;
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v11, -0x2a93389b

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v9, v12, v7

    invoke-static {v10, v11, v7, v5, v12}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5489
    .end local v9    # "protoLogParam0":Ljava/lang/String;
    :cond_529
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(Z)V

    .line 5481
    add-int/lit8 v4, v4, 0x1

    goto :goto_50f

    .line 5492
    .end local v4    # "i":I
    :cond_535
    goto/16 :goto_5fd

    .line 5478
    .end local v0    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v3    # "N":I
    :catchall_537
    move-exception v0

    :try_start_538
    monitor-exit v9
    :try_end_539
    .catchall {:try_start_538 .. :try_end_539} :catchall_537

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5411
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_53d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 5415
    .restart local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v9, 0x0

    .line 5417
    .local v9, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10

    :try_start_548
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5418
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_556

    .line 5419
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object v9, v0

    .line 5422
    :cond_556
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 5423
    .local v0, "lastFocus":Lcom/android/server/wm/WindowState;
    iget-object v11, v8, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 5424
    .local v11, "newFocus":Lcom/android/server/wm/WindowState;
    if-ne v0, v11, :cond_561

    .line 5426
    monitor-exit v10
    :try_end_55d
    .catchall {:try_start_548 .. :try_end_55d} :catchall_60a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5428
    :cond_561
    :try_start_561
    iput-object v11, v8, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 5429
    sget-boolean v12, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v12, :cond_58d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam0":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam1":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v14

    int-to-long v14, v14

    .local v14, "protoLogParam2":J
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v4, 0x10

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v7

    aput-object v13, v3, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v16, 0x2

    aput-object v17, v3, v16

    const v6, -0x5ea488c3

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7, v3}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5432
    .end local v12    # "protoLogParam0":Ljava/lang/String;
    .end local v13    # "protoLogParam1":Ljava/lang/String;
    .end local v14    # "protoLogParam2":J
    :cond_58d
    if-eqz v11, :cond_5ae

    if-eqz v0, :cond_5ae

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    if-nez v3, :cond_5ae

    .line 5433
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v3, :cond_5a8

    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x16f4196e

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5434
    :cond_5a8
    iget-object v3, v8, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5435
    const/4 v0, 0x0

    .line 5437
    :cond_5ae
    monitor-exit v10
    :try_end_5af
    .catchall {:try_start_561 .. :try_end_5af} :catchall_60a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5441
    if-eqz v9, :cond_5bc

    .line 5442
    nop

    .line 5443
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 5442
    invoke-virtual {v9, v3}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked(I)V

    .line 5446
    :cond_5bc
    if-eqz v11, :cond_5df

    .line 5447
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v3, :cond_5d6

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x5c5cbc6

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v7, v10

    const/4 v12, 0x0

    invoke-static {v4, v5, v10, v12, v7}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5d7

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_5d6
    const/4 v6, 0x1

    .line 5453
    :goto_5d7
    invoke-virtual {v11, v6}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(Z)V

    .line 5455
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)V

    .line 5458
    :cond_5df
    if-eqz v0, :cond_5fd

    .line 5459
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v3, :cond_5f9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x2df8d65d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v10, 0x0

    invoke-static {v4, v5, v7, v10, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5fa

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_5f9
    const/4 v7, 0x0

    .line 5465
    :goto_5fa
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(Z)V

    .line 5827
    .end local v0    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v9    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v11    # "newFocus":Lcom/android/server/wm/WindowState;
    :cond_5fd
    :goto_5fd
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v0, :cond_609

    .line 5828
    const-string v0, "WindowManager"

    const-string/jumbo v3, "handleMessage: exit"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5830
    :cond_609
    return-void

    .line 5437
    .restart local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v9    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    :catchall_60a
    move-exception v0

    :try_start_60b
    monitor-exit v10
    :try_end_60c
    .catchall {:try_start_60b .. :try_end_60c} :catchall_60a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_data_610
    .packed-switch 0xe
        :pswitch_305
        :pswitch_2c9
        :pswitch_2c2
        :pswitch_27f
    .end packed-switch

    :pswitch_data_61c
    .packed-switch 0x16
        :pswitch_278
        :pswitch_271
        :pswitch_22a
        :pswitch_21f
    .end packed-switch

    :pswitch_data_628
    .packed-switch 0x20
        :pswitch_20f
        :pswitch_1e7
        :pswitch_181
    .end packed-switch

    :pswitch_data_632
    .packed-switch 0x24
        :pswitch_17a
        :pswitch_14a
        :pswitch_12b
        :pswitch_104
    .end packed-switch

    :pswitch_data_63e
    .packed-switch 0x3c
        :pswitch_df
        :pswitch_c6
        :pswitch_9f
        :pswitch_84
        :pswitch_69
    .end packed-switch
.end method

.method sendNewMessageDelayed(ILjava/lang/Object;J)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .line 5834
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 5835
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5836
    return-void
.end method
