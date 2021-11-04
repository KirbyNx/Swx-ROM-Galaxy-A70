.class Lcom/android/server/wm/TaskChangeNotificationController;
.super Ljava/lang/Object;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;,
        Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    }
.end annotation


# static fields
.field private static final LOG_STACK_STATE_MSG:I = 0x1

.field private static final NOTIFY_ACTIVITY_DISMISSING_DOCKED_STACK_MSG:I = 0x7

.field private static final NOTIFY_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_FAILED_MSG:I = 0x12

.field private static final NOTIFY_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_REROUTED_MSG:I = 0x13

.field private static final NOTIFY_ACTIVITY_PINNED_LISTENERS_MSG:I = 0x3

.field private static final NOTIFY_ACTIVITY_REQUESTED_ORIENTATION_CHANGED_LISTENERS:I = 0xc

.field private static final NOTIFY_ACTIVITY_RESTART_ATTEMPT_LISTENERS_MSG:I = 0x4

.field private static final NOTIFY_ACTIVITY_ROTATED_MSG:I = 0x1d

.field private static final NOTIFY_ACTIVITY_UNPINNED_LISTENERS_MSG:I = 0x11

.field private static final NOTIFY_BACK_PRESSED_ON_TASK_ROOT:I = 0x15

.field private static final NOTIFY_FORCED_RESIZABLE_MSG:I = 0x6

.field private static final NOTIFY_SINGLE_TASK_DISPLAY_DRAWN:I = 0x16

.field private static final NOTIFY_SINGLE_TASK_DISPLAY_EMPTY:I = 0x19

.field private static final NOTIFY_SIZE_COMPAT_MODE_ACTIVITY_CHANGED_MSG:I = 0x14

.field private static final NOTIFY_TASK_ADDED_LISTENERS_MSG:I = 0x8

.field private static final NOTIFY_TASK_DESCRIPTION_CHANGED_LISTENERS_MSG:I = 0xb

.field private static final NOTIFY_TASK_DISPLAY_CHANGED_LISTENERS_MSG:I = 0x17

.field private static final NOTIFY_TASK_FOCUS_CHANGED_MSG:I = 0x1b

.field private static final NOTIFY_TASK_LIST_FROZEN_UNFROZEN_MSG:I = 0x1a

.field private static final NOTIFY_TASK_LIST_UPDATED_LISTENERS_MSG:I = 0x18

.field private static final NOTIFY_TASK_MOVED_TO_FRONT_LISTENERS_MSG:I = 0xa

.field private static final NOTIFY_TASK_PROFILE_LOCKED_LISTENERS_MSG:I = 0xe

.field private static final NOTIFY_TASK_REMOVAL_STARTED_LISTENERS:I = 0xd

.field private static final NOTIFY_TASK_REMOVED_LISTENERS_MSG:I = 0x9

.field private static final NOTIFY_TASK_REQUESTED_ORIENTATION_CHANGED_MSG:I = 0x1c

.field private static final NOTIFY_TASK_SNAPSHOT_CHANGED_LISTENERS_MSG:I = 0xf

.field private static final NOTIFY_TASK_STACK_CHANGE_LISTENERS_DELAY:I = 0x64

.field private static final NOTIFY_TASK_STACK_CHANGE_LISTENERS_MSG:I = 0x2


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLocalTaskStackListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ITaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifySingleTaskDisplayDrawn:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifySingleTaskDisplayEmpty:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/ITaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceLock:Ljava/lang/Object;

