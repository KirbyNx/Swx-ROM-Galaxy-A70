.class Lcom/android/server/McpsDumpManager;
.super Ljava/lang/Object;
.source "McpsService.java"


# instance fields
.field private final DRIVER_MCPS_STAT_HIST:Ljava/lang/String;

.field private final DRIVER_STATS_PATH:Ljava/lang/String;

.field private final MS:J

.field private final REGEX_IPPORT_PATTERN:Ljava/lang/String;

.field private final REGEX_TIME_PATTERN:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private isUserBinary:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    const-string v0, "MCPS-DumpManager"

    iput-object v0, p0, Lcom/android/server/McpsDumpManager;->TAG:Ljava/lang/String;

    .line 1237
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/McpsDumpManager;->MS:J

    .line 1239
    const-string v0, "/proc/mcps/"

    iput-object v0, p0, Lcom/android/server/McpsDumpManager;->DRIVER_STATS_PATH:Ljava/lang/String;

    .line 1240
    const-string/jumbo v0, "mcps_dump"

    iput-object v0, p0, Lcom/android/server/McpsDumpManager;->DRIVER_MCPS_STAT_HIST:Ljava/lang/String;

    .line 1242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/McpsDumpManager;->isUserBinary:Z

    .line 1270
    const-string v0, "([0-9]+).([0-9]+)"

    iput-object v0, p0, Lcom/android/server/McpsDumpManager;->REGEX_TIME_PATTERN:Ljava/lang/String;

    .line 1271
    const-string v0, "(.+\\:[0-9]+)"

    iput-object v0, p0, Lcom/android/server/McpsDumpManager;->REGEX_IPPORT_PATTERN:Ljava/lang/String;

    .line 1246
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/McpsDumpManager;->isUserBinary:Z

    .line 1247
    return-void
.end method

