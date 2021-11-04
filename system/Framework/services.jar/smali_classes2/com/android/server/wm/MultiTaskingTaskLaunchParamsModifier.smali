.class Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "MultiTaskingTaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# static fields
.field private static final BOUNDS_CONFLICT_THRESHOLD:I = 0x4

.field private static final CASCADING_OFFSET_DP:I = 0x4b

.field private static final DEBUG:Z = true

.field private static final DEFAULT_PORTRAIT_PHONE_HEIGHT_DP:I = 0x2dc

.field private static final DEFAULT_PORTRAIT_PHONE_WIDTH_DP:I = 0x19c

.field static final DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

.field static final DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

.field private static final EPSILON:I = 0x2

.field private static final MINIMAL_STEP:I = 0x1

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mDefaultFreeformStepHorizontal:I

.field private mDefaultFreeformStepVertical:I

.field private mLogBuilder:Ljava/lang/StringBuilder;

.field private final mSnappingBounds:Landroid/graphics/Rect;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpBounds2:Landroid/graphics/Rect;

.field private final mTmpDirections:[I

.field private mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 123
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3ed70a3d    # 0.42f

    const v2, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

    .line 124
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3f0ccccd    # 0.55f

    const v2, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;)V
    .registers 3
    .param p1, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSnappingBounds:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    .line 140
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 141
    iget-object v0, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 142
    return-void
.end method

.method private adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;

    .line 1285
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    .line 1286
    return-void
.end method