.field private final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V
    .registers 6
    .param p1, "serviceLock"    # Ljava/lang/Object;
    .param p2, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 93
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$SAbrujQOZNUflKs1FAg2mBnjx3A;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$SAbrujQOZNUflKs1FAg2mBnjx3A;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 97
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$1ziXgnyLi0gQjqMGJAbSzs0-dmE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$1ziXgnyLi0gQjqMGJAbSzs0-dmE;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 101
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$kss8MGli3T9b_Y-QDzR2cB843y8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$kss8MGli3T9b_Y-QDzR2cB843y8;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 105
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$ZLPZtiEvD_F4WUgH7BD4KPpdAWM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$ZLPZtiEvD_F4WUgH7BD4KPpdAWM;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 109
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Ge3jFevRwpndz6qRSLDXODq2VjE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Ge3jFevRwpndz6qRSLDXODq2VjE;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 113
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$SByuGj5tpcCpjTH9lf5zHHv2gNM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$SByuGj5tpcCpjTH9lf5zHHv2gNM;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 117
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$MS67FdGix7tWO0Od9imcaKVXL7I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$MS67FdGix7tWO0Od9imcaKVXL7I;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 121
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$NLoKy9SbVr1EJpEjznsKi7yAlpg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$NLoKy9SbVr1EJpEjznsKi7yAlpg;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 125
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$ncM_yje7-m7HuiJvorBIH_C8Ou4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$ncM_yje7-m7HuiJvorBIH_C8Ou4;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 130
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$qONfw3ssOxjb_iMuO2oMzCbXfrg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$qONfw3ssOxjb_iMuO2oMzCbXfrg;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 134
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$9ngbiJ2r3x2ASHwN59tUFO2-2BQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$9ngbiJ2r3x2ASHwN59tUFO2-2BQ;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 140
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$M2NSB3SSVJR2Tu4vihNfsIL31s4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$M2NSB3SSVJR2Tu4vihNfsIL31s4;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 144
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$k0FXXC-HcWJhmtm6-Kruo6nGeXI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$k0FXXC-HcWJhmtm6-Kruo6nGeXI;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 148
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$byMDuIFUN4cQ1lT9jVjMwLhaLDw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$byMDuIFUN4cQ1lT9jVjMwLhaLDw;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 152
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$0m_-qN9QkcgkoWun2Biw8le4l1Y;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$0m_-qN9QkcgkoWun2Biw8le4l1Y;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 156
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$yaW9HlZsz3L55CTQ4b7y33IGo94;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$yaW9HlZsz3L55CTQ4b7y33IGo94;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 160
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$wuBjs4dj7gB_MI4dIdt2gV2Osus;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$wuBjs4dj7gB_MI4dIdt2gV2Osus;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 164
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Dvvt1gNNfFRVEKlSCdL_9VnilUE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Dvvt1gNNfFRVEKlSCdL_9VnilUE;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 168
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$UexNbaqPy0mc3VxTw2coCctHho8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$UexNbaqPy0mc3VxTw2coCctHho8;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayDrawn:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 172
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$sS6OHbZtuWHjzmkm8bleSWZWFqA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$sS6OHbZtuWHjzmkm8bleSWZWFqA;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayEmpty:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 176
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$cFUeUwnRjuOQKcg2c4PnDS0ImTw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$cFUeUwnRjuOQKcg2c4PnDS0ImTw;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 180
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$sdBP_U6BS8zRbtZp-gZ0BmFW8bs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$sdBP_U6BS8zRbtZp-gZ0BmFW8bs;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 184
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$VuvWLQaLHifVGvurVv75MXCukH0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$VuvWLQaLHifVGvurVv75MXCukH0;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 188
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Kz-Od_gLhLbMtGka4r78W0Gmzgo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Kz-Od_gLhLbMtGka4r78W0Gmzgo;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 192
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$PSFFTNiSSqx5-emiM-hoY62N04M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$PSFFTNiSSqx5-emiM-hoY62N04M;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 196
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$fHOaxOU9vkp_xgwOlM5lZFj3Fi0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$fHOaxOU9vkp_xgwOlM5lZFj3Fi0;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 306
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    .line 307
    iput-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 308
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;-><init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 309
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskChangeNotificationController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/ActivityStackSupervisor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayDrawn:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayEmpty:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;
    .param p1, "x1"    # Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .param p2, "x2"    # Landroid/os/Message;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method private checkSlow(JLjava/lang/String;)V
    .registers 10
    .param p1, "startTime"    # J
    .param p3, "where"    # Ljava/lang/String;

    .line 622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 623
    .local v0, "now":J
    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_2d
    return-void
.end method

