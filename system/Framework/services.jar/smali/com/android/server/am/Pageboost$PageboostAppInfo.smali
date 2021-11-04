.class final Lcom/android/server/am/Pageboost$PageboostAppInfo;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageboostAppInfo"
.end annotation


# instance fields
.field mAccExecTime:J

.field mAnon:I

.field mApkPath:Ljava/lang/String;

.field mApkSize:I

.field mCaptured:I

.field mExecCnt:I

.field mGPU:I

.field mHitCnt:I

.field mION:I

.field mInstalled:I

.field mIsGameApp:Z

.field mMapCaptureSizeForPrefetch:J

.field mName:Ljava/lang/String;

.field mNameTrimmed:Ljava/lang/String;

.field mPid:I

.field mPrefetchCnt:I

.field mProcStatus:I

.field mProcStatusPid:I

.field mScore:I

.field mSizeForPrefetch:J

.field mSizeForVramdisk:J

.field mSkipNextEntry:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1111
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    const-string v16, ""

    invoke-direct/range {v0 .. v16}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;IIIIJJIIJIILjava/lang/String;)V

    .line 1112
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    .line 1113
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 1114
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 1115
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 1116
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkSize:I

    .line 1117
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    .line 1118
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    .line 1119
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    .line 1120
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    .line 1121
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    .line 1122
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 1123
    const-string v0, ""

    iput-object v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 1124
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isGameApp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    .line 1125
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIIIJJIIJIILjava/lang/String;)V
    .registers 33
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "captured"    # I
    .param p3, "anon"    # I
    .param p4, "ion"    # I
    .param p5, "gpu"    # I
    .param p6, "sz_pr"    # J
    .param p8, "sz_map_pr"    # J
    .param p10, "score"    # I
    .param p11, "ecnt"    # I
    .param p12, "accet"    # J
    .param p14, "pcnt"    # I
    .param p15, "hcnt"    # I
    .param p16, "apkpath"    # Ljava/lang/String;

    .line 1127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p14

    move/from16 v5, p15

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    .line 1129
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 1130
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 1131
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 1132
    iput-object v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 1133
    const-string v6, "."

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    .line 1134
    move/from16 v6, p2

    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    .line 1135
    move/from16 v7, p3

    iput v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    .line 1136
    move/from16 v8, p4

    iput v8, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    .line 1137
    move/from16 v9, p5

    iput v9, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    .line 1138
    move-wide/from16 v10, p6

    iput-wide v10, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    .line 1139
    move-wide/from16 v12, p8

    iput-wide v12, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    .line 1140
    const-wide/16 v14, 0x0

    iput-wide v14, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    .line 1141
    iput v2, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    .line 1142
    iput v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    .line 1143
    move-wide/from16 v14, p12

    iput-wide v14, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    .line 1144
    iput v4, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    .line 1145
    iput v5, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    .line 1146
    move-object/from16 v6, p16

    iput-object v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 1147
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isGameApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    .line 1148
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appinfo : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/Pageboost$PageboostAppInfo;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1086
    invoke-direct {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getSizeForVramdisk()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/Pageboost$PageboostAppInfo;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .param p1, "x1"    # J

    .line 1086
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setSizeForVramdisk(J)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1086
    invoke-direct {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->initAalPrefetchList()V

    return-void
.end method

.method private getPreDo(I)Lcom/android/server/am/Pageboost$PreDo;
    .registers 3
    .param p1, "score"    # I

    .line 1346
    new-instance v0, Lcom/android/server/am/Pageboost$IoPrefetch;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$IoPrefetch;-><init>()V

    return-object v0
.end method

.method private getSizeForVramdisk()J
    .registers 3

    .line 1227
    iget-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    return-wide v0
.end method

.method private initAalPrefetchList()V
    .registers 1

    .line 1364
    return-void
.end method

.method private isGameApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1179
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1181
    :try_start_6
    invoke-static {p1}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_f

    if-eqz v0, :cond_e

    .line 1182
    const/4 v0, 0x1

    return v0

    .line 1186
    :cond_e
    goto :goto_10

    .line 1184
    :catch_f
    move-exception v0

    .line 1188
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method private setSizeForVramdisk(J)V
    .registers 9
    .param p1, "length"    # J

    .line 1219
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    .line 1220
    return-void

    .line 1222
    :cond_7
    nop

    .line 1223
    const-wide/16 v2, 0x1000

    rem-long v4, p1, v2

    cmp-long v0, v4, v0

    if-lez v0, :cond_15

    div-long v0, p1, v2

    mul-long/2addr v0, v2

    add-long/2addr v0, v2

    goto :goto_16

    :cond_15
    move-wide v0, p1

    :goto_16
    iput-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    .line 1224
    return-void
.end method


# virtual methods
.method public activeLaunch()Z
    .registers 2

    .line 1354
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    invoke-direct {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getPreDo(I)Lcom/android/server/am/Pageboost$PreDo;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/am/Pageboost$PreDo;->activeLaunch(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v0

    return v0
.end method

.method public alive()Z
    .registers 2

    .line 1358
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/Pageboost;->getPidFromPackageName(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->access$1700(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public checkCmdlineByPid()Z
    .registers 8

    .line 1313
    const/4 v0, 0x0

    .line 1314
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cmdline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1316
    .local v1, "fn":Ljava/lang/String;
    :try_start_19
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_4d

    .line 1317
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_23
    const-string v3, ""

    .line 1318
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1319
    if-eqz v3, :cond_3f

    .line 1320
    const-string v4, "[^\\p{Alnum}\\.]+"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 1321
    .local v4, "cmdline":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_43

    if-eqz v5, :cond_3f

    .line 1322
    const/4 v0, 0x1

    .line 1325
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "cmdline":[Ljava/lang/String;
    :cond_3f
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_4d

    .line 1327
    .end local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_57

    .line 1316
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_43
    move-exception v3

    :try_start_44
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v4

    :try_start_49
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "ret":Z
    .end local v1    # "fn":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :goto_4c
    throw v3
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_4d

    .line 1325
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "ret":Z
    .restart local v1    # "fn":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :catch_4d
    move-exception v2

    .line 1326
    .local v2, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cmdline read failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_57
    return v0
.end method

.method public execute()Z
    .registers 2

    .line 1350
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    invoke-direct {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getPreDo(I)Lcom/android/server/am/Pageboost$PreDo;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/am/Pageboost$PreDo;->execute(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v0

    return v0
.end method

.method public getApkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 1341
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedLevel()I
    .registers 2

    .line 1210
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    return v0
.end method

.method public getGameApp()Z
    .registers 2

    .line 1192
    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    return v0
.end method

.method public getIoinfo([J)V
    .registers 9
    .param p1, "ioinfo"    # [J

    .line 1292
    const/4 v0, 0x0

    .line 1293
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/ioinfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1295
    .local v1, "fn":Ljava/lang/String;
    :try_start_19
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_50

    .line 1296
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_23
    const-string v3, ""

    .line 1297
    .local v3, "line":Ljava/lang/String;
    :goto_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_41

    move-object v3, v4

    if-eqz v4, :cond_3d

    .line 1298
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    :try_start_2e
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, p1, v0

    .line 1299
    array-length v0, p1
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_3b

    if-ne v4, v0, :cond_39

    .line 1300
    move v0, v4

    goto :goto_3d

    .line 1299
    :cond_39
    move v0, v4

    goto :goto_25

    .line 1295
    .end local v3    # "line":Ljava/lang/String;
    :catchall_3b
    move-exception v0

    goto :goto_44

    .line 1303
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_50

    .line 1305
    .end local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_5b

    .line 1295
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_41
    move-exception v3

    move v4, v0

    move-object v0, v3

    .end local v0    # "i":I
    .restart local v4    # "i":I
    :goto_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v3

    :try_start_49
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "fn":Ljava/lang/String;
    .end local v4    # "i":I
    .end local p0    # "this":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .end local p1    # "ioinfo":[J
    :goto_4c
    throw v0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_4d

    .line 1303
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "fn":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .restart local p1    # "ioinfo":[J
    :catch_4d
    move-exception v2

    move v0, v4

    goto :goto_51

    .end local v4    # "i":I
    .restart local v0    # "i":I
    :catch_50
    move-exception v2

    .line 1304
    .local v2, "e":Ljava/lang/Exception;
    :goto_51
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ioinfo read failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5b
    array-length v2, p1

    if-ne v0, v2, :cond_64

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->checkCmdlineByPid()Z

    move-result v2

    if-nez v2, :cond_69

    .line 1308
    :cond_64
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    aput-wide v3, p1, v2

    .line 1310
    :cond_69
    return-void
.end method

.method public getMemUsage()Lcom/android/server/am/Pageboost$MemUsage;
    .registers 5

    .line 1202
    new-instance v0, Lcom/android/server/am/Pageboost$MemUsage;

    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/Pageboost$MemUsage;-><init>(III)V

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 1284
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    return v0
.end method

.method public getSkipNextEntry()Z
    .registers 2

    .line 1333
    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSkipNextEntry:Z

    return v0
.end method

.method public isApkPathCorrect()Z
    .registers 4

    .line 1236
    const/4 v0, 0x0

    .line 1237
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 1238
    const/4 v0, 0x0

    goto :goto_24

    .line 1239
    :cond_7
    const-string v2, "/data/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 1240
    const-string v2, "/product/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1241
    :cond_23
    const/4 v0, 0x1

    .line 1244
    :cond_24
    :goto_24
    return v0
.end method

.method public isFullyExecuted()Z
    .registers 3

    .line 1231
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public setApkPath(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 1253
    if-nez p1, :cond_3

    .line 1254
    return-void

    .line 1258
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_30

    .line 1259
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reuse the dbinfo for this app info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return-void

    .line 1263
    :cond_30
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset this app info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iput-object p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 1267
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isApkPathCorrect()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 1268
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app not in internal storage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    return-void

    .line 1273
    :cond_7d
    # getter for: Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1600()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1274
    invoke-direct {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->initAalPrefetchList()V

    .line 1275
    return-void
.end method

.method public setCapturedLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .line 1206
    iput p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    .line 1207
    return-void
.end method

.method public setCapturedSizeForPrefetch(JJ)V
    .registers 5
    .param p1, "total_size"    # J
    .param p3, "map_size"    # J

    .line 1214
    iput-wide p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    .line 1215
    iput-wide p3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    .line 1216
    return-void
.end method

.method public setMemUsage(Lcom/android/server/am/Pageboost$MemUsage;)V
    .registers 3
    .param p1, "mu"    # Lcom/android/server/am/Pageboost$MemUsage;

    .line 1196
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$MemUsage;->getAnon()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    .line 1197
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$MemUsage;->getIONMem()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    .line 1198
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$MemUsage;->getGPUMem()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    .line 1199
    return-void
.end method

.method public setPid(I)V
    .registers 2
    .param p1, "pid"    # I

    .line 1288
    iput p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    .line 1289
    return-void
.end method

.method public setSkipNextEntry(Z)V
    .registers 2
    .param p1, "skip"    # Z

    .line 1337
    iput-boolean p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSkipNextEntry:Z

    .line 1338
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1153
    const-string v0, ""

    .line 1154
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    if-eqz v3, :cond_144

    iget-wide v4, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    int-to-long v6, v3

    div-long/2addr v4, v6

    goto :goto_146

    :cond_144
    const-wide/16 v4, 0x0

    :goto_146
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    return-object v0
.end method

.method public updateExecTime(I)V
    .registers 6
    .param p1, "launchtime"    # I

    .line 1279
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    .line 1280
    iget-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    .line 1281
    return-void
.end method
