.class public Lcom/android/server/wm/PairTask;
.super Lcom/android/server/wm/ActivityStack;
.source "PairTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;,
        Lcom/android/server/wm/PairTask$Builder;
    }
.end annotation


# static fields
.field private static final ATTR_CELL_TASKID:Ljava/lang/String; = "cell_taskid"

.field private static final ATTR_PAIR_TASKID:Ljava/lang/String; = "pair_taskid"

.field private static final ATTR_PRIMARY_TASKID:Ljava/lang/String; = "primary_taskid"

.field private static final ATTR_SECONDARY_TASKID:Ljava/lang/String; = "secondary_taskid"


# instance fields
.field private mCellPairChildId:I

.field private final mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

.field private mPrimaryPairChildId:I

.field private mSecondaryPairChildId:I


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;)V
    .registers 12
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "id"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;

    .line 78
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;IILandroid/content/pm/ActivityInfo;Landroid/content/Intent;ZZ)V

    .line 60
    new-instance v0, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;-><init>(Lcom/android/server/wm/PairTask$1;)V

    iput-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/PairTask;->mPrimaryPairChildId:I

    .line 68
    iput v0, p0, Lcom/android/server/wm/PairTask;->mSecondaryPairChildId:I

    .line 69
    iput v0, p0, Lcom/android/server/wm/PairTask;->mCellPairChildId:I

    .line 79
    return-void
.end method

.method public static create(Lcom/android/server/wm/ActivityTaskManagerService;I)Lcom/android/server/wm/PairTask;
    .registers 4
    .param p0, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "id"    # I

    .line 72
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 73
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    new-instance v1, Lcom/android/server/wm/PairTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/PairTask;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;)V

    return-object v1
.end method

.method private getSavedDockSide()I
    .registers 6

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/PairTask;->getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    .line 223
    .local v0, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    .line 225
    :cond_9
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshotBoundsByWindowingMode()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x3

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 225
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 227
    .local v2, "primary":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshotBoundsByWindowingMode()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x4

    .line 228
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 227
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 229
    .local v3, "display":Landroid/graphics/Rect;
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_40

    if-eqz v3, :cond_40

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_40

    .line 232
    :cond_38
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 234
    invoke-static {v2, v3}, Lcom/android/internal/policy/DockedDividerUtils;->getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    return v1

    .line 230
    :cond_40
    :goto_40
    return v1
.end method

.method static synthetic lambda$dismissPair$0(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPairTask(Lcom/android/server/wm/PairTask;)V

    return-void
.end method

.method static synthetic lambda$takeSnapshotBoundsByWindowingMode$1(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .registers 3
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 342
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;I)Lcom/android/server/wm/PairTask;
    .registers 15
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 301
    const/4 v0, -0x1

    .line 302
    .local v0, "pairTaskId":I
    const/4 v1, -0x1

    .line 303
    .local v1, "primaryPairChildId":I
    const/4 v2, -0x1

    .line 304
    .local v2, "secondaryPairChildId":I
    const/4 v3, -0x1

    .line 305
    .local v3, "cellPairChildId":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "attrNdx":I
    :goto_a
    if-ltz v4, :cond_88

    .line 306
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, "attrName":Ljava/lang/String;
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, "attrValue":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, -0x1

    sparse-switch v8, :sswitch_data_98

    :cond_1e
    goto :goto_4a

    :sswitch_1f
    const-string/jumbo v8, "pair_taskid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    const/4 v8, 0x0

    goto :goto_4b

    :sswitch_2a
    const-string/jumbo v8, "secondary_taskid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    move v8, v10

    goto :goto_4b

    :sswitch_35
    const-string v8, "cell_taskid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    move v8, v9

    goto :goto_4b

    :sswitch_3f
    const-string/jumbo v8, "primary_taskid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    move v8, v5

    goto :goto_4b

    :goto_4a
    move v8, v11

    :goto_4b
    if-eqz v8, :cond_7f

    if-eq v8, v5, :cond_78

    if-eq v8, v10, :cond_71

    if-eq v8, v9, :cond_6a

    .line 327
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PairTask: Unknown attribute="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TaskPersister"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 324
    :cond_6a
    if-ne v3, v11, :cond_85

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_85

    .line 321
    :cond_71
    if-ne v2, v11, :cond_85

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_85

    .line 318
    :cond_78
    if-ne v1, v11, :cond_85

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_85

    .line 315
    :cond_7f
    if-ne v0, v11, :cond_85

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 305
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v7    # "attrValue":Ljava/lang/String;
    :cond_85
    :goto_85
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    .line 330
    .end local v4    # "attrNdx":I
    :cond_88
    iget-object v4, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v4, v0}, Lcom/android/server/wm/PairTask;->create(Lcom/android/server/wm/ActivityTaskManagerService;I)Lcom/android/server/wm/PairTask;

    move-result-object v4

    .line 331
    .local v4, "pairTask":Lcom/android/server/wm/PairTask;
    iput p2, v4, Lcom/android/server/wm/PairTask;->mUserId:I

    .line 332
    invoke-virtual {v4, v1}, Lcom/android/server/wm/PairTask;->setRestoredPrimaryPairChildId(I)V

    .line 333
    invoke-virtual {v4, v2}, Lcom/android/server/wm/PairTask;->setRestoredSecondaryPairChildId(I)V

    .line 337
    return-object v4

    nop

    :sswitch_data_98
    .sparse-switch
        -0x4eb781c3 -> :sswitch_3f
        -0x3dc88923 -> :sswitch_35
        0x2001b68b -> :sswitch_2a
        0x33288665 -> :sswitch_1f
    .end sparse-switch
