.class public Lcom/android/server/wm/MultiWindowShellCommand;
.super Landroid/os/ShellCommand;
.source "MultiWindowShellCommand.java"


# static fields
.field private static final CMD_APPPAIR:Ljava/lang/String; = "apppair"

.field private static final CMD_APPPAIRPLUS:Ljava/lang/String; = "apppairplus"

.field private static final CMD_CORNER_GESTURE:Ljava/lang/String; = "corner-gesture"

.field private static final CMD_DEX_FONT_SCALE:Ljava/lang/String; = "dex-font-scale"

.field private static final CMD_DISMISS_SPLIT_AND_START:Ljava/lang/String; = "dismiss-split-and-start"

.field private static final CMD_GET_MULTI_SPLIT_FLAGS:Ljava/lang/String; = "get-multi-split-flags"

.field private static final CMD_MINIMIZE:Ljava/lang/String; = "minimize"

.field private static final CMD_MINIMIZE_ALL:Ljava/lang/String; = "minimize-all"

.field private static final CMD_MINIMIZE_ALL_INTENT:Ljava/lang/String; = "minimize-all-intent"

.field private static final CMD_MOVE_FREEFORM_TO_SPLIT:Ljava/lang/String; = "move-freeform-to-split"

.field private static final CMD_MOVE_SPLIT_TO_FREEFORM:Ljava/lang/String; = "move-split-to-freeform"

.field private static final CMD_MULTISTAR_STAY_FUCUS:Ljava/lang/String; = "multistar-stay-focus"

.field private static final CMD_MW_DEFAULT_LAUNCH_MODE_FREFORM:Ljava/lang/String; = "force-freeform"

.field private static final CMD_MW_DYNAMIC_ENABLED:Ljava/lang/String; = "support"

.field private static final CMD_PERSIST_FREEFORM_BOUNDS:Ljava/lang/String; = "persist-freeform"

.field private static final CMD_SET_WINDOWING_MODE:Ljava/lang/String; = "set-windowing-mode"

.field private static final CMD_START_SPLIT_SCREEN_MODE:Ljava/lang/String; = "start-split-screen-mode"

.field private static final CMD_VISIBLETASKS:Ljava/lang/String; = "visibletasks"

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerShellCommand"


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 71
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 73
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 74
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 75
    return-void
.end method


