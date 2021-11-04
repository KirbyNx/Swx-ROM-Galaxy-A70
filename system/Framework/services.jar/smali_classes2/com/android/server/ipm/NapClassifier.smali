.class Lcom/android/server/ipm/NapClassifier;
.super Ljava/lang/Object;
.source "NapClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/NapClassifier$Data;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field static final FEATURE_NUM:I = 0x8

.field private static final NOTFOUND_STATE:I = 0x2

.field private static final READY_STATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-NapClassifier"

.field private static final TRAIN_STATE:I = 0x1

.field private static ready:I


# instance fields
.field public mClassifier:Lcom/android/server/ipm/ml/RandomForest;

.field public mStructure:Lcom/android/server/ipm/NapDataStructure;

.field private mSummary:Lcom/android/server/ipm/NapSummary;

.field public version:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/server/ipm/ml/RandomForest;

    invoke-direct {v0}, Lcom/android/server/ipm/ml/RandomForest;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/NapClassifier;->mClassifier:Lcom/android/server/ipm/ml/RandomForest;

    .line 41
    new-instance v0, Lcom/android/server/ipm/NapDataStructure;

    invoke-direct {v0}, Lcom/android/server/ipm/NapDataStructure;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    .line 42
    const/4 v0, 0x2

    sput v0, Lcom/android/server/ipm/NapClassifier;->ready:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ipm/NapClassifier;->mSummary:Lcom/android/server/ipm/NapSummary;

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "classifier"    # Ljava/lang/String;
    .param p2, "structure"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    .line 49
    :try_start_7
    invoke-static {p1}, Lcom/android/server/ipm/NapClassifier;->loadClassifier(Ljava/lang/String;)Lcom/android/server/ipm/ml/RandomForest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/NapClassifier;->mClassifier:Lcom/android/server/ipm/ml/RandomForest;

    .line 50
    invoke-static {p2}, Lcom/android/server/ipm/NapClassifier;->loadDataStructure(Ljava/lang/String;)Lcom/android/server/ipm/NapDataStructure;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ipm/NapClassifier;->ready:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    .line 58
    goto :goto_35

    .line 52
    :catch_17
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PkgPredictorService-NapClassifier"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    new-instance v1, Lcom/android/server/ipm/ml/RandomForest;

    invoke-direct {v1}, Lcom/android/server/ipm/ml/RandomForest;-><init>()V

    iput-object v1, p0, Lcom/android/server/ipm/NapClassifier;->mClassifier:Lcom/android/server/ipm/ml/RandomForest;

    .line 56
    new-instance v1, Lcom/android/server/ipm/NapDataStructure;

    invoke-direct {v1}, Lcom/android/server/ipm/NapDataStructure;-><init>()V

    iput-object v1, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    .line 57
    const/4 v1, 0x2

    sput v1, Lcom/android/server/ipm/NapClassifier;->ready:I

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ipm/NapClassifier;->mSummary:Lcom/android/server/ipm/NapSummary;

    .line 60
    return-void
.end method

.method private checkReady()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    sget v0, Lcom/android/server/ipm/NapClassifier;->ready:I

    if-eqz v0, :cond_19

    .line 266
    const-string v1, ""

    .line 267
    .local v1, "err":Ljava/lang/String;
    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    .line 269
    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 270
    const-string/jumbo v1, "the classifier is training... wait..."

    goto :goto_13

    .line 268
    :cond_10
    const-string/jumbo v1, "no classifier found..."

    .line 271
    :cond_13
    :goto_13
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    .end local v1    # "err":Ljava/lang/String;
    :cond_19
    return-void
.end method

