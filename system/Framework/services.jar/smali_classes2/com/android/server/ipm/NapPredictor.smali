.class public Lcom/android/server/ipm/NapPredictor;
.super Ljava/lang/Object;
.source "NapPredictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/NapPredictor$PkgComparator;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-NapPredictor"

.field public static final classifierfs:Ljava/lang/String; = "/data/system/predictor-model"

.field public static final structurefs:Ljava/lang/String; = "/data/system/predictor-structure"


# instance fields
.field private mClassifier:Lcom/android/server/ipm/NapClassifier;

.field private mContext:Landroid/content/Context;

.field private mSummary:Lcom/android/server/ipm/NapSummary;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ipm/NapPredictor;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    .line 36
    iput-object p1, p0, Lcom/android/server/ipm/NapPredictor;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lcom/android/server/ipm/NapPredictor;->init()V

    .line 38
    invoke-static {}, Lcom/android/server/ipm/NapSummary;->getDefault()Lcom/android/server/ipm/NapSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/NapPredictor;->mSummary:Lcom/android/server/ipm/NapSummary;

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/ipm/NapPredictor;Lcom/android/server/ipm/NapClassifier;)Lcom/android/server/ipm/NapClassifier;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/NapPredictor;
    .param p1, "x1"    # Lcom/android/server/ipm/NapClassifier;

    .line 25
    iput-object p1, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    return-object p1
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 210
    iget-object v0, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    if-nez v0, :cond_5

    .line 211
    return-void

    .line 213
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/ipm/NapClassifier;->dump(Ljava/io/PrintWriter;)V

    .line 215
    new-instance v0, Lcom/android/server/ipm/NapSummary;

    iget-object v1, p0, Lcom/android/server/ipm/NapPredictor;->mSummary:Lcom/android/server/ipm/NapSummary;

    invoke-direct {v0, v1}, Lcom/android/server/ipm/NapSummary;-><init>(Lcom/android/server/ipm/NapSummary;)V

    .line 216
    .local v0, "s":Lcom/android/server/ipm/NapSummary;
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v1

    .line 217
    .local v1, "db":Lcom/android/server/ipm/DBManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/ipm/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " where build_time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ipm/NapPredictor;->mSummary:Lcom/android/server/ipm/NapSummary;

    iget-wide v3, v3, Lcom/android/server/ipm/NapSummary;->rf_build_time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "sql":Ljava/lang/String;
    const/4 v3, 0x0

    .line 221
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_35
    invoke-virtual {v1, v2, v4}, Lcom/android/server/ipm/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 222
    if-eqz v3, :cond_62

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 223
    iget v4, v0, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    const-string/jumbo v5, "total_num"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    .line 224
    iget v4, v0, Lcom/android/server/ipm/NapSummary;->predict_right:I

    const-string/jumbo v5, "right_num"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/ipm/NapSummary;->predict_right:I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_62} :catch_6b
    .catchall {:try_start_35 .. :try_end_62} :catchall_68

    .line 229
    :cond_62
    if-eqz v3, :cond_72

    .line 230
    :goto_64
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_72

    .line 229
    :catchall_68
    move-exception v4

    goto/16 :goto_166

    .line 226
    :catch_6b
    move-exception v4

    .line 227
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6c
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_68

    .line 229
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_72

    .line 230
    goto :goto_64

    .line 233
    :cond_72
    :goto_72
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dump NAP model version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    iget-wide v5, v5, Lcom/android/server/ipm/NapClassifier;->version:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " summary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tbuildtime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/server/ipm/NapSummary;->rf_build_time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ttrainTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/ipm/NapSummary;->training_time:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "Ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ttrainSets : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/ipm/NapSummary;->training_sets:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tdataProcessTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/ipm/NapSummary;->dataProcessEndTime:J

    iget-wide v7, v0, Lcom/android/server/ipm/NapSummary;->dataProcessStartTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ttreeNumAdjustTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/ipm/NapSummary;->treeNumAdjustEndTime:J

    iget-wide v7, v0, Lcom/android/server/ipm/NapSummary;->treeNumAdjustStartTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ttreeNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/ipm/NapSummary;->treeNumAdjust:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tthis version predict total : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tthis version predict success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/ipm/NapSummary;->predict_right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const-string v4, "------------------------------"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 245
    return-void

    .line 229
    :goto_166
    if-eqz v3, :cond_16b

    .line 230
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_16b
    throw v4
.end method

.method public getSummary()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/server/ipm/NapPredictor;->mSummary:Lcom/android/server/ipm/NapSummary;

    if-eqz v0, :cond_9

    .line 204
    invoke-virtual {v0}, Lcom/android/server/ipm/NapSummary;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method protected init()V
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ipm/NapPredictor$1;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/NapPredictor$1;-><init>(Lcom/android/server/ipm/NapPredictor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 54
    return-void
.end method

.method protected predict(Lcom/android/server/ipm/Record;)Ljava/util/List;
    .registers 6
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

    .line 58
    const-string v0, "PkgPredictorService-NapPredictor"

    iget-object v1, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    .line 59
    return-object v2

    .line 63
    :cond_8
    :try_start_8
    sget-boolean v1, Lcom/android/server/ipm/NapPredictor;->DEBUG:Z

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start predicting...\n ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ipm/Record;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2a
    iget-object v1, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    invoke-virtual {v1, p1}, Lcom/android/server/ipm/NapClassifier;->predict3apps(Lcom/android/server/ipm/Record;)Ljava/util/List;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_30} :catch_31

    .line 65
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0

    .line 66
    .end local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_31
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/server/ipm/Record;->error:Ljava/lang/String;

    .line 68
    iget-object v3, p1, Lcom/android/server/ipm/Record;->error:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v2
