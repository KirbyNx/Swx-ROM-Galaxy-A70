.class public Lcom/android/server/wm/MultiTaskingController;
.super Ljava/lang/Object;
.source "MultiTaskingController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;,
        Lcom/android/server/wm/MultiTaskingController$H;,
        Lcom/android/server/wm/MultiTaskingController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final LONG_PRESS_TIME_OUT_SYSTEM_DEFAULT:I = 0x1f4

.field static final MULTI_SPLIT_FREEFORM_ALIGNMENT_OFFSET_DIP:I = 0xf

.field private static final TAG:Ljava/lang/String; = "MultiTaskingController"


# instance fields
.field private mAlignmentOffset:I

.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mBinder:Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

.field private mH:Lcom/android/server/wm/MultiTaskingController$H;

.field private mIsSupportAppMinSize:Z

.field private mLastConfig:Landroid/content/res/Configuration;

.field private mLastMainDockSide:I

.field private mLastRotation:I

.field private final mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

.field private mTmpTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mLastConfig:Landroid/content/res/Configuration;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    .line 170
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingController$1;-><init>(Lcom/android/server/wm/MultiTaskingController;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/MultiTaskingController;->mLastMainDockSide:I

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsSupportAppMinSize:Z

    .line 200
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;-><init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mBinder:Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    .line 197
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiTaskingController;

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/MultiTaskingController;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiTaskingController;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->moveSplitTaskToFreeformStack(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiTaskingController;

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/MultiTaskingController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiTaskingController;

    .line 148
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsSupportAppMinSize:Z

    return v0
.end method

.method private dumpConfigurationContainersLocked(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1264
    const-string v0, "  (CONFIGURATION CONTAINERS)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v1, "  "

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->dumpConfigurationLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1266
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1267
    return-void
.end method

.method private dumpFocusStateLocked(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1296
    const-string v0, "  (FOCUS INFO)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1298
    .local v0, "root":Lcom/android/server/wm/RootWindowContainer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    TopDisplayFocusedStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    TopResumedActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1301
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_42
    if-ltz v1, :cond_124

    .line 1302
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1303
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    DisplayContent #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      FocusedStack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      Preferred TopFocusableStack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1305
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      mFocusedApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      mCurrentFocus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      mInputMethodWindow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      mInputMethodTarget="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      mInputMethodControlTarget="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mInputMethodControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ImeInsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_42

    .line 1314
    .end local v1    # "i":I
    :cond_124
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_177

    .line 1315
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "    mTopFocusedAppByProcess"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1317
    .local v1, "keySet":Ljava/util/Iterator;
    :goto_13e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_177

    .line 1318
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1319
    .local v2, "pid":I
    iget-object v3, v0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1320
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    .end local v2    # "pid":I
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    goto :goto_13e

    .line 1323
    .end local v1    # "keySet":Ljava/util/Iterator;
    :cond_177
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1324
    return-void
.end method

.method private dumpTaskOrderLocked(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1270
    const-string v0, "  (TASK ORDER INFO)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_57

    .line 1272
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1273
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    DisplayContent #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "tdaNdx":I
    :goto_37
    if-ltz v2, :cond_54

    .line 1275
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 1276
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "taskNdx":I
    :goto_43
    if-ltz v4, :cond_51

    .line 1277
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    const-string v6, "    "

    invoke-direct {p0, p1, v6, v5, v4}, Lcom/android/server/wm/MultiTaskingController;->printAllTasksLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;I)V

    .line 1276
    add-int/lit8 v4, v4, -0x1

    goto :goto_43

    .line 1274
    .end local v3    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v4    # "taskNdx":I
    :cond_51
    add-int/lit8 v2, v2, -0x1

    goto :goto_37

    .line 1271
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "tdaNdx":I
    :cond_54
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 1281
    .end local v0    # "i":I
    :cond_57
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1282
    return-void
.end method

.method private getFreeformBoundsFromMultiSplitBounds(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .registers 18
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 993
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 994
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v2, :cond_10f

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 995
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 1001
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MultiTaskingController;->getPrimarySplitSide()I

    move-result v3

    .line 1002
    .local v3, "dockSide":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1003
    .local v4, "stableBounds":Landroid/graphics/Rect;
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 1004
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1005
    .local v5, "prevMultiSplitBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v5}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 1007
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1008
    .local v6, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3ee66666    # 0.45f

    mul-float/2addr v7, v8

    .line 1009
    .local v7, "defaultWidth":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    .line 1011
    .local v9, "defaultHeight":F
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1012
    .local v8, "bounds":Landroid/graphics/Rect;
    float-to-int v10, v7

    float-to-int v11, v9

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v12, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1013
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v1, v8, v10, v11}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 1015
    const/4 v10, 0x0

    .line 1016
    .local v10, "offsetX":I
    const/4 v11, 0x0

    .line 1017
    .local v11, "offsetY":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v12

    .line 1018
    .local v12, "windowingMode":I
    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v13, 0x2

    if-ne v3, v13, :cond_c9

    .line 1019
    if-ne v12, v14, :cond_89

    .line 1020
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/2addr v14, v13

    iget v15, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v15

    .line 1021
    .local v14, "centerX":I
    iget v15, v8, Landroid/graphics/Rect;->right:I

    div-int/2addr v15, v13

    sub-int v10, v14, v15

    .line 1022
    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    iget v15, v0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    sub-int/2addr v13, v15

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v13, v15

    .line 1023
    .end local v14    # "centerX":I
    goto/16 :goto_10b

    :cond_89
    if-ne v12, v15, :cond_b2

    .line 1024
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/2addr v14, v13

    iget v15, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v15

    .line 1025
    .restart local v14    # "centerX":I
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v15

    if-eqz v15, :cond_a2

    .line 1026
    iget v13, v4, Landroid/graphics/Rect;->left:I

    iget v15, v0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    add-int/2addr v13, v15

    iget v15, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v15

    goto :goto_a7

    .line 1027
    :cond_a2
    iget v15, v8, Landroid/graphics/Rect;->right:I

    div-int/2addr v15, v13

    sub-int v13, v14, v15

    :goto_a7
    move v10, v13

    .line 1028
    iget v13, v5, Landroid/graphics/Rect;->top:I

    iget v15, v0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    add-int/2addr v13, v15

    iget v15, v8, Landroid/graphics/Rect;->top:I

    sub-int v11, v13, v15

    .line 1029
    .end local v14    # "centerX":I
    :cond_b1
    goto :goto_10b

    :cond_b2
    const/16 v13, 0xc

    if-ne v12, v13, :cond_b1

    .line 1030
    iget v13, v4, Landroid/graphics/Rect;->right:I

    iget v14, v0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    sub-int/2addr v13, v14

    iget v14, v8, Landroid/graphics/Rect;->right:I

    sub-int v10, v13, v14

    .line 1031
    iget v13, v5, Landroid/graphics/Rect;->top:I

    iget v14, v0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/graphics/Rect;->top:I

    sub-int v11, v13, v14

    goto :goto_10b

    .line 1033
    :cond_c9
    if-ne v3, v15, :cond_10b

    .line 1034
    if-ne v12, v14, :cond_e0

    .line 1035
    iget v13, v4, Landroid/graphics/Rect;->left:I

    iget v14, v0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/graphics/Rect;->left:I

    add-int v10, v13, v14

    .line 1036
    iget v13, v5, Landroid/graphics/Rect;->top:I

    iget v14, v0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/graphics/Rect;->top:I

    sub-int v11, v13, v14

    goto :goto_10b

    .line 1037
    :cond_e0
    if-ne v12, v15, :cond_f5

    .line 1038
    iget v13, v4, Landroid/graphics/Rect;->right:I

    iget v14, v0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    sub-int/2addr v13, v14

    iget v14, v8, Landroid/graphics/Rect;->right:I

    sub-int v10, v13, v14

    .line 1039
    iget v13, v5, Landroid/graphics/Rect;->top:I

    iget v14, v0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/graphics/Rect;->top:I

    sub-int v11, v13, v14

    goto :goto_10b

    .line 1040
    :cond_f5
    const/16 v13, 0xc

    if-ne v12, v13, :cond_10b

    .line 1041
    iget v13, v4, Landroid/graphics/Rect;->right:I

    iget v14, v0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    sub-int/2addr v13, v14

    iget v14, v8, Landroid/graphics/Rect;->right:I

    sub-int v10, v13, v14

    .line 1042
    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    iget v14, v0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    sub-int/2addr v13, v14

    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v13, v14

    .line 1045
    :cond_10b
    :goto_10b
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 1047
    return-object v8

    .line 998
    .end local v3    # "dockSide":I
    .end local v4    # "stableBounds":Landroid/graphics/Rect;
    .end local v5    # "prevMultiSplitBounds":Landroid/graphics/Rect;
    .end local v6    # "displayBounds":Landroid/graphics/Rect;
    .end local v7    # "defaultWidth":F
    .end local v8    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "defaultHeight":F
    .end local v10    # "offsetX":I
    .end local v11    # "offsetY":I
    .end local v12    # "windowingMode":I
    :cond_10f
    const/4 v3, 0x0

    return-object v3
.end method

.method private getMinimalSize(Landroid/content/res/Resources;)I
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 1147
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1148
    .local v0, "densityDpi":I
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0x1a4

    goto :goto_11

    .line 1149
    :cond_f
    const/16 v1, 0x1d6

    :goto_11
    if-lt v0, v1, :cond_1b

    .line 1150
    const v1, 0x1050109

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 1153
    :cond_1b
    const v1, 0x10501df

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method private getPrimarySplitSide()I
    .registers 9

    .line 851
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 852
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    .line 853
    .local v1, "policy":Lcom/android/server/wm/DisplayPolicy;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 854
    .local v2, "width":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 855
    .local v3, "height":I
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result v4

    .line 856
    .local v4, "navPosition":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2d

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2c

    const/4 v7, 0x4

    if-eq v4, v7, :cond_27

    .line 864
    const/4 v5, -0x1

    return v5

    .line 858
    :cond_27
    if-le v2, v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v5, v6

    :goto_2b
    return v5

    .line 862
    :cond_2c
    return v5

    .line 860
    :cond_2d
    const/4 v5, 0x3

    return v5
.end method

.method static synthetic lambda$findAliasManagedTaskInPackage$6(ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 6
    .param p0, "userId"    # I
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/util/ArrayList;
    .param p3, "t"    # Lcom/android/server/wm/Task;

    .line 1087
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isAliasManaged()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p3, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v0, p0, :cond_b

    goto :goto_1f

    .line 1090
    :cond_b
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1091
    .local v0, "taskRoot":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1e

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_1e

    .line 1094
    :cond_1a
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    return-void

    .line 1092
    :cond_1e
    :goto_1e
    return-void

    .line 1088
    .end local v0    # "taskRoot":Lcom/android/server/wm/ActivityRecord;
    :cond_1f
    :goto_1f
    return-void
.end method

.method static synthetic lambda$getMultiSplitFlags$5(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 815
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFullscreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 816
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 815
    :goto_10
    return v0
.end method

.method static synthetic lambda$notifyFocusedDisplayChangedLocked$3(I)V
    .registers 2
    .param p0, "focusedDisplayId"    # I

    .line 723
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 724
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 725
    .local v0, "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_d

    .line 726
    invoke-interface {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onFocusedDisplayChanged(I)V

    .line 728
    :cond_d
    return-void
.end method

.method private moveSplitTaskToFreeformStack(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 912
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 914
    :try_start_5
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 915
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_9c

    goto :goto_12

    :cond_11
    move-object v2, v1

    .line 917
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_12
    const-string v3, "MultiTaskingController"

    if-nez v2, :cond_31

    .line 918
    :try_start_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveSplitTaskToFreeformStack: cannot find stack, r="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_9c

    .line 946
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 919
    return-void

    .line 921
    :cond_31
    :try_start_31
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 922
    .local v4, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v5

    if-nez v5, :cond_56

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveSplitTaskToFreeformStack: It\'s not split stack, r="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_31 .. :try_end_50} :catchall_9c

    .line 946
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 924
    return-void

    .line 927
    :cond_56
    :try_start_56
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 928
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_96

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_63

    goto :goto_96

    .line 932
    :cond_63
    iput-object v1, v4, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 937
    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/android/server/wm/Task;->mTaskSwitchingInSplitMode:Z

    .line 938
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiSplitWindowController:Lcom/android/server/wm/MultiSplitWindowController;

    .line 939
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 940
    const/4 v5, 0x4

    goto :goto_7b

    .line 941
    :cond_7a
    const/4 v5, 0x3

    .line 938
    :goto_7b
    invoke-virtual {v1, v5}, Lcom/android/server/wm/MultiSplitWindowController;->setSplitAnimationTypeLocked(I)V

    .line 942
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    const v5, 0x7fffffff

    invoke-virtual {v4, v1, v5}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 943
    const/4 v1, 0x0

    iput-boolean v1, v4, Lcom/android/server/wm/Task;->mTaskSwitchingInSplitMode:Z

    .line 944
    const/4 v1, 0x5

    invoke-virtual {v4, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V
    :try_end_8f
    .catchall {:try_start_56 .. :try_end_8f} :catchall_9c

    .line 946
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 947
    nop

    .line 948
    return-void

    .line 946
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v4    # "task":Lcom/android/server/wm/Task;
    :cond_96
    :goto_96
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 929
    return-void

    .line 946
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :catchall_9c
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 947
    throw v0
.end method

.method private printAllTasksLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;I)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p4, "index"    # I

    .line 1285
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1286
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_7

    .line 1287
    return-void

    .line 1289
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "Root #"

    goto :goto_1a

    :cond_18
    const-string v2, "Leaf #"

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    iget-object v1, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_37
    if-ltz v1, :cond_58

    .line 1291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/server/wm/MultiTaskingController;->printAllTasksLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;I)V

    .line 1290
    add-int/lit8 v1, v1, -0x1

    goto :goto_37

    .line 1293
    .end local v1    # "i":I
    :cond_58
    return-void
.end method

.method private updateMultiSplitAppMinimumSizeLocked()V
    .registers 1

    .line 1164
    return-void
.end method


# virtual methods
.method computeAdjacentWindowingMode(IILcom/android/server/wm/TaskDisplayArea;)I
    .registers 7
    .param p1, "sourceWindowingMode"    # I
    .param p2, "windowingMode"    # I
    .param p3, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1104
    move v0, p2

    .line 1105
    .local v0, "adjacentWindowingMode":I
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    const/16 v2, 0xc

    if-nez v1, :cond_d

    if-ne p2, v2, :cond_d

    .line 1107
    const/4 v0, 0x3

    goto :goto_28

    .line 1108
    :cond_d
    const/4 v1, 0x4

    if-eq p1, v1, :cond_27

    if-ne p1, v2, :cond_13

    goto :goto_27

    .line 1111
    :cond_13
    const/4 v1, 0x3

    if-ne p1, v1, :cond_28

    .line 1112
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitTwoUpModeActivated()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1113
    const/4 v0, 0x4

    goto :goto_28

    .line 1114
    :cond_1e
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1115
    const/16 v0, 0xc

    goto :goto_28

    .line 1110
    :cond_27
    :goto_27
    const/4 v0, 0x3

    .line 1118
    :cond_28
    :goto_28
    return v0
.end method

.method public dismissTaskInSplitScreen(Landroid/os/IBinder;)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;

    .line 869
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 871
    :try_start_5
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 872
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    .line 873
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_12
    if-eqz v2, :cond_9a

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_9a

    .line 874
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 875
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSplitWindowingMode(I)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_9a

    .line 881
    :cond_2f
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 882
    .local v3, "wct":Landroid/window/WindowContainerTransaction;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 883
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v5

    .line 884
    .local v5, "isMultiSplitActive":Z
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->inSplitScreenCellWindowingMode()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_68

    if-eqz v5, :cond_68

    .line 885
    nop

    .line 886
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    .line 887
    .local v1, "secondaryRootTaskToken":Landroid/window/WindowContainerToken;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v6

    .line 888
    .local v6, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_55
    if-ge v8, v6, :cond_67

    .line 889
    invoke-virtual {v2, v8}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v9

    invoke-virtual {v3, v9, v1, v7}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 888
    add-int/lit8 v8, v8, 0x1

    goto :goto_55

    .line 895
    .end local v1    # "secondaryRootTaskToken":Landroid/window/WindowContainerToken;
    .end local v6    # "size":I
    .end local v8    # "i":I
    :cond_67
    goto :goto_8c

    .line 896
    :cond_68
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v6

    .line 897
    .restart local v6    # "size":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6d
    if-ge v8, v6, :cond_8c

    .line 898
    invoke-virtual {v2, v8}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    .line 899
    .local v9, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isActivityTypeHome()Z

    move-result v10

    if-nez v10, :cond_89

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isActivityTypeRecents()Z

    move-result v10

    if-eqz v10, :cond_80

    .line 900
    goto :goto_89

    .line 902
    :cond_80
    iget-object v10, v9, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v10

    invoke-virtual {v3, v10, v1, v7}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 897
    .end local v9    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_89
    :goto_89
    add-int/lit8 v8, v8, 0x1

    goto :goto_6d

    .line 905
    .end local v6    # "size":I
    .end local v8    # "i":I
    :cond_8c
    :goto_8c
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_93
    .catchall {:try_start_5 .. :try_end_93} :catchall_b6

    .line 907
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "wct":Landroid/window/WindowContainerTransaction;
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "isMultiSplitActive":Z
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 908
    nop

    .line 909
    return-void

    .line 876
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_9a
    :goto_9a
    :try_start_9a
    const-string v1, "MultiTaskingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dismissTaskInSplitScreen: cannot find stack or not in SplitScreen, token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_9a .. :try_end_b0} :catchall_b6

    .line 907
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 878
    return-void

    .line 907
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_b6
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 908
    throw v0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1255
    const-string v0, "[MultiTaskingController]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->dumpConfigurationContainersLocked(Ljava/io/PrintWriter;)V

    .line 1257
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->dumpTaskOrderLocked(Ljava/io/PrintWriter;)V

    .line 1258
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->dumpFocusStateLocked(Ljava/io/PrintWriter;)V

    .line 1259
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMtWindowController:Lcom/android/server/wm/MultiTaskingWindowController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/MultiTaskingWindowController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1261
    return-void
.end method

.method enableScreenAfterBoot()V
    .registers 1

    .line 266
    return-void
.end method

.method ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "pkgs"    # [Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 1124
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, "callingPackages":[Ljava/lang/String;
    if-eqz p1, :cond_33

    array-length v1, p1

    if-lez v1, :cond_33

    if-eqz v0, :cond_33

    array-length v1, v0

    if-lez v1, :cond_33

    .line 1128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v2, v0

    if-ge v1, v2, :cond_33

    .line 1129
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1b
    array-length v3, p1

    if-ge v2, v3, :cond_30

    .line 1130
    aget-object v3, p1, v2

    if-eqz v3, :cond_2d

    aget-object v3, p1, v2

    aget-object v4, v0, v1

    .line 1131
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_34

    if-eqz v3, :cond_2d

    .line 1132
    return-void

    .line 1129
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1128
    .end local v2    # "j":I
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1138
    .end local v0    # "callingPackages":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_33
    goto :goto_35

    .line 1137
    :catch_34
    move-exception v0

    .line 1139
    :goto_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method exitMultiWindow(Landroid/os/IBinder;)Z
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 429
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 430
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 432
    .local v2, "task":Lcom/android/server/wm/Task;
    :goto_14
    const/4 v3, 0x0

    if-eqz v2, :cond_88

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-nez v4, :cond_1e

    goto :goto_88

    .line 437
    :cond_1e
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    .line 438
    .local v4, "windowingMode":I
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4e

    .line 439
    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_a3

    .line 441
    :try_start_2e
    move-object v5, v2

    check-cast v5, Lcom/android/server/wm/ActivityStack;

    const-string v7, "exitMultiWindow"

    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    move-object v7, v2

    check-cast v7, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;Z)V
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_46

    .line 444
    :try_start_40
    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 445
    goto :goto_7c

    .line 444
    :catchall_46
    move-exception v3

    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 445
    nop

    .end local p0    # "this":Lcom/android/server/wm/MultiTaskingController;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v3

    .line 446
    .restart local p0    # "this":Lcom/android/server/wm/MultiTaskingController;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_4e
    const/4 v5, 0x5

    if-ne v5, v4, :cond_57

    .line 447
    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    goto :goto_7c

    .line 448
    :cond_57
    if-ne v6, v4, :cond_5a

    goto :goto_7c

    .line 453
    :cond_5a
    const-string v5, "MultiTaskingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exitMultiWindow: invalid windowing mode to request mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 453
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_7c
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v5

    if-ne v5, v6, :cond_83

    move v3, v6

    :cond_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_40 .. :try_end_84} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 433
    .end local v4    # "windowingMode":I
    :cond_88
    :goto_88
    :try_start_88
    const-string v4, "MultiTaskingController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exitMultiWindow: cannot find task, token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_88 .. :try_end_9f} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 457
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :catchall_a3
    move-exception v1

    :try_start_a4
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method findAliasManagedTaskInPackage(Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 1085
    .local p3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1086
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$plBqk_gVR4amX-flinvkErgkXzk;

    invoke-direct {v2, p2, p1, p3}, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$plBqk_gVR4amX-flinvkErgkXzk;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 1096
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1097
    return-void

    .line 1096
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method finishBooting()V
    .registers 1

    .line 251
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->registerMinimizeAllReceiver()V

    .line 258
    return-void
.end method

.method getBinder()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mBinder:Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    return-object v0
.end method

.method public getDexMode()I
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 232
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 233
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getMultiSplitFlags()I
    .registers 5

    .line 812
    const/4 v0, 0x0

    .line 814
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    sget-object v2, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$X2-1MgS7f8Ie-2hBET7P8ce2xyo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MultiTaskingController$X2-1MgS7f8Ie-2hBET7P8ce2xyo;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 817
    .local v1, "topTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_43

    .line 818
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 821
    or-int/lit8 v0, v0, 0x4

    goto :goto_26

    .line 822
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 823
    or-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 825
    :cond_24
    or-int/lit8 v0, v0, 0x2

    .line 828
    :goto_26
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v2

    .line 829
    .local v2, "pairTask":Lcom/android/server/wm/PairTask;
    if-nez v2, :cond_2f

    .line 830
    or-int/lit8 v0, v0, 0x8

    goto :goto_3a

    .line 832
    :cond_2f
    invoke-virtual {v2}, Lcom/android/server/wm/PairTask;->getSplitCellPairChild()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_38

    .line 833
    or-int/lit8 v0, v0, 0x10

    goto :goto_3a

    .line 835
    :cond_38
    or-int/lit8 v0, v0, 0x20

    .line 839
    :goto_3a
    invoke-direct {p0}, Lcom/android/server/wm/MultiTaskingController;->getPrimarySplitSide()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->dockSideToMultiSplitFlag(I)I

    move-result v3

    or-int/2addr v0, v3

    .line 842
    .end local v2    # "pairTask":Lcom/android/server/wm/PairTask;
    :cond_43
    return v0
.end method

.method getTaskIdFromPackageName(Ljava/lang/String;)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 770
    const/4 v0, -0x1

    if-nez p1, :cond_d

    .line 771
    new-instance v1, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 772
    .local v1, "invalidTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iput v0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iput v0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    .line 773
    return-object v1

    .line 776
    .end local v1    # "invalidTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 777
    new-instance v2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 778
    iput v0, v2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iput v0, v2, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    .line 779
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_2a
    if-ltz v0, :cond_42

    .line 781
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 782
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    new-instance v3, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$p5SmoivVkKzYMV3H2AsbAWF97Oc;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$p5SmoivVkKzYMV3H2AsbAWF97Oc;-><init>(Lcom/android/server/wm/MultiTaskingController;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllActivities(Ljava/util/function/Function;)Z

    .line 780
    nop

    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 795
    .end local v0    # "displayNdx":I
    :cond_42
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_12 .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 796
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method hasDifferentMainDockSideLocked(I)Z
    .registers 5
    .param p1, "dockSide"    # I

    .line 802
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 803
    return v1

    .line 805
    :cond_c
    iget v0, p0, Lcom/android/server/wm/MultiTaskingController;->mLastMainDockSide:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    if-eq p1, v2, :cond_16

    if-eq v0, p1, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public initialize()V
    .registers 3

    .line 208
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$H;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiTaskingController$H;-><init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 209
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;-><init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSettingsObserver:Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

    .line 210
    return-void
.end method

.method installSystemProvidersLocked()V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$XafjvBOXT7tnSJksI4R-fD2sBuA;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$XafjvBOXT7tnSJksI4R-fD2sBuA;-><init>(Lcom/android/server/wm/MultiTaskingController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingController$H;->post(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method interceptNewTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z
    .registers 12
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "activityOptions"    # Landroid/app/ActivityOptions;
    .param p3, "displayId"    # I

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "intercepted":Z
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

    const/4 v4, 0x0

    const-string/jumbo v7, "newTask"

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/RemoteAppController;->interceptStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;ILjava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 314
    return v0
.end method

.method interceptStartActivityFromRecentsLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;II)Z
    .registers 9
    .param p1, "recentTask"    # Lcom/android/server/wm/Task;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 294
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    .line 295
    .local v0, "launchDisplayId":I
    :goto_8
    const/4 v1, 0x0

    .line 300
    .local v1, "intercepted":Z
    if-nez v1, :cond_16

    .line 301
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

    const-string v3, "fromRecents"

    invoke-virtual {v2, p1, p2, v0, v3}, Lcom/android/server/wm/RemoteAppController;->interceptStartActivityFromRecentsLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;ILjava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 304
    :cond_16
    return v1
.end method

.method interceptStartActivityLocked(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;IIILandroid/app/ActivityOptions;Lcom/android/server/uri/NeededUriGrants;)Z
    .registers 19
    .param p1, "reusedTask"    # Lcom/android/server/wm/Task;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "startFlags"    # I
    .param p5, "launchFlags"    # I
    .param p6, "preferredDisplayId"    # I
    .param p7, "option"    # Landroid/app/ActivityOptions;
    .param p8, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 272
    move-object v0, p0

    move-object v7, p1

    const v1, 0x10008000

    and-int v2, p5, v1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    move v8, v1

    .line 274
    .local v8, "isNewClearTask":Z
    if-eqz v7, :cond_34

    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p1, v8}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptStartActivityLocked: fail, lockTaskMode, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiTaskingController"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v3

    .line 280
    :cond_34
    const/4 v9, 0x0

    .line 285
    .local v9, "intercepted":Z
    if-nez v9, :cond_4a

    if-eqz v7, :cond_4a

    .line 286
    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

    const-string/jumbo v6, "reusedTask"

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p7

    move/from16 v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RemoteAppController;->interceptStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;ILjava/lang/String;)Z

    move-result v9

    .line 289
    :cond_4a
    return v9
.end method

.method public synthetic lambda$getTaskIdFromPackageName$4$MultiTaskingController(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 783
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 785
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 786
    .local v0, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTaskIdFromPackageName, recentTaskInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiTaskingController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 790
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 792
    .end local v0    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$installSystemProvidersLocked$0$MultiTaskingController()V
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSettingsObserver:Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

    # invokes: Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->initSettings()V
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->access$500(Lcom/android/server/wm/MultiTaskingController$SettingsObserver;)V

    return-void
.end method

.method public synthetic lambda$minimizeTaskLocked$2$MultiTaskingController(Lcom/android/server/wm/Task;Z)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "animate"    # Z

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 343
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/wm/ActivityStack;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZ)Z

    .line 344
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2c

    .line 345
    const-string v1, "MultiTaskingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "minimizeTaskLocked: minimizeDelayTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 348
    return-void

    .line 347
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$startUser$1$MultiTaskingController(IZZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "needStart"    # Z
    .param p3, "foreground"    # Z

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 220
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/MultiWindowEnableController;->startUserLocked(IZ)V

    .line 225
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 226
    return-void

    .line 225
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method minimizeAllTasksLocked(IZ)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 367
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_b

    .line 368
    return-void

    .line 370
    :cond_b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v2, "MultiTaskingController"

    if-eqz v1, :cond_26

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "minimizeAllFreeformTasks: displayId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_26
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED:Z

    if-eqz v1, :cond_36

    .line 382
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_36

    .line 383
    const-string v1, "Blocked minimized freeform by multistar"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void

    .line 387
    :cond_36
    const/4 v1, -0x1

    .line 393
    .local v1, "lastMinimizedDisplayType":I
    :try_start_37
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 395
    new-instance v2, Ljava/util/ArrayList;

    .line 396
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 397
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5a

    .line 398
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 399
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0, v4, p2}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(Lcom/android/server/wm/Task;Z)Z
    :try_end_57
    .catchall {:try_start_37 .. :try_end_57} :catchall_61

    .line 397
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 410
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    .end local v3    # "i":I
    :cond_5a
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 411
    nop

    .line 412
    return-void

    .line 410
    :catchall_61
    move-exception v2

    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 411
    throw v2
.end method

.method minimizeTaskLocked(Lcom/android/server/wm/Task;Z)Z
    .registers 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "animate"    # Z

    .line 327
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->canMinimize()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_36

    .line 331
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 332
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    .line 338
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->isInputMethodTargetTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 339
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v2

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    .line 341
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$sThEDEoP79Rj65HpF3Aiw7QTfQs;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$sThEDEoP79Rj65HpF3Aiw7QTfQs;-><init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/Task;Z)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/MultiTaskingController$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    return v1

    .line 354
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1, p2}, Lcom/android/server/wm/ActivityStack;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZ)Z

    move-result v1

    return v1

    .line 328
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_36
    :goto_36
    const/4 v0, 0x0

    return v0
.end method

.method public moveFreeformTaskToSplitStack(Landroid/os/IBinder;)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;

    .line 951
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 953
    :try_start_5
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 954
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    .line 955
    .local v2, "task":Lcom/android/server/wm/Task;
    :goto_12
    if-eqz v2, :cond_7b

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 956
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 957
    .local v3, "tda":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 958
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_5e

    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_2d

    goto :goto_5e

    .line 963
    :cond_2d
    const/4 v5, 0x1

    .line 965
    .local v5, "isSupportMinSize":Z
    const/4 v6, 0x0

    .line 967
    .local v6, "isFolded":Z
    const/4 v7, 0x0

    .line 970
    .local v7, "moveFreeformTaskToCell":Z
    iget-object v8, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMultiSplitWindowController:Lcom/android/server/wm/MultiSplitWindowController;

    .line 971
    if-eqz v7, :cond_3a

    const/4 v9, 0x6

    goto :goto_3b

    .line 972
    :cond_3a
    const/4 v9, 0x5

    .line 970
    :goto_3b
    invoke-virtual {v8, v9}, Lcom/android/server/wm/MultiSplitWindowController;->setSplitAnimationTypeLocked(I)V

    .line 973
    const/4 v8, 0x1

    if-eqz v7, :cond_4c

    .line 974
    invoke-virtual {p0, v2, v8}, Lcom/android/server/wm/MultiTaskingController;->moveTaskToSplitScreenCellTask(Lcom/android/server/wm/Task;Z)V

    .line 976
    iput-object v1, v2, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 978
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskFocusChanged(Lcom/android/server/wm/Task;)V

    goto :goto_7b

    .line 979
    :cond_4c
    iget-object v9, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v10, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v10, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskWindowingModeSplitScreenPrimary(IZ)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 982
    iput-object v1, v2, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 984
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskFocusChanged(Lcom/android/server/wm/Task;)V

    goto :goto_7b

    .line 959
    .end local v5    # "isSupportMinSize":Z
    .end local v6    # "isFolded":Z
    .end local v7    # "moveFreeformTaskToCell":Z
    :cond_5e
    :goto_5e
    const-string v1, "MultiTaskingController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveFreeformTaskToSplitStack: failed, no dispaly, t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_5 .. :try_end_75} :catchall_82

    .line 988
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 960
    return-void

    .line 988
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 989
    nop

    .line 990
    return-void

    .line 988
    :catchall_82
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 989
    throw v0
.end method

.method moveTaskToSplitScreenCellTask(Lcom/android/server/wm/Task;Z)V
    .registers 8
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    .line 1053
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1054
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenCellTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1055
    .local v1, "cellRootTask":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_58

    .line 1059
    const/4 v2, 0x0

    if-eqz p2, :cond_13

    .line 1060
    const v3, 0x7fffffff

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(ILcom/android/server/wm/ActivityStack;Z)V

    .line 1064
    :cond_13
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskDisplayArea;->ensureFocusWithLaunchingWindowingMode(I)V

    .line 1066
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v3, :cond_2a

    .line 1067
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1069
    .local v3, "candidate":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_2a

    .line 1070
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->changeAppLockActivityToServiceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 1073
    .end local v3    # "candidate":Lcom/android/server/wm/ActivityStack;
    :cond_2a
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 1075
    .local v3, "wct":Landroid/window/WindowContainerTransaction;
    nop

    .line 1076
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityStack;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    .line 1075
    invoke-virtual {v3, v4, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 1077
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 1078
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    .line 1077
    invoke-virtual {v3, v2, v4, p2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 1079
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 1080
    return-void

    .line 1056
    .end local v3    # "wct":Landroid/window/WindowContainerTransaction;
    :cond_58
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t enter split without associated organized cell task"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method notifyFocusedDisplayChangedLocked(I)V
    .registers 4
    .param p1, "focusedDisplayId"    # I

    .line 722
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$Zn3GHsFaEjE3o5xmL601n-fAS20;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$Zn3GHsFaEjE3o5xmL601n-fAS20;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingController$H;->post(Ljava/lang/Runnable;)Z

    .line 729
    return-void
.end method

.method performDisplayOverrideConfigUpdate(IIFF)V
    .registers 7
    .param p1, "changes"    # I
    .param p2, "displayId"    # I
    .param p3, "scaleW"    # F
    .param p4, "scaleH"    # F

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigurationChangedLocked: display#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", configChanges=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scaleW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaleH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    const-string v1, "MultiTaskingController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/FreeformController;->performDisplayOverrideConfigUpdate(IIFF)V

    .line 474
    return-void
.end method

.method preOnConfigurationChanged()V
    .registers 8

    .line 1194
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1195
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v1, :cond_3c

    if-nez v0, :cond_13

    goto :goto_3c

    .line 1198
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mLastConfig:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    .line 1199
    .local v1, "diff":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 1200
    .local v2, "newRotation":I
    iget v3, p0, Lcom/android/server/wm/MultiTaskingController;->mLastRotation:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v2, :cond_2d

    move v3, v4

    goto :goto_2e

    :cond_2d
    move v3, v5

    .line 1201
    .local v3, "rotationChanged":Z
    :goto_2e
    and-int/lit16 v6, v1, 0x1400

    if-nez v6, :cond_36

    if-eqz v3, :cond_35

    goto :goto_36

    :cond_35
    move v4, v5

    .line 1203
    .local v4, "needToUpdate":Z
    :cond_36
    :goto_36
    nop

    .line 1232
    if-eqz v3, :cond_3b

    .line 1233
    iput v2, p0, Lcom/android/server/wm/MultiTaskingController;->mLastRotation:I

    .line 1235
    :cond_3b
    return-void

    .line 1196
    .end local v1    # "diff":I
    .end local v2    # "newRotation":I
    .end local v3    # "rotationChanged":Z
    .end local v4    # "needToUpdate":Z
    :cond_3c
    :goto_3c
    return-void
.end method

.method readAllSettings()V
    .registers 4

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSettingsObserver:Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->readSettings(Landroid/net/Uri;Z)V

    .line 479
    return-void
.end method

.method registerMinimizeAllReceiver()V
    .registers 6

    .line 418
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 419
    .local v0, "minimizeFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const-string v4, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 424
    .end local v0    # "minimizeFilter":Landroid/content/IntentFilter;
    return-void
.end method

.method removeFocusedTask(I)Z
    .registers 12
    .param p1, "displayId"    # I

    .line 734
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 735
    return v1

    .line 738
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 739
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 740
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_1c

    .line 741
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 744
    :cond_1c
    const/4 v3, 0x0

    .line 745
    .local v3, "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    :try_start_1d
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "tdaNdx":I
    :goto_23
    if-ltz v4, :cond_a3

    .line 746
    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 747
    .local v6, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    move-object v3, v7

    .line 748
    if-eqz v3, :cond_a0

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_a0

    .line 749
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 750
    const/4 v7, 0x5

    invoke-virtual {v2, v7, v5}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 752
    .local v7, "freeformStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v7, :cond_74

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_74

    .line 753
    const-string v1, "MultiTaskingController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeFocusedTask, topFreeformTask="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 753
    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    .line 756
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_1d .. :try_end_70} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 758
    .end local v7    # "freeformStack":Lcom/android/server/wm/ActivityStack;
    :cond_74
    goto :goto_a0

    .line 759
    :cond_75
    :try_start_75
    const-string v1, "MultiTaskingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeFocusedTask, focusedTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    .line 761
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_75 .. :try_end_9c} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 745
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_a0
    :goto_a0
    add-int/lit8 v4, v4, -0x1

    goto :goto_23

    .line 765
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "tdaNdx":I
    :cond_a3
    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 766
    return v1

    .line 765
    :catchall_a8
    move-exception v1

    :try_start_a9
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "requester"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "userId"    # I

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 246
    return-void
.end method

.method public showCanNotSwitchUserToast()V
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->showCanNotSwitchUserToast()V

    .line 238
    return-void
.end method

.method public startUser(IZZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "needStart"    # Z

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$A2ILv8te838csaPteW2t6eLEldk;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$A2ILv8te838csaPteW2t6eLEldk;-><init>(Lcom/android/server/wm/MultiTaskingController;IZZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingController$H;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method supportMultiSplitAppMinimumSizeLocked()Z
    .registers 2

    .line 1159
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsSupportAppMinSize:Z

    return v0
.end method