.method private adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V
    .registers 16
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;
    .param p3, "rootTaskAffinity"    # Ljava/lang/String;
    .param p4, "sourceTaskBounds"    # Landroid/graphics/Rect;
    .param p5, "exclude"    # Lcom/android/server/wm/Task;

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .local v0, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v1

    .line 1294
    .local v1, "numTaskContainers":I
    const/4 v2, 0x0

    .local v2, "tdaNdx":I
    :goto_a
    if-ge v2, v1, :cond_5c

    .line 1295
    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 1296
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    .line 1297
    .local v4, "numStacks":I
    const/4 v5, 0x0

    .local v5, "sNdx":I
    :goto_15
    if-ge v5, v4, :cond_59

    .line 1298
    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1299
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v7

    if-nez v7, :cond_22

    .line 1300
    goto :goto_56

    .line 1305
    :cond_22
    sget-object v7, Lcom/android/server/wm/-$$Lambda$MultiTaskingTaskLaunchParamsModifier$nEI_4fdHqfMEZ7tZEXaFOUEnptg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MultiTaskingTaskLaunchParamsModifier$nEI_4fdHqfMEZ7tZEXaFOUEnptg;

    const-class v8, Lcom/android/server/wm/Task;

    .line 1307
    invoke-static {v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v8

    .line 1305
    invoke-static {v7, v8, p3, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v7

    .line 1308
    .local v7, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityStack;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v8

    .line 1309
    .local v8, "task":Lcom/android/server/wm/Task;
    invoke-interface {v7}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1310
    if-eqz v8, :cond_56

    .line 1311
    if-eqz p5, :cond_40

    invoke-virtual {p5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 1312
    goto :goto_56

    .line 1314
    :cond_40
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_4f

    .line 1315
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v9, :cond_4f

    .line 1317
    goto :goto_56

    .line 1319
    :cond_4f
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    .end local v8    # "task":Lcom/android/server/wm/Task;
    :cond_56
    :goto_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 1294
    .end local v3    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v4    # "numStacks":I
    .end local v5    # "sNdx":I
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1330
    .end local v2    # "tdaNdx":I
    :cond_5c
    const/4 v2, 0x0

    .line 1334
    .local v2, "isDexDisplay":Z
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p2, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V

    .line 1338
    return-void
.end method

.method private adjustBoundsToFitInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;

    .line 1229
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 1231
    .local v0, "displayStableBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lt v1, v2, :cond_51

    .line 1232
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_1b

    goto :goto_51

    .line 1245
    :cond_1b
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_27

    .line 1247
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .local v1, "dx":I
    goto :goto_34

    .line 1248
    .end local v1    # "dx":I
    :cond_27
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_33

    .line 1250
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .restart local v1    # "dx":I
    goto :goto_34

    .line 1253
    .end local v1    # "dx":I
    :cond_33
    const/4 v1, 0x0

    .line 1257
    .restart local v1    # "dx":I
    :goto_34
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_40

    .line 1259
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .local v2, "dy":I
    goto :goto_4d

    .line 1260
    .end local v2    # "dy":I
    :cond_40
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_4c

    .line 1262
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .restart local v2    # "dy":I
    goto :goto_4d

    .line 1265
    .end local v2    # "dy":I
    :cond_4c
    const/4 v2, 0x0

    .line 1267
    .restart local v2    # "dy":I
    :goto_4d
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1268
    return-void

    .line 1235
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    :cond_51
    :goto_51
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1236
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 1237
    .local v1, "layoutDirection":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_69

    .line 1238
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    goto :goto_6b

    .line 1239
    :cond_69
    iget v2, v0, Landroid/graphics/Rect;->left:I

    :goto_6b
    nop

    .line 1240
    .local v2, "left":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1241
    return-void
.end method

.method private appendLog(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 1590
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    return-void
.end method

.method private boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .registers 13
    .param p2, "candidateBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 1506
    .local p1, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1507
    .local v1, "taskBounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_20

    move v3, v5

    goto :goto_21

    :cond_20
    move v3, v2

    .line 1509
    .local v3, "leftClose":Z
    :goto_21
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_2e

    move v6, v5

    goto :goto_2f

    :cond_2e
    move v6, v2

    .line 1511
    .local v6, "topClose":Z
    :goto_2f
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v4, :cond_3c

    move v7, v5

    goto :goto_3d

    :cond_3c
    move v7, v2

    .line 1513
    .local v7, "rightClose":Z
    :goto_3d
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v4, :cond_49

    move v2, v5

    .line 1516
    .local v2, "bottomClose":Z
    :cond_49
    if-eqz v3, :cond_4d

    if-nez v6, :cond_59

    :cond_4d
    if-eqz v3, :cond_51

    if-nez v2, :cond_59

    :cond_51
    if-eqz v7, :cond_55

    if-nez v6, :cond_59

    :cond_55
    if-eqz v7, :cond_5a

    if-eqz v2, :cond_5a

    .line 1518
    :cond_59
    return v5

    .line 1520
    .end local v1    # "taskBounds":Landroid/graphics/Rect;
    .end local v2    # "bottomClose":Z
    .end local v3    # "leftClose":Z
    .end local v6    # "topClose":Z
    .end local v7    # "rightClose":Z
    :cond_5a
    goto :goto_4

    .line 1522
    :cond_5b
    return v2
.end method

.method private calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 39
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "phase"    # I
    .param p7, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p8, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 167
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    if-eqz p1, :cond_20

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1a

    move-object v0, v10

    goto :goto_1e

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_1e
    move-object v7, v0

    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    goto :goto_23

    .line 170
    .end local v0    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_20
    move-object/from16 v0, p3

    move-object v7, v0

    .line 177
    .local v7, "root":Lcom/android/server/wm/ActivityRecord;
    :goto_23
    const/4 v6, 0x0

    if-nez v7, :cond_27

    .line 183
    return v6

    .line 187
    :cond_27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 189
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iput-object v5, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 191
    iget-object v4, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 193
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "task-display-area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " display-area-windowing-mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-direct {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "bottomTask":Lcom/android/server/wm/Task;
    if-eqz v10, :cond_bb

    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_bb

    .line 200
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    .line 201
    .local v1, "taskId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_bb

    .line 202
    const/16 v2, -0x2710

    if-ne v1, v2, :cond_7a

    .line 203
    iget-object v2, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_82

    .line 205
    :cond_7a
    iget-object v2, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1, v6}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 208
    :goto_82
    if-eqz v0, :cond_89

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    goto :goto_8a

    :cond_89
    const/4 v2, 0x0

    .line 209
    .local v2, "tda":Lcom/android/server/wm/TaskDisplayArea;
    :goto_8a
    if-eqz v2, :cond_bb

    .line 214
    iput-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tda-from-lott="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " dc="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " display-windowing-mode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-direct {v8, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 225
    .end local v1    # "taskId":I
    .end local v2    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    :cond_bb
    move-object/from16 v17, v0

    .end local v0    # "bottomTask":Lcom/android/server/wm/Task;
    .local v17, "bottomTask":Lcom/android/server/wm/Task;
    const/4 v6, 0x2

    if-nez v13, :cond_c1

    .line 226
    return v6

    .line 235
    :cond_c1
    iget-object v0, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x1050292

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    .line 239
    const v1, 0x1050291

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    .line 250
    .end local v0    # "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 252
    const/4 v0, 0x1

    .local v0, "launchMode":I
    goto :goto_101

    .line 253
    .end local v0    # "launchMode":I
    :cond_eb
    if-eqz v12, :cond_f8

    .line 254
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    if-eqz v0, :cond_f8

    .line 255
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    .restart local v0    # "launchMode":I
    goto :goto_101

    .line 258
    .end local v0    # "launchMode":I
    :cond_f8
    if-eqz v12, :cond_ff

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_100

    .line 259
    :cond_ff
    const/4 v0, 0x0

    :goto_100
    nop

    .line 264
    .restart local v0    # "launchMode":I
    :goto_101
    if-nez v0, :cond_126

    .line 265
    invoke-direct {v8, v4, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 266
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inherit-from-source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-direct {v8, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 275
    :cond_126
    if-eqz v17, :cond_152

    .line 276
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 281
    .local v1, "tda":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_133

    goto :goto_137

    .line 284
    :cond_133
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 287
    :goto_137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inherit-from-bottom-task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-direct {v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v3, v0

    goto :goto_153

    .line 275
    .end local v1    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    :cond_152
    move v3, v0

    .line 296
    .end local v0    # "launchMode":I
    .local v3, "launchMode":I
    :goto_153
    const/16 v18, 0x0

    .line 297
    .local v18, "hasInitialBounds":Z
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v3

    move v6, v3

    .end local v3    # "launchMode":I
    .local v6, "launchMode":I
    move-object v3, v7

    move-object v10, v4

    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    .local v10, "display":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v4, p5

    move-object v11, v5

    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v11, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->canApplyFreeformWindowPolicy(Lcom/android/server/wm/DisplayContent;ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v20

    .line 300
    .local v20, "canApplyFreeformPolicy":Z
    const/16 v21, 0x0

    .line 302
    .local v21, "canApplyDexPolicy":Z
    const/16 v22, 0x1

    .line 303
    .local v22, "updateTaskBounds":Z
    const/16 v23, 0x0

    .line 304
    .local v23, "hasPersistentBounds":Z
    const/16 v24, 0x0

    .line 306
    .local v24, "ignoreAvoidBoundsConflict":Z
    iget-object v0, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c8

    if-nez v20, :cond_17e

    .line 307
    invoke-direct {v8, v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->canApplyPipWindowPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_1c8

    .line 308
    :cond_17e
    const/16 v18, 0x1

    .line 316
    const/4 v0, 0x2

    if-eq v6, v0, :cond_185

    .line 317
    const/4 v0, 0x5

    .end local v6    # "launchMode":I
    .restart local v0    # "launchMode":I
    goto :goto_18b

    .line 320
    .end local v0    # "launchMode":I
    .restart local v6    # "launchMode":I
    :cond_185
    if-nez v6, :cond_189

    .line 321
    const/4 v0, 0x5

    goto :goto_18a

    .line 322
    :cond_189
    move v0, v6

    :goto_18a
    nop

    .line 325
    .end local v6    # "launchMode":I
    .restart local v0    # "launchMode":I
    :goto_18b
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 331
    .local v2, "bounds":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 332
    .local v4, "stableRect":Landroid/graphics/Rect;
    invoke-virtual {v10, v4}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 333
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_1ab

    .line 334
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 335
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/DisplayPolicy;->mTopFreeFormFrameThickness:I

    add-int/2addr v6, v3

    .line 334
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 339
    .end local v4    # "stableRect":Landroid/graphics/Rect;
    :cond_1ab
    iget-object v3, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity-options-bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 341
    .end local v2    # "bounds":Landroid/graphics/Rect;
    move v3, v0

    goto :goto_22e

    .end local v0    # "launchMode":I
    .restart local v6    # "launchMode":I
    :cond_1c8
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1d1

    .line 343
    const-string v0, "empty-window-layout-for-pip"

    invoke-direct {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_22d

    .line 344
    :cond_1d1
    if-ne v6, v1, :cond_1ea

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity-options-fullscreen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_22d

    .line 380
    :cond_1ea
    if-eqz v9, :cond_226

    if-eqz v20, :cond_226

    .line 386
    invoke-direct {v8, v10, v9}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->recalculateLayout(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ActivityInfo$WindowLayout;)Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    .line 387
    .local v0, "recalculated":Landroid/content/pm/ActivityInfo$WindowLayout;
    iget-object v2, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {v8, v10, v7, v0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 393
    .end local v0    # "recalculated":Landroid/content/pm/ActivityInfo$WindowLayout;
    iget-object v0, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_220

    .line 394
    const/4 v3, 0x5

    .line 395
    .end local v6    # "launchMode":I
    .restart local v3    # "launchMode":I
    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v2, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 396
    const/16 v18, 0x1

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bounds-from-layout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_22e

    .line 399
    .end local v3    # "launchMode":I
    .restart local v6    # "launchMode":I
    :cond_220
    const-string v0, "empty-window-layout"

    invoke-direct {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_22d

    .line 402
    :cond_226
    if-eqz v20, :cond_22d

    const/4 v0, 0x5

    if-ne v6, v0, :cond_22d

    .line 404
    iput v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 425
    :cond_22d
    :goto_22d
    move v3, v6

    .end local v6    # "launchMode":I
    .restart local v3    # "launchMode":I
    :goto_22e
    const/4 v0, 0x0

    .line 429
    .local v0, "fullyResolvedCurrentParam":Z
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b1

    if-nez v18, :cond_2b1

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_23f

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v2, v11, :cond_2b1

    .line 434
    :cond_23f
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_274

    .line 438
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_274

    .line 440
    if-eqz v20, :cond_251

    const/4 v2, 0x5

    if-ne v3, v2, :cond_252

    goto :goto_254

    :cond_251
    const/4 v2, 0x5

    .line 445
    :cond_252
    iget v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 447
    :goto_254
    if-eq v3, v2, :cond_258

    move v2, v1

    goto :goto_259

    :cond_258
    const/4 v2, 0x0

    :goto_259
    move v0, v2

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inherit-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_279

    .line 456
    :cond_274
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 460
    :goto_279
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b1

    .line 466
    iget v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    .line 467
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v4, :cond_28c

    goto :goto_2b1

    .line 471
    :cond_28c
    iget-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v4, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 472
    const/4 v2, 0x5

    if-ne v3, v2, :cond_2b1

    .line 473
    const/4 v0, 0x1

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inherit-bounds="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 v26, v0

    goto :goto_2b3

    .line 484
    :cond_2b1
    :goto_2b1
    move/from16 v26, v0

    .end local v0    # "fullyResolvedCurrentParam":Z
    .local v26, "fullyResolvedCurrentParam":Z
    :goto_2b3
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2dd

    .line 485
    const/4 v0, 0x2

    if-ne v3, v0, :cond_2c3

    .line 486
    const-string/jumbo v0, "picture-in-picture"

    invoke-direct {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_2e3

    .line 487
    :cond_2c3
    iget-object v0, v8, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSizeCompatFreeform:Z

    if-nez v0, :cond_2e3

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_2e3

    .line 493
    const/4 v3, 0x1

    .line 494
    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 495
    const-string v0, "forced-maximize"

    invoke-direct {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_2e3

    .line 505
    :cond_2dd
    const-string/jumbo v0, "non-freeform-display"

    invoke-direct {v8, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 509
    :cond_2e3
    :goto_2e3
    if-nez v3, :cond_341

    .line 510
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 511
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_341

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_341

    .line 512
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isUnderHomeStack()Z

    move-result v2

    if-eqz v2, :cond_31c

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isMinimized()Z

    move-result v2

    if-nez v2, :cond_31c

    .line 513
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v3

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notMinimizedFreeform-to-display-windowing-mode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-direct {v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v6, v3

    goto :goto_342

    .line 518
    :cond_31c
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_341

    .line 519
    const/4 v3, 0x5

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeform-task"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-direct {v8, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v6, v3

    goto :goto_342

    .line 527
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_341
    move v6, v3

    .end local v3    # "launchMode":I
    .restart local v6    # "launchMode":I
    :goto_342
    const/4 v0, 0x5

    if-ne v6, v0, :cond_348

    .line 528
    iput v6, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_353

    .line 532
    :cond_348
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    if-ne v6, v0, :cond_350

    .line 533
    const/4 v0, 0x0

    goto :goto_351

    :cond_350
    move v0, v6

    :goto_351
    iput v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 567
    :goto_353
    if-ne v13, v1, :cond_358

    .line 568
    const/16 v16, 0x2

    return v16

    .line 577
    :cond_358
    const/16 v16, 0x2

    if-eqz v6, :cond_35e

    move v0, v6

    goto :goto_362

    .line 578
    :cond_35e
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    :goto_362
    move v5, v0

    .line 579
    .local v5, "resolvedMode":I
    if-eqz v26, :cond_39a

    .line 580
    const/4 v0, 0x5

    if-ne v5, v0, :cond_388

    .line 582
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v0, v11, :cond_371

    .line 583
    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v8, v10, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V

    .line 587
    :cond_371
    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v8, v10, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V

    move/from16 v28, v5

    move-object/from16 v19, v7

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move/from16 v29, v16

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v16, v6

    goto/16 :goto_425

    .line 580
    :cond_388
    move/from16 v28, v5

    move-object/from16 v19, v7

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move/from16 v29, v16

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v16, v6

    goto/16 :goto_425

    .line 589
    :cond_39a
    invoke-virtual {v11}, Lcom/android/server/wm/TaskDisplayArea;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_3b9

    .line 592
    invoke-virtual {v11}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_3a7

    goto :goto_3b9

    :cond_3a7
    move/from16 v28, v5

    move-object/from16 v19, v7

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move/from16 v29, v16

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v16, v6

    goto/16 :goto_425

    .line 594
    :cond_3b9
    :goto_3b9
    move-object v4, v11

    move-object/from16 v11, p4

    .end local v11    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v11, :cond_402

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_402

    const/4 v0, 0x5

    if-ne v5, v0, :cond_402

    iget-object v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 596
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3fe

    .line 597
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-ne v0, v4, :cond_3fa

    move-object v3, v10

    move-object/from16 v10, p3

    .end local v10    # "display":Lcom/android/server/wm/DisplayContent;
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->taskAffinityWithoutUid:Ljava/lang/String;

    if-eqz v0, :cond_3e6

    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->taskAffinityWithoutUid:Ljava/lang/String;

    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_405

    :cond_3e6
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v0, :cond_405

    .line 605
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v8, v0, v3, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V

    goto :goto_405

    .line 597
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v10    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_3fa
    move-object v3, v10

    move-object/from16 v10, p3

    .end local v10    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v3    # "display":Lcom/android/server/wm/DisplayContent;
    goto :goto_405

    .line 596
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v10    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_3fe
    move-object v3, v10

    move-object/from16 v10, p3

    .end local v10    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v3    # "display":Lcom/android/server/wm/DisplayContent;
    goto :goto_405

    .line 594
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v10    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_402
    move-object v3, v10

    move-object/from16 v10, p3

    .line 609
    .end local v10    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v3    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_405
    :goto_405
    iget-object v2, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v19, v2

    move-object v2, v3

    move-object/from16 v25, v3

    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .local v25, "display":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v3, p2

    move-object/from16 v27, v4

    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v27, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move v4, v5

    move/from16 v28, v5

    .end local v5    # "resolvedMode":I
    .local v28, "resolvedMode":I
    move/from16 v5, v18

    move/from16 v29, v16

    move/from16 v16, v6

    .end local v6    # "launchMode":I
    .local v16, "launchMode":I
    move-object/from16 v6, v19

    move-object/from16 v19, v7

    .end local v7    # "root":Lcom/android/server/wm/ActivityRecord;
    .local v19, "root":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)V

    .line 618
    :goto_425
    return v29
.end method

.method private calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 15
    .param p1, "availableBounds"    # Landroid/graphics/Rect;
    .param p2, "initialBounds"    # Landroid/graphics/Rect;
    .param p3, "isDexDisplay"    # Z

    .line 1463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_c

    .line 1464
    aput v3, v1, v0

    .line 1463
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1474
    .end local v0    # "i":I
    :cond_c
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    const/4 v1, 0x3

    div-int/2addr v0, v1

    .line 1475
    .local v0, "oneThirdWidth":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    div-int/2addr v2, v1

    .line 1476
    .local v2, "twoThirdWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 1477
    .local v4, "centerX":I
    const/4 v5, 0x5

    if-ge v4, v0, :cond_29

    .line 1479
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v1, v3

    .line 1480
    return-void

    .line 1481
    :cond_29
    if-le v4, v2, :cond_30

    .line 1483
    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    aput v1, v5, v3

    .line 1484
    return-void

    .line 1487
    :cond_30
    iget v6, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/2addr v6, v1

    .line 1488
    .local v6, "oneThirdHeight":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/2addr v7, v1

    .line 1489
    .local v7, "twoThirdHeight":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 1490
    .local v8, "centerY":I
    const/4 v9, 0x1

    if-lt v8, v6, :cond_55

    if-le v8, v7, :cond_4a

    goto :goto_55

    .line 1500
    :cond_4a
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    const/16 v5, 0x55

    aput v5, v1, v3

    .line 1501
    const/16 v3, 0x33

    aput v3, v1, v9

    .line 1502
    return-void

    .line 1493
    :cond_55
    :goto_55
    iget-object v10, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v10, v3

    .line 1494
    aput v1, v10, v9

    .line 1495
    return-void
.end method

.method private canApplyDexPolicy(Lcom/android/server/wm/DisplayContent;I)Z
    .registers 4
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "launchWindowingMode"    # I

    .line 1660
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_b

    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private canApplyFreeformWindowPolicy(Lcom/android/server/wm/DisplayContent;ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 8
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "launchMode"    # I
    .param p3, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "options"    # Landroid/app/ActivityOptions;
    .param p5, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 849
    const/4 v0, 0x1

    if-eqz p4, :cond_14

    .line 850
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 851
    return v0

    .line 854
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_26

    .line 855
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x5

    if-ne p2, v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 854
    :cond_27
    :goto_27
    return v0
.end method

.method private canApplyPipWindowPolicy(I)Z
    .registers 3
    .param p1, "launchMode"    # I

    .line 859
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 8
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 818
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 819
    return v0

    .line 825
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 826
    return v0

    .line 829
    :cond_b
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 830
    .local v1, "sourceWindowingMode":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    const/4 v3, 0x5

    if-eq v1, v3, :cond_16

    .line 832
    return v0

    .line 838
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_21

    move v0, v2

    :cond_21
    return v0
.end method

.method private cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "srcBounds"    # Landroid/graphics/Rect;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 977
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 978
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 979
    .local v0, "density":F
    const/high16 v1, 0x42960000    # 75.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 981
    .local v1, "defaultOffset":I
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 984
    iget v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 985
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 984
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 986
    .local v2, "dx":I
    iget v3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 987
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 986
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 988
    .local v3, "dy":I
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 996
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    return-void
.end method

.method private centerBounds(Lcom/android/server/wm/DisplayContent;IILandroid/graphics/Rect;)V
    .registers 9
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "inOutBounds"    # Landroid/graphics/Rect;

    .line 1219
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1220
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1222
    :cond_f
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 1223
    .local v0, "left":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v2, p3, 0x2

    sub-int/2addr v1, v2

    .line 1224
    .local v1, "top":I
    add-int v2, v0, p2

    add-int v3, v1, p3

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1225
    return-void
.end method

.method private convertOrientationToScreenOrientation(I)I
    .registers 3
    .param p1, "orientation"    # I

    .line 1082
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    .line 1088
    const/4 v0, -0x1

    return v0

    .line 1084
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 1086
    :cond_a
    return v0
.end method

.method private static filterCheckBounds(Lcom/android/server/wm/Task;Ljava/lang/String;Landroid/graphics/Rect;)Z
    .registers 6
    .param p0, "candidateTask"    # Lcom/android/server/wm/Task;
    .param p1, "rootTaskAffinity"    # Ljava/lang/String;
    .param p2, "sourceTaskBounds"    # Landroid/graphics/Rect;

    .line 1343
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 1345
    return v1

    .line 1348
    :cond_8
    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    .line 1349
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1350
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_25

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1355
    return v1

    .line 1359
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method private getCustomFreeformSize(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 1194
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1196
    .local v0, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1197
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1198
    .local v2, "height":I
    const/4 v3, 0x0

    if-gt v1, v2, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    move v4, v3

    .line 1199
    .local v4, "isPortrait":Z
    :goto_12
    const v5, 0x3f59999a    # 0.85f

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v4, :cond_1b

    .line 1200
    move v7, v6

    goto :goto_1c

    :cond_1b
    move v7, v5

    .line 1201
    .local v7, "heightRatio":F
    :goto_1c
    if-eqz v4, :cond_1f

    .line 1202
    goto :goto_20

    :cond_1f
    move v5, v6

    .line 1204
    .local v5, "widthRatio":F
    :goto_20
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1205
    move v5, v6

    move v7, v6

    .line 1209
    :cond_28
    int-to-float v6, v1

    mul-float/2addr v6, v5

    float-to-int v6, v6

    int-to-float v8, v2

    mul-float/2addr v8, v7

    float-to-int v8, v8

    invoke-virtual {p2, v3, v3, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1210
    return-void
.end method

.method private getDefaultFreeformSize(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V
    .registers 23
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "orientation"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 1125
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 1126
    .local v3, "displayStableBounds":Landroid/graphics/Rect;
    nop

    .line 1127
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1128
    .local v4, "portraitHeight":I
    nop

    .line 1129
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1130
    .local v5, "otherDimension":I
    mul-int v6, v4, v4

    div-int/2addr v6, v5

    .line 1131
    .local v6, "portraitWidth":I
    if-nez p3, :cond_2d

    move v7, v4

    goto :goto_2e

    .line 1132
    :cond_2d
    move v7, v6

    :goto_2e
    nop

    .line 1133
    .local v7, "defaultWidth":I
    if-nez p3, :cond_33

    move v8, v6

    goto :goto_34

    .line 1134
    :cond_33
    move v8, v4

    :goto_34
    nop

    .line 1138
    .local v8, "defaultHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v9, v9

    const/high16 v10, 0x43200000    # 160.0f

    div-float/2addr v9, v10

    .line 1139
    .local v9, "density":F
    const/high16 v10, 0x43ce0000    # 412.0f

    mul-float/2addr v10, v9

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 1140
    .local v10, "phonePortraitWidth":I
    const/high16 v12, 0x44370000    # 732.0f

    mul-float/2addr v12, v9

    add-float/2addr v12, v11

    float-to-int v11, v12

    .line 1141
    .local v11, "phonePortraitHeight":I
    if-nez p3, :cond_4f

    move v12, v11

    goto :goto_50

    .line 1142
    :cond_4f
    move v12, v10

    :goto_50
    nop

    .line 1143
    .local v12, "phoneWidth":I
    if-nez p3, :cond_55

    move v13, v10

    goto :goto_56

    .line 1144
    :cond_55
    move v13, v11

    :goto_56
    nop

    .line 1147
    .local v13, "phoneHeight":I
    const/4 v14, -0x1

    if-nez v0, :cond_5c

    move v15, v14

    goto :goto_5e

    :cond_5c
    iget v15, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 1148
    .local v15, "layoutMinWidth":I
    :goto_5e
    if-nez v0, :cond_61

    goto :goto_63

    :cond_61
    iget v14, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 1151
    .local v14, "layoutMinHeight":I
    :goto_63
    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1152
    .local v0, "width":I
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1154
    .local v2, "height":I
    move/from16 v16, v4

    .end local v4    # "portraitHeight":I
    .local v16, "portraitHeight":I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1155
    iget v4, v3, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .end local v0    # "width":I
    .local v17, "width":I
    iget v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1156
    return-void
.end method

.method private getDexMetaDataBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z
    .registers 16
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "outBounds"    # Landroid/graphics/Rect;

    .line 1611
    if-eqz p2, :cond_7

    .line 1612
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getDexMetadataLaunchSize()Landroid/graphics/Point;

    move-result-object v0

    .local v0, "dexMetaDataLaunchSize":Landroid/graphics/Point;
    goto :goto_19

    .line 1614
    .end local v0    # "dexMetaDataLaunchSize":Landroid/graphics/Point;
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v1, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1615
    invoke-static {v1}, Lcom/android/server/wm/DexController;->parseDexMetadata(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/DexController$DexMetaDataInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 1614
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DexController;->getDexMetadataLaunchSizeLocked(Lcom/android/server/wm/DexController$DexMetaDataInfo;I)Landroid/graphics/Point;

    move-result-object v0

    .line 1617
    .restart local v0    # "dexMetaDataLaunchSize":Landroid/graphics/Point;
    :goto_19
    const/4 v1, 0x0

    if-eqz v0, :cond_61

    .line 1618
    iget v2, v0, Landroid/graphics/Point;->x:I

    if-nez v2, :cond_2d

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_2d

    .line 1619
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1620
    const-string v1, "dex-fullscreen-metadata-bounds"

    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_5f

    .line 1622
    :cond_2d
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p4, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1623
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v1, :cond_46

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_46

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-eq v1, v2, :cond_5a

    .line 1626
    :cond_46
    new-instance v1, Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v4, v0, Landroid/graphics/Point;->x:I

    const/high16 v5, -0x40800000    # -1.0f

    iget v6, v0, Landroid/graphics/Point;->y:I

    const/high16 v7, -0x40800000    # -1.0f

    const/16 v8, 0x11

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 1629
    :cond_5a
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {p0, p1, p3, v1, p4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 1631
    :goto_5f
    const/4 v1, 0x1

    return v1

    .line 1633
    :cond_61
    return v1
.end method

.method private getDexPreferredLaunchDisplay(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/TaskDisplayArea;
    .registers 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p5, "launchDisplayId"    # I

    .line 755
    const/4 v0, -0x1

    .line 802
    .local v0, "displayId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 803
    iget-object v2, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_f

    .line 804
    iget-object v1, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    goto :goto_11

    :cond_f
    goto :goto_11

    .line 805
    :cond_10
    move v1, v0

    :goto_11
    move v0, v1

    .line 806
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 807
    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 808
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x0

    .line 809
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_21

    .line 810
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 812
    :cond_21
    return-object v2
.end method

.method private getInitialDexBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .registers 15
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 1640
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1641
    .local v0, "defaultWidth":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1642
    .local v1, "defaultHeight":I
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    .line 1643
    int-to-float v2, v0

    sget-object v3, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1644
    int-to-float v2, v1

    sget-object v3, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->DEX_DEFAULT_SIZE_RATIO_FOR_STANDALONE:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_38

    .line 1646
    :cond_2a
    int-to-float v2, v0

    sget-object v3, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1647
    int-to-float v2, v1

    sget-object v3, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->DEX_DEFAULT_SIZE_RATIO:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 1649
    :goto_38
    const-string v2, "from-default-size"

    invoke-direct {p0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 1651
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v2, :cond_4b

    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ne v2, v0, :cond_4b

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-eq v2, v1, :cond_5d

    .line 1653
    :cond_4b
    new-instance v10, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/16 v7, 0x11

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v2, v10

    move v3, v0

    move v5, v1

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v10, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 1656
    :cond_5d
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 1657
    return-void
.end method

.method private getLayoutBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 21
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "outBounds"    # Landroid/graphics/Rect;

    .line 865
    move-object/from16 v8, p3

    move-object/from16 v9, p4

    iget v0, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v10, v0, 0x70

    .line 866
    .local v10, "verticalGravity":I
    iget v0, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v11, v0, 0x7

    .line 867
    .local v11, "horizontalGravity":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_1a

    if-nez v10, :cond_1a

    if-nez v11, :cond_1a

    .line 868
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 869
    return-void

    .line 874
    :cond_1a
    move-object/from16 v12, p1

    iget-object v0, v12, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v13, v0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 875
    .local v13, "displayStableBounds":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 876
    .local v14, "defaultWidth":I
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 880
    .local v15, "defaultHeight":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 881
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 882
    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)V

    .line 886
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 887
    .local v0, "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .local v1, "height":I
    goto :goto_89

    .line 889
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_4c
    move v0, v14

    .line 890
    .restart local v0    # "width":I
    iget v1, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-lez v1, :cond_5b

    iget v1, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ge v1, v14, :cond_5b

    .line 891
    iget v0, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    goto :goto_6c

    .line 892
    :cond_5b
    iget v1, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6c

    iget v1, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6c

    .line 893
    int-to-float v1, v0

    iget v4, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v1, v4

    float-to-int v0, v1

    .line 896
    :cond_6c
    :goto_6c
    move v1, v15

    .line 897
    .restart local v1    # "height":I
    iget v4, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v4, :cond_78

    iget v4, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-ge v4, v15, :cond_78

    .line 898
    iget v1, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    goto :goto_89

    .line 899
    :cond_78
    iget v4, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_89

    iget v3, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_89

    .line 900
    int-to-float v2, v1

    iget v3, v8, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 905
    :cond_89
    :goto_89
    const/4 v2, 0x3

    if-eq v11, v2, :cond_95

    const/4 v2, 0x5

    if-eq v11, v2, :cond_92

    .line 913
    const/high16 v2, 0x3f000000    # 0.5f

    .local v2, "fractionOfHorizontalOffset":F
    goto :goto_97

    .line 910
    .end local v2    # "fractionOfHorizontalOffset":F
    :cond_92
    const/high16 v2, 0x3f800000    # 1.0f

    .line 911
    .restart local v2    # "fractionOfHorizontalOffset":F
    goto :goto_97

    .line 907
    .end local v2    # "fractionOfHorizontalOffset":F
    :cond_95
    const/4 v2, 0x0

    .line 908
    .restart local v2    # "fractionOfHorizontalOffset":F
    nop

    .line 917
    :goto_97
    const/16 v3, 0x30

    if-eq v10, v3, :cond_a5

    const/16 v3, 0x50

    if-eq v10, v3, :cond_a2

    .line 925
    const/high16 v3, 0x3f000000    # 0.5f

    .local v3, "fractionOfVerticalOffset":F
    goto :goto_a7

    .line 922
    .end local v3    # "fractionOfVerticalOffset":F
    :cond_a2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 923
    .restart local v3    # "fractionOfVerticalOffset":F
    goto :goto_a7

    .line 919
    .end local v3    # "fractionOfVerticalOffset":F
    :cond_a5
    const/4 v3, 0x0

    .line 920
    .restart local v3    # "fractionOfVerticalOffset":F
    nop

    .line 928
    :goto_a7
    const/4 v4, 0x0

    invoke-virtual {v9, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 929
    iget v4, v13, Landroid/graphics/Rect;->left:I

    iget v5, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 930
    sub-int v4, v14, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 931
    .local v4, "xOffset":I
    sub-int v5, v15, v1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 932
    .local v5, "yOffset":I
    invoke-virtual {v9, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 933
    return-void
.end method

.method private getPersistentDexBounds(IILcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "desktopMode"    # I
    .param p2, "displayId"    # I
    .param p3, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p4, "outRect"    # Landroid/graphics/Rect;

    .line 1726
    const/4 v0, 0x0

    return v0
.end method

.method private getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 14
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p5, "root"    # Lcom/android/server/wm/ActivityRecord;

    .line 624
    const/4 v0, 0x0

    .line 626
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    if-eqz p2, :cond_9

    .line 627
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v2

    goto :goto_a

    :cond_9
    move-object v2, v1

    .line 628
    .local v2, "optionLaunchTaskDisplayAreaToken":Landroid/window/WindowContainerToken;
    :goto_a
    if-eqz v2, :cond_2c

    .line 629
    nop

    .line 630
    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 629
    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display-area-from-option="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 635
    :cond_2c
    const/4 v3, -0x1

    if-nez v0, :cond_5b

    .line 637
    if-eqz p2, :cond_36

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    goto :goto_37

    :cond_36
    move v4, v3

    .line 638
    .local v4, "optionLaunchId":I
    :goto_37
    if-eq v4, v3, :cond_5b

    .line 639
    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 640
    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 641
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v5, :cond_5b

    .line 642
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 643
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "display-from-option="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 650
    .end local v4    # "optionLaunchId":I
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_5b
    if-nez v0, :cond_a0

    if-eqz p3, :cond_a0

    iget-boolean v4, p3, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v4, :cond_a0

    .line 652
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 653
    if-eqz v0, :cond_7c

    .line 654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display-area-from-no-display-source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_a0

    .line 657
    :cond_7c
    iget v4, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 658
    .local v4, "displayId":I
    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 659
    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 660
    .restart local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v5, :cond_a0

    .line 661
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 662
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "display-from-no-display-source="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 668
    .end local v4    # "displayId":I
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_a0
    :goto_a0
    if-eqz v0, :cond_a8

    .line 669
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    if-ne v4, v3, :cond_e2

    .line 670
    :cond_a8
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 671
    .local v3, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v4, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v4, :cond_e2

    iget-object v4, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 672
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_e2

    iget-object v4, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 673
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_e2

    iget-object v4, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v4, v3, :cond_e2

    .line 675
    move-object v0, v3

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display-from-ignore-preferred-display="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 704
    .end local v3    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_e2
    if-nez v0, :cond_f2

    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

    .line 705
    invoke-virtual {v3}, Lcom/android/server/wm/RemoteAppController;->isRemoteAppDisplayRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 706
    invoke-direct {p0, p5, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getPreferredLaunchTaskDisplayAreaForRemoteApp(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 710
    :cond_f2
    if-nez v0, :cond_fb

    if-eqz p1, :cond_fb

    .line 711
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_fc

    :cond_fb
    nop

    .line 712
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_fc
    if-eqz v1, :cond_11a

    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display-from-task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 717
    :cond_11a
    if-nez v0, :cond_137

    if-eqz p3, :cond_137

    .line 718
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 719
    .local v3, "sourceDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display-area-from-source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 720
    move-object v0, v3

    .line 723
    .end local v3    # "sourceDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_137
    if-nez v0, :cond_161

    if-eqz p2, :cond_161

    .line 724
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    move-result v3

    .line 725
    .local v3, "callerDisplayId":I
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 726
    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 727
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_161

    .line 728
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 729
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "display-from-caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 733
    .end local v3    # "callerDisplayId":I
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_161
    if-nez v0, :cond_17f

    .line 734
    iget-object v0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 735
    if-eqz v0, :cond_17f

    .line 736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display-from-upper-layer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 741
    :cond_17f
    if-eqz v0, :cond_197

    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v3, :cond_197

    .line 742
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    if-eqz v3, :cond_197

    .line 743
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 746
    :cond_197
    if-eqz v0, :cond_19b

    .line 747
    move-object v3, v0

    goto :goto_1a3

    .line 748
    :cond_19b
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 746
    :goto_1a3
    return-object v3
.end method

.method private getPreferredLaunchTaskDisplayAreaForRemoteApp(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 10
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 1733
    const/4 v0, 0x0

    .line 1734
    .local v0, "area":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz p2, :cond_7

    .line 1735
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1737
    :cond_7
    if-nez v0, :cond_15

    .line 1738
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1739
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_15

    .line 1740
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1743
    .end local v1    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_15
    if-eqz v0, :cond_5b

    .line 1744
    iget-object v1, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1745
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_25

    move v4, v2

    goto :goto_26

    :cond_25
    move v4, v3

    .line 1746
    .local v4, "isDefaultDisplay":Z
    :goto_26
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v5

    if-eqz v5, :cond_30

    move v5, v2

    goto :goto_31

    :cond_30
    move v5, v3

    .line 1747
    .local v5, "isRemoteAppDisplay":Z
    :goto_31
    if-nez v4, :cond_3e

    if-eqz v5, :cond_3c

    .line 1748
    invoke-static {p1}, Lcom/android/server/wm/RemoteAppController;->isValidActivityTypeLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_3c

    goto :goto_3e

    :cond_3c
    move v2, v3

    goto :goto_3f

    :cond_3e
    :goto_3e
    nop

    .line 1749
    .local v2, "isDisplayAllowed":Z
    :goto_3f
    if-eqz v2, :cond_5a

    .line 1750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "display-from-remote-app-policy="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_5b

    .line 1752
    :cond_5a
    const/4 v0, 0x0

    .line 1755
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "isDisplayAllowed":Z
    .end local v4    # "isDefaultDisplay":Z
    .end local v5    # "isRemoteAppDisplay":Z
    :cond_5b
    :goto_5b
    return-object v0
.end method

.method private getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)V
    .registers 16
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "resolvedMode"    # I
    .param p5, "hasInitialBounds"    # Z
    .param p6, "inOutBounds"    # Landroid/graphics/Rect;
    .param p7, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 1004
    const/4 v0, 0x1

    if-ne p4, v0, :cond_d

    .line 1007
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 1008
    const-string/jumbo v0, "maximized-bounds"

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 1009
    return-void

    .line 1012
    :cond_d
    const/4 v1, 0x5

    if-eq p4, v1, :cond_2a

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skip-bounds-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 1017
    return-void

    .line 1020
    :cond_2a
    invoke-direct {p0, p1, p2, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)I

    move-result v1

    .line 1021
    .local v1, "orientation":I
    if-eq v1, v0, :cond_4e

    if-nez v1, :cond_33

    goto :goto_4e

    .line 1023
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orientation must be one of portrait or landscape, but it\'s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1030
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getCustomFreeformSize(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V

    .line 1036
    if-nez p5, :cond_85

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_85

    .line 1061
    :cond_5e
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/DisplayContent;IILandroid/graphics/Rect;)V

    .line 1062
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeform-size-mismatch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_f7

    .line 1041
    :cond_85
    :goto_85
    invoke-static {p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v0

    if-ne v1, v0, :cond_a0

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeform-size-orientation-match="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_f7

    .line 1044
    :cond_a0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 1045
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 1046
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0, v2, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/DisplayContent;IILandroid/graphics/Rect;)V

    .line 1047
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeform-orientation-ignore="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_f7

    .line 1052
    :cond_d8
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/DisplayContent;IILandroid/graphics/Rect;)V

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeform-orientation-mismatch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 1067
    :goto_f7
    if-eqz p7, :cond_115

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinityWithoutUid:Ljava/lang/String;

    if-eqz v0, :cond_115

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinityWithoutUid:Ljava/lang/String;

    iget-object v2, p7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1069
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 1072
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinityWithoutUid:Ljava/lang/String;

    .line 1073
    invoke-virtual {p7}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    const/4 v7, 0x0

    .line 1072
    move-object v2, p0

    move-object v3, p2

    move-object v4, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    goto :goto_118

    .line 1077
    :cond_115
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplay(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)V

    .line 1079
    :goto_118
    return-void
.end method

.method private initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskLaunchParamsModifier:task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 1587
    return-void
.end method

.method public static synthetic lambda$nEI_4fdHqfMEZ7tZEXaFOUEnptg(Lcom/android/server/wm/Task;Ljava/lang/String;Landroid/graphics/Rect;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->filterCheckBounds(Lcom/android/server/wm/Task;Ljava/lang/String;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method private offsetTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "tmpBounds"    # Landroid/graphics/Rect;
    .param p2, "displayBounds"    # Landroid/graphics/Rect;

    .line 1691
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1692
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1694
    .local v1, "height":I
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_17

    .line 1695
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 1696
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1699
    :cond_17
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_26

    .line 1700
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 1701
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 1703
    :cond_26
    return-void
.end method

.method private static orientationFromBounds(Landroid/graphics/Rect;)I
    .registers 3
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .line 1598
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    .line 1599
    :cond_c
    const/4 v0, 0x1

    .line 1598
    :goto_d
    return v0
.end method

.method private outputLog()V
    .registers 3

    .line 1594
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    return-void
.end method

.method private recalculateLayout(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ActivityInfo$WindowLayout;)Landroid/content/pm/ActivityInfo$WindowLayout;
    .registers 19
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 1161
    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1162
    return-object v0

    .line 1167
    :cond_9
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    .line 1168
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v2

    int-to-float v2, v2

    .line 1170
    .local v2, "initialDisplayDensity":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1d

    .line 1171
    return-object v0

    .line 1174
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    .line 1175
    .local v3, "currentDensityDpi":F
    div-float v4, v3, v2

    .line 1177
    .local v4, "densityRatio":F
    iget v5, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    const/4 v6, -0x1

    const/high16 v7, 0x3f000000    # 0.5f

    if-gez v5, :cond_2f

    move v9, v6

    goto :goto_36

    :cond_2f
    iget v5, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v7

    float-to-int v5, v5

    move v9, v5

    .line 1178
    .local v9, "width":I
    :goto_36
    iget v5, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-gez v5, :cond_3c

    move v11, v6

    goto :goto_43

    :cond_3c
    iget v5, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v7

    float-to-int v5, v5

    move v11, v5

    .line 1179
    .local v11, "height":I
    :goto_43
    iget v5, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    if-gez v5, :cond_49

    move v14, v6

    goto :goto_50

    :cond_49
    iget v5, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v7

    float-to-int v5, v5

    move v14, v5

    .line 1180
    .local v14, "minWidth":I
    :goto_50
    iget v5, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    if-gez v5, :cond_55

    goto :goto_5b

    :cond_55
    iget v5, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v7

    float-to-int v6, v5

    :goto_5b
    move v15, v6

    .line 1181
    .local v15, "minHeight":I
    new-instance v5, Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v10, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    iget v12, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    iget v13, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    return-object v5
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 4
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 948
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 949
    .local v0, "orientation":I
    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xb

    if-eq v0, v1, :cond_24

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1a

    packed-switch v0, :pswitch_data_2c

    .line 969
    const/4 v0, -0x1

    goto :goto_2b

    .line 952
    :cond_1a
    :pswitch_1a
    const/16 v0, 0xe

    .line 953
    goto :goto_2b

    .line 965
    :cond_1d
    :pswitch_1d
    const-string v1, "activity-requested-portrait"

    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 966
    const/4 v0, 0x1

    .line 967
    goto :goto_2b

    .line 958
    :cond_24
    :pswitch_24
    const-string v1, "activity-requested-landscape"

    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 959
    const/4 v0, 0x0

    .line 960
    nop

    .line 972
    :goto_2b
    return v0

    :pswitch_data_2c
    .packed-switch 0x5
        :pswitch_1a
        :pswitch_24
        :pswitch_1d
        :pswitch_24
        :pswitch_1d
    .end packed-switch
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)I
    .registers 7
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 1094
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 1096
    .local v0, "orientation":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4c

    .line 1097
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1098
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->convertOrientationToScreenOrientation(I)I

    move-result v1

    goto :goto_1d

    .line 1099
    :cond_19
    invoke-static {p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_1d
    move v0, v1

    .line 1101
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "locked-orientation-from-display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    .line 1102
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "locked-orientation-from-bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    :goto_49
    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 1106
    :cond_4c
    const/4 v1, -0x1

    if-ne v0, v1, :cond_7a

    .line 1107
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v1, 0x1

    goto :goto_5b

    .line 1108
    :cond_57
    invoke-static {p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_5b
    move v0, v1

    .line 1110
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_65

    const-string v1, "default-portrait"

    goto :goto_77

    .line 1111
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "orientation-from-bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1110
    :goto_77
    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 1115
    :cond_7a
    return v0
.end method

.method private shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "direction"    # I
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;

    .line 1528
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    .line 1550
    const/4 v0, 0x0

    .local v0, "horizontalOffset":I
    goto :goto_11

    .line 1542
    .end local v0    # "horizontalOffset":I
    :cond_a
    iget v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    .line 1548
    .restart local v0    # "horizontalOffset":I
    goto :goto_11

    .line 1532
    .end local v0    # "horizontalOffset":I
    :cond_d
    iget v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    neg-int v0, v0

    .line 1538
    .restart local v0    # "horizontalOffset":I
    nop

    .line 1554
    :goto_11
    and-int/lit8 v1, p1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_20

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1d

    .line 1576
    const/4 v1, 0x0

    .local v1, "verticalOffset":I
    goto :goto_24

    .line 1568
    .end local v1    # "verticalOffset":I
    :cond_1d
    iget v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    .line 1574
    .restart local v1    # "verticalOffset":I
    goto :goto_24

    .line 1558
    .end local v1    # "verticalOffset":I
    :cond_20
    iget v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    neg-int v1, v1

    .line 1564
    .restart local v1    # "verticalOffset":I
    nop

    .line 1579
    :goto_24
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1580
    return-void
.end method

.method private static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p0, "left"    # Landroid/graphics/Rect;
    .param p1, "right"    # Landroid/graphics/Rect;

    .line 1603
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_21

    .line 1604
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 1603
    :goto_22
    return v0
.end method

.method private updateSnappingBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p5, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p6, "outBounds"    # Landroid/graphics/Rect;

    .line 1669
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v0

    .line 1670
    .local v0, "desktopMode":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v0, v1, p4, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getPersistentDexBounds(IILcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)Z

    .line 1671
    invoke-virtual {p6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1672
    return-void

    .line 1674
    :cond_16
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getDexMetaDataBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z

    .line 1675
    invoke-virtual {p6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1676
    return-void

    .line 1678
    :cond_20
    if-eqz p5, :cond_29

    .line 1679
    invoke-direct {p0, p1, p5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->recalculateLayout(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ActivityInfo$WindowLayout;)Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v1

    .line 1680
    .local v1, "recalculated":Landroid/content/pm/ActivityInfo$WindowLayout;
    invoke-direct {p0, p1, p3, v1, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 1682
    .end local v1    # "recalculated":Landroid/content/pm/ActivityInfo$WindowLayout;
    :cond_29
    invoke-virtual {p6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    .line 1683
    return-void

    .line 1685
    :cond_30
    invoke-direct {p0, p1, p3, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getInitialDexBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    .line 1686
    return-void
.end method


# virtual methods
.method adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V
    .registers 13
    .param p1, "displayBounds"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;
    .param p4, "isDexDisplay"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            "Z)V"
        }
    .end annotation

    .line 1382
    .local p2, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1385
    return-void

    .line 1388
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1391
    return-void

    .line 1394
    :cond_e
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1398
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_d9

    aget v3, v0, v2

    .line 1399
    .local v3, "direction":I
    if-nez v3, :cond_1d

    .line 1401
    goto/16 :goto_d9

    .line 1404
    :cond_1d
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1406
    const/4 v4, 0x0

    .line 1409
    .local v4, "boundsConflictCount":I
    :goto_23
    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_ab

    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 1410
    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_35

    if-eqz p4, :cond_ab

    .line 1414
    :cond_35
    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, p1, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1421
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "boundsConflictCount":I
    .local v5, "boundsConflictCount":I
    const/16 v6, 0xc8

    if-le v4, v6, :cond_a8

    .line 1422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TaskLaunchParamsModifier.position: max_bounds_conflict_count, inOutBounds="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mTmpBounds="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", displayBounds="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mDefaultFreeformStepHorizontal="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mDefaultFreeformStepVertical="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Callers="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x8

    .line 1428
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1422
    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TaskLaunchParamsModifier.position: max_bounds_conflict_count, adjusted proposal="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", break!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    move v4, v5

    goto :goto_ab

    .line 1421
    :cond_a8
    move v4, v5

    goto/16 :goto_23

    .line 1438
    .end local v5    # "boundsConflictCount":I
    .restart local v4    # "boundsConflictCount":I
    :cond_ab
    :goto_ab
    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_d5

    iget-object v5, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 1439
    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 1441
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avoid-bounds-conflict="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 1443
    return-void

    .line 1398
    .end local v3    # "direction":I
    .end local v4    # "boundsConflictCount":I
    :cond_d5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    .line 1450
    :cond_d9
    :goto_d9
    return-void
.end method

.method public onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 10
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "phase"    # I
    .param p7, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p8, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 156
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 157
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    .line 159
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->outputLog()V

    .line 160
    return v0
.end method

.method onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 17
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p7, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 148
    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    return v0
.end method