# virtual methods
.method execute(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 14
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 103
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_335

    .line 104
    const/4 v1, 0x1

    .line 105
    .local v1, "handledCommand":Z
    const-string/jumbo v2, "support"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_55

    .line 106
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    .line 107
    .local v2, "userId":I
    if-eqz p2, :cond_4e

    array-length v4, p2

    if-lez v4, :cond_4e

    const-string/jumbo v4, "on"

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string/jumbo v4, "off"

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 108
    :cond_38
    const-string/jumbo v4, "on"

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 109
    .local v4, "enable":Z
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    const-string v6, "MultiWindowManagerShellCommand"

    const-string/jumbo v7, "shell_command"

    invoke-virtual {v5, v6, v7, v4, v2}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 111
    .end local v4    # "enable":Z
    goto :goto_53

    .line 112
    :cond_4e
    const-string v4, "Error: support  option requires [on/off]"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .end local v2    # "userId":I
    :goto_53
    goto/16 :goto_32e

    :cond_55
    const-string v2, "force-freeform"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 115
    if-eqz p2, :cond_8a

    array-length v2, p2

    if-lez v2, :cond_8a

    const-string/jumbo v2, "on"

    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string/jumbo v2, "off"

    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 116
    :cond_78
    const-string/jumbo v2, "on"

    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 117
    .local v2, "enable":Z
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/MultiWindowEnableController;->setDefaultLaunchModeFreeformEnabledLocked(Z)V

    .line 118
    .end local v2    # "enable":Z
    goto/16 :goto_32e

    .line 119
    :cond_8a
    const-string v2, "Error: force-freeform  option requires [on/off]"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32e

    .line 122
    :cond_91
    const-string/jumbo v2, "visibletasks"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_bf

    .line 123
    const-string v2, "========== getVisibleTasks =========="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 125
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v2

    .line 126
    .local v2, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_bd

    .line 127
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_ad
    if-ltz v5, :cond_bd

    .line 128
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 127
    add-int/lit8 v5, v5, -0x1

    goto :goto_ad

    .line 131
    .end local v2    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "i":I
    :cond_bd
    goto/16 :goto_32e

    :cond_bf
    const-string/jumbo v2, "minimize"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 132
    if-eqz p2, :cond_32e

    array-length v2, p2

    if-lez v2, :cond_32e

    .line 133
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    aget-object v5, p2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 134
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v5, v2, v4}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(Lcom/android/server/wm/Task;Z)Z

    .line 135
    nop

    .end local v2    # "task":Lcom/android/server/wm/Task;
    goto/16 :goto_32e

    .line 136
    :cond_e9
    const-string/jumbo v2, "minimize-all"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, "displayId":I
    if-eqz p2, :cond_103

    array-length v5, p2

    if-lez v5, :cond_103

    .line 139
    aget-object v5, p2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v2, v5

    .line 141
    :cond_103
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v5, v2, v4}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 142
    .end local v2    # "displayId":I
    goto/16 :goto_32e

    :cond_10c
    const-string/jumbo v2, "minimize-all-intent"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 143
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    .end local v2    # "intent":Landroid/content/Intent;
    goto/16 :goto_32e

    .line 155
    :cond_125
    const-string v2, "apppair"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v2, :cond_1ae

    .line 156
    const-string v2, "========== AppPair =========="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    if-eqz p2, :cond_1a7

    array-length v2, p2

    if-lt v2, v5, :cond_1a7

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " primary : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " fullscreen : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " sizeType : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 162
    .local v2, "pm":Landroid/content/pm/PackageManager;
    aget-object v5, p2, v3

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 163
    .local v5, "primary":Landroid/content/Intent;
    aget-object v4, p2, v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 164
    .local v4, "fullscreen":Landroid/content/Intent;
    new-instance v7, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v7}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    .line 165
    .local v7, "semMultiWindowManager":Lcom/samsung/android/app/SemMultiWindowManager;
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    aget-object v6, p2, v6

    .line 166
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 165
    invoke-virtual {v7, v8, v5, v4, v6}, Lcom/samsung/android/app/SemMultiWindowManager;->startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;I)V

    .line 167
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "fullscreen":Landroid/content/Intent;
    .end local v5    # "primary":Landroid/content/Intent;
    .end local v7    # "semMultiWindowManager":Lcom/samsung/android/app/SemMultiWindowManager;
    goto/16 :goto_32e

    .line 168
    :cond_1a7
    const-string v2, "apppair PrimaryPackageName FullscreenPackageName DockSizeType[DEFAULT : 0, MINIMAL : 1, MAXIMAL : 2]"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32e

    .line 172
    :cond_1ae
    const-string/jumbo v2, "start-split-screen-mode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_235

    .line 173
    const-string v2, "========== startSplitScreenMode =========="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    if-eqz p2, :cond_22e

    array-length v2, p2

    if-lt v2, v5, :cond_22e

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " taskId : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pick "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    aget-object v2, p2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 179
    .local v2, "taskId":I
    const-string/jumbo v7, "up"

    aget-object v6, p2, v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 181
    .local v6, "pickedUp":Z
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 182
    .local v7, "pm":Landroid/content/pm/PackageManager;
    aget-object v4, p2, v4

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 183
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v8

    .line 184
    .local v8, "opts":Landroid/app/ActivityOptions;
    if-eqz v6, :cond_21f

    .line 185
    goto :goto_220

    .line 186
    :cond_21f
    const/4 v5, 0x4

    .line 184
    :goto_220
    invoke-virtual {v8, v5}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 188
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v5, v2, v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startSplitScreenMode(ILandroid/content/Intent;Landroid/os/Bundle;)V

    .line 189
    .end local v2    # "taskId":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "pickedUp":Z
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "opts":Landroid/app/ActivityOptions;
    goto/16 :goto_32e

    .line 190
    :cond_22e
    const-string v2, "apppair taskId picked-package D&D[up/down]"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32e

    .line 228
    :cond_235
    const-string v2, "dismiss-split-and-start"

    .line 229
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_23b
    .catchall {:try_start_3 .. :try_end_23b} :catchall_383

    if-eqz v2, :cond_260

    .line 231
    const/4 v2, 0x0

    :try_start_23e
    invoke-static {p0, v2}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v2

    .line 232
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v5

    .line 234
    .local v5, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v5, v4}, Landroid/app/ActivityOptions;->setDismissSplitBeforeLaunch(Z)V

    .line 235
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_259
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_259} :catch_25a
    .catchall {:try_start_23e .. :try_end_259} :catchall_383

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "options":Landroid/app/ActivityOptions;
    goto :goto_25e

    .line 236
    :catch_25a
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/Exception;
    :try_start_25b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_25e
    goto/16 :goto_32e

    .line 239
    :cond_260
    const-string/jumbo v2, "move-freeform-to-split"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_288

    .line 241
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    sget-object v4, Lcom/android/server/wm/-$$Lambda$bdkOirWWJ0xC9eYBHxhmXRbdi7o;->INSTANCE:Lcom/android/server/wm/-$$Lambda$bdkOirWWJ0xC9eYBHxhmXRbdi7o;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootWindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 243
    .local v2, "topFreeformTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_286

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_286

    .line 244
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 245
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    .line 244
    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveFreeformTaskToSplitStack(Landroid/os/IBinder;)V

    .line 247
    .end local v2    # "topFreeformTask":Lcom/android/server/wm/Task;
    :cond_286
    goto/16 :goto_32e

    :cond_288
    const-string v2, "get-multi-split-flags"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b0

    .line 249
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v2

    .line 250
    .local v2, "flags":I
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->multiSplitFlagsToString(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 251
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flags = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    .end local v2    # "flags":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    goto/16 :goto_32e

    :cond_2b0
    const-string/jumbo v2, "move-split-to-freeform"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2cb

    .line 253
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    sget-object v4, Lcom/android/server/wm/-$$Lambda$mF8REP1o9KAt-L3VDd9TzirLvCU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$mF8REP1o9KAt-L3VDd9TzirLvCU;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootWindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 255
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveSplitTaskToFreeformStack(Landroid/os/IBinder;)V

    .line 256
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_32e

    :cond_2cb
    const-string v2, "corner-gesture"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e1

    .line 257
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string v4, "corner_gesture"

    invoke-virtual {v2, v4}, Lcom/android/server/wm/MultiStarController;->toggleEnableForKey(Ljava/lang/String;)V

    .line 258
    monitor-exit v0
    :try_end_2dd
    .catchall {:try_start_25b .. :try_end_2dd} :catchall_383

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 259
    :cond_2e1
    :try_start_2e1
    const-string/jumbo v2, "multistar-stay-focus"

    .line 260
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 261
    array-length v2, p2

    if-lez v2, :cond_32e

    .line 262
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    const-string/jumbo v4, "true"

    aget-object v5, p2, v3

    .line 263
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 262
    invoke-virtual {v2, v4}, Lcom/android/server/wm/MultiWindowEnableController;->setStayFocusActivityEnabled(Z)V

    goto :goto_32e

    .line 265
    :cond_2fe
    const-string/jumbo v2, "set-windowing-mode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32d

    .line 266
    if-eqz p2, :cond_327

    array-length v2, p2

    if-lt v2, v6, :cond_327

    .line 267
    aget-object v2, p2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 268
    .local v2, "taskId":I
    aget-object v5, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 269
    .local v5, "windowingMode":I
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v2, v5, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskWindowingMode(IIZ)Z

    .line 270
    nop

    .end local v2    # "taskId":I
    .end local v5    # "windowingMode":I
    goto :goto_32e

    .line 271
    :cond_327
    const-string v2, "Error: set-windowing-mode  option requires [taskId] [windowingMode]"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32e

    .line 275
    :cond_32d
    const/4 v1, 0x0

    .line 277
    :cond_32e
    :goto_32e
    if-eqz v1, :cond_335

    .line 278
    monitor-exit v0
    :try_end_331
    .catchall {:try_start_2e1 .. :try_end_331} :catchall_383

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 281
    .end local v1    # "handledCommand":Z
    :cond_335
    if-eqz p1, :cond_35e

    :try_start_337
    const-string/jumbo v1, "help"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35e

    const-string v1, "-h"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_349

    goto :goto_35e

    .line 292
    :cond_349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37d

    .line 282
    :cond_35e
    :goto_35e
    const-string v1, "MultiWindow manager dump options:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_378

    .line 284
    const-string/jumbo v1, "support [on/off] : multiwindow dynamic enable/disable"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    const-string v1, "force-freeform [on/off] : launch as freeform by force"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v1, "visibletasks : visible task list"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    :cond_378
    const-string v1, "adb shell dumpsys activity mt : print all about multi-tasking"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    :goto_37d
    monitor-exit v0
    :try_end_37e
    .catchall {:try_start_337 .. :try_end_37e} :catchall_383

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 295
    const/4 v0, -0x1

    return v0

    .line 294
    :catchall_383
    move-exception v1

    :try_start_384
    monitor-exit v0
    :try_end_385
    .catchall {:try_start_384 .. :try_end_385} :catchall_383

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 79
    if-nez p1, :cond_7

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 82
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 83
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "arg":Ljava/lang/String;
    :goto_14
    if-eqz v2, :cond_1e

    .line 86
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 89
    :cond_1e
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 90
    .local v3, "array":[Ljava/lang/String;
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/wm/MultiWindowShellCommand;->execute(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v4

    return v4
.end method

.method public onHelp()V
    .registers 1

    .line 95
    return-void
.end method
