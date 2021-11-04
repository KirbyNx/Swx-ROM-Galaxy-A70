.class public Lcom/android/server/ipm/ml/RandomForest;
.super Ljava/lang/Object;
.source "RandomForest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/ml/RandomForest$ValueComparator;,
        Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RandomForest"

.field private static final serialVersionUID:J = -0x15c8a19e074e7d3dL


# instance fields
.field private DEBUG:Z

.field private forest:[Lcom/android/server/ipm/ml/DecisionTree;

.field private treeNum:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    .line 33
    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    .line 42
    if-eqz v0, :cond_13

    .line 43
    const-string v0, "RandomForest"

    const-string v1, "RandomForest created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_13
    return-void
.end method

.method private _train(I[[D[D)V
    .registers 15
    .param p1, "featureNum"    # I
    .param p2, "features"    # [[D
    .param p3, "labels"    # [D

    .line 142
    const-string v0, "RandomForest"

    if-eqz p2, :cond_8b

    if-eqz p3, :cond_8b

    if-nez p1, :cond_a

    goto/16 :goto_8b

    .line 147
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    if-eqz v1, :cond_2c

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " labels.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2c
    iget v1, p0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    new-array v1, v1, [Lcom/android/server/ipm/ml/DecisionTree;

    iput-object v1, p0, Lcom/android/server/ipm/ml/RandomForest;->forest:[Lcom/android/server/ipm/ml/DecisionTree;

    .line 153
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 154
    .local v1, "NUM_THREADS":I
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 155
    .local v2, "treePool":Ljava/util/concurrent/ExecutorService;
    iget-boolean v3, p0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    if-eqz v3, :cond_56

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Available thread num"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_56
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_57
    iget v4, p0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    if-ge v3, v4, :cond_6c

    .line 157
    move v8, v3

    .line 158
    .local v8, "finali":I
    new-instance v10, Lcom/android/server/ipm/ml/RandomForest$1;

    move-object v4, v10

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/ipm/ml/RandomForest$1;-><init>(Lcom/android/server/ipm/ml/RandomForest;[[D[DII)V

    invoke-interface {v2, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 156
    .end local v8    # "finali":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 176
    .end local v3    # "i":I
    :cond_6c
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 178
    const-wide v3, 0x7fffffffffffffffL

    :try_start_74
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_74 .. :try_end_79} :catch_7a

    .line 181
    goto :goto_81

    .line 179
    :catch_7a
    move-exception v3

    .line 180
    .local v3, "ignored":Ljava/lang/InterruptedException;
    const-string/jumbo v4, "interrupted exception in Random Forests"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v3    # "ignored":Ljava/lang/InterruptedException;
    :goto_81
    iget-boolean v3, p0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    if-eqz v3, :cond_8a

    const-string v3, "all thread complete"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_8a
    return-void

    .line 143
    .end local v1    # "NUM_THREADS":I
    .end local v2    # "treePool":Ljava/util/concurrent/ExecutorService;
    :cond_8b
    :goto_8b
    const-string v1, "Input parameter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ipm/ml/RandomForest;[[D[D)Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ipm/ml/RandomForest;
    .param p1, "x1"    # [[D
    .param p2, "x2"    # [D

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/server/ipm/ml/RandomForest;->baggingInstances([[D[D)Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ipm/ml/RandomForest;)[Lcom/android/server/ipm/ml/DecisionTree;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/ml/RandomForest;

    .line 21
    iget-object v0, p0, Lcom/android/server/ipm/ml/RandomForest;->forest:[Lcom/android/server/ipm/ml/DecisionTree;

    return-object v0
.end method

.method private autoAdjustTreeNum(I[[D[D)I
    .registers 30
    .param p1, "featureNum"    # I
    .param p2, "features"    # [[D
    .param p3, "labels"    # [D

    .line 69
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    iget v3, v0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    .line 70
    .local v3, "bestTreeNum":I
    const-wide/16 v4, 0x0

    .line 71
    .local v4, "bestPrecision":D
    array-length v6, v2

    .line 72
    .local v6, "len":I
    mul-int/lit8 v7, v6, 0x50

    const/16 v8, 0x64

    div-int/2addr v7, v8

    .line 73
    .local v7, "trainSize":I
    sub-int v9, v6, v7

    .line 75
    .local v9, "testSize":I
    const-string v10, "RandomForest"

    if-lez v7, :cond_10e

    if-gtz v9, :cond_1f

    move/from16 v17, v3

    move v3, v6

    move/from16 v21, v7

    goto/16 :goto_113

    .line 80
    :cond_1f
    new-array v11, v7, [[D

    .line 81
    .local v11, "trainSet":[[D
    new-array v12, v7, [D

    .line 82
    .local v12, "trainLabel":[D
    new-array v13, v9, [[D

    .line 83
    .local v13, "testSet":[[D
    new-array v14, v9, [D

    .line 85
    .local v14, "testLabel":[D
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_28
    if-ge v15, v7, :cond_3b

    .line 86
    aget-object v8, p2, v15

    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v8

    aput-object v8, v11, v15

    .line 87
    aget-wide v17, v2, v15

    aput-wide v17, v12, v15

    .line 85
    add-int/lit8 v15, v15, 0x1

    const/16 v8, 0x64

    goto :goto_28

    .line 89
    .end local v15    # "i":I
    :cond_3b
    move v8, v7

    .local v8, "i":I
    :goto_3c
    if-ge v8, v6, :cond_55

    .line 90
    sub-int v15, v8, v7

    move/from16 v17, v3

    .end local v3    # "bestTreeNum":I
    .local v17, "bestTreeNum":I
    aget-object v3, p2, v8

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v3

    aput-object v3, v13, v15

    .line 91
    sub-int v3, v8, v7

    aget-wide v18, v2, v8

    aput-wide v18, v14, v3

    .line 89
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v17

    goto :goto_3c

    .end local v17    # "bestTreeNum":I
    .restart local v3    # "bestTreeNum":I
    :cond_55
    move/from16 v17, v3

    .line 94
    .end local v3    # "bestTreeNum":I
    .end local v8    # "i":I
    .restart local v17    # "bestTreeNum":I
    sget v3, Lcom/android/server/ipm/PkgPredictorService;->candidateNum:I

    .line 95
    .local v3, "candidateNum":I
    const/16 v8, 0x32

    iput v8, v0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    move v8, v6

    move-wide v5, v4

    move/from16 v4, v17

    .end local v6    # "len":I
    .end local v17    # "bestTreeNum":I
    .local v4, "bestTreeNum":I
    .local v5, "bestPrecision":D
    .local v8, "len":I
    :goto_61
    iget v15, v0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    const/16 v2, 0x64

    if-gt v15, v2, :cond_e4

    .line 96
    invoke-direct {v0, v1, v11, v12}, Lcom/android/server/ipm/ml/RandomForest;->_train(I[[D[D)V

    .line 97
    const/4 v15, 0x0

    .line 98
    .local v15, "correct":I
    const-wide/16 v16, 0x0

    .line 100
    .local v16, "precision":D
    const/16 v18, 0x0

    move/from16 v2, v18

    .local v2, "i":I
    :goto_71
    if-ge v2, v9, :cond_9b

    .line 101
    aget-object v1, v13, v2

    invoke-virtual {v0, v1, v3}, Lcom/android/server/ipm/ml/RandomForest;->predictN([DI)[D

    move-result-object v1

    .line 102
    .local v1, "predictClass":[D
    move/from16 v19, v3

    .end local v3    # "candidateNum":I
    .local v19, "candidateNum":I
    array-length v3, v1

    const/16 v20, 0x0

    move/from16 v21, v7

    move/from16 v7, v20

    .end local v7    # "trainSize":I
    .local v21, "trainSize":I
    :goto_82
    if-ge v7, v3, :cond_92

    aget-wide v22, v1, v7

    .line 103
    .local v22, "d":D
    aget-wide v24, v14, v2

    cmpl-double v20, v22, v24

    if-nez v20, :cond_8f

    .line 104
    add-int/lit8 v15, v15, 0x1

    .line 105
    goto :goto_92

    .line 102
    .end local v22    # "d":D
    :cond_8f
    add-int/lit8 v7, v7, 0x1

    goto :goto_82

    .line 100
    .end local v1    # "predictClass":[D
    :cond_92
    :goto_92
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, p1

    move/from16 v3, v19

    move/from16 v7, v21

    goto :goto_71

    .end local v19    # "candidateNum":I
    .end local v21    # "trainSize":I
    .restart local v3    # "candidateNum":I
    .restart local v7    # "trainSize":I
    :cond_9b
    move/from16 v19, v3

    move/from16 v21, v7

    .line 110
    .end local v2    # "i":I
    .end local v3    # "candidateNum":I
    .end local v7    # "trainSize":I
    .restart local v19    # "candidateNum":I
    .restart local v21    # "trainSize":I
    int-to-double v1, v15

    move v3, v8

    .end local v8    # "len":I
    .local v3, "len":I
    int-to-double v7, v9

    div-double/2addr v1, v7

    .line 112
    .end local v16    # "precision":D
    .local v1, "precision":D
    iget-boolean v7, v0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    if-eqz v7, :cond_c6

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "precision of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " trees : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_c6
    const-wide v7, 0x3f747ae147ae147bL    # 0.005

    add-double/2addr v7, v5

    cmpl-double v7, v1, v7

    if-lez v7, :cond_d3

    .line 117
    iget v4, v0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    .line 118
    move-wide v5, v1

    .line 95
    .end local v1    # "precision":D
    .end local v15    # "correct":I
    :cond_d3
    iget v1, v0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    move/from16 v1, p1

    move-object/from16 v2, p3

    move v8, v3

    move/from16 v3, v19

    move/from16 v7, v21

    goto/16 :goto_61

    .line 121
    .end local v19    # "candidateNum":I
    .end local v21    # "trainSize":I
    .local v3, "candidateNum":I
    .restart local v7    # "trainSize":I
    .restart local v8    # "len":I
    :cond_e4
    move/from16 v19, v3

    move/from16 v21, v7

    move v3, v8

    .end local v7    # "trainSize":I
    .end local v8    # "len":I
    .local v3, "len":I
    .restart local v19    # "candidateNum":I
    .restart local v21    # "trainSize":I
    iput v4, v0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    .line 122
    iget-boolean v1, v0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    if-eqz v1, :cond_10b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bestTreeNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bestPrecision : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_10b
    iget v1, v0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    return v1

    .line 75
    .end local v5    # "bestPrecision":D
    .end local v11    # "trainSet":[[D
    .end local v12    # "trainLabel":[D
    .end local v13    # "testSet":[[D
    .end local v14    # "testLabel":[D
    .end local v19    # "candidateNum":I
    .end local v21    # "trainSize":I
    .local v3, "bestTreeNum":I
    .local v4, "bestPrecision":D
    .restart local v6    # "len":I
    .restart local v7    # "trainSize":I
    :cond_10e
    move/from16 v17, v3

    move v3, v6

    move/from16 v21, v7

    .line 76
    .end local v6    # "len":I
    .end local v7    # "trainSize":I
    .local v3, "len":I
    .restart local v17    # "bestTreeNum":I
    .restart local v21    # "trainSize":I
    :goto_113
    iget-boolean v1, v0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    if-eqz v1, :cond_11d

    const-string/jumbo v1, "too few data to adjust tree number, use default!"

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_11d
    iget v1, v0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    return v1
.end method

.method private baggingInstances([[D[D)Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;
    .registers 11
    .param p1, "features"    # [[D
    .param p2, "labels"    # [D

    .line 193
    new-instance v0, Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;-><init>(Lcom/android/server/ipm/ml/RandomForest;)V

    .line 194
    .local v0, "instances":Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;
    array-length v1, p2

    .line 195
    .local v1, "size":I
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 199
    .local v2, "random":Ljava/util/Random;
    new-array v3, v1, [[D

    iput-object v3, v0, Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;->features:[[D

    .line 200
    new-array v3, v1, [D

    iput-object v3, v0, Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;->labels:[D

    .line 201
    new-array v3, v1, [I

    iput-object v3, v0, Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;->index:[I

    .line 202
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v1, :cond_37

    .line 204
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 205
    .local v4, "index":I
    iget-object v5, v0, Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;->features:[[D

    aget-object v6, p1, v4

    invoke-virtual {v6}, [D->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    aput-object v6, v5, v3

    .line 206
    iget-object v5, v0, Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;->labels:[D

    aget-wide v6, p2, v4

    aput-wide v6, v5, v3

    .line 207
    iget-object v5, v0, Lcom/android/server/ipm/ml/RandomForest$BaggingInstances;->index:[I

    aput v4, v5, v3

    .line 202
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 210
    .end local v3    # "i":I
    :cond_37
    return-object v0
.end method


# virtual methods
.method public adjustTreeNum(I)V
    .registers 4
    .param p1, "size"    # I

    .line 52
    const/16 v0, 0x64

    if-ge p1, v0, :cond_7

    .line 53
    iput v0, p0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    goto :goto_10

    .line 54
    :cond_7
    const/16 v0, 0xc8

    if-le p1, v0, :cond_e

    .line 55
    iput v0, p0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    goto :goto_10

    .line 57
    :cond_e
    iput p1, p0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    .line 59
    :goto_10
    iget-boolean v0, p0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forest treeNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RandomForest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_2c
    return-void
.end method

.method public getTreeNum()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    return v0
.end method

.method public predict([D)D
    .registers 10
    .param p1, "features"    # [D

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v0, "counter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/ipm/ml/RandomForest;->forest:[Lcom/android/server/ipm/ml/DecisionTree;

    array-length v3, v2

    if-ge v1, v3, :cond_45

    .line 223
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/server/ipm/ml/DecisionTree;->predict([D)D

    move-result-wide v2

    .line 227
    .local v2, "label":D
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_28

    .line 228
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 230
    :cond_28
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    .line 231
    .local v4, "count":I
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v2    # "label":D
    .end local v4    # "count":I
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 235
    .end local v1    # "i":I
    :cond_45
    iget-boolean v1, p0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    if-eqz v1, :cond_60

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "predict..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RandomForest"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_60
    const/4 v1, 0x0

    .line 240
    .local v1, "temp_max":I
    const-wide/16 v2, 0x0

    .line 241
    .restart local v2    # "label":D
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 242
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Double;>;"
    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 243
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 244
    .local v5, "key":D
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 246
    .local v7, "count":I
    if-le v7, v1, :cond_8d

    .line 247
    move v1, v7

    .line 248
    move-wide v2, v5

    .line 250
    .end local v5    # "key":D
    .end local v7    # "count":I
    :cond_8d
    goto :goto_6b

    .line 252
    :cond_8e
    return-wide v2
.end method

.method public predict3([D)[D
    .registers 14
    .param p1, "features"    # [D

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v0, "counter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/ipm/ml/RandomForest;->forest:[Lcom/android/server/ipm/ml/DecisionTree;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_45

    .line 264
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/server/ipm/ml/DecisionTree;->predict([D)D

    move-result-wide v2

    .line 267
    .local v2, "label":D
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_28

    .line 268
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 270
    :cond_28
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    .line 271
    .local v5, "count":I
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .end local v2    # "label":D
    .end local v5    # "count":I
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 275
    .end local v1    # "i":I
    :cond_45
    iget-boolean v1, p0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    const-string v2, "RandomForest"

    if-eqz v1, :cond_60

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "predict3..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_60
    new-instance v1, Lcom/android/server/ipm/ml/RandomForest$ValueComparator;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/ipm/ml/RandomForest$ValueComparator;-><init>(Lcom/android/server/ipm/ml/RandomForest;Lcom/android/server/ipm/ml/RandomForest$1;)V

    .line 279
    .local v1, "vc":Lcom/android/server/ipm/ml/RandomForest$ValueComparator;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v3, "predictList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Integer;>;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 284
    const/4 v5, 0x3

    new-array v6, v5, [D

    .line 285
    .local v6, "labels":[D
    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    aput-wide v7, v6, v9

    aput-wide v7, v6, v4

    .line 287
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_80
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9d

    if-ge v7, v5, :cond_9d

    .line 288
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v6, v7

    .line 287
    add-int/lit8 v7, v7, 0x1

    goto :goto_80

    .line 291
    .end local v7    # "i":I
    :cond_9d
    iget-boolean v5, p0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    if-eqz v5, :cond_cb

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "labels: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-wide v7, v6, v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v6, v4

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v6, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_cb
    return-object v6
.end method

.method public predict5([D)[D
    .registers 19
    .param p1, "features"    # [D

    .line 302
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v1, "counter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget-object v3, v0, Lcom/android/server/ipm/ml/RandomForest;->forest:[Lcom/android/server/ipm/ml/DecisionTree;

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_49

    .line 306
    aget-object v3, v3, v2

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Lcom/android/server/ipm/ml/DecisionTree;->predict([D)D

    move-result-wide v6

    .line 309
    .local v6, "label":D
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 310
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 312
    :cond_2c
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v5

    .line 313
    .local v3, "count":I
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .end local v3    # "count":I
    .end local v6    # "label":D
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_49
    move-object/from16 v4, p1

    .line 317
    .end local v2    # "i":I
    iget-boolean v2, v0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    const-string v3, "RandomForest"

    if-eqz v2, :cond_66

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "predict5..."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_66
    new-instance v2, Lcom/android/server/ipm/ml/RandomForest$ValueComparator;

    const/4 v6, 0x0

    invoke-direct {v2, v0, v6}, Lcom/android/server/ipm/ml/RandomForest$ValueComparator;-><init>(Lcom/android/server/ipm/ml/RandomForest;Lcom/android/server/ipm/ml/RandomForest$1;)V

    .line 321
    .local v2, "vc":Lcom/android/server/ipm/ml/RandomForest$ValueComparator;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v6, "predictList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Integer;>;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 326
    const/4 v7, 0x5

    new-array v8, v7, [D

    .line 327
    .local v8, "labels":[D
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const/4 v11, 0x4

    aput-wide v9, v8, v11

    const/4 v12, 0x3

    aput-wide v9, v8, v12

    const/4 v13, 0x2

    aput-wide v9, v8, v13

    aput-wide v9, v8, v5

    const/4 v14, 0x0

    aput-wide v9, v8, v14

    .line 329
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_8f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_ac

    if-ge v9, v7, :cond_ac

    .line 330
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    aput-wide v15, v8, v9

    .line 329
    add-int/lit8 v9, v9, 0x1

    goto :goto_8f

    .line 333
    .end local v9    # "i":I
    :cond_ac
    iget-boolean v7, v0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    if-eqz v7, :cond_e9

    .line 334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "labels: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v8, v14

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v14, v8, v5

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v13, v8, v13

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v12, v8, v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v8, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_e9
    return-object v8
.end method

.method public predictN([DI)[D
    .registers 13
    .param p1, "features"    # [D
    .param p2, "n"    # I

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v0, "counter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/ipm/ml/RandomForest;->forest:[Lcom/android/server/ipm/ml/DecisionTree;

    array-length v3, v2

    if-ge v1, v3, :cond_45

    .line 348
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/server/ipm/ml/DecisionTree;->predict([D)D

    move-result-wide v2

    .line 351
    .local v2, "label":D
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_28

    .line 352
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 354
    :cond_28
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    .line 355
    .local v4, "count":I
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .end local v2    # "label":D
    .end local v4    # "count":I
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 359
    .end local v1    # "i":I
    :cond_45
    iget-boolean v1, p0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    const-string v2, "RandomForest"

    if-eqz v1, :cond_68

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "predict"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_68
    new-instance v1, Lcom/android/server/ipm/ml/RandomForest$ValueComparator;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/ipm/ml/RandomForest$ValueComparator;-><init>(Lcom/android/server/ipm/ml/RandomForest;Lcom/android/server/ipm/ml/RandomForest$1;)V

    .line 363
    .local v1, "vc":Lcom/android/server/ipm/ml/RandomForest$ValueComparator;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v3, "predictList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Integer;>;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 368
    new-array v4, p2, [D

    .line 370
    .local v4, "labels":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_80
    if-ge v5, p2, :cond_89

    .line 371
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    aput-wide v6, v4, v5

    .line 370
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    .line 374
    :cond_89
    const/4 v5, 0x0

    :goto_8a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a7

    if-ge v5, p2, :cond_a7

    .line 375
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 374
    add-int/lit8 v5, v5, 0x1

    goto :goto_8a

    .line 378
    :cond_a7
    iget-boolean v6, p0, Lcom/android/server/ipm/ml/RandomForest;->DEBUG:Z

    if-eqz v6, :cond_cc

    .line 379
    const-string v6, "Labels: "

    .line 380
    .local v6, "lableInfo":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_ae
    if-ge v5, p2, :cond_c9

    .line 381
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v4, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 380
    add-int/lit8 v5, v5, 0x1

    goto :goto_ae

    .line 383
    :cond_c9
    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v6    # "lableInfo":Ljava/lang/String;
    :cond_cc
    return-object v4
.end method

.method public train(I[[D[D)Lcom/android/server/ipm/NapSummary;
    .registers 7
    .param p1, "featureNum"    # I
    .param p2, "features"    # [[D
    .param p3, "labels"    # [D

    .line 132
    new-instance v0, Lcom/android/server/ipm/NapSummary;

    invoke-direct {v0}, Lcom/android/server/ipm/NapSummary;-><init>()V

    .line 133
    .local v0, "tempSummary":Lcom/android/server/ipm/NapSummary;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/ipm/NapSummary;->treeNumAdjustStartTime:J

    .line 134
    iget v1, p0, Lcom/android/server/ipm/ml/RandomForest;->treeNum:I

    iput v1, v0, Lcom/android/server/ipm/NapSummary;->treeNumAdjust:I

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/ipm/NapSummary;->treeNumAdjustEndTime:J

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ipm/ml/RandomForest;->_train(I[[D[D)V

    .line 138
    return-object v0
.end method