.method private forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .registers 9
    .param p1, "callback"    # Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .param p2, "message"    # Landroid/os/Message;

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_47

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_45

    .line 361
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 364
    .local v2, "startTime":J
    iget-object v4, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v4, p2}, Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaskChangeNotificationController#forAllLocalListeners, reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 370
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->checkSlow(JLjava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_40} :catch_41
    .catchall {:try_start_d .. :try_end_40} :catchall_47

    .line 375
    .end local v2    # "startTime":J
    goto :goto_42

    .line 373
    :catch_41
    move-exception v2

    .line 358
    :goto_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 377
    .end local v1    # "i":I
    :cond_45
    :try_start_45
    monitor-exit v0

    .line 378
    return-void

    .line 377
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .registers 8
    .param p1, "callback"    # Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .param p2, "message"    # Landroid/os/Message;

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2b

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_24

    .line 342
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19
    .catchall {:try_start_d .. :try_end_18} :catchall_2b

    .line 350
    goto :goto_21

    .line 343
    :catch_19
    move-exception v2

    .line 347
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1a
    const-string v3, "WindowManager"

    const-string v4, "Failed to notify message"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 352
    .end local v1    # "i":I
    :cond_24
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 353
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method static synthetic lambda$new$0(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V

    .line 95
    return-void
.end method

.method static synthetic lambda$new$1(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 99
    return-void
.end method

.method static synthetic lambda$new$10(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 9
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 136
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    :goto_11
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v5, :cond_17

    move v5, v3

    goto :goto_18

    :cond_17
    move v5, v4

    :goto_18
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz v6, :cond_1d

    goto :goto_1e

    :cond_1d
    move v3, v4

    :goto_1e
    invoke-interface {p0, v1, v2, v5, v3}, Landroid/app/ITaskStackListener;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 138
    return-void
.end method

.method static synthetic lambda$new$11(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 5
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, v2}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    .line 142
    return-void
.end method

.method static synthetic lambda$new$12(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedStack()V

    .line 146
    return-void
.end method

.method static synthetic lambda$new$13(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 150
    return-void
.end method

.method static synthetic lambda$new$14(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 154
    return-void
.end method

.method static synthetic lambda$new$15(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskProfileLocked(II)V

    .line 158
    return-void
.end method

.method static synthetic lambda$new$16(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 162
    return-void
.end method

.method static synthetic lambda$new$17(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    .line 166
    return-void
.end method

.method static synthetic lambda$new$18(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onSingleTaskDisplayDrawn(I)V

    .line 170
    return-void
.end method

.method static synthetic lambda$new$19(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onSingleTaskDisplayEmpty(I)V

    .line 174
    return-void
.end method

.method static synthetic lambda$new$2(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskRemoved(I)V

    .line 103
    return-void
.end method

.method static synthetic lambda$new$20(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskDisplayChanged(II)V

    .line 178
    return-void
.end method

.method static synthetic lambda$new$21(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onRecentTaskListUpdated()V

    .line 182
    return-void
.end method

.method static synthetic lambda$new$22(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onRecentTaskListFrozenChanged(Z)V

    .line 186
    return-void
.end method

.method static synthetic lambda$new$23(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskFocusChanged(IZ)V

    .line 190
    return-void
.end method

.method static synthetic lambda$new$24(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskRequestedOrientationChanged(II)V

    .line 194
    return-void
.end method

.method static synthetic lambda$new$25(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onActivityRotation(I)V

    .line 198
    return-void
.end method

.method static synthetic lambda$new$3(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 107
    return-void
.end method

.method static synthetic lambda$new$4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 111
    return-void
.end method

.method static synthetic lambda$new$5(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 115
    return-void
.end method

.method static synthetic lambda$new$6(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onActivityRequestedOrientationChanged(II)V

    .line 119
    return-void
.end method

.method static synthetic lambda$new$7(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 123
    return-void
.end method

.method static synthetic lambda$new$8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 6
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, v2, v3}, Landroid/app/ITaskStackListener;->onActivityPinned(Ljava/lang/String;III)V

    .line 128
    return-void
.end method

.method static synthetic lambda$new$9(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityUnpinned()V

    .line 132
    return-void
.end method


# virtual methods
.method notifyActivityDismissingDockedStack()V
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 429
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 430
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 431
    return-void
.end method

.method notifyActivityForcedResizable(IILjava/lang/String;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 437
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 438
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 439
    return-void
.end method

.method notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V
    .registers 6
    .param p1, "ti"    # Landroid/app/TaskInfo;
    .param p2, "requestedDisplayId"    # I

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 446
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 447
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 448
    return-void
.end method

.method notifyActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/TaskInfo;I)V
    .registers 6
    .param p1, "ti"    # Landroid/app/TaskInfo;
    .param p2, "requestedDisplayId"    # I

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 455
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 456
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 457
    return-void
.end method

.method notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 394
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 393
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 395
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput v1, v0, Landroid/os/Message;->sendingUid:I

    .line 396
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 397
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 398
    return-void
.end method

.method notifyActivityRequestedOrientationChanged(II)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "orientation"    # I

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 490
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 491
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 492
    return-void
.end method

.method notifyActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .registers 8
    .param p1, "task"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "homeTaskVisible"    # Z
    .param p3, "clearedTask"    # Z
    .param p4, "wasVisible"    # Z

    .line 414
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 416
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 417
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 418
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 419
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 420
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 422
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 423
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 424
    return-void
.end method

.method notifyActivityUnpinned()V
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 404
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 405
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 406
    return-void
.end method

.method notifyBackPressedOnTaskRoot(Landroid/app/TaskInfo;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/TaskInfo;

    .line 542
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 544
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 545
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 546
    return-void
.end method

.method notifyOnActivityRotation(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 614
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 616
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 617
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 618
    return-void
.end method

.method notifySingleTaskDisplayDrawn(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 552
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 554
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayDrawn:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 555
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 556
    return-void
.end method

.method notifySingleTaskDisplayEmpty(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 562
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 565
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayEmpty:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 566
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 567
    return-void
.end method

.method notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "activityToken"    # Landroid/os/IBinder;

    .line 531
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 533
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 534
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 535
    return-void
.end method

.method notifyTaskCreated(ILandroid/content/ComponentName;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 462
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 463
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 464
    return-void
.end method

.method notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/TaskInfo;

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 482
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 483
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 485
    return-void
.end method

.method notifyTaskDisplayChanged(II)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "newDisplayId"    # I

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 575
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 576
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 577
    return-void
.end method

.method notifyTaskFocusChanged(IZ)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 599
    nop

    .line 598
    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 600
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 601
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 602
    return-void
.end method

.method notifyTaskListFrozen(Z)V
    .registers 5
    .param p1, "frozen"    # Z

    .line 590
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 591
    const/4 v1, 0x0

    .line 590
    const/16 v2, 0x1a

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 592
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 593
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 594
    return-void
.end method

.method notifyTaskListUpdated()V
    .registers 3

    .line 583
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 584
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 585
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 586
    return-void
.end method

.method notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    .registers 4
    .param p1, "ti"    # Landroid/app/TaskInfo;

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 475
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 476
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 477
    return-void
.end method

.method notifyTaskProfileLocked(II)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 510
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 512
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 513
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 514
    return-void
.end method

.method notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 500
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 501
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 502
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 503
    return-void
.end method

.method notifyTaskRemoved(I)V
    .registers 5
    .param p1, "taskId"    # I

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 469
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 470
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 471
    return-void
.end method

.method notifyTaskRequestedOrientationChanged(II)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "requestedOrientation"    # I

    .line 606
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 608
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 609
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 610
    return-void
.end method

.method notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 522
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 523
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 524
    return-void
.end method

.method notifyTaskStackChanged()V
    .registers 5

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 385
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 387
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 388
    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    if-eqz p1, :cond_22

    .line 314
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_1d

    .line 315
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 316
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 319
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 322
    :cond_22
    :goto_22
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    if-eqz p1, :cond_1a

    .line 328
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_15

    .line 329
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 331
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 334
    :cond_1a
    :goto_1a
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1
.end method