.end method

.method protected predictWithHitRatio(Lcom/android/server/ipm/Record;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "rcd"    # Lcom/android/server/ipm/Record;
    .param p2, "currentPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ipm/Record;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    const-string v0, "PkgPredictorService-NapPredictor"

    iget-object v1, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    .line 95
    return-object v2

    .line 98
    :cond_8
    :try_start_8
    sget-boolean v1, Lcom/android/server/ipm/NapPredictor;->DEBUG:Z

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start predicting...\n ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ipm/Record;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2a
    iget-object v1, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    sget v3, Lcom/android/server/ipm/PkgPredictorService;->candidateNum:I

    invoke-virtual {v1, p1, v3}, Lcom/android/server/ipm/NapClassifier;->predictNapps(Lcom/android/server/ipm/Record;I)Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    invoke-static {}, Lcom/android/server/ipm/NapBigDataService;->getPkgAccuracyMap()Ljava/util/HashMap;

    move-result-object v3

    .line 105
    .local v3, "hitRatioMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    new-instance v4, Lcom/android/server/ipm/NapPredictor$PkgComparator;

    invoke-direct {v4, p0, v3}, Lcom/android/server/ipm/NapPredictor$PkgComparator;-><init>(Lcom/android/server/ipm/NapPredictor;Ljava/util/HashMap;)V

    .line 106
    .local v4, "pcomp":Lcom/android/server/ipm/NapPredictor$PkgComparator;
    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v5, "selectPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_47
    sget v7, Lcom/android/server/ipm/PkgPredictorService;->candidateNum:I

    if-ge v6, v7, :cond_83

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_83

    .line 109
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-boolean v7, Lcom/android/server/ipm/NapPredictor;->DEBUG:Z

    if-eqz v7, :cond_80

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get ratio top"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pkg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_80} :catch_84

    .line 108
    :cond_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 112
    .end local v6    # "i":I
    :cond_83
    return-object v5

    .line 114
    .end local v1    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "hitRatioMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v4    # "pcomp":Lcom/android/server/ipm/NapPredictor$PkgComparator;
    .end local v5    # "selectPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_84
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/server/ipm/Record;->error:Ljava/lang/String;

    .line 116
    iget-object v3, p1, Lcom/android/server/ipm/Record;->error:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v2
.end method

.method protected save()V
    .registers 5

    .line 162
    iget-object v0, p0, Lcom/android/server/ipm/NapPredictor;->mSummary:Lcom/android/server/ipm/NapSummary;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/NapPredictor;->mSummary:Lcom/android/server/ipm/NapSummary;

    invoke-static {v1}, Lcom/android/server/ipm/NapSummary;->save(Lcom/android/server/ipm/NapSummary;)V

    .line 164
    sget-boolean v1, Lcom/android/server/ipm/NapPredictor;->DEBUG:Z

    if-eqz v1, :cond_14

    const-string v1, "PkgPredictorService-NapPredictor"

    const-string/jumbo v2, "save summary successful."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_83

    .line 166
    iget-object v0, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    if-nez v0, :cond_1a

    .line 167
    return-void

    .line 170
    :cond_1a
    const/4 v0, 0x0

    .line 171
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 173
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1c
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/system/predictor-structure"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 174
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 175
    iget-object v2, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    iget-object v2, v2, Lcom/android/server/ipm/NapClassifier;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 177
    sget-boolean v2, Lcom/android/server/ipm/NapPredictor;->DEBUG:Z

    if-eqz v2, :cond_40

    const-string v2, "PkgPredictorService-NapPredictor"

    const-string/jumbo v3, "save data structure successful."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_40} :catch_5f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_40} :catch_50
    .catchall {:try_start_1c .. :try_end_40} :catchall_4e

    .line 184
    :cond_40
    nop

    .line 185
    :try_start_41
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 187
    nop

    .line 188
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_48} :catch_49

    .line 192
    :cond_48
    :goto_48
    goto :goto_6e

    .line 190
    :catch_49
    move-exception v2

    .line 191
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_6e

    .line 183
    :catchall_4e
    move-exception v2

    goto :goto_6f

    .line 180
    :catch_50
    move-exception v2

    .line 181
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_51
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    .line 184
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_59

    .line 185
    :try_start_56
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 187
    :cond_59
    if-eqz v0, :cond_48

    .line 188
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5e} :catch_49

    goto :goto_48

    .line 178
    :catch_5f
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_60
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_4e

    .line 184
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_68

    .line 185
    :try_start_65
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 187
    :cond_68
    if-eqz v0, :cond_48

    .line 188
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6d} :catch_49

    goto :goto_48

    .line 194
    :goto_6e
    return-void

    .line 184
    :goto_6f
    if-eqz v1, :cond_77

    .line 185
    :try_start_71
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_77

    .line 190
    :catch_75
    move-exception v3

    goto :goto_7d

    .line 187
    :cond_77
    :goto_77
    if-eqz v0, :cond_81

    .line 188
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7c} :catch_75

    goto :goto_81

    .line 191
    .local v3, "e":Ljava/io/IOException;
    :goto_7d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    .line 192
    .end local v3    # "e":Ljava/io/IOException;
    :cond_81
    :goto_81
    nop

    .line 193
    :goto_82
    throw v2

    .line 165
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_83
    move-exception v1

    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v1