.method private fileread(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1329
    const-string v0, "Fail to close fr : "

    const-string v1, "Fail to close br : "

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1332
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 1333
    .local v4, "br":Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1334
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, "MCPS-DumpManager"

    if-nez v6, :cond_32

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileread : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - no exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    return-object v2

    .line 1340
    :cond_32
    :try_start_32
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 1341
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v6

    .line 1343
    :goto_3e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    .local v8, "line":Ljava/lang/String;
    if-eqz v6, :cond_49

    .line 1344
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_48} :catch_5c
    .catchall {:try_start_32 .. :try_end_48} :catchall_5a

    goto :goto_3e

    .line 1351
    .end local v8    # "line":Ljava/lang/String;
    :cond_49
    :try_start_49
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_51

    :catch_4d
    move-exception v6

    .local v6, "e2":Ljava/io/IOException;
    invoke-static {v7, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    .end local v6    # "e2":Ljava/io/IOException;
    :goto_51
    :try_start_51
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_59

    :catch_55
    move-exception v1

    .local v1, "e2":Ljava/io/IOException;
    invoke-static {v7, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1354
    .end local v1    # "e2":Ljava/io/IOException;
    :goto_59
    return-object v2

    .line 1351
    :catchall_5a
    move-exception v6

    goto :goto_78

    .line 1346
    :catch_5c
    move-exception v6

    .line 1348
    .local v6, "e":Ljava/io/IOException;
    :try_start_5d
    const-string v8, "Fail to fileread : "

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_5a

    .line 1349
    nop

    .line 1351
    if-eqz v4, :cond_6d

    :try_start_65
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception v8

    .local v8, "e2":Ljava/io/IOException;
    invoke-static {v7, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    .end local v8    # "e2":Ljava/io/IOException;
    :cond_6d
    :goto_6d
    if-eqz v3, :cond_77

    :try_start_6f
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-static {v7, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1349
    .end local v1    # "e2":Ljava/io/IOException;
    :cond_77
    :goto_77
    return-object v2

    .line 1351
    .end local v6    # "e":Ljava/io/IOException;
    :goto_78
    if-eqz v4, :cond_82

    :try_start_7a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception v8

    .restart local v8    # "e2":Ljava/io/IOException;
    invoke-static {v7, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    .end local v8    # "e2":Ljava/io/IOException;
    :cond_82
    :goto_82
    if-eqz v3, :cond_8c

    :try_start_84
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-static {v7, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1353
    .end local v1    # "e2":Ljava/io/IOException;
    :cond_8c
    :goto_8c
    throw v6
.end method


# virtual methods
.method public doDumpHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 56
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1274
    move-object/from16 v0, p2

    const-string v1, "/proc/mcps/mcps_dump"

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lcom/android/server/McpsDumpManager;->fileread(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1275
    .local v1, "outs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "([0-9]+)\\]\\s+([0-9]+).([0-9]+)\\s+(.+\\:[0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+)\\s+([0-9]+).([0-9]+)\\s+([0-9]+).([0-9]+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1282
    .local v3, "p":Ljava/util/regex/Pattern;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyMMdd-HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1283
    .local v4, "dt":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 1284
    .local v5, "curDate":Ljava/util/Date;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 1285
    .local v6, "uptimeDate":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 1287
    const-string v7, "------------------< History Dump"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    const-string/jumbo v7, "idx] timestamp rx_ip:rx_port in out drop ofo mig l2l l2b b2l b2b 1st_mig_time last_mig_time"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 1291
    .local v7, "timestampDate":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 1292
    .local v8, "mig1stTimeDate":Ljava/util/Date;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 1294
    .local v9, "migLastTimeDate":Ljava/util/Date;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1295
    .local v11, "out":Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1296
    .local v12, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_66

    .line 1297
    goto :goto_4f

    .line 1299
    :cond_66
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/McpsService;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1300
    .local v14, "idx":I
    const/4 v15, 0x2

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 1301
    .local v16, "timestampInSec":J
    const/4 v15, 0x3

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 1302
    .local v18, "timestampInMillis":J
    const/4 v15, 0x4

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    .line 1303
    .local v20, "ipport":Ljava/lang/String;
    const/4 v15, 0x5

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    .line 1304
    .local v21, "inputNum":J
    const/4 v15, 0x6

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 1305
    .local v23, "outputNum":J
    const/4 v15, 0x7

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    .line 1306
    .local v25, "dropNum":J
    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    .line 1307
    .local v27, "ofoNum":J
    const/16 v15, 0x9

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    .line 1308
    .local v29, "migCount":J
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    .line 1309
    .local v31, "l2lCount":J
    const/16 v15, 0xb

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v33

    .line 1310
    .local v33, "l2bCount":J
    const/16 v15, 0xc

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v35

    .line 1311
    .local v35, "b2lCount":J
    const/16 v15, 0xd

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v37

    .line 1312
    .local v37, "b2bCount":J
    const/16 v15, 0xe

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v39

    .line 1313
    .local v39, "mig1stTimeInSec":J
    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v41

    .line 1314
    .local v41, "mig1stTimeInMillis":J
    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v43

    .line 1315
    .local v43, "migLastTimeInSec":J
    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/McpsService;->parseLong(Ljava/lang/String;)J

    move-result-wide v45

    .line 1317
    .local v45, "migLastTimeInMillis":J
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v47

    const-wide/16 v49, 0x3e8

    mul-long v51, v16, v49

    add-long v47, v47, v51

    move-object v13, v1

    .end local v1    # "outs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "outs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-long v1, v47, v18

    invoke-virtual {v7, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1318
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    mul-long v47, v39, v49

    add-long v1, v1, v47

    add-long v1, v1, v41

    invoke-virtual {v8, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1319
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    mul-long v49, v49, v43

    add-long v1, v1, v49

    add-long v1, v1, v45

    invoke-virtual {v9, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1321
    new-array v1, v15, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v2

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x1

    aput-object v2, v1, v15

    const/4 v2, 0x2

    aput-object v20, v1, v2

    .line 1322
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v15, 0x3

    aput-object v2, v1, v15

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v15, 0x4

    aput-object v2, v1, v15

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v15, 0x5

    aput-object v2, v1, v15

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v15, 0x6

    aput-object v2, v1, v15

    .line 1323
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v15, 0x7

    aput-object v2, v1, v15

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v15, 0x8

    aput-object v2, v1, v15

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v15, 0x9

    aput-object v2, v1, v15

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v15, 0xa

    aput-object v2, v1, v15

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v15, 0xb

    aput-object v2, v1, v15

    .line 1324
    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xc

    aput-object v2, v1, v15

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xd

    aput-object v2, v1, v15

    .line 1321
    const-string v2, "%2d] %s %s %d %d %d %d %d %d %d %d %d %s %s\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1325
    .end local v11    # "out":Ljava/lang/String;
    .end local v12    # "m":Ljava/util/regex/Matcher;
    .end local v14    # "idx":I
    .end local v16    # "timestampInSec":J
    .end local v18    # "timestampInMillis":J
    .end local v20    # "ipport":Ljava/lang/String;
    .end local v21    # "inputNum":J
    .end local v23    # "outputNum":J
    .end local v25    # "dropNum":J
    .end local v27    # "ofoNum":J
    .end local v29    # "migCount":J
    .end local v31    # "l2lCount":J
    .end local v33    # "l2bCount":J
    .end local v35    # "b2lCount":J
    .end local v37    # "b2bCount":J
    .end local v39    # "mig1stTimeInSec":J
    .end local v41    # "mig1stTimeInMillis":J
    .end local v43    # "migLastTimeInSec":J
    .end local v45    # "migLastTimeInMillis":J
    move-object/from16 v2, p0

    move-object v1, v13

    goto/16 :goto_4f

    .line 1326
    .end local v13    # "outs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "outs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_19f
    return-void
.end method

.method public doHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1254
    iget-boolean v0, p0, Lcom/android/server/McpsDumpManager;->isUserBinary:Z

    if-eqz v0, :cond_5

    .line 1255
    return-void

    .line 1258
    :cond_5
    const-string v0, "------------------< DEV"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    const-string v0, "-m [ff]        : rmnet rps cpu mask"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    const-string v0, "-mode [int]    : mcps arps mode"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    const-string v0, "-l [0/1/2]     : base policy level , 0-high, 1-mid, 2-low"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    const-string v0, "-n [0/1/2/3]   : new session start cluster , 0-all, 1-l, 2-b, 3-driver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1266
    const-string v0, "enable/disable : mcps enable / disable"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    const-string/jumbo v0, "reset          : reset policy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    return-void
.end method

.method public isUserBinary()Z
    .registers 2

    .line 1250
    iget-boolean v0, p0, Lcom/android/server/McpsDumpManager;->isUserBinary:Z

    return v0
.end method
