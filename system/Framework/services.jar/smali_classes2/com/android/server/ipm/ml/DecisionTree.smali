.class public Lcom/android/server/ipm/ml/DecisionTree;
.super Ljava/lang/Object;
.source "DecisionTree.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;,
        Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;,
        Lcom/android/server/ipm/ml/DecisionTree$SplitSet;,
        Lcom/android/server/ipm/ml/DecisionTree$Node;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ML-DecisionTree"

.field private static final serialVersionUID:J = -0x456229d97866383bL


# instance fields
.field private DEBUG:Z

.field private defaultForMissingFeature:[D

.field private featureNum:I

.field private features:[[D

.field private labels:[D

.field private root:Lcom/android/server/ipm/ml/DecisionTree$Node;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ipm/ml/DecisionTree;->DEBUG:Z

    .line 77
    if-eqz v0, :cond_f

    .line 78
    const-string v0, "ML-DecisionTree"

    const-string v1, "DecisionTree created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_f
    return-void
.end method

.method private buildDecisionTree([I[I)Lcom/android/server/ipm/ml/DecisionTree$Node;
    .registers 15
    .param p1, "set"    # [I
    .param p2, "attributes"    # [I

    .line 381
    new-instance v0, Lcom/android/server/ipm/ml/DecisionTree$Node;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/ml/DecisionTree$Node;-><init>(Lcom/android/server/ipm/ml/DecisionTree;)V

    .line 382
    .local v0, "node":Lcom/android/server/ipm/ml/DecisionTree$Node;
    iput-object p1, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->instanceSet:[I

    .line 383
    iput-object p2, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->availableAttr:[I

    .line 384
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->label:D

    .line 385
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->childrenNodes:[Lcom/android/server/ipm/ml/DecisionTree$Node;

    .line 388
    iget-object v2, p0, Lcom/android/server/ipm/ml/DecisionTree;->labels:[D

    iget-object v3, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->instanceSet:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aget-wide v2, v2, v3

    .line 389
    .local v2, "label":D
    const/4 v5, 0x1

    .line 390
    .local v5, "sameClass":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    iget-object v7, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->instanceSet:[I

    array-length v7, v7

    if-ge v6, v7, :cond_31

    .line 391
    iget-object v7, p0, Lcom/android/server/ipm/ml/DecisionTree;->labels:[D

    iget-object v8, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->instanceSet:[I

    aget v8, v8, v6

    aget-wide v7, v7, v8

    cmpl-double v7, v7, v2

    if-eqz v7, :cond_2e

    .line 392
    const/4 v5, 0x0

    .line 393
    goto :goto_31

    .line 390
    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 397
    .end local v6    # "i":I
    :cond_31
    :goto_31
    if-eqz v5, :cond_38

    .line 398
    iput-wide v2, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->label:D

    .line 399
    iput-object v1, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->instanceSet:[I

    .line 400
    return-object v0

    .line 404
    :cond_38
    invoke-direct {p0, p1}, Lcom/android/server/ipm/ml/DecisionTree;->findMostLabel([I)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->label:D

    .line 407
    iget-object v6, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->availableAttr:[I

    if-eqz v6, :cond_b7

    iget-object v6, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->availableAttr:[I

    array-length v6, v6

    if-nez v6, :cond_48

    goto :goto_b7

    .line 413
    :cond_48
    invoke-direct {p0, v0}, Lcom/android/server/ipm/ml/DecisionTree;->getBestSplit(Lcom/android/server/ipm/ml/DecisionTree$Node;)Lcom/android/server/ipm/ml/DecisionTree$SplitSet;

    move-result-object v6

    .line 414
    .local v6, "split":Lcom/android/server/ipm/ml/DecisionTree$SplitSet;
    iget v7, v6, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->splitAttr:I

    iput v7, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->splitAttr:I

    .line 415
    iget v7, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->splitAttr:I

    if-gez v7, :cond_74

    .line 416
    iget-boolean v4, p0, Lcom/android/server/ipm/ml/DecisionTree;->DEBUG:Z

    if-eqz v4, :cond_71

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "node.splitAttr = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->splitAttr:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ML-DecisionTree"

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_71
    iput-object v1, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->instanceSet:[I

    .line 419
    return-object v0

    .line 422
    :cond_74
    iget-object v7, v6, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->splitPoints:[D

    iput-object v7, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->splitPoints:[D

    .line 423
    iget-object v7, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->splitPoints:[D

    array-length v7, v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_81

    .line 424
    iput-object v1, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->instanceSet:[I

    .line 425
    return-object v0

    .line 429
    :cond_81
    const/4 v7, 0x0

    .line 430
    .local v7, "childAttrs":[I
    array-length v9, p2

    sub-int/2addr v9, v8

    new-array v7, v9, [I

    .line 431
    const/4 v8, 0x0

    .line 433
    .local v8, "index":I
    array-length v9, p2

    :goto_88
    if-ge v4, v9, :cond_98

    aget v10, p2, v4

    .line 434
    .local v10, "attr":I
    iget v11, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->splitAttr:I

    if-eq v10, v11, :cond_95

    .line 435
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "index":I
    .local v11, "index":I
    aput v10, v7, v8

    move v8, v11

    .line 433
    .end local v10    # "attr":I
    .end local v11    # "index":I
    .restart local v8    # "index":I
    :cond_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_88

    .line 441
    :cond_98
    iget-object v4, v6, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->instanceSets:[[I

    array-length v4, v4

    new-array v4, v4, [Lcom/android/server/ipm/ml/DecisionTree$Node;

    iput-object v4, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->childrenNodes:[Lcom/android/server/ipm/ml/DecisionTree$Node;

    .line 442
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a0
    iget-object v9, v6, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->instanceSets:[[I

    array-length v9, v9

    if-ge v4, v9, :cond_b4

    .line 443
    iget-object v9, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->childrenNodes:[Lcom/android/server/ipm/ml/DecisionTree$Node;

    iget-object v10, v6, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->instanceSets:[[I

    aget-object v10, v10, v4

    invoke-direct {p0, v10, v7}, Lcom/android/server/ipm/ml/DecisionTree;->buildDecisionTree([I[I)Lcom/android/server/ipm/ml/DecisionTree$Node;

    move-result-object v10

    aput-object v10, v9, v4

    .line 442
    add-int/lit8 v4, v4, 0x1

    goto :goto_a0

    .line 446
    .end local v4    # "i":I
    :cond_b4
    iput-object v1, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->instanceSet:[I

    .line 448
    return-object v0

    .line 408
    .end local v6    # "split":Lcom/android/server/ipm/ml/DecisionTree$SplitSet;
    .end local v7    # "childAttrs":[I
    .end local v8    # "index":I
    :cond_b7
    :goto_b7
    iput-object v1, v0, Lcom/android/server/ipm/ml/DecisionTree$Node;->instanceSet:[I

    .line 409
    return-object v0
.end method

.method private entropy([I)D
    .registers 13
    .param p1, "set"    # [I

    .line 286
    const-wide/16 v0, 0x0

    .line 287
    .local v0, "result":D
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v2, "featureCounter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Ljava/lang/Integer;>;"
    array-length v3, p1

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_45

    aget v5, p1, v4

    .line 290
    .local v5, "item":I
    iget-object v6, p0, Lcom/android/server/ipm/ml/DecisionTree;->labels:[D

    aget-wide v6, v6, v5

    .line 291
    .local v6, "label":D
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_37

    .line 292
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 294
    :cond_37
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local v5    # "item":I
    .end local v6    # "label":D
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 299
    :cond_45
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 300
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Double;>;"
    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 301
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 302
    .local v4, "count":I
    int-to-double v5, v4

    array-length v7, p1

    int-to-double v7, v7

    div-double/2addr v5, v7

    .line 303
    .local v5, "p":D
    neg-double v7, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    add-double/2addr v0, v7

    .line 304
    .end local v4    # "count":I
    .end local v5    # "p":D
    goto :goto_4d

    .line 306
    :cond_74
    return-wide v0
.end method

.method private fillMissingFeature()[D
    .registers 7

    .line 124
    invoke-direct {p0}, Lcom/android/server/ipm/ml/DecisionTree;->findMostFeature()[D

    move-result-object v0

    .line 127
    .local v0, "defaultFeature":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/ipm/ml/DecisionTree;->features:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_4f

    .line 128
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_4c

    .line 130
    iget-object v3, p0, Lcom/android/server/ipm/ml/DecisionTree;->features:[[D

    aget-object v3, v3, v1

    aget-wide v3, v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 131
    iget-object v3, p0, Lcom/android/server/ipm/ml/DecisionTree;->features:[[D

    aget-object v3, v3, v1

    aget-wide v4, v0, v2

    aput-wide v4, v3, v2

    .line 132
    iget-boolean v3, p0, Lcom/android/server/ipm/ml/DecisionTree;->DEBUG:Z

    if-eqz v3, :cond_49

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feature["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] value is missing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ML-DecisionTree"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 127
    .end local v2    # "j":I
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 137
    .end local v1    # "i":I
    :cond_4f
    return-object v0
.end method

.method private findMostFeature()[D
    .registers 11

    .line 87
    iget v0, p0, Lcom/android/server/ipm/ml/DecisionTree;->featureNum:I

    new-array v0, v0, [D

    .line 89
    .local v0, "defaults":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_84

    .line 91
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v2, "featureCounter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_e
    iget-object v4, p0, Lcom/android/server/ipm/ml/DecisionTree;->features:[[D

    array-length v5, v4

    if-ge v3, v5, :cond_51

    .line 93
    aget-object v4, v4, v3

    aget-wide v4, v4, v1

    .line 94
    .local v4, "feature":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_4e

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_43

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 98
    :cond_43
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v4    # "feature":D
    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 102
    .end local v3    # "j":I
    :cond_51
    const/4 v3, 0x0

    .line 103
    .local v3, "maxCount":I
    const-wide/16 v4, 0x0

    .line 104
    .local v4, "value":D
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 107
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Double;>;"
    :goto_5c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 108
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 109
    .local v7, "key":D
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 110
    .local v9, "count":I
    if-le v9, v3, :cond_7e

    .line 111
    move v3, v9

    .line 112
    move-wide v4, v7

    .line 114
    .end local v7    # "key":D
    .end local v9    # "count":I
    :cond_7e
    goto :goto_5c

    .line 115
    :cond_7f
    aput-wide v4, v0, v1

    .line 89
    .end local v2    # "featureCounter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Ljava/lang/Integer;>;"
    .end local v3    # "maxCount":I
    .end local v4    # "value":D
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Double;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 118
    .end local v1    # "i":I
    :cond_84
    return-object v0
.end method

.method private findMostLabel([I)D
    .registers 11
    .param p1, "set"    # [I

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v0, "counter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Ljava/lang/Integer;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_43

    aget v3, p1, v2

    .line 144
    .local v3, "item":I
    iget-object v4, p0, Lcom/android/server/ipm/ml/DecisionTree;->labels:[D

    aget-wide v4, v4, v3

    .line 145
    .local v4, "label":D
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_26

    .line 146
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 148
    :cond_26
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v7

    .line 149
    .local v6, "count":I
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v3    # "item":I
    .end local v4    # "label":D
    .end local v6    # "count":I
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 153
    :cond_43
    const/4 v1, 0x0

    .line 154
    .local v1, "maxCount":I
    const-wide/16 v2, 0x0

    .line 155
    .local v2, "label":D
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 156
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Double;>;"
    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 157
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 158
    .local v5, "key":D
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 159
    .local v7, "count":I
    if-le v7, v1, :cond_70

    .line 160
    move v1, v7

    .line 161
    move-wide v2, v5

    .line 163
    .end local v5    # "key":D
    .end local v7    # "count":I
    :cond_70
    goto :goto_4e

    .line 164
    :cond_71
    return-wide v2
.end method

.method private gainRatioByAttribute([II)Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;
    .registers 23
    .param p1, "set"    # [I
    .param p2, "attribute"    # I

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;

    invoke-direct {v2, v0}, Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;-><init>(Lcom/android/server/ipm/ml/DecisionTree;)V

    .line 314
    .local v2, "result":Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ipm/ml/DecisionTree;->entropy([I)D

    move-result-wide v3

    .line 315
    .local v3, "originalSetEntropy":D
    const-wide/16 v5, 0x0

    .line 316
    .local v5, "splitSetConditionalEntropy":D
    const-wide/16 v7, 0x0

    .line 319
    .local v7, "splitInfo":D
    invoke-direct/range {p0 .. p2}, Lcom/android/server/ipm/ml/DecisionTree;->splitByAttribute([II)Lcom/android/server/ipm/ml/DecisionTree$SplitSet;

    move-result-object v9

    iput-object v9, v2, Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;->setInfo:Lcom/android/server/ipm/ml/DecisionTree$SplitSet;

    .line 323
    iget-object v9, v2, Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;->setInfo:Lcom/android/server/ipm/ml/DecisionTree$SplitSet;

    iget-object v9, v9, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->instanceSets:[[I

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1d
    if-ge v11, v10, :cond_4c

    aget-object v12, v9, v11

    .line 325
    .local v12, "subSet":[I
    array-length v13, v12

    int-to-double v13, v13

    array-length v15, v1

    move-object/from16 v16, v9

    move/from16 v17, v10

    int-to-double v9, v15

    div-double/2addr v13, v9

    invoke-direct {v0, v12}, Lcom/android/server/ipm/ml/DecisionTree;->entropy([I)D

    move-result-wide v9

    mul-double/2addr v13, v9

    add-double/2addr v5, v13

    .line 328
    array-length v9, v12

    int-to-double v9, v9

    array-length v13, v1

    int-to-double v13, v13

    div-double/2addr v9, v13

    .line 331
    .local v9, "p":D
    neg-double v13, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    mul-double v13, v13, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    div-double v13, v13, v18

    add-double/2addr v7, v13

    .line 323
    .end local v9    # "p":D
    .end local v12    # "subSet":[I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v16

    move/from16 v10, v17

    goto :goto_1d

    .line 336
    :cond_4c
    sub-double v9, v3, v5

    div-double/2addr v9, v7

    iput-wide v9, v2, Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;->gainRatio:D

    .line 337
    return-object v2
.end method

.method private generateRandomAttribute(II[I)[I
    .registers 9
    .param p1, "n"    # I
    .param p2, "attrLength"    # I
    .param p3, "availableAttrs"    # [I

    .line 174
    new-array v0, p1, [I

    .line 175
    .local v0, "attrs":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "attrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 179
    .local v2, "rd":Ljava/util/Random;
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p1, :cond_28

    .line 180
    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 181
    .local v3, "num":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 182
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v3    # "num":I
    :cond_27
    goto :goto_c

    .line 186
    :cond_28
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_40

    .line 187
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v4, p3, v4

    aput v4, v0, v3

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 190
    .end local v3    # "i":I
    :cond_40
    return-object v0
.end method

.method private getBestSplit(Lcom/android/server/ipm/ml/DecisionTree$Node;)Lcom/android/server/ipm/ml/DecisionTree$SplitSet;
    .registers 13
    .param p1, "node"    # Lcom/android/server/ipm/ml/DecisionTree$Node;

    .line 342
    const-wide/16 v0, 0x0

    .line 343
    .local v0, "maxRatio":D
    new-instance v2, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;

    invoke-direct {v2, p0}, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;-><init>(Lcom/android/server/ipm/ml/DecisionTree;)V

    .line 344
    .local v2, "result":Lcom/android/server/ipm/ml/DecisionTree$SplitSet;
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->splitAttr:I

    .line 350
    iget-object v3, p1, Lcom/android/server/ipm/ml/DecisionTree$Node;->instanceSet:[I

    array-length v3, v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_12

    .line 351
    return-object v2

    .line 355
    :cond_12
    iget-object v3, p1, Lcom/android/server/ipm/ml/DecisionTree$Node;->availableAttr:[I

    array-length v3, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-int v3, v5

    .line 356
    .local v3, "num":I
    if-ge v3, v4, :cond_28

    .line 357
    const/4 v3, 0x1

    goto :goto_30

    .line 358
    :cond_28
    iget-object v4, p1, Lcom/android/server/ipm/ml/DecisionTree$Node;->availableAttr:[I

    array-length v4, v4

    if-le v3, v4, :cond_30

    .line 359
    iget-object v4, p1, Lcom/android/server/ipm/ml/DecisionTree$Node;->availableAttr:[I

    array-length v3, v4

    .line 361
    :cond_30
    :goto_30
    iget-boolean v4, p0, Lcom/android/server/ipm/ml/DecisionTree;->DEBUG:Z

    const-string v5, "ML-DecisionTree"

    if-eqz v4, :cond_4b

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "radom atribute num = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_4b
    iget-object v4, p1, Lcom/android/server/ipm/ml/DecisionTree$Node;->availableAttr:[I

    array-length v4, v4

    iget-object v6, p1, Lcom/android/server/ipm/ml/DecisionTree$Node;->availableAttr:[I

    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/ipm/ml/DecisionTree;->generateRandomAttribute(II[I)[I

    move-result-object v4

    .line 366
    .local v4, "attributes":[I
    iget-boolean v6, p0, Lcom/android/server/ipm/ml/DecisionTree;->DEBUG:Z

    if-eqz v6, :cond_70

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBestSplit: random attributes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_70
    array-length v5, v4

    const/4 v6, 0x0

    :goto_72
    if-ge v6, v5, :cond_89

    aget v7, v4, v6

    .line 370
    .local v7, "attr":I
    iget-object v8, p1, Lcom/android/server/ipm/ml/DecisionTree$Node;->instanceSet:[I

    invoke-direct {p0, v8, v7}, Lcom/android/server/ipm/ml/DecisionTree;->gainRatioByAttribute([II)Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;

    move-result-object v8

    .line 371
    .local v8, "gainRatio":Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;
    iget-wide v9, v8, Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;->gainRatio:D

    cmpl-double v9, v9, v0

    if-lez v9, :cond_86

    .line 372
    iget-wide v0, v8, Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;->gainRatio:D

    .line 373
    iget-object v2, v8, Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;->setInfo:Lcom/android/server/ipm/ml/DecisionTree$SplitSet;

    .line 369
    .end local v7    # "attr":I
    .end local v8    # "gainRatio":Lcom/android/server/ipm/ml/DecisionTree$SplitInfo;
    :cond_86
    add-int/lit8 v6, v6, 0x1

    goto :goto_72

    .line 376
    :cond_89
    return-object v2
.end method

.method private predictByDecisionTree([DLcom/android/server/ipm/ml/DecisionTree$Node;)D
    .registers 8
    .param p1, "features"    # [D
    .param p2, "node"    # Lcom/android/server/ipm/ml/DecisionTree$Node;

    .line 510
    iget-object v0, p2, Lcom/android/server/ipm/ml/DecisionTree$Node;->childrenNodes:[Lcom/android/server/ipm/ml/DecisionTree$Node;

    if-nez v0, :cond_7

    .line 511
    iget-wide v0, p2, Lcom/android/server/ipm/ml/DecisionTree$Node;->label:D

    return-wide v0

    .line 514
    :cond_7
    iget v0, p2, Lcom/android/server/ipm/ml/DecisionTree$Node;->splitAttr:I

    aget-wide v0, p1, v0

    .line 516
    .local v0, "featureValue":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p2, Lcom/android/server/ipm/ml/DecisionTree$Node;->splitPoints:[D

    array-length v3, v3

    if-ge v2, v3, :cond_25

    .line 517
    iget-object v3, p2, Lcom/android/server/ipm/ml/DecisionTree$Node;->splitPoints:[D

    aget-wide v3, v3, v2

    cmpl-double v3, v3, v0

    if-nez v3, :cond_22

    .line 518
    iget-object v3, p2, Lcom/android/server/ipm/ml/DecisionTree$Node;->childrenNodes:[Lcom/android/server/ipm/ml/DecisionTree$Node;

    aget-object v3, v3, v2

    invoke-direct {p0, p1, v3}, Lcom/android/server/ipm/ml/DecisionTree;->predictByDecisionTree([DLcom/android/server/ipm/ml/DecisionTree$Node;)D

    move-result-wide v3

    return-wide v3

    .line 516
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 522
    .end local v2    # "i":I
    :cond_25
    iget-wide v2, p2, Lcom/android/server/ipm/ml/DecisionTree$Node;->label:D

    return-wide v2
.end method

.method private splitByAttribute([II)Lcom/android/server/ipm/ml/DecisionTree$SplitSet;
    .registers 20
    .param p1, "set"    # [I
    .param p2, "attribute"    # I

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;-><init>(Lcom/android/server/ipm/ml/DecisionTree;)V

    .line 206
    .local v3, "result":Lcom/android/server/ipm/ml/DecisionTree$SplitSet;
    iput v2, v3, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->splitAttr:I

    .line 219
    const/4 v4, 0x0

    .line 220
    .local v4, "featureVlueNum":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v5, "attrCounter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;>;"
    array-length v6, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_16
    if-ge v8, v6, :cond_58

    aget v9, v1, v8

    .line 222
    .local v9, "item":I
    iget-object v10, v0, Lcom/android/server/ipm/ml/DecisionTree;->features:[[D

    aget-object v10, v10, v9

    aget-wide v10, v10, v2

    .line 223
    .local v10, "feature":D
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x1

    if-eqz v12, :cond_42

    .line 224
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;

    .line 225
    .local v12, "tmpCounter":Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;
    iget v14, v12, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;->count:I

    add-int/2addr v14, v13

    iput v14, v12, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;->count:I

    .line 226
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v5, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v12    # "tmpCounter":Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;
    goto :goto_55

    .line 228
    :cond_42
    new-instance v12, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;

    invoke-direct {v12, v0}, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;-><init>(Lcom/android/server/ipm/ml/DecisionTree;)V

    .line 229
    .restart local v12    # "tmpCounter":Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;
    add-int/lit8 v14, v4, 0x1

    .end local v4    # "featureVlueNum":I
    .local v14, "featureVlueNum":I
    iput v4, v12, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;->valueID:I

    .line 230
    iput v13, v12, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;->count:I

    .line 231
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v5, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v14

    .line 221
    .end local v9    # "item":I
    .end local v10    # "feature":D
    .end local v12    # "tmpCounter":Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;
    .end local v14    # "featureVlueNum":I
    .restart local v4    # "featureVlueNum":I
    :goto_55
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 236
    :cond_58
    new-array v6, v4, [D

    iput-object v6, v3, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->splitPoints:[D

    .line 237
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 240
    .local v6, "attrIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Double;>;"
    :goto_64
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "ML-DecisionTree"

    if-eqz v8, :cond_aa

    .line 241
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 242
    .local v10, "key":D
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;

    .line 245
    .local v8, "tmpCounter":Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;
    iget-object v12, v3, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->splitPoints:[D

    iget v13, v8, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;->valueID:I

    aput-wide v10, v12, v13

    .line 247
    iget-boolean v12, v0, Lcom/android/server/ipm/ml/DecisionTree;->DEBUG:Z

    if-eqz v12, :cond_a9

    .line 248
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "splitPoint/featureID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;->valueID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v8    # "tmpCounter":Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;
    .end local v10    # "key":D
    :cond_a9
    goto :goto_64

    .line 251
    :cond_aa
    iget-boolean v8, v0, Lcom/android/server/ipm/ml/DecisionTree;->DEBUG:Z

    if-eqz v8, :cond_b3

    .line 252
    const-string v8, "---------------------------------------------------------"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_b3
    new-array v8, v4, [[I

    iput-object v8, v3, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->instanceSets:[[I

    .line 257
    new-array v8, v4, [I

    .line 258
    .local v8, "featureValueCounter":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_ba
    if-ge v10, v4, :cond_c1

    .line 259
    aput v7, v8, v10

    .line 258
    add-int/lit8 v10, v10, 0x1

    goto :goto_ba

    .line 262
    .end local v10    # "i":I
    :cond_c1
    array-length v10, v1

    :goto_c2
    if-ge v7, v10, :cond_119

    aget v11, v1, v7

    .line 263
    .local v11, "item":I
    iget-object v12, v0, Lcom/android/server/ipm/ml/DecisionTree;->features:[[D

    aget-object v12, v12, v11

    aget-wide v12, v12, v2

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;

    .line 264
    .restart local v12    # "tmpCounter":Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;
    iget v13, v12, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;->valueID:I

    .line 270
    .local v13, "index":I
    iget-object v14, v3, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->instanceSets:[[I

    aget-object v14, v14, v13

    if-nez v14, :cond_10a

    .line 271
    iget-object v14, v3, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->instanceSets:[[I

    iget v15, v12, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;->count:I

    new-array v15, v15, [I

    aput-object v15, v14, v13

    .line 273
    iget-boolean v14, v0, Lcom/android/server/ipm/ml/DecisionTree;->DEBUG:Z

    if-eqz v14, :cond_10a

    .line 274
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "create sub instaces set: num =  : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v12, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;->count:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " index: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v12, Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;->valueID:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_10a
    iget-object v14, v3, Lcom/android/server/ipm/ml/DecisionTree$SplitSet;->instanceSets:[[I

    aget-object v14, v14, v13

    aget v15, v8, v13

    add-int/lit8 v16, v15, 0x1

    aput v16, v8, v13

    aput v11, v14, v15

    .line 262
    .end local v11    # "item":I
    .end local v12    # "tmpCounter":Lcom/android/server/ipm/ml/DecisionTree$SubFeatureCounter;
    .end local v13    # "index":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_c2

    .line 281
    :cond_119
    return-object v3
.end method


# virtual methods
.method public predict([D)D
    .registers 7
    .param p1, "features"    # [D

    .line 491
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 493
    .local v0, "ret":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_17

    .line 494
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 495
    iget-object v3, p0, Lcom/android/server/ipm/ml/DecisionTree;->defaultForMissingFeature:[D

    aget-wide v3, v3, v2

    aput-wide v3, p1, v2

    .line 493
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 500
    .end local v2    # "i":I
    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/android/server/ipm/ml/DecisionTree;->root:Lcom/android/server/ipm/ml/DecisionTree$Node;

    invoke-direct {p0, p1, v2}, Lcom/android/server/ipm/ml/DecisionTree;->predictByDecisionTree([DLcom/android/server/ipm/ml/DecisionTree$Node;)D

    move-result-wide v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_1f

    move-wide v0, v2

    .line 504
    goto :goto_2b

    .line 501
    :catch_1f
    move-exception v2

    .line 502
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ML-DecisionTree"

    const-string/jumbo v4, "predict-predictByDecisionTree error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2b
    return-wide v0
.end method

.method public train(I[[D[D)V
    .registers 9
    .param p1, "inFeatureNum"    # I
    .param p2, "inFeatures"    # [[D
    .param p3, "inLabels"    # [D

    .line 453
    iput-object p2, p0, Lcom/android/server/ipm/ml/DecisionTree;->features:[[D

    .line 454
    iput-object p3, p0, Lcom/android/server/ipm/ml/DecisionTree;->labels:[D

    .line 455
    iput p1, p0, Lcom/android/server/ipm/ml/DecisionTree;->featureNum:I

    .line 459
    array-length v0, p2

    new-array v0, v0, [I

    .line 460
    .local v0, "featureSet":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/ipm/ml/DecisionTree;->features:[[D

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 461
    aput v1, v0, v1

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 464
    .end local v1    # "i":I
    :cond_14
    const/4 v1, 0x0

    aget-object v1, v2, v1

    array-length v1, v1

    new-array v1, v1, [I

    .line 465
    .local v1, "attrSet":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    array-length v3, v1

    if-ge v2, v3, :cond_23

    .line 466
    aput v2, v1, v2

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 469
    .end local v2    # "i":I
    :cond_23
    iget-boolean v2, p0, Lcom/android/server/ipm/ml/DecisionTree;->DEBUG:Z

    const-string v3, "ML-DecisionTree"

    if-eqz v2, :cond_41

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "items = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/ipm/ml/DecisionTree;->labels:[D

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_41
    invoke-direct {p0}, Lcom/android/server/ipm/ml/DecisionTree;->fillMissingFeature()[D

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ipm/ml/DecisionTree;->defaultForMissingFeature:[D

    .line 474
    iget-boolean v2, p0, Lcom/android/server/ipm/ml/DecisionTree;->DEBUG:Z

    if-eqz v2, :cond_59

    .line 475
    const-string v2, "Default values:"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v2, p0, Lcom/android/server/ipm/ml/DecisionTree;->defaultForMissingFeature:[D

    invoke-static {v2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_59
    :try_start_59
    invoke-direct {p0, v0, v1}, Lcom/android/server/ipm/ml/DecisionTree;->buildDecisionTree([I[I)Lcom/android/server/ipm/ml/DecisionTree$Node;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ipm/ml/DecisionTree;->root:Lcom/android/server/ipm/ml/DecisionTree$Node;

    .line 481
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ipm/ml/DecisionTree;->features:[[D

    .line 482
    iput-object v2, p0, Lcom/android/server/ipm/ml/DecisionTree;->labels:[D
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_64} :catch_65

    .line 486
    goto :goto_6f

    .line 483
    :catch_65
    move-exception v2

    .line 484
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "train-buildDecisionTree error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6f
    return-void
.end method
