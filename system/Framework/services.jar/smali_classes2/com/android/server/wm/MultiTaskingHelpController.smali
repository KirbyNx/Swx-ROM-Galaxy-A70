.class Lcom/android/server/wm/MultiTaskingHelpController;
.super Ljava/lang/Object;
.source "MultiTaskingHelpController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiTaskingHelpController$H;
    }
.end annotation


# static fields
.field public static LIVE_DEBUG:Z = false

.field private static final SET_MAX:Z = true

.field private static final TAG:Ljava/lang/String; = "MultiTaskingHelpController"

.field private static final UNLOADED_COUNT:I = -0x1


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mH:Lcom/android/server/wm/MultiTaskingHelpController$H;

.field private mLastFreeformCount:I

.field private mLastSplitCount:I

.field private final mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/MultiTaskingHelpController;->LIVE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mLastSplitCount:I

    .line 54
    iput v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mLastFreeformCount:I

    .line 57
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiTaskingHelpController;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiTaskingHelpController;

    .line 45
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private getCount(I)I
    .registers 4
    .param p1, "windowingMode"    # I

    .line 207
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_16

    .line 208
    sget-boolean v0, Lcom/android/server/wm/MultiTaskingHelpController;->LIVE_DEBUG:Z

    if-eqz v0, :cond_e

    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_COUNT:I

    return v0

    .line 209
    :cond_e
    iget v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mLastSplitCount:I

    if-ne v0, v1, :cond_15

    .line 211
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_COUNT:I

    return v0

    .line 213
    :cond_15
    return v0

    .line 214
    :cond_16
    const/4 v0, 0x5

    if-ne p1, v0, :cond_28

    .line 215
    sget-boolean v0, Lcom/android/server/wm/MultiTaskingHelpController;->LIVE_DEBUG:Z

    if-eqz v0, :cond_20

    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_COUNT:I

    return v0

    .line 216
    :cond_20
    iget v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mLastFreeformCount:I

    if-ne v0, v1, :cond_27

    .line 217
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_COUNT:I

    return v0

    .line 219
    :cond_27
    return v0

    .line 221
    :cond_28
    const v0, 0x7fffffff

    return v0
.end method

.method private isEnabled(I)Z
    .registers 3
    .param p1, "windowingMode"    # I

    .line 109
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 110
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    return v0

    .line 111
    :cond_9
    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    .line 112
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    return v0

    .line 114
    :cond_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addHelpItemIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/app/servertransaction/ClientTransaction;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 72
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    .line 74
    .local v0, "windowingMode":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiTaskingHelpController;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 75
    return-void

    .line 77
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_12

    .line 78
    return-void

    .line 80
    :cond_12
    if-nez p2, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 82
    return-void

    .line 86
    :cond_1f
    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiTaskingHelpController;->getCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_27

    .line 87
    return-void

    .line 90
    :cond_27
    invoke-static {v2}, Landroid/app/servertransaction/MultiTaskingHelpItem;->obtain(I)Landroid/app/servertransaction/MultiTaskingHelpItem;

    move-result-object v1

    .line 91
    .local v1, "item":Landroid/app/servertransaction/ClientTransactionItem;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/MultiTaskingHelpController;->increaseCount(IZ)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addHelpItemIfNeeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " appThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " appToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " windowingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    .line 94
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v3, "MultiTaskingHelpController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz p2, :cond_80

    .line 97
    invoke-virtual {p2, v1}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 98
    return-void

    .line 101
    :cond_80
    :try_start_80
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_91} :catch_92

    .line 104
    goto :goto_96

    .line 102
    :catch_92
    move-exception v2

    .line 103
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 105
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_96
    return-void
.end method

.method increaseCount(IZ)V
    .registers 6
    .param p1, "windowingMode"    # I
    .param p2, "setMax"    # Z

    .line 187
    const/4 v0, -0x1

    .line 188
    .local v0, "count":I
    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1f

    .line 189
    if-eqz p2, :cond_8

    goto :goto_e

    .line 190
    :cond_8
    nop

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->getCount(I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_e
    move v0, v1

    .line 191
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "freeform_handler_help_popup_count"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    iput v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mLastFreeformCount:I

    goto :goto_3f

    .line 194
    :cond_1f
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 195
    if-eqz p2, :cond_28

    goto :goto_2e

    .line 196
    :cond_28
    nop

    .line 195
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->getCount(I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_2e
    move v0, v1

    .line 197
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multi_split_quick_options_help_count"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    iput v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mLastSplitCount:I

    .line 201
    :cond_3f
    :goto_3f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_62

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "increaseCount: windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiTaskingHelpController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_62
    return-void
.end method

.method public initialize()V
    .registers 3

    .line 67
    new-instance v0, Lcom/android/server/wm/MultiTaskingHelpController$H;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiTaskingHelpController$H;-><init>(Lcom/android/server/wm/MultiTaskingHelpController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mH:Lcom/android/server/wm/MultiTaskingHelpController$H;

    .line 68
    return-void
.end method

.method public isEnabledByCount(I)Z
    .registers 4
    .param p1, "windowingMode"    # I

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->getCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 134
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 137
    goto :goto_c

    .line 138
    :catchall_9
    move-exception v1

    goto :goto_e

    .line 135
    :catch_b
    move-exception v1

    .line 138
    :goto_c
    :try_start_c
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_9

    throw v1
.end method

.method scheduleNotifySplitAdjacentCallback()V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mH:Lcom/android/server/wm/MultiTaskingHelpController$H;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingHelpController$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingHelpController$H;->sendMessage(Landroid/os/Message;)Z

    .line 129
    return-void
.end method

.method stopHelpingIn(I)V
    .registers 3
    .param p1, "windowingMode"    # I

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiTaskingHelpController;->increaseCount(IZ)V

    .line 124
    return-void
.end method

.method unregisterSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 144
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 147
    goto :goto_c

    .line 148
    :catchall_9
    move-exception v1

    goto :goto_e

    .line 145
    :catch_b
    move-exception v1

    .line 148
    :goto_c
    :try_start_c
    monitor-exit v0

    .line 149
    return-void

    .line 148
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_9

    throw v1
.end method
