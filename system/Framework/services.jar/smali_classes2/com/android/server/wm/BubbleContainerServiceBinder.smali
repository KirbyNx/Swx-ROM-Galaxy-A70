.class abstract Lcom/android/server/wm/BubbleContainerServiceBinder;
.super Ljava/lang/Object;
.source "BubbleContainerServiceBinder.java"


# instance fields
.field protected final SYSTEMUI_PACKAGE:Ljava/lang/String;

.field protected final TAG:Ljava/lang/String;

.field protected final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mIsServiceRunning:Z

.field private final mService:Landroid/content/Intent;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "com.android.systemui"

    iput-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->SYSTEMUI_PACKAGE:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mService:Landroid/content/Intent;

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mIsServiceRunning:Z

    .line 52
    new-instance v0, Lcom/android/server/wm/BubbleContainerServiceBinder$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BubbleContainerServiceBinder$1;-><init>(Lcom/android/server/wm/BubbleContainerServiceBinder;)V

    iput-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 69
    iput-object p1, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->TAG:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/BubbleContainerServiceBinder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/BubbleContainerServiceBinder;

    .line 44
    iget-boolean v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mIsServiceRunning:Z

    return v0
.end method

.method private isDexModeStandalone()Z
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 134
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 135
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method


# virtual methods
.method protected bindService()Z
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mService:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized bindServiceIfNeeded(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    monitor-enter p0

    .line 79
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mIsServiceRunning:Z

    if-nez v0, :cond_77

    invoke-virtual {p0}, Lcom/android/server/wm/BubbleContainerServiceBinder;->okToBind()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 80
    invoke-virtual {p0}, Lcom/android/server/wm/BubbleContainerServiceBinder;->bindService()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mIsServiceRunning:Z

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind service success, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 84
    .end local p0    # "this":Lcom/android/server/wm/BubbleContainerServiceBinder;
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind service failed, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_41
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BindService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mIsServiceRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_79

    .line 89
    :cond_77
    monitor-exit p0

    return-void

    .line 78
    .end local p1    # "reason":Ljava/lang/String;
    :catchall_79
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method dumpLocked(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Running="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mIsServiceRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    .line 114
    const-string v0, "    * History"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 116
    .local v0, "numHistory":I
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_55

    const/16 v1, 0x64

    goto :goto_56

    :cond_55
    const/4 v1, 0x5

    .line 117
    .local v1, "lines":I
    :goto_56
    if-lt v0, v1, :cond_5b

    sub-int v2, v0, v1

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    .line 118
    .local v2, "startNdx":I
    :goto_5c
    move v3, v2

    .local v3, "i":I
    :goto_5d
    if-ge v3, v0, :cond_88

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 122
    .end local v0    # "numHistory":I
    .end local v1    # "lines":I
    .end local v2    # "startNdx":I
    .end local v3    # "i":I
    :cond_88
    return-void
.end method

.method isServiceRunning()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mIsServiceRunning:Z

    return v0
.end method

.method protected okToBind()Z
    .registers 2

    .line 139
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/wm/BubbleContainerServiceBinder;->isDexModeStandalone()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected okToUnbind()Z
    .registers 2

    .line 143
    invoke-virtual {p0}, Lcom/android/server/wm/BubbleContainerServiceBinder;->okToBind()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected setServiceComponent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mService:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method protected unbindService()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 108
    return-void
.end method

.method declared-synchronized unbindServiceIfNeeded(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    monitor-enter p0

    .line 97
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mIsServiceRunning:Z

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/android/server/wm/BubbleContainerServiceBinder;->okToUnbind()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 98
    invoke-virtual {p0}, Lcom/android/server/wm/BubbleContainerServiceBinder;->unbindService()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mIsServiceRunning:Z

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbind service success, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnbindService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/BubbleContainerServiceBinder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 104
    .end local p0    # "this":Lcom/android/server/wm/BubbleContainerServiceBinder;
    :cond_54
    monitor-exit p0

    return-void

    .line 96
    .end local p1    # "reason":Ljava/lang/String;
    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method