.end method


# virtual methods
.method addPairChild(Lcom/android/server/wm/Task;I)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "windowingMode"    # I

    .line 124
    if-nez p1, :cond_3

    .line 125
    return-void

    .line 127
    :cond_3
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->contains(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PairTask;->removePairChild(Lcom/android/server/wm/Task;)V

    .line 133
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/PairTask;->removePairChild(Lcom/android/server/wm/Task;)V

    .line 136
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->add(Lcom/android/server/wm/Task;I)V

    .line 137
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setPairTask(Lcom/android/server/wm/PairTask;)V

    .line 138
    return-void

    .line 128
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPairChildForMultiSplit(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 266
    if-eqz p1, :cond_38

    .line 267
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_33

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cell is added in pair="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PairTask;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 269
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_33
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/PairTask;->addPairChild(Lcom/android/server/wm/Task;I)V

    .line 273
    :cond_38
    return-void
.end method

.method addPairChildIdInTaskInfo(Landroid/app/TaskInfo;I)V
    .registers 5
    .param p1, "info"    # Landroid/app/TaskInfo;
    .param p2, "taskId"    # I

    .line 119
    iget-object v0, p1, Landroid/app/TaskInfo;->pairedTaskIds:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public bridge synthetic adjustBoundsToAvoidConflictSystemBar(Landroid/graphics/Rect;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/server/wm/ActivityStack;->adjustBoundsToAvoidConflictSystemBar(Landroid/graphics/Rect;)V

    return-void
.end method

.method asSplitPairTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 88
    return-object p0
.end method

.method public bridge synthetic commitPendingTransaction()V
    .registers 1

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/server/wm/ActivityStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method public containsAsPairChild(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->contains(Lcom/android/server/wm/Task;)Z

    move-result v0

    return v0
.end method

.method dismissPair()V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v0}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->getTasks()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/-$$Lambda$PairTask$QCtEfeUEHqQsY-6UzzzH7g_uEOQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PairTask$QCtEfeUEHqQsY-6UzzzH7g_uEOQ;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v0}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->clear()V

    .line 159
    return-void
.end method

.method public bridge synthetic dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 5

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .registers 6
    .param p1, "info"    # Landroid/app/TaskInfo;
    .param p2, "stripExtras"    # Z

    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/TaskInfo;->isPairTask:Z

    .line 95
    const/4 v0, -0x1

    .line 109
    .local v0, "dockSide":I
    iput v0, p1, Landroid/app/TaskInfo;->pairDockSide:I

    .line 110
    invoke-virtual {p0}, Lcom/android/server/wm/PairTask;->getSplitPrimaryPairChild()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 111
    iget-object v1, p1, Landroid/app/TaskInfo;->pairedTaskIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/wm/PairTask;->getSplitPrimaryPairChildId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/PairTask;->getSplitSecondaryPairChild()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 114
    iget-object v1, p1, Landroid/app/TaskInfo;->pairedTaskIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/wm/PairTask;->getSplitSecondaryPairChildId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_2f
    return-void
.end method

.method public bridge synthetic getActivityType()I
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getPairChild(I)Lcom/android/server/wm/Task;
    .registers 5
    .param p1, "windowingMode"    # I

    .line 141
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 142
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPairChildWindowingMode(Lcom/android/server/wm/Task;)I
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->getWindowingMode(Lcom/android/server/wm/Task;)I

    move-result v0

    return v0
.end method

.method public getPairChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v0}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->getTasks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getRestoredCellPairChildId()I
    .registers 2

    .line 217
    iget v0, p0, Lcom/android/server/wm/PairTask;->mCellPairChildId:I

    return v0
.end method

.method getRestoredPrimaryPairChildId()I
    .registers 2

    .line 209
    iget v0, p0, Lcom/android/server/wm/PairTask;->mPrimaryPairChildId:I

    return v0
.end method

.method getRestoredSecondaryPairChildId()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/android/server/wm/PairTask;->mSecondaryPairChildId:I

    return v0
.end method

.method getSplitCellPairChild()Lcom/android/server/wm/Task;
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public getSplitCellPairChildId()I
    .registers 3

    .line 248
    invoke-virtual {p0}, Lcom/android/server/wm/PairTask;->getSplitCellPairChild()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 249
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_8

    const/4 v1, -0x1

    goto :goto_a

    :cond_8
    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_a
    return v1
.end method

.method getSplitPrimaryPairChild()Lcom/android/server/wm/Task;
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public getSplitPrimaryPairChildId()I
    .registers 3

    .line 238
    invoke-virtual {p0}, Lcom/android/server/wm/PairTask;->getSplitPrimaryPairChild()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 239
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_8

    const/4 v1, -0x1

    goto :goto_a

    :cond_8
    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_a
    return v1
.end method

.method getSplitSecondaryPairChild()Lcom/android/server/wm/Task;
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public getSplitSecondaryPairChildId()I
    .registers 3

    .line 243
    invoke-virtual {p0}, Lcom/android/server/wm/PairTask;->getSplitSecondaryPairChild()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 244
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_8

    const/4 v1, -0x1

    goto :goto_a

    :cond_8
    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_a
    return v1
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isAttached()Z
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isCompatible(II)Z
    .registers 3

    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isForceScaled()Z
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->isForceScaled()Z

    move-result v0

    return v0
.end method

.method isPairTask()Z
    .registers 2

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/server/wm/ActivityStack;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/server/wm/ActivityStack;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .registers 3

    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/server/wm/ActivityStack;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onTransactionReady(ILjava/util/Set;)V
    .registers 3

    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->onTransactionReady(ILjava/util/Set;)V

    return-void
.end method

.method removePairChild(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->contains(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 150
    return-void

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->remove(Lcom/android/server/wm/Task;)V

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setPairTask(Lcom/android/server/wm/PairTask;)V

    .line 154
    return-void
.end method

.method public removePairChildForMultiSplit()V
    .registers 5

    .line 276
    iget-object v0, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 277
    .local v0, "cellTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_3e

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/server/wm/PairTask;->removePairChild(Lcom/android/server/wm/Task;)V

    .line 279
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_3e

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cell is removed in pair="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/PairTask;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 281
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_3e
    return-void
.end method

.method public replacePairChild(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "splitPrimaryTask"    # Lcom/android/server/wm/Task;
    .param p2, "splitSecondaryTask"    # Lcom/android/server/wm/Task;

    .line 261
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/PairTask;->addPairChild(Lcom/android/server/wm/Task;I)V

    .line 262
    const/4 v0, 0x4

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/PairTask;->addPairChild(Lcom/android/server/wm/Task;I)V

    .line 263
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 291
    iget v0, p0, Lcom/android/server/wm/PairTask;->mTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "pair_taskid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    invoke-virtual {p0}, Lcom/android/server/wm/PairTask;->getSplitPrimaryPairChildId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "primary_taskid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    invoke-virtual {p0}, Lcom/android/server/wm/PairTask;->getSplitSecondaryPairChildId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "secondary_taskid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    return-void
.end method

.method public bridge synthetic setAlwaysOnTop(Z)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/server/wm/ActivityStack;->setAlwaysOnTop(Z)V

    return-void
.end method

.method public bridge synthetic setBounds(Landroid/graphics/Rect;)I
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setBounds(Landroid/graphics/Rect;Z)I
    .registers 3

    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;Z)I

    move-result p1

    return p1
.end method

.method setRestoredCellPairChildId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 205
    iput p1, p0, Lcom/android/server/wm/PairTask;->mCellPairChildId:I

    .line 206
    return-void
.end method

.method setRestoredPrimaryPairChildId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 197
    iput p1, p0, Lcom/android/server/wm/PairTask;->mPrimaryPairChildId:I

    .line 198
    return-void
.end method

.method setRestoredSecondaryPairChildId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 201
    iput p1, p0, Lcom/android/server/wm/PairTask;->mSecondaryPairChildId:I

    .line 202
    return-void
.end method

.method public bridge synthetic setWindowingMode(I)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    return-void
.end method

.method public bridge synthetic supportsSplitScreenWindowingMode()Z
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v0

    return v0
.end method

.method swapPair()V
    .registers 5

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wm/PairTask;->getSplitPrimaryPairChild()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 163
    .local v0, "splitPrimaryTask":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/PairTask;->getSplitSecondaryPairChild()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 164
    .local v1, "splitSecondaryTask":Lcom/android/server/wm/Task;
    iget-object v2, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->remove(Lcom/android/server/wm/Task;)V

    .line 165
    iget-object v2, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->remove(Lcom/android/server/wm/Task;)V

    .line 166
    iget-object v2, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->add(Lcom/android/server/wm/Task;I)V

    .line 167
    iget-object v2, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->add(Lcom/android/server/wm/Task;I)V

    .line 168
    return-void
.end method

.method swapPair(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 6
    .param p1, "firstTarget"    # Lcom/android/server/wm/Task;
    .param p2, "secondTarget"    # Lcom/android/server/wm/Task;

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PairTask;->getPairChildWindowingMode(Lcom/android/server/wm/Task;)I

    move-result v0

    .line 172
    .local v0, "firstTargetWindowingMode":I
    invoke-virtual {p0, p2}, Lcom/android/server/wm/PairTask;->getPairChildWindowingMode(Lcom/android/server/wm/Task;)I

    move-result v1

    .line 173
    .local v1, "secondTargetWindowingMode":I
    if-eqz v0, :cond_22

    if-eqz v1, :cond_22

    .line 175
    iget-object v2, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->remove(Lcom/android/server/wm/Task;)V

    .line 176
    iget-object v2, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->remove(Lcom/android/server/wm/Task;)V

    .line 177
    iget-object v2, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->add(Lcom/android/server/wm/Task;I)V

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/PairTask;->mPairStatus:Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;

    invoke-virtual {v2, p2, v0}, Lcom/android/server/wm/PairTask$TaskWindowingModeMapper;->add(Lcom/android/server/wm/Task;I)V

    .line 179
    const/4 v2, 0x1

    return v2

    .line 181
    :cond_22
    const/4 v2, 0x0

    return v2
.end method

.method takeSnapshotBoundsByWindowingMode()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/PairTask;->getPairChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/-$$Lambda$YfgdxVpnF_Do_dy5J3R7NCEA0uM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$YfgdxVpnF_Do_dy5J3R7NCEA0uM;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$PairTask$MhN3aJPClC7pPaG-2lzYsFnBT54;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PairTask$MhN3aJPClC7pPaG-2lzYsFnBT54;

    .line 342
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 341
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/android/server/wm/ActivityStack;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