.method private getDataset(JI)Lcom/android/server/ipm/NapClassifier$Data;
    .registers 9
    .param p1, "interval"    # J
    .param p3, "limit"    # I

    .line 246
    new-instance v0, Lcom/android/server/ipm/NapDataProcessor;

    iget-object v1, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    invoke-direct {v0, v1}, Lcom/android/server/ipm/NapDataProcessor;-><init>(Lcom/android/server/ipm/NapDataStructure;)V

    .line 248
    .local v0, "dp":Lcom/android/server/ipm/NapDataProcessor;
    iget-object v1, p0, Lcom/android/server/ipm/NapClassifier;->mSummary:Lcom/android/server/ipm/NapSummary;

    if-eqz v1, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/ipm/NapSummary;->dataProcessStartTime:J

    .line 250
    :cond_11
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/ipm/NapDataProcessor;->load(IJI)V

    .line 252
    iget-object v2, p0, Lcom/android/server/ipm/NapClassifier;->mSummary:Lcom/android/server/ipm/NapSummary;

    if-eqz v2, :cond_20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/ipm/NapSummary;->dataProcessEndTime:J

    .line 254
    :cond_20
    new-instance v2, Lcom/android/server/ipm/NapClassifier$Data;

    invoke-direct {v2, p0}, Lcom/android/server/ipm/NapClassifier$Data;-><init>(Lcom/android/server/ipm/NapClassifier;)V

    .line 255
    .local v2, "data":Lcom/android/server/ipm/NapClassifier$Data;
    iput v1, v2, Lcom/android/server/ipm/NapClassifier$Data;->featureNum:I

    .line 256
    iget-object v1, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    invoke-virtual {v1}, Lcom/android/server/ipm/NapDataStructure;->getClassValsNum()I

    move-result v1

    iput v1, v2, Lcom/android/server/ipm/NapClassifier$Data;->itemNum:I

    .line 257
    invoke-virtual {v0}, Lcom/android/server/ipm/NapDataProcessor;->getFeatures()[[D

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/ipm/NapClassifier$Data;->features:[[D

    .line 258
    invoke-virtual {v0}, Lcom/android/server/ipm/NapDataProcessor;->getLabels()[D

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/ipm/NapClassifier$Data;->labels:[D

    .line 259
    iget-object v1, p0, Lcom/android/server/ipm/NapClassifier;->mSummary:Lcom/android/server/ipm/NapSummary;

    invoke-virtual {v0}, Lcom/android/server/ipm/NapDataProcessor;->getReadDbItems()I

    move-result v3

    sget v4, Lcom/android/server/ipm/PkgPredictorService;->TRAINNING_LIMIT_AMOUNT:I

    if-ge v3, v4, :cond_4a

    .line 260
    invoke-virtual {v0}, Lcom/android/server/ipm/NapDataProcessor;->getReadDbItems()I

    move-result v3

    goto :goto_4c

    :cond_4a
    sget v3, Lcom/android/server/ipm/PkgPredictorService;->TRAINNING_LIMIT_AMOUNT:I

    :goto_4c
    iput v3, v1, Lcom/android/server/ipm/NapSummary;->training_sets:I

    .line 261
    return-object v2
.end method

.method protected static hasPersist(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "classifier"    # Ljava/lang/String;
    .param p1, "structure"    # Ljava/lang/String;

    .line 324
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "classifierfs":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_28

    .line 328
    :cond_13
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v1, "structurefs":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_27

    .line 331
    :cond_25
    const/4 v2, 0x1

    return v2

    .line 330
    :cond_27
    :goto_27
    return v2

    .line 326
    .end local v1    # "structurefs":Ljava/io/File;
    :cond_28
    :goto_28
    return v2
.end method

.method protected static loadClassifier(Ljava/lang/String;)Lcom/android/server/ipm/ml/RandomForest;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "classifierfs":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "ois":Ljava/io/ObjectInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 283
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/ml/RandomForest;

    .line 284
    .local v2, "classifier":Lcom/android/server/ipm/ml/RandomForest;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 285
    return-object v2

    .line 287
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .end local v2    # "classifier":Lcom/android/server/ipm/ml/RandomForest;
    :cond_21
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no classifier is found at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static loadDataStructure(Ljava/lang/String;)Lcom/android/server/ipm/NapDataStructure;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "structurefs":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "ois":Ljava/io/ObjectInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 299
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/NapDataStructure;

    .line 300
    .local v2, "structure":Lcom/android/server/ipm/NapDataStructure;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 301
    return-object v2

    .line 303
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .end local v2    # "structure":Lcom/android/server/ipm/NapDataStructure;
    :cond_21
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no data structure is found at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static persist(Lcom/android/server/ipm/NapClassifier;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "classifier"    # Lcom/android/server/ipm/NapClassifier;
    .param p1, "classifierfs"    # Ljava/lang/String;
    .param p2, "structurefs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "oos":Ljava/io/ObjectOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 312
    iget-object v1, p0, Lcom/android/server/ipm/NapClassifier;->mClassifier:Lcom/android/server/ipm/ml/RandomForest;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 313
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 314
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 316
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 317
    iget-object v1, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 318
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 319
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 320
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 236
    const-string v0, "data structure:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    invoke-virtual {v0}, Lcom/android/server/ipm/NapDataStructure;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tree number of random forest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/NapClassifier;->mClassifier:Lcom/android/server/ipm/ml/RandomForest;

    invoke-virtual {v2}, Lcom/android/server/ipm/ml/RandomForest;->getTreeNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 242
    return-void
.end method

.method protected getTrainSummary()Lcom/android/server/ipm/NapSummary;
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/android/server/ipm/NapClassifier;->mSummary:Lcom/android/server/ipm/NapSummary;

    return-object v0
.end method

.method protected predict(Lcom/android/server/ipm/Record;)Ljava/lang/String;
    .registers 10
    .param p1, "rcd"    # Lcom/android/server/ipm/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/android/server/ipm/NapClassifier;->checkReady()V

    .line 100
    sget-boolean v0, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RF predict version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/NapClassifier;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PkgPredictorService-NapClassifier"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1f
    const/16 v0, 0x8

    new-array v0, v0, [D

    .line 103
    .local v0, "features":[D
    iget v1, p1, Lcom/android/server/ipm/Record;->hourOfDay:I

    int-to-double v1, v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 104
    iget v1, p1, Lcom/android/server/ipm/Record;->dayOfWeek:I

    int-to-double v1, v1

    const/4 v4, 0x1

    aput-wide v1, v0, v4

    .line 105
    iget-object v1, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v2, p1, Lcom/android/server/ipm/Record;->userId:I

    iget-object v5, p1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v1, v2, v5, v4}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v1

    int-to-double v1, v1

    const/4 v5, 0x2

    aput-wide v1, v0, v5

    .line 107
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v6, p1, Lcom/android/server/ipm/Record;->userId:I

    iget-object v7, p1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v2, v6, v7, v4}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v2

    int-to-double v6, v2

    aput-wide v6, v0, v1

    .line 109
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v6, p1, Lcom/android/server/ipm/Record;->userId:I

    iget-object v7, p1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v2, v6, v7, v4}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v2

    int-to-double v6, v2

    aput-wide v6, v0, v1

    .line 111
    const/4 v1, 0x5

    iget v2, p1, Lcom/android/server/ipm/Record;->screenOrientation:I

    int-to-double v6, v2

    aput-wide v6, v0, v1

    .line 112
    const/4 v1, 0x6

    iget v2, p1, Lcom/android/server/ipm/Record;->wifiStatus:I

    int-to-double v6, v2

    aput-wide v6, v0, v1

    .line 113
    const/4 v1, 0x7

    iget v2, p1, Lcom/android/server/ipm/Record;->btStatus:I

    int-to-double v6, v2

    aput-wide v6, v0, v1

    .line 114
    iget-object v1, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget-object v2, p0, Lcom/android/server/ipm/NapClassifier;->mClassifier:Lcom/android/server/ipm/ml/RandomForest;

    invoke-virtual {v2, v0}, Lcom/android/server/ipm/ml/RandomForest;->predict([D)D

    move-result-wide v6

    double-to-int v2, v6

    invoke-virtual {v1, v2, v5}, Lcom/android/server/ipm/NapDataStructure;->Nominal2String(II)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "prediction":Ljava/lang/String;
    const-string v2, "_&_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "temp":[Ljava/lang/String;
    array-length v6, v2

    if-ne v6, v5, :cond_9c

    iget-object v5, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v2, v4

    invoke-virtual {v5, v3, v4}, Lcom/android/server/ipm/NapDataStructure;->checkUninstalled(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 118
    return-object v1

    .line 120
    :cond_9c
    const/4 v3, 0x0

    return-object v3
.end method

.method protected predict3apps(Lcom/android/server/ipm/Record;)Ljava/util/List;
    .registers 16
    .param p1, "rcd"    # Lcom/android/server/ipm/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ipm/Record;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/android/server/ipm/NapClassifier;->checkReady()V

    .line 126
    sget-boolean v0, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    const-string v1, "PkgPredictorService-NapClassifier"

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RF predict version:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/ipm/NapClassifier;->version:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1f
    const/16 v0, 0x8

    new-array v0, v0, [D

    .line 129
    .local v0, "features":[D
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v3, p1, Lcom/android/server/ipm/Record;->hourOfDay:I

    int-to-double v3, v3

    const/4 v5, 0x0

    aput-wide v3, v0, v5

    .line 131
    iget v3, p1, Lcom/android/server/ipm/Record;->dayOfWeek:I

    int-to-double v3, v3

    const/4 v6, 0x1

    aput-wide v3, v0, v6

    .line 132
    iget-object v3, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v4, p1, Lcom/android/server/ipm/Record;->userId:I

    iget-object v7, p1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v3, v4, v7, v6}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v3

    int-to-double v3, v3

    const/4 v7, 0x2

    aput-wide v3, v0, v7

    .line 134
    iget-object v3, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v4, p1, Lcom/android/server/ipm/Record;->userId:I

    iget-object v8, p1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v3, v4, v8, v6}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v3

    int-to-double v3, v3

    const/4 v8, 0x3

    aput-wide v3, v0, v8

    .line 136
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v9, p1, Lcom/android/server/ipm/Record;->userId:I

    iget-object v10, p1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v4, v9, v10, v6}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v4

    int-to-double v9, v4

    aput-wide v9, v0, v3

    .line 138
    const/4 v3, 0x5

    iget v4, p1, Lcom/android/server/ipm/Record;->screenOrientation:I

    int-to-double v9, v4

    aput-wide v9, v0, v3

    .line 139
    const/4 v3, 0x6

    iget v4, p1, Lcom/android/server/ipm/Record;->wifiStatus:I

    int-to-double v9, v4

    aput-wide v9, v0, v3

    .line 140
    const/4 v3, 0x7

    iget v4, p1, Lcom/android/server/ipm/Record;->btStatus:I

    int-to-double v9, v4

    aput-wide v9, v0, v3

    .line 142
    iget-object v3, p0, Lcom/android/server/ipm/NapClassifier;->mClassifier:Lcom/android/server/ipm/ml/RandomForest;

    invoke-virtual {v3, v0}, Lcom/android/server/ipm/ml/RandomForest;->predict3([D)[D

    move-result-object v3

    .line 143
    .local v3, "p":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7d
    if-ge v4, v8, :cond_c4

    .line 144
    iget-object v9, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    aget-wide v10, v3, v4

    double-to-int v10, v10

    invoke-virtual {v9, v10, v7}, Lcom/android/server/ipm/NapDataStructure;->Nominal2String(II)Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, "pkg":Ljava/lang/String;
    const-string v10, "_&_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, "temp":[Ljava/lang/String;
    array-length v11, v10

    if-ne v11, v7, :cond_a9

    iget-object v11, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    aget-object v12, v10, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v13, v10, v6

    invoke-virtual {v11, v12, v13}, Lcom/android/server/ipm/NapDataStructure;->checkUninstalled(ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a9

    .line 147
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    .line 149
    :cond_a9
    sget-boolean v11, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    if-eqz v11, :cond_c1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " uninstalled"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v10    # "temp":[Ljava/lang/String;
    :cond_c1
    :goto_c1
    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    .line 152
    .end local v4    # "i":I
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_c4
    sget-boolean v4, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    if-eqz v4, :cond_fd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "predict result: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v3, v5

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v3, v6

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v3, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_fd
    return-object v2
.end method

.method protected predict5apps(Lcom/android/server/ipm/Record;)Ljava/util/List;
    .registers 19
    .param p1, "rcd"    # Lcom/android/server/ipm/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ipm/Record;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ipm/NapClassifier;->checkReady()V

    .line 159
    sget-boolean v2, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    const-string v3, "PkgPredictorService-NapClassifier"

    if-eqz v2, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RF predict version:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/ipm/NapClassifier;->version:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_23
    const/16 v2, 0x8

    new-array v2, v2, [D

    .line 162
    .local v2, "features":[D
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v4, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v5, v1, Lcom/android/server/ipm/Record;->hourOfDay:I

    int-to-double v5, v5

    const/4 v7, 0x0

    aput-wide v5, v2, v7

    .line 164
    iget v5, v1, Lcom/android/server/ipm/Record;->dayOfWeek:I

    int-to-double v5, v5

    const/4 v8, 0x1

    aput-wide v5, v2, v8

    .line 165
    iget-object v5, v0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v6, v1, Lcom/android/server/ipm/Record;->userId:I

    iget-object v9, v1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v5, v6, v9, v8}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v5

    int-to-double v5, v5

    const/4 v9, 0x2

    aput-wide v5, v2, v9

    .line 167
    iget-object v5, v0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v6, v1, Lcom/android/server/ipm/Record;->userId:I

    iget-object v10, v1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-virtual {v5, v6, v10, v8}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v5

    int-to-double v5, v5

    const/4 v10, 0x3

    aput-wide v5, v2, v10

    .line 169
    iget-object v5, v0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v6, v1, Lcom/android/server/ipm/Record;->userId:I

    iget-object v11, v1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v11, v11, v9

    invoke-virtual {v5, v6, v11, v8}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v5

    int-to-double v5, v5

    const/4 v11, 0x4

    aput-wide v5, v2, v11

    .line 171
    iget v5, v1, Lcom/android/server/ipm/Record;->screenOrientation:I

    int-to-double v5, v5

    const/4 v12, 0x5

    aput-wide v5, v2, v12

    .line 172
    const/4 v5, 0x6

    iget v6, v1, Lcom/android/server/ipm/Record;->wifiStatus:I

    int-to-double v13, v6

    aput-wide v13, v2, v5

    .line 173
    const/4 v5, 0x7

    iget v6, v1, Lcom/android/server/ipm/Record;->btStatus:I

    int-to-double v13, v6

    aput-wide v13, v2, v5

    .line 175
    iget-object v5, v0, Lcom/android/server/ipm/NapClassifier;->mClassifier:Lcom/android/server/ipm/ml/RandomForest;

    invoke-virtual {v5, v2}, Lcom/android/server/ipm/ml/RandomForest;->predict5([D)[D

    move-result-object v5

    .line 176
    .local v5, "p":[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_81
    if-ge v6, v12, :cond_d3

    .line 177
    aget-wide v13, v5, v6

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-gez v13, :cond_8c

    .line 178
    goto :goto_ce

    .line 180
    :cond_8c
    iget-object v13, v0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    aget-wide v14, v5, v6

    double-to-int v14, v14

    invoke-virtual {v13, v14, v9}, Lcom/android/server/ipm/NapDataStructure;->Nominal2String(II)Ljava/lang/String;

    move-result-object v13

    .line 181
    .local v13, "pkg":Ljava/lang/String;
    const-string v14, "_&_"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 182
    .local v14, "temp":[Ljava/lang/String;
    array-length v15, v14

    if-ne v15, v9, :cond_b6

    iget-object v15, v0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    aget-object v16, v14, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v11, v14, v8

    invoke-virtual {v15, v12, v11}, Lcom/android/server/ipm/NapDataStructure;->checkUninstalled(ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b6

    .line 183
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ce

    .line 185
    :cond_b6
    sget-boolean v11, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    if-eqz v11, :cond_ce

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " uninstalled"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "temp":[Ljava/lang/String;
    :cond_ce
    :goto_ce
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x5

    goto :goto_81

    .line 188
    .end local v6    # "i":I
    :cond_d3
    sget-boolean v6, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    if-eqz v6, :cond_11d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "predict result: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v5, v7

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v5, v8

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v5, v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v5, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    aget-wide v7, v5, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_11d
    return-object v4
.end method

.method protected predictNapps(Lcom/android/server/ipm/Record;I)Ljava/util/List;
    .registers 16
    .param p1, "rcd"    # Lcom/android/server/ipm/Record;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ipm/Record;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lcom/android/server/ipm/NapClassifier;->checkReady()V

    .line 195
    sget-boolean v0, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    const-string v1, "PkgPredictorService-NapClassifier"

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RF predict version:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/ipm/NapClassifier;->version:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1f
    const/16 v0, 0x8

    new-array v0, v0, [D

    .line 198
    .local v0, "features":[D
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v2, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v3, p1, Lcom/android/server/ipm/Record;->hourOfDay:I

    int-to-double v3, v3

    const/4 v5, 0x0

    aput-wide v3, v0, v5

    .line 200
    iget v3, p1, Lcom/android/server/ipm/Record;->dayOfWeek:I

    int-to-double v3, v3

    const/4 v6, 0x1

    aput-wide v3, v0, v6

    .line 201
    iget-object v3, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v4, p1, Lcom/android/server/ipm/Record;->userId:I

    iget-object v7, p1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v3, v4, v7, v6}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v3

    int-to-double v3, v3

    const/4 v7, 0x2

    aput-wide v3, v0, v7

    .line 203
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v8, p1, Lcom/android/server/ipm/Record;->userId:I

    iget-object v9, p1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v4, v8, v9, v6}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v4

    int-to-double v8, v4

    aput-wide v8, v0, v3

    .line 205
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v8, p1, Lcom/android/server/ipm/Record;->userId:I

    iget-object v9, p1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v4, v8, v9, v6}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v4

    int-to-double v8, v4

    aput-wide v8, v0, v3

    .line 207
    const/4 v3, 0x5

    iget v4, p1, Lcom/android/server/ipm/Record;->screenOrientation:I

    int-to-double v8, v4

    aput-wide v8, v0, v3

    .line 208
    const/4 v3, 0x6

    iget v4, p1, Lcom/android/server/ipm/Record;->wifiStatus:I

    int-to-double v8, v4

    aput-wide v8, v0, v3

    .line 209
    const/4 v3, 0x7

    iget v4, p1, Lcom/android/server/ipm/Record;->btStatus:I

    int-to-double v8, v4

    aput-wide v8, v0, v3

    .line 211
    iget-object v3, p0, Lcom/android/server/ipm/NapClassifier;->mClassifier:Lcom/android/server/ipm/ml/RandomForest;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/ipm/ml/RandomForest;->predictN([DI)[D

    move-result-object v3

    .line 212
    .local v3, "p":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7d
    if-ge v4, p2, :cond_cd

    .line 213
    aget-wide v8, v3, v4

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_88

    .line 214
    goto :goto_ca

    .line 216
    :cond_88
    iget-object v8, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    aget-wide v9, v3, v4

    double-to-int v9, v9

    invoke-virtual {v8, v9, v7}, Lcom/android/server/ipm/NapDataStructure;->Nominal2String(II)Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, "pkg":Ljava/lang/String;
    const-string v9, "_&_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 218
    .local v9, "temp":[Ljava/lang/String;
    array-length v10, v9

    if-ne v10, v7, :cond_b2

    iget-object v10, p0, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    aget-object v11, v9, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v12, v9, v6

    invoke-virtual {v10, v11, v12}, Lcom/android/server/ipm/NapDataStructure;->checkUninstalled(ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b2

    .line 219
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ca

    .line 221
    :cond_b2
    sget-boolean v10, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    if-eqz v10, :cond_ca

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " uninstalled"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "temp":[Ljava/lang/String;
    :cond_ca
    :goto_ca
    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    .line 224
    .end local v4    # "i":I
    :cond_cd
    sget-boolean v4, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    if-eqz v4, :cond_10a

    .line 225
    const-string v4, "Predict result: "

    .line 226
    .local v4, "logInfo":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d4
    if-ge v5, p2, :cond_ef

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v3, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_d4

    .line 229
    .end local v5    # "i":I
    :cond_ef
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v4    # "logInfo":Ljava/lang/String;
    :cond_10a
    return-object v2
.end method

.method protected train()Z
    .registers 12

    .line 64
    const-string v0, "PkgPredictorService-NapClassifier"

    new-instance v1, Lcom/android/server/ipm/NapSummary;

    invoke-direct {v1}, Lcom/android/server/ipm/NapSummary;-><init>()V

    iput-object v1, p0, Lcom/android/server/ipm/NapClassifier;->mSummary:Lcom/android/server/ipm/NapSummary;

    .line 65
    sget v1, Lcom/android/server/ipm/NapClassifier;->ready:I

    .line 67
    .local v1, "state":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_d
    sput v2, Lcom/android/server/ipm/NapClassifier;->ready:I

    .line 68
    sget-boolean v4, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    if-eqz v4, :cond_19

    const-string/jumbo v4, "start training..."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_19
    const-wide v4, 0x39ef8b000L

    sget v6, Lcom/android/server/ipm/PkgPredictorService;->TRAINNING_LIMIT_AMOUNT:I

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/ipm/NapClassifier;->getDataset(JI)Lcom/android/server/ipm/NapClassifier$Data;

    move-result-object v4

    .line 71
    .local v4, "data":Lcom/android/server/ipm/NapClassifier$Data;
    iget v5, v4, Lcom/android/server/ipm/NapClassifier$Data;->itemNum:I

    if-lez v5, :cond_61

    iget-object v5, v4, Lcom/android/server/ipm/NapClassifier$Data;->features:[[D

    array-length v5, v5

    if-lez v5, :cond_61

    .line 72
    const-string v5, "PkgPredictorService-NapClassifier- start training"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 75
    iget-object v5, p0, Lcom/android/server/ipm/NapClassifier;->mClassifier:Lcom/android/server/ipm/ml/RandomForest;

    iget v8, v4, Lcom/android/server/ipm/NapClassifier$Data;->featureNum:I

    iget-object v9, v4, Lcom/android/server/ipm/NapClassifier$Data;->features:[[D

    iget-object v10, v4, Lcom/android/server/ipm/NapClassifier$Data;->labels:[D

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/ipm/ml/RandomForest;->train(I[[D[D)Lcom/android/server/ipm/NapSummary;

    move-result-object v5

    .line 76
    .local v5, "tempSummary":Lcom/android/server/ipm/NapSummary;
    iget-object v8, p0, Lcom/android/server/ipm/NapClassifier;->mSummary:Lcom/android/server/ipm/NapSummary;

    iget v9, v5, Lcom/android/server/ipm/NapSummary;->treeNumAdjust:I

    iput v9, v8, Lcom/android/server/ipm/NapSummary;->treeNumAdjust:I

    .line 77
    iget-object v8, p0, Lcom/android/server/ipm/NapClassifier;->mSummary:Lcom/android/server/ipm/NapSummary;

    iget-wide v9, v5, Lcom/android/server/ipm/NapSummary;->treeNumAdjustStartTime:J

    iput-wide v9, v8, Lcom/android/server/ipm/NapSummary;->treeNumAdjustStartTime:J

    .line 78
    iget-object v8, p0, Lcom/android/server/ipm/NapClassifier;->mSummary:Lcom/android/server/ipm/NapSummary;

    iget-wide v9, v5, Lcom/android/server/ipm/NapSummary;->treeNumAdjustEndTime:J

    iput-wide v9, v8, Lcom/android/server/ipm/NapSummary;->treeNumAdjustEndTime:J

    .line 80
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 81
    sget-boolean v6, Lcom/android/server/ipm/NapClassifier;->DEBUG:Z

    if-eqz v6, :cond_5e

    const-string v6, "finish training."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_5e
    sput v3, Lcom/android/server/ipm/NapClassifier;->ready:I

    .line 83
    return v2

    .line 85
    .end local v5    # "tempSummary":Lcom/android/server/ipm/NapSummary;
    :cond_61
    const-string/jumbo v2, "stop training... no enough data in db."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sput v1, Lcom/android/server/ipm/NapClassifier;->ready:I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_69} :catch_6a

    .line 87
    return v3

    .line 89
    .end local v4    # "data":Lcom/android/server/ipm/NapClassifier$Data;
    :catch_6a
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "train err: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sput v1, Lcom/android/server/ipm/NapClassifier;->ready:I

    .line 93
    return v3
.end method
