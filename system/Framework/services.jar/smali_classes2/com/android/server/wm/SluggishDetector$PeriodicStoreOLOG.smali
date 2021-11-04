.class final Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodicStoreOLOG"
.end annotation


# static fields
.field private static Diff_OlogLength:J

.field private static Origin_OlogLength:J

.field private static STORE_FLAG_FOR_ADD:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 3174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    .line 3176
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    .line 3178
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    .line 3179
    sput-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$10300()V
    .registers 0

    .line 3172
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->clear()V

    return-void
.end method

.method static synthetic access$11000(Ljava/io/PrintWriter;)V
    .registers 1
    .param p0, "x0"    # Ljava/io/PrintWriter;

    .line 3172
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1600(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 3172
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->storeOLOG(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()V
    .registers 0

    .line 3172
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->init()V

    return-void
.end method

.method static synthetic access$500()V
    .registers 0

    .line 3172
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->step()V

    return-void
.end method

.method private static check()Z
    .registers 1

    .line 3196
    const/4 v0, 0x1

    return v0
.end method

.method private static clear()V
    .registers 1

    .line 3557
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->check()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3558
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->init()V

    .line 3560
    :cond_9
    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3564
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->clear()V

    .line 3566
    if-eqz p0, :cond_a

    .line 3567
    const-string v0, " [OLOG] CLEAR OLOGR - PERIODIC STORE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3569
    :cond_a
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3622
    const-string v0, "======================================================================"

    if-nez p0, :cond_c

    .line 3623
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    const-string v1, " [OLOG][ADB] dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    return-void

    .line 3630
    :cond_c
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->check()Z

    move-result v1

    if-nez v1, :cond_15

    .line 3631
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->init()V

    .line 3634
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3635
    const-string v1, " [OLOG][ADB] SLUGGISH DETECTOR - PERIODIC OLOG STORE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3636
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3643
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3644
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3645
    const-string v0, "END OF SLUGGISH DETECTOR - PERIODIC OLOG STORE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2b} :catch_2c

    .line 3648
    goto :goto_34

    .line 3646
    :catch_2c
    move-exception v0

    .line 3647
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    const-string v2, " [OLOG][ADB] dump() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_34
    return-void
.end method

.method public static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 3573
    if-eqz p0, :cond_22

    if-nez p1, :cond_5

    goto :goto_22

    .line 3581
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [OLOG][ADB] exc cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3608
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->dump(Ljava/io/PrintWriter;)V

    .line 3611
    const-string v0, " [OLOG][ADB] olog end"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3615
    return-void

    .line 3574
    :cond_22
    :goto_22
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    const-string v1, " [OLOG][ADB] executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    const-string v0, " [OLOG][ADB] exc pw or cmd is null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3576
    return-void
.end method

.method private static init()V
    .registers 1

    .line 3183
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    .line 3189
    return-void
.end method

.method private static makestoreOLOG()V
    .registers 0

    .line 3533
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->sendPeriodicReportToHandler()V

    .line 3534
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->clear()V

    .line 3539
    return-void
.end method

.method private static sendPeriodicReportToHandler()V
    .registers 3

    .line 3548
    const/16 v0, 0x15

    const-wide/32 v1, 0x493e0

    # invokes: Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->access$8900(IJ)V

    .line 3550
    return-void
.end method

.method private static step()V
    .registers 1

    .line 3207
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->check()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3208
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->init()V

    .line 3210
    :cond_9
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->makestoreOLOG()V

    .line 3214
    return-void
.end method

.method private static storeOLOG(Ljava/lang/String;)Z
    .registers 21
    .param p0, "path"    # Ljava/lang/String;

    .line 3224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3225
    .local v1, "midBound":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 3227
    .local v3, "midnanoBound":J
    # getter for: Lcom/android/server/wm/SluggishDetector;->Before_Store_time:J
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$9400()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    const/4 v5, 0x0

    if-lez v0, :cond_59

    .line 3228
    # getter for: Lcom/android/server/wm/SluggishDetector;->Before_Store_time:J
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$9400()J

    move-result-wide v6

    sub-long v6, v1, v6

    const-wide/32 v8, 0xdbba00

    cmp-long v0, v6, v8

    if-gez v0, :cond_59

    .line 3229
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " [OLOG_STORE] Current = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",Before_Store_time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/wm/SluggishDetector;->Before_Store_time:J
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$9400()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", Diff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/wm/SluggishDetector;->Before_Store_time:J
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$9400()J

    move-result-wide v10

    sub-long v10, v1, v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " VS SIMPLE_Store_Time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    return v5

    .line 3234
    :cond_59
    const/4 v6, 0x0

    .line 3235
    .local v6, "fin":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 3236
    .local v7, "fout":Ljava/io/FileOutputStream;
    const/16 v0, 0x800

    new-array v8, v0, [B

    .line 3238
    .local v8, "buffer":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 3239
    .local v9, "lowBound":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 3240
    .local v11, "lownanoBound":J
    new-instance v0, Ljava/io/File;

    const-string v13, "/proc/kperfmon"

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 3241
    .local v13, "lk_proc":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    move-object/from16 v14, p0

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    .line 3251
    .local v15, "lk_store":Ljava/io/File;
    const/4 v0, 0x0

    .line 3253
    .local v0, "len":I
    :try_start_78
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v16

    if-eqz v16, :cond_a8

    .line 3258
    const/4 v0, 0x0

    .line 3263
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v6, v5

    .line 3264
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v7, v5

    .line 3266
    :goto_8b
    invoke-virtual {v6, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v0, v5

    if-lez v5, :cond_97

    .line 3267
    const/4 v5, 0x0

    invoke-virtual {v7, v8, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_8b

    .line 3273
    :cond_97
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 3274
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 3276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3277
    .local v16, "higBound":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 3286
    .local v18, "highnanoBound":J
    # setter for: Lcom/android/server/wm/SluggishDetector;->Before_Store_time:J
    invoke-static/range {v16 .. v17}, Lcom/android/server/wm/SluggishDetector;->access$9402(J)J
    :try_end_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_a8} :catch_e4
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_a8} :catch_d6
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_a8} :catch_c8
    .catchall {:try_start_78 .. :try_end_a8} :catchall_b7

    .line 3298
    .end local v0    # "len":I
    .end local v16    # "higBound":J
    .end local v18    # "highnanoBound":J
    :cond_a8
    if-eqz v6, :cond_af

    :try_start_aa
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_af

    :catch_ae
    move-exception v0

    .line 3299
    :cond_af
    :goto_af
    if-eqz v7, :cond_f1

    :try_start_b1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_f1

    :catch_b5
    move-exception v0

    .line 3300
    goto :goto_f1

    .line 3298
    :catchall_b7
    move-exception v0

    move-object v5, v0

    if-eqz v6, :cond_c0

    :try_start_bb
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_c0

    :catch_bf
    move-exception v0

    .line 3299
    :cond_c0
    :goto_c0
    if-eqz v7, :cond_c7

    :try_start_c2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_c7

    :catch_c6
    move-exception v0

    .line 3300
    :cond_c7
    :goto_c7
    throw v5

    .line 3294
    :catch_c8
    move-exception v0

    .line 3298
    if-eqz v6, :cond_d0

    :try_start_cb
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    goto :goto_d0

    :catch_cf
    move-exception v0

    .line 3299
    :cond_d0
    :goto_d0
    if-eqz v7, :cond_f1

    :try_start_d2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_b5

    goto :goto_f1

    .line 3291
    :catch_d6
    move-exception v0

    .line 3298
    if-eqz v6, :cond_de

    :try_start_d9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dd

    goto :goto_de

    :catch_dd
    move-exception v0

    .line 3299
    :cond_de
    :goto_de
    if-eqz v7, :cond_f1

    :try_start_e0
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_b5

    goto :goto_f1

    .line 3288
    :catch_e4
    move-exception v0

    .line 3298
    if-eqz v6, :cond_ec

    :try_start_e7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_ec

    :catch_eb
    move-exception v0

    .line 3299
    :cond_ec
    :goto_ec
    if-eqz v7, :cond_f1

    :try_start_ee
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_b5

    .line 3301
    :cond_f1
    :goto_f1
    const/4 v0, 0x1

    return v0
.end method

.method private static storeOLOGComp()V
    .registers 24

    .line 3310
    const/4 v1, 0x0

    .line 3311
    .local v1, "fin":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 3312
    .local v2, "fout":Ljava/io/FileOutputStream;
    const/16 v0, 0x800

    new-array v3, v0, [B

    .line 3314
    .local v3, "buffer":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3315
    .local v4, "lowBound":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3317
    .local v6, "lownanoBound":J
    new-instance v0, Ljava/io/File;

    const-string v8, "/proc/kperfmon"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 3318
    .local v8, "lk_proc":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/log/remaining_olog"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 3328
    .local v9, "lk_store":Ljava/io/File;
    const/4 v0, 0x0

    .line 3330
    .local v0, "len":I
    :try_start_1f
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_95

    .line 3335
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v10

    .line 3337
    sget-boolean v10, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_37

    .line 3338
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v10

    goto :goto_3d

    .line 3344
    :cond_37
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v10

    .line 3350
    :goto_3d
    const/4 v0, 0x0

    .line 3355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3356
    .local v12, "midBound":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 3361
    .local v14, "midnanoBound":J
    :goto_46
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v0, v10

    const/4 v11, 0x0

    if-lez v10, :cond_53

    .line 3362
    invoke-virtual {v2, v3, v11, v0}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v11, 0x1

    goto :goto_46

    .line 3365
    :cond_53
    sget-boolean v10, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    if-eqz v10, :cond_62

    .line 3366
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v16

    sget-wide v18, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    sub-long v16, v16, v18

    sput-wide v16, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    goto :goto_68

    .line 3368
    :cond_62
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v16

    sput-wide v16, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    .line 3371
    :goto_68
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v16

    sput-wide v16, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    .line 3376
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 3377
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3380
    .local v16, "higBound":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 3385
    .local v18, "highnanoBound":J
    sget-wide v20, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    const-wide/32 v22, 0x4c4b40

    cmp-long v10, v20, v22

    if-gtz v10, :cond_93

    sget-wide v20, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    const-wide/32 v22, 0x989680

    cmp-long v10, v20, v22

    if-lez v10, :cond_8f

    goto :goto_93

    .line 3388
    :cond_8f
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    goto :goto_95

    .line 3386
    :cond_93
    :goto_93
    sput-boolean v11, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_95} :catch_a7
    .catchall {:try_start_1f .. :try_end_95} :catchall_a4

    .line 3399
    .end local v0    # "len":I
    .end local v12    # "midBound":J
    .end local v14    # "midnanoBound":J
    .end local v16    # "higBound":J
    .end local v18    # "highnanoBound":J
    :cond_95
    :goto_95
    if-eqz v1, :cond_9c

    :try_start_97
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v0

    .line 3400
    :cond_9c
    :goto_9c
    if-eqz v2, :cond_ca

    :try_start_9e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_ca

    :catch_a2
    move-exception v0

    .line 3401
    goto :goto_ca

    .line 3399
    :catchall_a4
    move-exception v0

    move-object v10, v0

    goto :goto_cb

    .line 3396
    :catch_a7
    move-exception v0

    .line 3397
    .local v0, "e":Ljava/io/IOException;
    :try_start_a8
    sget-object v10, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " [OLOG] storeOLOGComp - File copy error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_a8 .. :try_end_be} :catchall_a4

    .line 3399
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_c5

    :try_start_c0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_c5

    :catch_c4
    move-exception v0

    .line 3400
    :cond_c5
    :goto_c5
    if-eqz v2, :cond_ca

    :try_start_c7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_a2

    .line 3402
    :cond_ca
    :goto_ca
    return-void

    .line 3399
    :goto_cb
    if-eqz v1, :cond_d2

    :try_start_cd
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    goto :goto_d2

    :catch_d1
    move-exception v0

    .line 3400
    :cond_d2
    :goto_d2
    if-eqz v2, :cond_d9

    :try_start_d4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    goto :goto_d9

    :catch_d8
    move-exception v0

    .line 3401
    :cond_d9
    :goto_d9
    throw v10
.end method

.method private static storeOLOGComp(Ljava/io/PrintWriter;)V
    .registers 28
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3409
    move-object/from16 v1, p0

    if-eqz v1, :cond_9

    .line 3410
    const-string v0, " [OLOG][ADB] STORE OLOGR - PERIODIC STORE"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3412
    :cond_9
    const/4 v2, 0x0

    .line 3413
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 3415
    .local v3, "fout":Ljava/io/FileOutputStream;
    const/16 v0, 0x800

    new-array v4, v0, [B

    .line 3453
    .local v4, "buffer":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3454
    .local v5, "lowBound":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 3459
    .local v7, "lownanoBound":J
    new-instance v0, Ljava/io/File;

    const-string v9, "/proc/kperfmon"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 3460
    .local v9, "lk_proc":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v10, "/data/log/remaining_olog"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 3463
    .local v10, "lk_store":Ljava/io/File;
    :try_start_27
    const-string v0, " [OLOG][ADB] storeOLOGComp try"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3464
    const/4 v0, 0x0

    .line 3466
    .local v0, "len":I
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_1df

    .line 3467
    const-string v11, " [OLOG][ADB] storeOLOGComp lk_proc is file"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3469
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3d} :catch_1f7
    .catchall {:try_start_27 .. :try_end_3d} :catchall_1f1

    move-object v2, v11

    .line 3471
    :try_start_3e
    sget-boolean v11, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_40} :catch_1d8
    .catchall {:try_start_3e .. :try_end_40} :catchall_1d0

    const/4 v12, 0x1

    if-eqz v11, :cond_5c

    .line 3472
    :try_start_43
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v11

    .line 3473
    const-string v11, " [OLOG][ADB] storeOLOGComp should add"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4e} :catch_56
    .catchall {:try_start_43 .. :try_end_4e} :catchall_4f

    goto :goto_67

    .line 3520
    .end local v0    # "len":I
    :catchall_4f
    move-exception v0

    move-object v11, v4

    move-wide/from16 v16, v5

    move-object v4, v0

    goto/16 :goto_225

    .line 3516
    :catch_56
    move-exception v0

    move-object v11, v4

    move-wide/from16 v16, v5

    goto/16 :goto_1fb

    .line 3475
    .restart local v0    # "len":I
    :cond_5c
    :try_start_5c
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v11

    .line 3476
    const-string v11, " [OLOG][ADB] storeOLOGComp should overwrite"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_67} :catch_1d8
    .catchall {:try_start_5c .. :try_end_67} :catchall_1d0

    .line 3479
    :goto_67
    const/4 v0, 0x0

    .line 3480
    :try_start_68
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    sput-wide v13, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    .line 3482
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " [OLOG][ADB] START lk_store = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v13, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 3484
    .local v13, "midBound":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 3485
    .local v17, "midnanoBound":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " [OLOG][ADB] START midBound = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ",  midnanoBound = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v19, v13

    move-wide/from16 v12, v17

    .end local v13    # "midBound":J
    .end local v17    # "midnanoBound":J
    .local v12, "midnanoBound":J
    .local v19, "midBound":J
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3487
    :goto_ae
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v11
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_b2} :catch_1c7
    .catchall {:try_start_68 .. :try_end_b2} :catchall_1bc

    move v0, v11

    const/4 v14, 0x0

    if-lez v11, :cond_ba

    .line 3488
    :try_start_b6
    invoke-virtual {v3, v4, v14, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_56
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_4f

    goto :goto_ae

    .line 3491
    :cond_ba
    :try_start_ba
    sget-boolean v11, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bc} :catch_1c7
    .catchall {:try_start_ba .. :try_end_bc} :catchall_1bc

    if-eqz v11, :cond_c9

    .line 3492
    :try_start_be
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    sget-wide v21, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    sub-long v16, v16, v21

    sput-wide v16, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c8} :catch_56
    .catchall {:try_start_be .. :try_end_c8} :catchall_4f

    goto :goto_cf

    .line 3494
    :cond_c9
    :try_start_c9
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    sput-wide v16, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    .line 3497
    :goto_cf
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    sput-wide v16, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    .line 3499
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " [OLOG][ADB] AFTER lk_store = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", Diff lk_store = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v14, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3501
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3502
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 3504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 3505
    .local v14, "higBound":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v21

    move-wide/from16 v23, v21

    .line 3506
    .local v23, "highnanoBound":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    .end local v0    # "len":I
    .local v18, "len":I
    const-string v0, " [OLOG][ADB] AFTER higBound = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", highnanoBound = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_11b} :catch_1c7
    .catchall {:try_start_c9 .. :try_end_11b} :catchall_1bc

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v2, v23

    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v23    # "highnanoBound":J
    .local v2, "highnanoBound":J
    .local v21, "fin":Ljava/io/FileInputStream;
    .local v22, "fout":Ljava/io/FileOutputStream;
    :try_start_121
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3508
    sget-wide v23, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Diff_OlogLength:J
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_12d} :catch_1b3
    .catchall {:try_start_121 .. :try_end_12d} :catchall_1a8

    const-wide/32 v25, 0x4c4b40

    cmp-long v0, v23, v25

    if-gtz v0, :cond_157

    :try_start_134
    sget-wide v23, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->Origin_OlogLength:J

    const-wide/32 v25, 0x989680

    cmp-long v0, v23, v25

    if-lez v0, :cond_13e

    goto :goto_157

    .line 3511
    :cond_13e
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_141} :catch_14d
    .catchall {:try_start_134 .. :try_end_141} :catchall_142

    goto :goto_15a

    .line 3520
    .end local v2    # "highnanoBound":J
    .end local v12    # "midnanoBound":J
    .end local v14    # "higBound":J
    .end local v18    # "len":I
    .end local v19    # "midBound":J
    :catchall_142
    move-exception v0

    move-object v11, v4

    move-wide/from16 v16, v5

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object v4, v0

    goto/16 :goto_225

    .line 3516
    :catch_14d
    move-exception v0

    move-object v11, v4

    move-wide/from16 v16, v5

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    goto/16 :goto_1fb

    .line 3509
    .restart local v2    # "highnanoBound":J
    .restart local v12    # "midnanoBound":J
    .restart local v14    # "higBound":J
    .restart local v18    # "len":I
    .restart local v19    # "midBound":J
    :cond_157
    :goto_157
    const/4 v0, 0x0

    :try_start_158
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    .line 3513
    :goto_15a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [OLOG][ADB] STORE FUN excute time is = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_164} :catch_1b3
    .catchall {:try_start_158 .. :try_end_164} :catchall_1a8

    move-object v11, v4

    move-wide/from16 v16, v5

    .end local v4    # "buffer":[B
    .end local v5    # "lowBound":J
    .local v11, "buffer":[B
    .local v16, "lowBound":J
    sub-long v4, v14, v19

    :try_start_169
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v2, v12

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [OLOG][ADB] STORE_FLAG_FOR_ADD = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->STORE_FLAG_FOR_ADD:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_193} :catch_1a1
    .catchall {:try_start_169 .. :try_end_193} :catchall_199

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    goto/16 :goto_1e2

    .line 3520
    .end local v2    # "highnanoBound":J
    .end local v12    # "midnanoBound":J
    .end local v14    # "higBound":J
    .end local v18    # "len":I
    .end local v19    # "midBound":J
    :catchall_199
    move-exception v0

    move-object v4, v0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    goto/16 :goto_225

    .line 3516
    :catch_1a1
    move-exception v0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    goto/16 :goto_1fb

    .line 3520
    .end local v11    # "buffer":[B
    .end local v16    # "lowBound":J
    .restart local v4    # "buffer":[B
    .restart local v5    # "lowBound":J
    :catchall_1a8
    move-exception v0

    move-object v11, v4

    move-wide/from16 v16, v5

    move-object v4, v0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    .end local v4    # "buffer":[B
    .end local v5    # "lowBound":J
    .restart local v11    # "buffer":[B
    .restart local v16    # "lowBound":J
    goto/16 :goto_225

    .line 3516
    .end local v11    # "buffer":[B
    .end local v16    # "lowBound":J
    .restart local v4    # "buffer":[B
    .restart local v5    # "lowBound":J
    :catch_1b3
    move-exception v0

    move-object v11, v4

    move-wide/from16 v16, v5

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    .end local v4    # "buffer":[B
    .end local v5    # "lowBound":J
    .restart local v11    # "buffer":[B
    .restart local v16    # "lowBound":J
    goto :goto_1fb

    .line 3520
    .end local v11    # "buffer":[B
    .end local v16    # "lowBound":J
    .end local v21    # "fin":Ljava/io/FileInputStream;
    .end local v22    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "lowBound":J
    :catchall_1bc
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object v11, v4

    move-wide/from16 v16, v5

    move-object v4, v0

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "lowBound":J
    .restart local v11    # "buffer":[B
    .restart local v16    # "lowBound":J
    .restart local v21    # "fin":Ljava/io/FileInputStream;
    .restart local v22    # "fout":Ljava/io/FileOutputStream;
    goto/16 :goto_225

    .line 3516
    .end local v11    # "buffer":[B
    .end local v16    # "lowBound":J
    .end local v21    # "fin":Ljava/io/FileInputStream;
    .end local v22    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "lowBound":J
    :catch_1c7
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object v11, v4

    move-wide/from16 v16, v5

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "lowBound":J
    .restart local v11    # "buffer":[B
    .restart local v16    # "lowBound":J
    .restart local v21    # "fin":Ljava/io/FileInputStream;
    .restart local v22    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1fb

    .line 3520
    .end local v11    # "buffer":[B
    .end local v16    # "lowBound":J
    .end local v21    # "fin":Ljava/io/FileInputStream;
    .end local v22    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "lowBound":J
    :catchall_1d0
    move-exception v0

    move-object/from16 v21, v2

    move-object v11, v4

    move-wide/from16 v16, v5

    move-object v4, v0

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "lowBound":J
    .restart local v11    # "buffer":[B
    .restart local v16    # "lowBound":J
    .restart local v21    # "fin":Ljava/io/FileInputStream;
    goto :goto_225

    .line 3516
    .end local v11    # "buffer":[B
    .end local v16    # "lowBound":J
    .end local v21    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "lowBound":J
    :catch_1d8
    move-exception v0

    move-object/from16 v21, v2

    move-object v11, v4

    move-wide/from16 v16, v5

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "lowBound":J
    .restart local v11    # "buffer":[B
    .restart local v16    # "lowBound":J
    .restart local v21    # "fin":Ljava/io/FileInputStream;
    goto :goto_1fb

    .line 3466
    .end local v11    # "buffer":[B
    .end local v16    # "lowBound":J
    .end local v21    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "len":I
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "lowBound":J
    :cond_1df
    move-object v11, v4

    move-wide/from16 v16, v5

    .line 3520
    .end local v0    # "len":I
    .end local v4    # "buffer":[B
    .end local v5    # "lowBound":J
    .restart local v11    # "buffer":[B
    .restart local v16    # "lowBound":J
    :goto_1e2
    if-eqz v2, :cond_1e9

    :try_start_1e4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_1e8

    goto :goto_1e9

    :catch_1e8
    move-exception v0

    .line 3521
    :cond_1e9
    :goto_1e9
    if-eqz v3, :cond_222

    :try_start_1eb
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1ee
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_1ee} :catch_1ef

    goto :goto_222

    :catch_1ef
    move-exception v0

    .line 3522
    goto :goto_222

    .line 3520
    .end local v11    # "buffer":[B
    .end local v16    # "lowBound":J
    .restart local v4    # "buffer":[B
    .restart local v5    # "lowBound":J
    :catchall_1f1
    move-exception v0

    move-object v11, v4

    move-wide/from16 v16, v5

    move-object v4, v0

    .end local v4    # "buffer":[B
    .end local v5    # "lowBound":J
    .restart local v11    # "buffer":[B
    .restart local v16    # "lowBound":J
    goto :goto_225

    .line 3516
    .end local v11    # "buffer":[B
    .end local v16    # "lowBound":J
    .restart local v4    # "buffer":[B
    .restart local v5    # "lowBound":J
    :catch_1f7
    move-exception v0

    move-object v11, v4

    move-wide/from16 v16, v5

    .line 3517
    .end local v4    # "buffer":[B
    .end local v5    # "lowBound":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v11    # "buffer":[B
    .restart local v16    # "lowBound":J
    :goto_1fb
    :try_start_1fb
    sget-object v4, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [OLOG][ADB] storeOLOGComp - File copy error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    const-string v4, " [OLOG][ADB] storeOLOGComp catch"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_216
    .catchall {:try_start_1fb .. :try_end_216} :catchall_223

    .line 3520
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_21d

    :try_start_218
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_21b
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_21b} :catch_21c

    goto :goto_21d

    :catch_21c
    move-exception v0

    .line 3521
    :cond_21d
    :goto_21d
    if-eqz v3, :cond_222

    :try_start_21f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_222
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_222} :catch_1ef

    .line 3523
    :cond_222
    :goto_222
    return-void

    .line 3520
    :catchall_223
    move-exception v0

    move-object v4, v0

    :goto_225
    if-eqz v2, :cond_22c

    :try_start_227
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_22a
    .catch Ljava/io/IOException; {:try_start_227 .. :try_end_22a} :catch_22b

    goto :goto_22c

    :catch_22b
    move-exception v0

    .line 3521
    :cond_22c
    :goto_22c
    if-eqz v3, :cond_233

    :try_start_22e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_231
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_231} :catch_232

    goto :goto_233

    :catch_232
    move-exception v0

    .line 3522
    :cond_233
    :goto_233
    throw v4
.end method