.end method

.method protected trainModel()V
    .registers 9

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    .local v0, "trainStartTime":J
    iget-object v2, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    if-nez v2, :cond_9

    .line 125
    return-void

    .line 126
    :cond_9
    const-string v2, "PkgPredictorService-NapPredictor"

    const-string/jumbo v3, "start training... "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    invoke-virtual {v2}, Lcom/android/server/ipm/NapClassifier;->train()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 129
    iget-object v2, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    invoke-virtual {v2}, Lcom/android/server/ipm/NapClassifier;->getTrainSummary()Lcom/android/server/ipm/NapSummary;

    move-result-object v2

    .line 130
    .local v2, "newSummary":Lcom/android/server/ipm/NapSummary;
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/ipm/NapSummary;->predict_totals:I

    .line 131
    iput v3, v2, Lcom/android/server/ipm/NapSummary;->predict_right:I

    .line 132
    iput-wide v0, v2, Lcom/android/server/ipm/NapSummary;->rf_build_time:J

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iput-wide v3, v2, Lcom/android/server/ipm/NapSummary;->training_time:J

    .line 135
    iget-object v3, p0, Lcom/android/server/ipm/NapPredictor;->mSummary:Lcom/android/server/ipm/NapSummary;

    monitor-enter v3

    .line 136
    :try_start_30
    iget-object v4, p0, Lcom/android/server/ipm/NapPredictor;->mSummary:Lcom/android/server/ipm/NapSummary;

    invoke-static {v4}, Lcom/android/server/ipm/NapSummary;->save(Lcom/android/server/ipm/NapSummary;)V

    .line 137
    iget-object v4, p0, Lcom/android/server/ipm/NapPredictor;->mSummary:Lcom/android/server/ipm/NapSummary;

    invoke-virtual {v4, v2}, Lcom/android/server/ipm/NapSummary;->set(Lcom/android/server/ipm/NapSummary;)V

    .line 138
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_7b

    .line 140
    iget-object v3, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    iput-wide v0, v3, Lcom/android/server/ipm/NapClassifier;->version:J

    .line 143
    :try_start_3f
    const-string v3, "PkgPredictorService-NapPredictor- start persisting after traing"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/android/server/ipm/NapPredictor;->mClassifier:Lcom/android/server/ipm/NapClassifier;

    const-string v6, "/data/system/predictor-model"

    const-string v7, "/data/system/predictor-structure"

    invoke-static {v3, v6, v7}, Lcom/android/server/ipm/NapClassifier;->persist(Lcom/android/server/ipm/NapClassifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 147
    const-string v3, "PkgPredictorService-NapPredictor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish training... ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/ipm/NapPredictor;->mSummary:Lcom/android/server/ipm/NapSummary;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_6f} :catch_75
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_6f} :catch_70

    goto :goto_79

    .line 152
    :catch_70
    move-exception v3

    .line 154
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 149
    .end local v3    # "e":Ljava/io/IOException;
    :catch_75
    move-exception v3

    .line 151
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 155
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_79
    nop

    .line 156
    .end local v2    # "newSummary":Lcom/android/server/ipm/NapSummary;
    :goto_7a
    goto :goto_86

    .line 138
    .restart local v2    # "newSummary":Lcom/android/server/ipm/NapSummary;
    :catchall_7b
    move-exception v4

    :try_start_7c
    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v4

    .line 157
    .end local v2    # "newSummary":Lcom/android/server/ipm/NapSummary;
    :cond_7e
    const-string v2, "PkgPredictorService-NapPredictor"

    const-string/jumbo v3, "training failed..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_86
    return-void
.end method

.method protected updateSummary(Lcom/android/server/ipm/Record;)V
    .registers 4
    .param p1, "rcd"    # Lcom/android/server/ipm/Record;

    .line 198
    iget-object v0, p0, Lcom/android/server/ipm/NapPredictor;->mSummary:Lcom/android/server/ipm/NapSummary;

    iget-boolean v1, p1, Lcom/android/server/ipm/Record;->success:Z

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/NapSummary;->updateSummary(Z)V

    .line 199
    sget-boolean v0, Lcom/android/server/ipm/NapPredictor;->DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "PkgPredictorService-NapPredictor"

    const-string/jumbo v1, "update summary success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_13
    return-void
.end method
