.class Lcom/android/server/ipm/AufPredictor;
.super Ljava/lang/Object;
.source "AufPredictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/AufPredictor$DescendingAppUsage;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final MAX_APPLIST_BUB:I = 0x1e

.field public static final MAX_APPLIST_SEEDBED:I = 0x64

.field private static final MODEL_NAME:Ljava/lang/String; = "system/etc/ipm/auf.tflite"

.field private static final TAG:Ljava/lang/String; = "AufPredictor"

.field public static final TYPE_BUB:I = 0x0

.field public static final TYPE_SEEDBED:I = 0x1

.field private static appSortLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/AppRanking;",
            ">;"
        }
    .end annotation
.end field

.field protected static final exceptionPkgs:[Ljava/lang/String;

.field private static mBuBTopN:I

.field private static mContext:Landroid/content/Context;

.field private static mInterpreter:Lorg/tensorflow/lite/Interpreter;

.field private static mInterpreterOptions:Lorg/tensorflow/lite/Interpreter$Options;

.field private static mModelfile:Ljava/io/File;

.field private static mPredictAppLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/AppRanking;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestTypes:[Ljava/lang/String;

.field private static mSeedbedTopN:I


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    .line 112
    const-string v1, "com.sec.android.app.launcher"

    const-string v2, "com.android.system"

    const-string v3, "com.android.systemui"

    const-string v4, "android"

    const-string v5, "com.google.android.packageinstaller"

    const-string v6, "com.samsung.android.MtpApplication"

    const-string v7, "com.google.android.MtpApplication"

    const-string v8, "com.google.android.setupwizard"

    const-string v9, "com.sec.android.app.setupwizard"

    const-string v10, "com.sec.android.app.SecSetupWizard"

    const-string v11, "com.sec.android.app.tinym"

    const-string v12, "com.sec.autosettingapk2"

    const-string v13, "com.sec.android.systemperformancemanager"

    const-string v14, "com.android.settings"

    const-string v15, "com.samsung.cmhscanner"

    const-string v16, "com.sec.android.easyMover"

    const-string v17, "com.airbnb.android"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ipm/AufPredictor;->exceptionPkgs:[Ljava/lang/String;

    .line 143
    const-string v0, "BuB"

    const-string v1, "Seedbed"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ipm/AufPredictor;->mRequestTypes:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    sput-object p1, Lcom/android/server/ipm/AufPredictor;->mContext:Landroid/content/Context;

    .line 147
    new-instance v0, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {v0}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    sput-object v0, Lcom/android/server/ipm/AufPredictor;->mInterpreterOptions:Lorg/tensorflow/lite/Interpreter$Options;

    .line 148
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system/etc/ipm/auf.tflite"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ipm/AufPredictor;->mModelfile:Ljava/io/File;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    .line 151
    sget-boolean v0, Lcom/android/server/ipm/AufHitCalculation;->AUF_DEBUG:Z

    sput-boolean v0, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    .line 152
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/ipm/AufPredictor;->mBuBTopN:I

    .line 153
    const/16 v0, 0x64

    sput v0, Lcom/android/server/ipm/AufPredictor;->mSeedbedTopN:I

    .line 154
    return-void
.end method

.method protected static declared-synchronized AppPredict(I)Ljava/util/ArrayList;
    .registers 41
    .param p0, "hours"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/AppRanking;",
            ">;"
        }
    .end annotation

    const-class v0, F

    const-class v1, Lcom/android/server/ipm/AufPredictor;

    monitor-enter v1

    .line 334
    :try_start_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v2, "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    const/4 v3, 0x1

    new-array v4, v3, [F

    .line 337
    .local v4, "droprate":[F
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 338
    new-array v5, v3, [I

    .line 339
    .local v5, "input_startdate":[I
    new-array v7, v3, [I

    .line 341
    .local v7, "input_starthour":[I
    aput v3, v5, v6

    .line 342
    aput v6, v7, v6

    .line 344
    const/4 v8, 0x0

    .line 345
    .local v8, "fw":Ljava/io/FileWriter;
    const-string v9, "/data/system/ipm_input_data.txt"

    .line 346
    .local v9, "filePath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .local v10, "listingFile":Ljava/io/File;
    invoke-virtual {v10, v3, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 348
    invoke-virtual {v10, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 350
    const/16 v11, 0xe

    invoke-static {v11}, Lcom/android/server/ipm/AufPredictor;->loadDataFromDB(I)Ljava/util/List;

    move-result-object v11

    move-object v2, v11

    .line 351
    if-nez v2, :cond_46

    .line 352
    sget-boolean v0, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v0, :cond_3c

    const-string v0, "AufPredictor"

    const-string/jumbo v3, "requestSaveData inputdata is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_3c
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_5de

    monitor-exit v1

    return-object v0

    .line 354
    :cond_46
    :try_start_46
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_55

    .line 355
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 356
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_5de

    monitor-exit v1

    return-object v0

    .line 358
    :cond_55
    :try_start_55
    sget-boolean v11, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v11, :cond_74

    const-string v11, "AufPredictor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "requestSaveData inputdata is not null size:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_74
    sget-object v11, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_a2

    .line 362
    sget-boolean v11, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v11, :cond_9d

    const-string v11, "AufPredictor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "requestSaveData AppSortLists is not null size:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_9d
    sget-object v11, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 366
    :cond_a2
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd HH:mm"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 367
    .local v11, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 368
    .local v12, "cal1":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 369
    .local v13, "cal2":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x48190800

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 371
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 372
    .local v14, "currentdate":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 375
    .local v15, "requestdate":Ljava/lang/String;
    sget-boolean v16, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v16, :cond_e1

    const-string v6, "AufPredictor"

    const-string/jumbo v3, "requestPrediction Start using Multi Dimension for Tensorflow Lite"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_e1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 377
    .local v18, "start1ProcessTime":J
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 378
    .local v3, "app_size":I
    const/4 v6, 0x2

    move-object/from16 v20, v4

    .end local v4    # "droprate":[F
    .local v20, "droprate":[F
    new-array v4, v6, [I

    const/16 v6, 0x150

    const/16 v17, 0x1

    aput v6, v4, v17

    const/16 v16, 0x0

    aput v3, v4, v16

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    .line 379
    .local v4, "in_data":[[F
    move-object/from16 v23, v8

    const/4 v6, 0x2

    .end local v8    # "fw":Ljava/io/FileWriter;
    .local v23, "fw":Ljava/io/FileWriter;
    new-array v8, v6, [I

    const/16 v6, 0xa8

    const/16 v17, 0x1

    aput v6, v8, v17

    const/16 v16, 0x0

    aput v3, v8, v16

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move-object v8, v0

    .line 381
    .local v8, "out_data":[[F
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/server/ipm/AppLaunchInfo;

    iget v6, v6, Lcom/android/server/ipm/AppLaunchInfo;->startDate:I

    if-nez v6, :cond_125

    .line 382
    const/4 v6, 0x1

    aput v6, v5, v0

    goto :goto_12f

    .line 384
    :cond_125
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/AppLaunchInfo;

    iget v6, v6, Lcom/android/server/ipm/AppLaunchInfo;->startDate:I

    aput v6, v5, v0

    .line 385
    :goto_12f
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/AppLaunchInfo;

    iget v6, v6, Lcom/android/server/ipm/AppLaunchInfo;->startHour:I

    aput v6, v7, v0

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_167

    .line 388
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_141
    move-object/from16 v25, v10

    const/16 v10, 0x150

    .end local v10    # "listingFile":Ljava/io/File;
    .local v25, "listingFile":Ljava/io/File;
    if-ge v6, v10, :cond_160

    .line 389
    aget-object v10, v4, v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v27, v11

    .end local v11    # "sdf":Ljava/text/SimpleDateFormat;
    .local v27, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v11, v26

    check-cast v11, Lcom/android/server/ipm/AppLaunchInfo;

    iget-object v11, v11, Lcom/android/server/ipm/AppLaunchInfo;->inputdata:[F

    aget v11, v11, v6

    aput v11, v10, v6

    .line 388
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, v25

    move-object/from16 v11, v27

    goto :goto_141

    .end local v27    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_160
    move-object/from16 v27, v11

    .line 387
    .end local v6    # "j":I
    .end local v11    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v27    # "sdf":Ljava/text/SimpleDateFormat;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v25

    goto :goto_13a

    .end local v25    # "listingFile":Ljava/io/File;
    .end local v27    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v10    # "listingFile":Ljava/io/File;
    .restart local v11    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_167
    move-object/from16 v25, v10

    move-object/from16 v27, v11

    .line 393
    .end local v0    # "i":I
    .end local v10    # "listingFile":Ljava/io/File;
    .end local v11    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v25    # "listingFile":Ljava/io/File;
    .restart local v27    # "sdf":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v0, v6

    const/4 v6, 0x1

    aput-object v5, v0, v6

    const/4 v6, 0x2

    aput-object v7, v0, v6

    move-object v6, v0

    .line 394
    .local v6, "inputArr":[Ljava/lang/Object;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    .line 395
    .local v10, "outputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_186
    .catchall {:try_start_55 .. :try_end_186} :catchall_5de

    .line 397
    :try_start_186
    new-instance v0, Lorg/tensorflow/lite/Interpreter;

    sget-object v11, Lcom/android/server/ipm/AufPredictor;->mModelfile:Ljava/io/File;
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_18a} :catch_1aa
    .catchall {:try_start_186 .. :try_end_18a} :catchall_5de

    move-object/from16 v26, v4

    .end local v4    # "in_data":[[F
    .local v26, "in_data":[[F
    :try_start_18c
    sget-object v4, Lcom/android/server/ipm/AufPredictor;->mInterpreterOptions:Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {v0, v11, v4}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/io/File;Lorg/tensorflow/lite/Interpreter$Options;)V

    sput-object v0, Lcom/android/server/ipm/AufPredictor;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    .line 399
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v11, 0x0

    aput v3, v4, v11

    const/16 v16, 0x150

    const/16 v17, 0x1

    aput v16, v4, v17

    invoke-virtual {v0, v11, v4}, Lorg/tensorflow/lite/Interpreter;->resizeInput(I[I)V

    .line 400
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, v6, v10}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1a7} :catch_1a8
    .catchall {:try_start_18c .. :try_end_1a7} :catchall_5de

    .line 405
    goto :goto_1b9

    .line 402
    :catch_1a8
    move-exception v0

    goto :goto_1ad

    .end local v26    # "in_data":[[F
    .restart local v4    # "in_data":[[F
    :catch_1aa
    move-exception v0

    move-object/from16 v26, v4

    .line 403
    .end local v4    # "in_data":[[F
    .local v0, "e":Ljava/lang/Exception;
    .restart local v26    # "in_data":[[F
    :goto_1ad
    :try_start_1ad
    const-string v4, "Interpreter fail"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1ba
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1d9

    .line 408
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1c1
    const/16 v11, 0xa8

    if-ge v4, v11, :cond_1d6

    .line 409
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/ipm/AppLaunchInfo;

    iget-object v11, v11, Lcom/android/server/ipm/AppLaunchInfo;->outputdata:[F

    aget-object v16, v8, v0

    aget v16, v16, v4

    aput v16, v11, v4

    .line 408
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c1

    .line 407
    .end local v4    # "j":I
    :cond_1d6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ba

    .line 412
    .end local v0    # "i":I
    :cond_1d9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 413
    .local v16, "end1ProcessTime":J
    sget-boolean v0, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v0, :cond_203

    const-string v0, "AufPredictor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Working Time : "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object/from16 v21, v6

    .end local v5    # "input_startdate":[I
    .end local v6    # "inputArr":[Ljava/lang/Object;
    .local v11, "input_startdate":[I
    .local v21, "inputArr":[Ljava/lang/Object;
    sub-long v5, v16, v18

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_202
    .catchall {:try_start_1ad .. :try_end_202} :catchall_5de

    goto :goto_206

    .end local v11    # "input_startdate":[I
    .end local v21    # "inputArr":[Ljava/lang/Object;
    .restart local v5    # "input_startdate":[I
    .restart local v6    # "inputArr":[Ljava/lang/Object;
    :cond_203
    move-object v11, v5

    move-object/from16 v21, v6

    .line 415
    .end local v5    # "input_startdate":[I
    .end local v6    # "inputArr":[Ljava/lang/Object;
    .restart local v11    # "input_startdate":[I
    .restart local v21    # "inputArr":[Ljava/lang/Object;
    :goto_206
    :try_start_206
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_20b
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_20b} :catch_480
    .catchall {:try_start_206 .. :try_end_20b} :catchall_470

    move-object v4, v0

    .line 416
    .end local v23    # "fw":Ljava/io/FileWriter;
    .local v4, "fw":Ljava/io/FileWriter;
    :try_start_20c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RequestDate: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CurrentDate: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_243} :catch_463
    .catchall {:try_start_20c .. :try_end_243} :catchall_454

    if-ge v0, v5, :cond_431

    .line 419
    const/4 v5, 0x0

    .line 420
    .local v5, "periodsum":F
    const/4 v6, 0x0

    .line 421
    .local v6, "totalLaunchCnt":I
    const/16 v23, 0x0

    .line 422
    .local v23, "threeDaysLaunchCnt":I
    const/16 v28, 0x0

    .line 429
    .local v28, "oneDayLaunchCnt":I
    move/from16 v29, v3

    .end local v3    # "app_size":I
    .local v29, "app_size":I
    :try_start_24d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v5

    .end local v5    # "periodsum":F
    .local v30, "periodsum":F
    const-string v5, "Num: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/AppLaunchInfo;

    iget-object v5, v5, Lcom/android/server/ipm/AppLaunchInfo;->runningPkgname:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 430
    const-string v3, "Input: 336 Data: ["

    invoke-virtual {v4, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_281
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_281} :catch_425
    .catchall {:try_start_24d .. :try_end_281} :catchall_418

    .line 431
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_282
    const/16 v5, 0x150

    if-ge v3, v5, :cond_2e8

    .line 432
    :try_start_286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31
    :try_end_28f
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_28f} :catch_2dc
    .catchall {:try_start_286 .. :try_end_28f} :catchall_2cf

    move-object/from16 v38, v7

    .end local v7    # "input_starthour":[I
    .local v38, "input_starthour":[I
    :try_start_291
    move-object/from16 v7, v31

    check-cast v7, Lcom/android/server/ipm/AppLaunchInfo;

    iget-object v7, v7, Lcom/android/server/ipm/AppLaunchInfo;->inputdata:[F

    aget v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 433
    int-to-float v5, v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ipm/AppLaunchInfo;

    iget-object v7, v7, Lcom/android/server/ipm/AppLaunchInfo;->inputdata:[F

    aget v7, v7, v3
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_2b3} :catch_2c5
    .catchall {:try_start_291 .. :try_end_2b3} :catchall_2ba

    add-float/2addr v5, v7

    float-to-int v6, v5

    .line 431
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v38

    goto :goto_282

    .line 463
    .end local v0    # "i":I
    .end local v3    # "j":I
    .end local v6    # "totalLaunchCnt":I
    .end local v23    # "threeDaysLaunchCnt":I
    .end local v28    # "oneDayLaunchCnt":I
    .end local v30    # "periodsum":F
    :catchall_2ba
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    move-object v2, v0

    move-object v8, v4

    goto/16 :goto_5cf

    .line 459
    :catch_2c5
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    move-object v8, v4

    goto/16 :goto_48d

    .line 463
    .end local v38    # "input_starthour":[I
    .restart local v7    # "input_starthour":[I
    :catchall_2cf
    move-exception v0

    move-object/from16 v38, v7

    move-object/from16 v39, v2

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    move-object v2, v0

    move-object v8, v4

    .end local v7    # "input_starthour":[I
    .restart local v38    # "input_starthour":[I
    goto/16 :goto_5cf

    .line 459
    .end local v38    # "input_starthour":[I
    .restart local v7    # "input_starthour":[I
    :catch_2dc
    move-exception v0

    move-object/from16 v38, v7

    move-object/from16 v39, v2

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    move-object v8, v4

    .end local v7    # "input_starthour":[I
    .restart local v38    # "input_starthour":[I
    goto/16 :goto_48d

    .line 431
    .end local v38    # "input_starthour":[I
    .restart local v0    # "i":I
    .restart local v3    # "j":I
    .restart local v6    # "totalLaunchCnt":I
    .restart local v7    # "input_starthour":[I
    .restart local v23    # "threeDaysLaunchCnt":I
    .restart local v28    # "oneDayLaunchCnt":I
    .restart local v30    # "periodsum":F
    :cond_2e8
    move-object/from16 v38, v7

    .line 435
    .end local v3    # "j":I
    .end local v7    # "input_starthour":[I
    .restart local v38    # "input_starthour":[I
    :try_start_2ea
    const-string v3, "]\n"

    invoke-virtual {v4, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 437
    const-string v3, "Output: 168 Data: ["

    invoke-virtual {v4, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_2f4} :catch_40e
    .catchall {:try_start_2ea .. :try_end_2f4} :catchall_403

    .line 438
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2f5
    const/16 v5, 0xa8

    if-ge v3, v5, :cond_31c

    .line 439
    :try_start_2f9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v5, v24

    check-cast v5, Lcom/android/server/ipm/AppLaunchInfo;

    iget-object v5, v5, Lcom/android/server/ipm/AppLaunchInfo;->outputdata:[F

    aget v5, v5, v3

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_319
    .catch Ljava/lang/Exception; {:try_start_2f9 .. :try_end_319} :catch_2c5
    .catchall {:try_start_2f9 .. :try_end_319} :catchall_2ba

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f5

    .line 441
    .end local v3    # "j":I
    :cond_31c
    :try_start_31c
    const-string v3, "]\n"

    invoke-virtual {v4, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_321
    .catch Ljava/lang/Exception; {:try_start_31c .. :try_end_321} :catch_40e
    .catchall {:try_start_31c .. :try_end_321} :catchall_403

    .line 444
    const/16 v3, 0x108

    move/from16 v5, v23

    .end local v23    # "threeDaysLaunchCnt":I
    .restart local v3    # "j":I
    .local v5, "threeDaysLaunchCnt":I
    :goto_325
    const/16 v7, 0x150

    if-ge v3, v7, :cond_365

    .line 445
    int-to-float v7, v5

    :try_start_32a
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23
    :try_end_32e
    .catch Ljava/lang/Exception; {:try_start_32a .. :try_end_32e} :catch_35b
    .catchall {:try_start_32a .. :try_end_32e} :catchall_350

    move-object/from16 v24, v8

    .end local v8    # "out_data":[[F
    .local v24, "out_data":[[F
    :try_start_330
    move-object/from16 v8, v23

    check-cast v8, Lcom/android/server/ipm/AppLaunchInfo;

    iget-object v8, v8, Lcom/android/server/ipm/AppLaunchInfo;->inputdata:[F

    aget v8, v8, v3
    :try_end_338
    .catch Ljava/lang/Exception; {:try_start_330 .. :try_end_338} :catch_348
    .catchall {:try_start_330 .. :try_end_338} :catchall_33f

    add-float/2addr v7, v8

    float-to-int v5, v7

    .line 444
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v8, v24

    goto :goto_325

    .line 463
    .end local v0    # "i":I
    .end local v3    # "j":I
    .end local v5    # "threeDaysLaunchCnt":I
    .end local v6    # "totalLaunchCnt":I
    .end local v28    # "oneDayLaunchCnt":I
    .end local v30    # "periodsum":F
    :catchall_33f
    move-exception v0

    move-object/from16 v39, v2

    move-object v8, v4

    move-object/from16 v28, v9

    move-object v2, v0

    goto/16 :goto_5cf

    .line 459
    :catch_348
    move-exception v0

    move-object/from16 v39, v2

    move-object v8, v4

    move-object/from16 v28, v9

    goto/16 :goto_48d

    .line 463
    .end local v24    # "out_data":[[F
    .restart local v8    # "out_data":[[F
    :catchall_350
    move-exception v0

    move-object/from16 v24, v8

    move-object/from16 v39, v2

    move-object v8, v4

    move-object/from16 v28, v9

    move-object v2, v0

    .end local v8    # "out_data":[[F
    .restart local v24    # "out_data":[[F
    goto/16 :goto_5cf

    .line 459
    .end local v24    # "out_data":[[F
    .restart local v8    # "out_data":[[F
    :catch_35b
    move-exception v0

    move-object/from16 v24, v8

    move-object/from16 v39, v2

    move-object v8, v4

    move-object/from16 v28, v9

    .end local v8    # "out_data":[[F
    .restart local v24    # "out_data":[[F
    goto/16 :goto_48d

    .line 444
    .end local v24    # "out_data":[[F
    .restart local v0    # "i":I
    .restart local v3    # "j":I
    .restart local v5    # "threeDaysLaunchCnt":I
    .restart local v6    # "totalLaunchCnt":I
    .restart local v8    # "out_data":[[F
    .restart local v28    # "oneDayLaunchCnt":I
    .restart local v30    # "periodsum":F
    :cond_365
    move-object/from16 v24, v8

    .line 448
    .end local v3    # "j":I
    .end local v8    # "out_data":[[F
    .restart local v24    # "out_data":[[F
    const/16 v3, 0x138

    move/from16 v7, v28

    .end local v28    # "oneDayLaunchCnt":I
    .restart local v3    # "j":I
    .local v7, "oneDayLaunchCnt":I
    :goto_36b
    const/16 v8, 0x150

    if-ge v3, v8, :cond_3a3

    .line 449
    int-to-float v8, v7

    :try_start_370
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23
    :try_end_374
    .catch Ljava/lang/Exception; {:try_start_370 .. :try_end_374} :catch_39b
    .catchall {:try_start_370 .. :try_end_374} :catchall_392

    move-object/from16 v28, v9

    .end local v9    # "filePath":Ljava/lang/String;
    .local v28, "filePath":Ljava/lang/String;
    :try_start_376
    move-object/from16 v9, v23

    check-cast v9, Lcom/android/server/ipm/AppLaunchInfo;

    iget-object v9, v9, Lcom/android/server/ipm/AppLaunchInfo;->inputdata:[F

    aget v9, v9, v3

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 448
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v9, v28

    goto :goto_36b

    .line 463
    .end local v0    # "i":I
    .end local v3    # "j":I
    .end local v5    # "threeDaysLaunchCnt":I
    .end local v6    # "totalLaunchCnt":I
    .end local v7    # "oneDayLaunchCnt":I
    .end local v30    # "periodsum":F
    :catchall_385
    move-exception v0

    move-object/from16 v39, v2

    move-object v8, v4

    move-object v2, v0

    goto/16 :goto_5cf

    .line 459
    :catch_38c
    move-exception v0

    move-object/from16 v39, v2

    move-object v8, v4

    goto/16 :goto_48d

    .line 463
    .end local v28    # "filePath":Ljava/lang/String;
    .restart local v9    # "filePath":Ljava/lang/String;
    :catchall_392
    move-exception v0

    move-object/from16 v28, v9

    move-object/from16 v39, v2

    move-object v8, v4

    move-object v2, v0

    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v28    # "filePath":Ljava/lang/String;
    goto/16 :goto_5cf

    .line 459
    .end local v28    # "filePath":Ljava/lang/String;
    .restart local v9    # "filePath":Ljava/lang/String;
    :catch_39b
    move-exception v0

    move-object/from16 v28, v9

    move-object/from16 v39, v2

    move-object v8, v4

    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v28    # "filePath":Ljava/lang/String;
    goto/16 :goto_48d

    .line 448
    .end local v28    # "filePath":Ljava/lang/String;
    .restart local v0    # "i":I
    .restart local v3    # "j":I
    .restart local v5    # "threeDaysLaunchCnt":I
    .restart local v6    # "totalLaunchCnt":I
    .restart local v7    # "oneDayLaunchCnt":I
    .restart local v9    # "filePath":Ljava/lang/String;
    .restart local v30    # "periodsum":F
    :cond_3a3
    move-object/from16 v28, v9

    .line 452
    .end local v3    # "j":I
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v28    # "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3a6
    move/from16 v8, p0

    if-ge v3, v8, :cond_3b9

    .line 453
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ipm/AppLaunchInfo;

    iget-object v9, v9, Lcom/android/server/ipm/AppLaunchInfo;->outputdata:[F

    aget v9, v9, v3
    :try_end_3b4
    .catch Ljava/lang/Exception; {:try_start_376 .. :try_end_3b4} :catch_38c
    .catchall {:try_start_376 .. :try_end_3b4} :catchall_385

    add-float v30, v30, v9

    .line 452
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a6

    .line 455
    .end local v3    # "j":I
    :cond_3b9
    :try_start_3b9
    sget-object v3, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/ipm/AppRanking;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v8, v23

    check-cast v8, Lcom/android/server/ipm/AppLaunchInfo;

    iget-object v8, v8, Lcom/android/server/ipm/AppLaunchInfo;->runningPkgname:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23
    :try_end_3cb
    .catch Ljava/lang/Exception; {:try_start_3b9 .. :try_end_3cb} :catch_3fd
    .catchall {:try_start_3b9 .. :try_end_3cb} :catchall_3f6

    move-object/from16 v39, v2

    .end local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .local v39, "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    :try_start_3cd
    move-object/from16 v2, v23

    check-cast v2, Lcom/android/server/ipm/AppLaunchInfo;

    iget v2, v2, Lcom/android/server/ipm/AppLaunchInfo;->userId:I

    move-object/from16 v31, v9

    move-object/from16 v32, v8

    move/from16 v33, v2

    move/from16 v34, v30

    move/from16 v35, v6

    move/from16 v36, v5

    move/from16 v37, v7

    invoke-direct/range {v31 .. v37}, Lcom/android/server/ipm/AppRanking;-><init>(Ljava/lang/String;IFIII)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    nop

    .end local v5    # "threeDaysLaunchCnt":I
    .end local v6    # "totalLaunchCnt":I
    .end local v7    # "oneDayLaunchCnt":I
    .end local v30    # "periodsum":F
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v24

    move-object/from16 v9, v28

    move/from16 v3, v29

    move-object/from16 v7, v38

    move-object/from16 v2, v39

    goto/16 :goto_23f

    .line 463
    .end local v0    # "i":I
    .end local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    :catchall_3f6
    move-exception v0

    move-object/from16 v39, v2

    move-object v2, v0

    move-object v8, v4

    .end local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    goto/16 :goto_5cf

    .line 459
    .end local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    :catch_3fd
    move-exception v0

    move-object/from16 v39, v2

    move-object v8, v4

    .end local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    goto/16 :goto_48d

    .line 463
    .end local v24    # "out_data":[[F
    .end local v28    # "filePath":Ljava/lang/String;
    .end local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v8    # "out_data":[[F
    .restart local v9    # "filePath":Ljava/lang/String;
    :catchall_403
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    move-object v2, v0

    move-object v8, v4

    .end local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .end local v8    # "out_data":[[F
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v24    # "out_data":[[F
    .restart local v28    # "filePath":Ljava/lang/String;
    .restart local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    goto/16 :goto_5cf

    .line 459
    .end local v24    # "out_data":[[F
    .end local v28    # "filePath":Ljava/lang/String;
    .end local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v8    # "out_data":[[F
    .restart local v9    # "filePath":Ljava/lang/String;
    :catch_40e
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    move-object v8, v4

    .end local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .end local v8    # "out_data":[[F
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v24    # "out_data":[[F
    .restart local v28    # "filePath":Ljava/lang/String;
    .restart local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    goto/16 :goto_48d

    .line 463
    .end local v24    # "out_data":[[F
    .end local v28    # "filePath":Ljava/lang/String;
    .end local v38    # "input_starthour":[I
    .end local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .local v7, "input_starthour":[I
    .restart local v8    # "out_data":[[F
    .restart local v9    # "filePath":Ljava/lang/String;
    :catchall_418
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v38, v7

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    move-object v2, v0

    move-object v8, v4

    .end local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .end local v7    # "input_starthour":[I
    .end local v8    # "out_data":[[F
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v24    # "out_data":[[F
    .restart local v28    # "filePath":Ljava/lang/String;
    .restart local v38    # "input_starthour":[I
    .restart local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    goto/16 :goto_5cf

    .line 459
    .end local v24    # "out_data":[[F
    .end local v28    # "filePath":Ljava/lang/String;
    .end local v38    # "input_starthour":[I
    .end local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v7    # "input_starthour":[I
    .restart local v8    # "out_data":[[F
    .restart local v9    # "filePath":Ljava/lang/String;
    :catch_425
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v38, v7

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    move-object v8, v4

    .end local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .end local v7    # "input_starthour":[I
    .end local v8    # "out_data":[[F
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v24    # "out_data":[[F
    .restart local v28    # "filePath":Ljava/lang/String;
    .restart local v38    # "input_starthour":[I
    .restart local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    goto/16 :goto_48d

    .line 418
    .end local v24    # "out_data":[[F
    .end local v28    # "filePath":Ljava/lang/String;
    .end local v29    # "app_size":I
    .end local v38    # "input_starthour":[I
    .end local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v0    # "i":I
    .restart local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .local v3, "app_size":I
    .restart local v7    # "input_starthour":[I
    .restart local v8    # "out_data":[[F
    .restart local v9    # "filePath":Ljava/lang/String;
    :cond_431
    move-object/from16 v39, v2

    move/from16 v29, v3

    move-object/from16 v38, v7

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    .line 458
    .end local v0    # "i":I
    .end local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .end local v3    # "app_size":I
    .end local v7    # "input_starthour":[I
    .end local v8    # "out_data":[[F
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v24    # "out_data":[[F
    .restart local v28    # "filePath":Ljava/lang/String;
    .restart local v29    # "app_size":I
    .restart local v38    # "input_starthour":[I
    .restart local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_43e
    .catch Ljava/lang/Exception; {:try_start_3cd .. :try_end_43e} :catch_451
    .catchall {:try_start_3cd .. :try_end_43e} :catchall_44c

    .line 464
    nop

    .line 465
    :try_start_43f
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_442
    .catch Ljava/lang/Exception; {:try_start_43f .. :try_end_442} :catch_444
    .catchall {:try_start_43f .. :try_end_442} :catchall_5de

    .line 469
    goto/16 :goto_4a8

    .line 467
    :catch_444
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    :try_start_447
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44a
    .catchall {:try_start_447 .. :try_end_44a} :catchall_5de

    .line 470
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_4a8

    .line 463
    :catchall_44c
    move-exception v0

    move-object v2, v0

    move-object v8, v4

    goto/16 :goto_5cf

    .line 459
    :catch_451
    move-exception v0

    move-object v8, v4

    goto :goto_48d

    .line 463
    .end local v24    # "out_data":[[F
    .end local v28    # "filePath":Ljava/lang/String;
    .end local v29    # "app_size":I
    .end local v38    # "input_starthour":[I
    .end local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v3    # "app_size":I
    .restart local v7    # "input_starthour":[I
    .restart local v8    # "out_data":[[F
    .restart local v9    # "filePath":Ljava/lang/String;
    :catchall_454
    move-exception v0

    move-object/from16 v39, v2

    move/from16 v29, v3

    move-object/from16 v38, v7

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    move-object v2, v0

    move-object v8, v4

    .end local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .end local v3    # "app_size":I
    .end local v7    # "input_starthour":[I
    .end local v8    # "out_data":[[F
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v24    # "out_data":[[F
    .restart local v28    # "filePath":Ljava/lang/String;
    .restart local v29    # "app_size":I
    .restart local v38    # "input_starthour":[I
    .restart local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    goto/16 :goto_5cf

    .line 459
    .end local v24    # "out_data":[[F
    .end local v28    # "filePath":Ljava/lang/String;
    .end local v29    # "app_size":I
    .end local v38    # "input_starthour":[I
    .end local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v3    # "app_size":I
    .restart local v7    # "input_starthour":[I
    .restart local v8    # "out_data":[[F
    .restart local v9    # "filePath":Ljava/lang/String;
    :catch_463
    move-exception v0

    move-object/from16 v39, v2

    move/from16 v29, v3

    move-object/from16 v38, v7

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    move-object v8, v4

    .end local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .end local v3    # "app_size":I
    .end local v7    # "input_starthour":[I
    .end local v8    # "out_data":[[F
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v24    # "out_data":[[F
    .restart local v28    # "filePath":Ljava/lang/String;
    .restart local v29    # "app_size":I
    .restart local v38    # "input_starthour":[I
    .restart local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    goto :goto_48d

    .line 463
    .end local v4    # "fw":Ljava/io/FileWriter;
    .end local v24    # "out_data":[[F
    .end local v28    # "filePath":Ljava/lang/String;
    .end local v29    # "app_size":I
    .end local v38    # "input_starthour":[I
    .end local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v3    # "app_size":I
    .restart local v7    # "input_starthour":[I
    .restart local v8    # "out_data":[[F
    .restart local v9    # "filePath":Ljava/lang/String;
    .local v23, "fw":Ljava/io/FileWriter;
    :catchall_470
    move-exception v0

    move-object/from16 v39, v2

    move/from16 v29, v3

    move-object/from16 v38, v7

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    move-object v2, v0

    move-object/from16 v8, v23

    .end local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .end local v3    # "app_size":I
    .end local v7    # "input_starthour":[I
    .end local v8    # "out_data":[[F
    .end local v9    # "filePath":Ljava/lang/String;
    .restart local v24    # "out_data":[[F
    .restart local v28    # "filePath":Ljava/lang/String;
    .restart local v29    # "app_size":I
    .restart local v38    # "input_starthour":[I
    .restart local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    goto/16 :goto_5cf

    .line 459
    .end local v24    # "out_data":[[F
    .end local v28    # "filePath":Ljava/lang/String;
    .end local v29    # "app_size":I
    .end local v38    # "input_starthour":[I
    .end local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .restart local v3    # "app_size":I
    .restart local v7    # "input_starthour":[I
    .restart local v8    # "out_data":[[F
    .restart local v9    # "filePath":Ljava/lang/String;
    :catch_480
    move-exception v0

    move-object/from16 v39, v2

    move/from16 v29, v3

    move-object/from16 v38, v7

    move-object/from16 v24, v8

    move-object/from16 v28, v9

    move-object/from16 v8, v23

    .line 460
    .end local v2    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .end local v3    # "app_size":I
    .end local v7    # "input_starthour":[I
    .end local v9    # "filePath":Ljava/lang/String;
    .end local v23    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "e":Ljava/lang/Exception;
    .local v8, "fw":Ljava/io/FileWriter;
    .restart local v24    # "out_data":[[F
    .restart local v28    # "filePath":Ljava/lang/String;
    .restart local v29    # "app_size":I
    .restart local v38    # "input_starthour":[I
    .restart local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    :goto_48d
    :try_start_48d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_499
    .catchall {:try_start_48d .. :try_end_499} :catchall_5cd

    .line 464
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_4a6

    .line 465
    :try_start_49b
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_49e
    .catch Ljava/lang/Exception; {:try_start_49b .. :try_end_49e} :catch_49f
    .catchall {:try_start_49b .. :try_end_49e} :catchall_5de

    goto :goto_4a6

    .line 467
    :catch_49f
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 468
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4a2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4a7

    .line 469
    :cond_4a6
    :goto_4a6
    nop

    .line 473
    :goto_4a7
    move-object v4, v8

    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :goto_4a8
    sget-boolean v0, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v0, :cond_4c9

    const-string v0, "AufPredictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPrediction End appSortLists  for Tensorflow Lite size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_4c9
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    if-eqz v0, :cond_575

    .line 477
    new-instance v0, Lcom/android/server/ipm/AufPredictor$DescendingAppUsage;

    invoke-direct {v0}, Lcom/android/server/ipm/AufPredictor$DescendingAppUsage;-><init>()V

    .line 478
    .local v0, "descending":Lcom/android/server/ipm/AufPredictor$DescendingAppUsage;
    sget-object v2, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 479
    sget-boolean v2, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v2, :cond_575

    .line 480
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4dc
    sget-object v3, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_575

    const/16 v3, 0x14

    if-ge v2, v3, :cond_575

    .line 481
    const-string v3, "AufPredictor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppSort: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/AppRanking;

    iget-object v6, v6, Lcom/android/server/ipm/AppRanking;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Uid:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/AppRanking;

    iget v6, v6, Lcom/android/server/ipm/AppRanking;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] Cnt:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    .line 482
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/AppRanking;

    iget v6, v6, Lcom/android/server/ipm/AppRanking;->launchCount:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "] Two weeks Cnt:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    .line 483
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/AppRanking;

    iget v6, v6, Lcom/android/server/ipm/AppRanking;->totalLaunchCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] Last 3days Cnt:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    .line 484
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/AppRanking;

    iget v6, v6, Lcom/android/server/ipm/AppRanking;->threeDaysLaunchCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] Last 1day Cnt:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    .line 485
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/AppRanking;

    iget v6, v6, Lcom/android/server/ipm/AppRanking;->oneDayLaunchCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 481
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4dc

    .line 490
    .end local v0    # "descending":Lcom/android/server/ipm/AufPredictor$DescendingAppUsage;
    .end local v2    # "i":I
    :cond_575
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_582

    .line 491
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 493
    :cond_582
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->appSortLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_588
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/AppRanking;

    .line 494
    .local v2, "a":Lcom/android/server/ipm/AppRanking;
    sget-object v3, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/ipm/AppRanking;

    iget-object v6, v2, Lcom/android/server/ipm/AppRanking;->packageName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/ipm/AppRanking;->userId:I

    iget v8, v2, Lcom/android/server/ipm/AppRanking;->launchCount:F

    iget v9, v2, Lcom/android/server/ipm/AppRanking;->totalLaunchCount:I

    move-object/from16 v22, v0

    iget v0, v2, Lcom/android/server/ipm/AppRanking;->threeDaysLaunchCount:I

    move-object/from16 v23, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v23    # "fw":Ljava/io/FileWriter;
    iget v4, v2, Lcom/android/server/ipm/AppRanking;->oneDayLaunchCount:I

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v0

    move/from16 v36, v4

    invoke-direct/range {v30 .. v36}, Lcom/android/server/ipm/AppRanking;-><init>(Ljava/lang/String;IFIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    move-object/from16 v0, v22

    move-object/from16 v4, v23

    .end local v2    # "a":Lcom/android/server/ipm/AppRanking;
    goto :goto_588

    .line 497
    .end local v23    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :cond_5c1
    move-object/from16 v23, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v23    # "fw":Ljava/io/FileWriter;
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_5cb
    .catchall {:try_start_4a2 .. :try_end_5cb} :catchall_5de

    monitor-exit v1

    return-object v0

    .line 463
    .end local v23    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    :catchall_5cd
    move-exception v0

    move-object v2, v0

    .line 464
    :goto_5cf
    if-eqz v8, :cond_5dc

    .line 465
    :try_start_5d1
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_5d4
    .catch Ljava/lang/Exception; {:try_start_5d1 .. :try_end_5d4} :catch_5d5
    .catchall {:try_start_5d1 .. :try_end_5d4} :catchall_5de

    goto :goto_5dc

    .line 467
    :catch_5d5
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5d8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5dd

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5dc
    :goto_5dc
    nop

    .line 470
    :goto_5dd
    throw v2
    :try_end_5de
    .catchall {:try_start_5d8 .. :try_end_5de} :catchall_5de

    .line 333
    .end local v8    # "fw":Ljava/io/FileWriter;
    .end local v10    # "outputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v11    # "input_startdate":[I
    .end local v12    # "cal1":Ljava/util/Calendar;
    .end local v13    # "cal2":Ljava/util/Calendar;
    .end local v14    # "currentdate":Ljava/lang/String;
    .end local v15    # "requestdate":Ljava/lang/String;
    .end local v16    # "end1ProcessTime":J
    .end local v18    # "start1ProcessTime":J
    .end local v20    # "droprate":[F
    .end local v21    # "inputArr":[Ljava/lang/Object;
    .end local v24    # "out_data":[[F
    .end local v25    # "listingFile":Ljava/io/File;
    .end local v26    # "in_data":[[F
    .end local v27    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v28    # "filePath":Ljava/lang/String;
    .end local v29    # "app_size":I
    .end local v38    # "input_starthour":[I
    .end local v39    # "inputdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    .end local p0    # "hours":I
    :catchall_5de
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getApplaunchInfo(I)Ljava/util/List;
    .registers 30
    .param p0, "date"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/AppLaunchInfo;",
            ">;"
        }
    .end annotation

    .line 175
    move/from16 v1, p0

    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v2

    .line 176
    .local v2, "db":Lcom/android/server/ipm/DBManager;
    const/4 v3, 0x0

    .line 177
    .local v3, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 179
    .local v4, "tables":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    invoke-virtual {v2}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 180
    const-string v0, "AufPredictor"

    const-string/jumbo v5, "trim failed! db is closed!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-object v4

    .line 184
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 185
    .local v5, "currentTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    mul-int/lit8 v0, v1, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v9, v0

    sub-long/2addr v7, v9

    .line 187
    .local v7, "requesttime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 188
    .local v9, "cal":Ljava/util/Calendar;
    invoke-virtual {v9, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 190
    const/4 v0, 0x7

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 191
    .local v10, "startday":I
    const/16 v0, 0xb

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 193
    .local v11, "starthour":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT T.pkgName AS pkgName,T.userId AS userId,count(T.launchHourTime) AS countIndex,((T.launchHourTime+1)-((("

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "/1000)/(60*60)-("

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "*24)+1))*(60*60))/(60*60) AS diffTimeIndex,T.launchHourTime AS launchHourTime,datetime(T.launchHourTime, \'unixepoch\') AS launchDateTime,(("

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "*24)+1)*(60*60) AS startHourTime,datetime((("

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "*24)+1)*(60*60), \'unixepoch\') AS startDateTime,(("

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "/1000)/(60*60)+1)*(60*60) AS endHourTime,datetime((("

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "/1000)/(60*60)+1)*(60*60), \'unixepoch\') AS endDateTime FROM (SELECT running_pkg as pkgName,user_id AS userId,datetime(launch_time/1000, \'unixepoch\', \'localtime\') AS launchDateTime,(launch_time/(1000*60*60))*(60*60) as launchHourTime FROM "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/server/ipm/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " WHERE launch_time/1000 < (("

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "/1000)/(60*60)+1)*(60*60) AND launch_time/1000 > (("

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "/1000)/(60*60))*(60*60)-(("

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "*24)*60*60)) T  GROUP BY T.pkgName, T.userId, T.launchHourTime ORDER BY T.pkgName, T.userId, T.launchHourTime"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 216
    .local v12, "statement":Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_ad
    invoke-virtual {v2, v12, v0}, Lcom/android/server/ipm/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    .line 218
    if-eqz v3, :cond_19f

    .line 219
    const-string/jumbo v0, "pkgName"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, "PkgNameIndex":I
    const-string/jumbo v13, "userId"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 221
    .local v13, "UserIdIndex":I
    const-string v14, "countIndex"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 222
    .local v14, "CountIndex":I
    const-string v15, "diffTimeIndex"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 223
    .local v15, "DiffTimeIndex":I
    const-string/jumbo v1, "launchDateTime"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 224
    .local v1, "LaunchDateTimeIndex":I
    const-string v16, ""
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_d7} :catch_1b3
    .catchall {:try_start_ad .. :try_end_d7} :catchall_1ab

    .line 225
    .local v16, "cmpName":Ljava/lang/String;
    const/16 v17, -0x1

    move-object/from16 v18, v2

    move-object/from16 v2, v16

    move-wide/from16 v27, v5

    move/from16 v5, v17

    move-wide/from16 v16, v27

    .line 227
    .local v2, "cmpName":Ljava/lang/String;
    .local v5, "cmpUid":I
    .local v16, "currentTime":J
    .local v18, "db":Lcom/android/server/ipm/DBManager;
    :goto_e3
    :try_start_e3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_18c

    .line 228
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "pkgName":Ljava/lang/String;
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v19

    .line 230
    .local v20, "db_userId":I
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v21, v19

    .line 231
    .local v21, "db_launchCount":I
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v22, v19

    .line 232
    .local v22, "db_diffTime":I
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 240
    .local v19, "db_launchDateTime":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_154

    move/from16 v23, v0

    move/from16 v0, v20

    .end local v20    # "db_userId":I
    .local v0, "db_userId":I
    .local v23, "PkgNameIndex":I
    if-ne v5, v0, :cond_147

    .line 252
    move/from16 v20, v1

    move/from16 v1, v22

    .end local v22    # "db_diffTime":I
    .local v1, "db_diffTime":I
    .local v20, "LaunchDateTimeIndex":I
    if-ltz v1, :cond_13a

    move-object/from16 v22, v2

    .end local v2    # "cmpName":Ljava/lang/String;
    .local v22, "cmpName":Ljava/lang/String;
    const/16 v2, 0x150

    if-ge v1, v2, :cond_133

    .line 253
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/AppLaunchInfo;

    iget-object v2, v2, Lcom/android/server/ipm/AppLaunchInfo;->inputdata:[F
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_129} :catch_19b
    .catchall {:try_start_e3 .. :try_end_129} :catchall_197

    move/from16 v24, v5

    move-wide/from16 v25, v7

    move/from16 v5, v21

    .end local v7    # "requesttime":J
    .end local v21    # "db_launchCount":I
    .local v5, "db_launchCount":I
    .local v24, "cmpUid":I
    .local v25, "requesttime":J
    int-to-float v7, v5

    :try_start_130
    aput v7, v2, v1

    goto :goto_142

    .line 252
    .end local v24    # "cmpUid":I
    .end local v25    # "requesttime":J
    .local v5, "cmpUid":I
    .restart local v7    # "requesttime":J
    .restart local v21    # "db_launchCount":I
    :cond_133
    move/from16 v24, v5

    move-wide/from16 v25, v7

    move/from16 v5, v21

    .end local v7    # "requesttime":J
    .end local v21    # "db_launchCount":I
    .local v5, "db_launchCount":I
    .restart local v24    # "cmpUid":I
    .restart local v25    # "requesttime":J
    goto :goto_142

    .end local v22    # "cmpName":Ljava/lang/String;
    .end local v24    # "cmpUid":I
    .end local v25    # "requesttime":J
    .restart local v2    # "cmpName":Ljava/lang/String;
    .local v5, "cmpUid":I
    .restart local v7    # "requesttime":J
    .restart local v21    # "db_launchCount":I
    :cond_13a
    move-object/from16 v22, v2

    move/from16 v24, v5

    move-wide/from16 v25, v7

    move/from16 v5, v21

    .line 268
    .end local v0    # "db_userId":I
    .end local v1    # "db_diffTime":I
    .end local v2    # "cmpName":Ljava/lang/String;
    .end local v5    # "cmpUid":I
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "requesttime":J
    .end local v19    # "db_launchDateTime":Ljava/lang/String;
    .end local v21    # "db_launchCount":I
    .restart local v22    # "cmpName":Ljava/lang/String;
    .restart local v24    # "cmpUid":I
    .restart local v25    # "requesttime":J
    :goto_142
    move-object/from16 v2, v22

    move/from16 v5, v24

    goto :goto_182

    .line 240
    .end local v20    # "LaunchDateTimeIndex":I
    .end local v24    # "cmpUid":I
    .end local v25    # "requesttime":J
    .restart local v0    # "db_userId":I
    .local v1, "LaunchDateTimeIndex":I
    .restart local v2    # "cmpName":Ljava/lang/String;
    .restart local v5    # "cmpUid":I
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "requesttime":J
    .restart local v19    # "db_launchDateTime":Ljava/lang/String;
    .restart local v21    # "db_launchCount":I
    .local v22, "db_diffTime":I
    :cond_147
    move/from16 v20, v1

    move/from16 v24, v5

    move-wide/from16 v25, v7

    move/from16 v5, v21

    move/from16 v1, v22

    move-object/from16 v22, v2

    .end local v2    # "cmpName":Ljava/lang/String;
    .end local v7    # "requesttime":J
    .end local v21    # "db_launchCount":I
    .local v1, "db_diffTime":I
    .local v5, "db_launchCount":I
    .restart local v20    # "LaunchDateTimeIndex":I
    .local v22, "cmpName":Ljava/lang/String;
    .restart local v24    # "cmpUid":I
    .restart local v25    # "requesttime":J
    goto :goto_164

    .end local v23    # "PkgNameIndex":I
    .end local v24    # "cmpUid":I
    .end local v25    # "requesttime":J
    .local v0, "PkgNameIndex":I
    .local v1, "LaunchDateTimeIndex":I
    .restart local v2    # "cmpName":Ljava/lang/String;
    .local v5, "cmpUid":I
    .restart local v7    # "requesttime":J
    .local v20, "db_userId":I
    .restart local v21    # "db_launchCount":I
    .local v22, "db_diffTime":I
    :cond_154
    move/from16 v23, v0

    move/from16 v24, v5

    move-wide/from16 v25, v7

    move/from16 v0, v20

    move/from16 v5, v21

    move/from16 v20, v1

    move/from16 v1, v22

    move-object/from16 v22, v2

    .line 257
    .end local v2    # "cmpName":Ljava/lang/String;
    .end local v7    # "requesttime":J
    .end local v21    # "db_launchCount":I
    .local v0, "db_userId":I
    .local v1, "db_diffTime":I
    .local v5, "db_launchCount":I
    .local v20, "LaunchDateTimeIndex":I
    .local v22, "cmpName":Ljava/lang/String;
    .restart local v23    # "PkgNameIndex":I
    .restart local v24    # "cmpUid":I
    .restart local v25    # "requesttime":J
    :goto_164
    move-object v2, v6

    .line 258
    .end local v22    # "cmpName":Ljava/lang/String;
    .restart local v2    # "cmpName":Ljava/lang/String;
    move v7, v0

    .line 259
    .end local v24    # "cmpUid":I
    .local v7, "cmpUid":I
    new-instance v8, Lcom/android/server/ipm/AppLaunchInfo;

    invoke-direct {v8}, Lcom/android/server/ipm/AppLaunchInfo;-><init>()V

    .line 260
    .local v8, "table":Lcom/android/server/ipm/AppLaunchInfo;
    iput-object v6, v8, Lcom/android/server/ipm/AppLaunchInfo;->runningPkgname:Ljava/lang/String;

    .line 261
    iput v0, v8, Lcom/android/server/ipm/AppLaunchInfo;->userId:I

    .line 262
    move/from16 v21, v0

    .end local v0    # "db_userId":I
    .local v21, "db_userId":I
    iget-object v0, v8, Lcom/android/server/ipm/AppLaunchInfo;->inputdata:[F

    move-object/from16 v22, v2

    .end local v2    # "cmpName":Ljava/lang/String;
    .restart local v22    # "cmpName":Ljava/lang/String;
    int-to-float v2, v5

    aput v2, v0, v1

    .line 263
    iput v10, v8, Lcom/android/server/ipm/AppLaunchInfo;->startDate:I

    .line 264
    iput v11, v8, Lcom/android/server/ipm/AppLaunchInfo;->startHour:I

    .line 266
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_17f} :catch_18a
    .catchall {:try_start_130 .. :try_end_17f} :catchall_1c1

    move v5, v7

    move-object/from16 v2, v22

    .line 268
    .end local v1    # "db_diffTime":I
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "cmpUid":I
    .end local v8    # "table":Lcom/android/server/ipm/AppLaunchInfo;
    .end local v19    # "db_launchDateTime":Ljava/lang/String;
    .end local v21    # "db_userId":I
    .end local v22    # "cmpName":Ljava/lang/String;
    .restart local v2    # "cmpName":Ljava/lang/String;
    .local v5, "cmpUid":I
    :goto_182
    move/from16 v1, v20

    move/from16 v0, v23

    move-wide/from16 v7, v25

    goto/16 :goto_e3

    .line 271
    .end local v2    # "cmpName":Ljava/lang/String;
    .end local v5    # "cmpUid":I
    .end local v13    # "UserIdIndex":I
    .end local v14    # "CountIndex":I
    .end local v15    # "DiffTimeIndex":I
    .end local v20    # "LaunchDateTimeIndex":I
    .end local v23    # "PkgNameIndex":I
    :catch_18a
    move-exception v0

    goto :goto_1ba

    .line 227
    .end local v25    # "requesttime":J
    .local v0, "PkgNameIndex":I
    .local v1, "LaunchDateTimeIndex":I
    .restart local v2    # "cmpName":Ljava/lang/String;
    .restart local v5    # "cmpUid":I
    .local v7, "requesttime":J
    .restart local v13    # "UserIdIndex":I
    .restart local v14    # "CountIndex":I
    .restart local v15    # "DiffTimeIndex":I
    :cond_18c
    move/from16 v23, v0

    move/from16 v20, v1

    move-object/from16 v22, v2

    move/from16 v24, v5

    move-wide/from16 v25, v7

    .end local v0    # "PkgNameIndex":I
    .end local v1    # "LaunchDateTimeIndex":I
    .end local v2    # "cmpName":Ljava/lang/String;
    .end local v5    # "cmpUid":I
    .end local v7    # "requesttime":J
    .restart local v20    # "LaunchDateTimeIndex":I
    .restart local v22    # "cmpName":Ljava/lang/String;
    .restart local v23    # "PkgNameIndex":I
    .restart local v24    # "cmpUid":I
    .restart local v25    # "requesttime":J
    goto :goto_1a5

    .line 274
    .end local v13    # "UserIdIndex":I
    .end local v14    # "CountIndex":I
    .end local v15    # "DiffTimeIndex":I
    .end local v20    # "LaunchDateTimeIndex":I
    .end local v22    # "cmpName":Ljava/lang/String;
    .end local v23    # "PkgNameIndex":I
    .end local v24    # "cmpUid":I
    .end local v25    # "requesttime":J
    .restart local v7    # "requesttime":J
    :catchall_197
    move-exception v0

    move-wide/from16 v25, v7

    .end local v7    # "requesttime":J
    .restart local v25    # "requesttime":J
    goto :goto_1c2

    .line 271
    .end local v25    # "requesttime":J
    .restart local v7    # "requesttime":J
    :catch_19b
    move-exception v0

    move-wide/from16 v25, v7

    .end local v7    # "requesttime":J
    .restart local v25    # "requesttime":J
    goto :goto_1ba

    .line 218
    .end local v16    # "currentTime":J
    .end local v18    # "db":Lcom/android/server/ipm/DBManager;
    .end local v25    # "requesttime":J
    .local v2, "db":Lcom/android/server/ipm/DBManager;
    .local v5, "currentTime":J
    .restart local v7    # "requesttime":J
    :cond_19f
    move-object/from16 v18, v2

    move-wide/from16 v16, v5

    move-wide/from16 v25, v7

    .line 274
    .end local v2    # "db":Lcom/android/server/ipm/DBManager;
    .end local v5    # "currentTime":J
    .end local v7    # "requesttime":J
    .restart local v16    # "currentTime":J
    .restart local v18    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v25    # "requesttime":J
    :goto_1a5
    if-eqz v3, :cond_1c0

    .line 275
    :goto_1a7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1c0

    .line 274
    .end local v16    # "currentTime":J
    .end local v18    # "db":Lcom/android/server/ipm/DBManager;
    .end local v25    # "requesttime":J
    .restart local v2    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v5    # "currentTime":J
    .restart local v7    # "requesttime":J
    :catchall_1ab
    move-exception v0

    move-object/from16 v18, v2

    move-wide/from16 v16, v5

    move-wide/from16 v25, v7

    .end local v2    # "db":Lcom/android/server/ipm/DBManager;
    .end local v5    # "currentTime":J
    .end local v7    # "requesttime":J
    .restart local v16    # "currentTime":J
    .restart local v18    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v25    # "requesttime":J
    goto :goto_1c2

    .line 271
    .end local v16    # "currentTime":J
    .end local v18    # "db":Lcom/android/server/ipm/DBManager;
    .end local v25    # "requesttime":J
    .restart local v2    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v5    # "currentTime":J
    .restart local v7    # "requesttime":J
    :catch_1b3
    move-exception v0

    move-object/from16 v18, v2

    move-wide/from16 v16, v5

    move-wide/from16 v25, v7

    .line 272
    .end local v2    # "db":Lcom/android/server/ipm/DBManager;
    .end local v5    # "currentTime":J
    .end local v7    # "requesttime":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "currentTime":J
    .restart local v18    # "db":Lcom/android/server/ipm/DBManager;
    .restart local v25    # "requesttime":J
    :goto_1ba
    :try_start_1ba
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1bd
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_1c1

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1c0

    .line 275
    goto :goto_1a7

    .line 279
    :cond_1c0
    :goto_1c0
    return-object v4

    .line 274
    :catchall_1c1
    move-exception v0

    :goto_1c2
    if-eqz v3, :cond_1c7

    .line 275
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_1c7
    throw v0
.end method

.method protected static getExceptionPkgs()[Ljava/lang/String;
    .registers 1

    .line 157
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->exceptionPkgs:[Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getPredictedApps(II)Ljava/util/ArrayList;
    .registers 24
    .param p0, "type"    # I
    .param p1, "topN"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/AppRanking;",
            ">;"
        }
    .end annotation

    move/from16 v1, p0

    const-class v2, Lcom/android/server/ipm/AufPredictor;

    monitor-enter v2

    .line 501
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 502
    .local v3, "returnAppLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/AppRanking;>;"
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v4, v0

    .line 504
    .local v4, "pkgManager":Landroid/content/pm/PackageManager;
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b2

    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_1b2

    .line 507
    :cond_20
    invoke-static/range {p0 .. p1}, Lcom/android/server/ipm/AufPredictor;->setTopN(II)V

    .line 509
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_12a

    if-eq v1, v10, :cond_2d

    goto/16 :goto_172

    .line 519
    :cond_2d
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v11, Lcom/android/server/ipm/AufPredictor;->mBuBTopN:I

    if-ge v0, v11, :cond_60

    .line 520
    const-string v0, "AufPredictor"

    const-string v11, "[>%s] not enough apps for return. totalApps:%d, reqSize:%d"

    new-array v12, v7, [Ljava/lang/Object;

    sget-object v13, Lcom/android/server/ipm/AufPredictor;->mRequestTypes:[Ljava/lang/String;

    aget-object v13, v13, v1

    aput-object v13, v12, v9

    sget-object v13, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    .line 521
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    sget v13, Lcom/android/server/ipm/AufPredictor;->mSeedbedTopN:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    .line 520
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    goto/16 :goto_172

    .line 525
    :cond_60
    sget v0, Lcom/android/server/ipm/AufPredictor;->mBuBTopN:I

    move v11, v0

    .local v11, "i":I
    :goto_63
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_129

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v12, Lcom/android/server/ipm/AufPredictor;->mSeedbedTopN:I

    if-ge v0, v12, :cond_129

    .line 526
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/AppRanking;

    iget-object v0, v0, Lcom/android/server/ipm/AppRanking;->packageName:Ljava/lang/String;

    move-object v12, v0

    .line 527
    .local v12, "pkgName":Ljava/lang/String;
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/AppRanking;

    iget v0, v0, Lcom/android/server/ipm/AppRanking;->userId:I
    :try_end_88
    .catchall {:try_start_5 .. :try_end_88} :catchall_1b6

    move v13, v0

    .line 531
    .local v13, "userId":I
    :try_start_89
    invoke-virtual {v4, v12, v9, v13}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 532
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v14, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v14, v10

    if-eqz v14, :cond_94

    move v14, v10

    goto :goto_95

    :cond_94
    move v14, v9

    .line 535
    .local v14, "isSystemApp":Z
    :goto_95
    new-instance v15, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v15, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v5, v15

    .line 536
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-virtual {v5, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-virtual {v4, v5, v9, v13}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 540
    .local v6, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_b4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_b4

    move v15, v10

    goto :goto_b5

    :cond_b4
    move v15, v9

    .line 542
    .local v15, "hasActivity":Z
    :goto_b5
    if-nez v14, :cond_c4

    if-eqz v15, :cond_c4

    .line 543
    sget-object v7, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ipm/AppRanking;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_c4
    sget-boolean v7, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v7, :cond_104

    .line 546
    const-string v7, "AufPredictor"

    const-string v8, "[>%s] %d/%d) pkgName:%s isSystem:%s hasActivity:%s"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    sget-object v21, Lcom/android/server/ipm/AufPredictor;->mRequestTypes:[Ljava/lang/String;

    aget-object v21, v21, v1

    aput-object v21, v10, v9

    .line 547
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v20, 0x1

    aput-object v21, v10, v20

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v19, 0x2

    aput-object v21, v10, v19

    const/16 v18, 0x3

    aput-object v12, v10, v18

    .line 548
    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    const/16 v17, 0x4

    aput-object v21, v10, v17

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    const/16 v16, 0x5

    aput-object v21, v10, v16

    .line 546
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_89 .. :try_end_104} :catch_105
    .catchall {:try_start_89 .. :try_end_104} :catchall_1b6

    .line 555
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "isSystemApp":Z
    .end local v15    # "hasActivity":Z
    :cond_104
    goto :goto_122

    .line 550
    :catch_105
    move-exception v0

    .line 551
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_106
    sget-boolean v5, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v5, :cond_121

    .line 552
    const-string v5, "AufPredictor"

    const-string v6, "NameNotFoundException: (%d) %s"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v9

    const/4 v7, 0x1

    aput-object v12, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_121
    nop

    .line 525
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "userId":I
    :goto_122
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    goto/16 :goto_63

    .line 557
    .end local v11    # "i":I
    :cond_129
    goto :goto_172

    .line 511
    :cond_12a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12b
    sget-object v5, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_171

    sget v5, Lcom/android/server/ipm/AufPredictor;->mBuBTopN:I

    if-ge v0, v5, :cond_171

    .line 512
    sget-object v5, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/AppRanking;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget-boolean v5, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v5, :cond_16e

    .line 514
    const-string v5, "AufPredictor"

    const-string v6, "[>%s] %03d) pkgName:%s"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/ipm/AufPredictor;->mRequestTypes:[Ljava/lang/String;

    aget-object v7, v7, v1

    aput-object v7, v8, v9

    .line 515
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v8, v10

    sget-object v7, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ipm/AppRanking;

    iget-object v7, v7, Lcom/android/server/ipm/AppRanking;->packageName:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v7, v8, v10

    .line 514
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_16e
    add-int/lit8 v0, v0, 0x1

    goto :goto_12b

    .line 517
    .end local v0    # "i":I
    :cond_171
    nop

    .line 563
    :goto_172
    const-string v0, "AufPredictor"

    const-string v5, "[>%s] totalApps:%d returnSize:%d (BuB-topN:%d Seedbed-topN:%d)"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/ipm/AufPredictor;->mRequestTypes:[Ljava/lang/String;

    aget-object v7, v7, v1

    aput-object v7, v6, v9

    sget-object v7, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;

    .line 564
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget v7, Lcom/android/server/ipm/AufPredictor;->mBuBTopN:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    sget v7, Lcom/android/server/ipm/AufPredictor;->mSeedbedTopN:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    .line 563
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b0
    .catchall {:try_start_106 .. :try_end_1b0} :catchall_1b6

    .line 566
    monitor-exit v2

    return-object v3

    .line 505
    :cond_1b2
    :goto_1b2
    :try_start_1b2
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mPredictAppLists:Ljava/util/ArrayList;
    :try_end_1b4
    .catchall {:try_start_1b2 .. :try_end_1b4} :catchall_1b6

    monitor-exit v2

    return-object v0

    .line 500
    .end local v3    # "returnAppLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/AppRanking;>;"
    .end local v4    # "pkgManager":Landroid/content/pm/PackageManager;
    .end local p0    # "type":I
    .end local p1    # "topN":I
    :catchall_1b6
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected static loadDataFromDB(I)Ljava/util/List;
    .registers 18
    .param p0, "date"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/AppLaunchInfo;",
            ">;"
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/android/server/ipm/AufPredictor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 284
    .local v1, "pkgManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 285
    .local v2, "iPkgManager":Landroid/content/pm/IPackageManager;
    invoke-static/range {p0 .. p0}, Lcom/android/server/ipm/AufPredictor;->getApplaunchInfo(I)Ljava/util/List;

    move-result-object v3

    .line 286
    .local v3, "appsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 288
    .local v4, "returnAppsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppLaunchInfo;>;"
    sget-boolean v0, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    const-string v5, "AufPredictor"

    if-eqz v0, :cond_31

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 288
    :cond_31
    move/from16 v6, p0

    .line 293
    :goto_33
    const/4 v0, 0x0

    move v7, v0

    .local v7, "iDB":I
    :goto_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_f0

    .line 295
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/AppLaunchInfo;

    iget-object v8, v0, Lcom/android/server/ipm/AppLaunchInfo;->runningPkgname:Ljava/lang/String;

    .line 296
    .local v8, "pkgName":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/AppLaunchInfo;

    iget v9, v0, Lcom/android/server/ipm/AppLaunchInfo;->userId:I

    .line 298
    .local v9, "userId":I
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    :try_start_4e
    invoke-virtual {v1, v8, v11, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 299
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v2, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v13
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4e .. :try_end_56} :catch_d2
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_56} :catch_b8

    .line 300
    .local v13, "appState":I
    const/4 v14, 0x4

    const/4 v15, 0x3

    if-eq v13, v14, :cond_99

    if-eq v13, v15, :cond_99

    if-ne v13, v10, :cond_5f

    goto :goto_99

    .line 315
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "appState":I
    :cond_5f
    nop

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "isExceptionApp":Z
    const/4 v10, 0x0

    .local v10, "iPkg":I
    :goto_62
    sget-object v11, Lcom/android/server/ipm/AufPredictor;->exceptionPkgs:[Ljava/lang/String;

    array-length v12, v11

    if-ge v10, v12, :cond_8d

    .line 319
    aget-object v11, v11, v10

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8a

    .line 320
    sget-boolean v11, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v11, :cond_88

    .line 321
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadDB exceptionPkgs: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_88
    const/4 v0, 0x1

    .line 323
    goto :goto_8d

    .line 318
    :cond_8a
    add-int/lit8 v10, v10, 0x1

    goto :goto_62

    .line 327
    .end local v10    # "iPkg":I
    :cond_8d
    :goto_8d
    if-nez v0, :cond_ec

    .line 328
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/ipm/AppLaunchInfo;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    .line 303
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "appState":I
    :cond_99
    :goto_99
    :try_start_99
    sget-boolean v14, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v14, :cond_b7

    .line 304
    const-string/jumbo v14, "loadDB appDisabled: %s(%d), state: %d"

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v8, v15, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v10

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_99 .. :try_end_b7} :catch_d2
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_b7} :catch_b8

    .line 305
    :cond_b7
    goto :goto_ec

    .line 311
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "appState":I
    :catch_b8
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v13, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v13, :cond_d1

    .line 313
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    const-string/jumbo v11, "loadDB RemoteExcept: %s(%d)"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_d1
    goto :goto_ec

    .line 307
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d2
    move-exception v0

    .line 308
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v13, Lcom/android/server/ipm/AufPredictor;->DEBUG:Z

    if-eqz v13, :cond_eb

    .line 309
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    const-string/jumbo v11, "loadDB NameNotFound: %s(%d)"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_eb
    nop

    .line 293
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "userId":I
    :cond_ec
    :goto_ec
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_35

    .line 330
    .end local v7    # "iDB":I
    :cond_f0
    return-object v4
.end method

.method protected static declared-synchronized setTopN(II)V
    .registers 4
    .param p0, "type"    # I
    .param p1, "topN"    # I

    const-class v0, Lcom/android/server/ipm/AufPredictor;

    monitor-enter v0

    .line 162
    if-eqz p0, :cond_c

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    goto :goto_f

    .line 167
    :cond_9
    :try_start_9
    sput p1, Lcom/android/server/ipm/AufPredictor;->mSeedbedTopN:I

    .line 168
    goto :goto_f

    .line 164
    :cond_c
    sput p1, Lcom/android/server/ipm/AufPredictor;->mBuBTopN:I
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_11

    .line 165
    nop

    .line 172
    :goto_f
    monitor-exit v0

    return-void

    .line 161
    .end local p0    # "type":I
    .end local p1    # "topN":I
    :catchall_11
    move-exception p0

    monitor-exit v0

    throw p0
.end method
