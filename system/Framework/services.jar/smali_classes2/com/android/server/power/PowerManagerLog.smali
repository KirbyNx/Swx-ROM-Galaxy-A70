.class public Lcom/android/server/power/PowerManagerLog;
.super Ljava/lang/Object;
.source "PowerManagerLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerLog$LazyHolder;,
        Lcom/android/server/power/PowerManagerLog$LogEntry;,
        Lcom/android/server/power/PowerManagerLog$LogEventValue;,
        Lcom/android/server/power/PowerManagerLog$PowerManagerLogHandler;
    }
.end annotation


# static fields
.field private static final ERROR_TIME_IS_NEGATIVE:I = -0x2

.field private static final ERROR_TIME_TOO_LARGE:I = -0x1

.field private static final FORMATTER:Ljava/time/format/DateTimeFormatter;

.field private static final LAST_PMS_EVENT_LOG_PATH:Ljava/lang/String; = "/data/log/pms_last_event.log"

.field private static final MAX_LOG_SIZE:I = 0x9c4

.field private static final MSG_WRITE_LOG:I = 0x1

.field public static final PMS_ACQUIRE_WAKELOCK:B = 0x1dt

.field public static final PMS_ADD_USER_POINT:B = 0xbt

.field public static final PMS_BRIGHTNESS_CHANGE:B = 0x8t

.field public static final PMS_COLOR_FADE_ENTRY:B = 0xdt

.field public static final PMS_COLOR_FADE_EXIT:B = 0xet

.field public static final PMS_DOZE_AFTER_SCREEN_OFF:B = 0x1ct

.field public static final PMS_DUAL_SCREEN_CHANGED:B = 0x1at

.field public static final PMS_GO_TO_SLEEP:B = 0x2t

.field public static final PMS_HBM_MANUAL_MAX:B = 0x11t

.field public static final PMS_LCD_STATE_CHANGE:B = 0xct

.field public static final PMS_MISC_POWER_CHANGED:B = 0x1bt

.field public static final PMS_NO_AMBIENT_LIGHT_READING:B = 0x10t

.field public static final PMS_PWL_OFF:B = 0x14t

.field public static final PMS_PWL_OFF_BOOT_COMPLETE:B = 0x18t

.field public static final PMS_PWL_OFF_DISPLAY_READY:B = 0x16t

.field public static final PMS_PWL_OFF_POLICY:B = 0x17t

.field public static final PMS_PWL_OFF_USER_ACTIVITY:B = 0x15t

.field public static final PMS_PWL_ON:B = 0x13t

.field public static final PMS_PWL_WAKELOCK:B = 0x19t

.field public static final PMS_RELEASE_WAKELOCK:B = 0x1et

.field public static final PMS_SCREEN_ON_TIME:B = 0x12t

.field public static final PMS_SHORT_TERM_RESET:B = 0xat

.field public static final PMS_UPDATE_AUTO_BRIGHTNESS:B = 0x9t

.field public static final PMS_USER_ACTIVITY_STATE_CHANGE:B = 0xft

.field public static final PMS_WAKE_UP:B = 0x1t

.field public static final PMS_WAKE_UP_CANCEL_APP:B = 0x3t

.field public static final PMS_WAKE_UP_CANCEL_COVER:B = 0x6t

.field public static final PMS_WAKE_UP_CANCEL_FOLDER:B = 0x7t

.field public static final PMS_WAKE_UP_CANCEL_NOTI_DISABLED:B = 0x4t

.field public static final PMS_WAKE_UP_CANCEL_PROXIMITY:B = 0x5t

.field private static final TAG:Ljava/lang/String; = "PowerManagerLog"

.field public static final TIME_RESET:B

.field private static sEnableLogging:Z

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mBuffer:[Ljava/lang/Object;

.field private mEnd:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastTime:J

.field private mStart:I

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerLog;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerManagerLog;->sLock:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/PowerManagerLog;->sEnableLogging:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/16 v0, 0x9c4

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/android/server/power/PowerManagerLog$PowerManagerLogHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerLog$PowerManagerLogHandler;-><init>(Lcom/android/server/power/PowerManagerLog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerLog;->mHandler:Landroid/os/Handler;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    iput v0, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerLog$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerLog$1;

    .line 42
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerLog;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/PowerManagerLog;BSJ[Ljava/lang/Object;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerLog;
    .param p1, "x1"    # B
    .param p2, "x2"    # S
    .param p3, "x3"    # J
    .param p5, "x4"    # [Ljava/lang/Object;

    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerLog;->addEntry(BSJ[Ljava/lang/Object;)V

    return-void
.end method

.method private addEntry(BSJ[Ljava/lang/Object;)V
    .registers 13
    .param p1, "tag"    # B
    .param p2, "tid"    # S
    .param p3, "time"    # J
    .param p5, "list"    # [Ljava/lang/Object;

    .line 120
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 121
    iput-wide p3, p0, Lcom/android/server/power/PowerManagerLog;->mLastTime:J

    iput-wide p3, p0, Lcom/android/server/power/PowerManagerLog;->mStartTime:J

    .line 124
    :cond_a
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerLog;->mLastTime:J

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/server/power/PowerManagerLog;->getRelativeTime(JJ)I

    move-result v0

    .line 125
    .local v0, "relativeTime":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_14

    .line 126
    return-void

    .line 127
    :cond_14
    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    .line 129
    iput-wide p3, p0, Lcom/android/server/power/PowerManagerLog;->mLastTime:J

    .line 130
    invoke-direct {p0, p3, p4, p3, p4}, Lcom/android/server/power/PowerManagerLog;->getRelativeTime(JJ)I

    move-result v0

    .line 131
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerLog;->addEntry(BSJ[Ljava/lang/Object;)V

    .line 135
    :cond_25
    iget-object v1, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_28
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerLog;->isBufferFull()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 137
    iget-object v2, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    aget-object v2, v2, v3

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_47

    .line 138
    iget-object v2, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/PowerManagerLog;->mStartTime:J

    goto :goto_61

    .line 139
    :cond_47
    iget-object v2, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    aget-object v2, v2, v3

    instance-of v2, v2, Lcom/android/server/power/PowerManagerLog$LogEntry;

    if-eqz v2, :cond_61

    .line 140
    iget-object v2, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    aget-object v2, v2, v3

    check-cast v2, Lcom/android/server/power/PowerManagerLog$LogEntry;

    iget-byte v2, v2, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTime:B

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerLog;->mStartTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/power/PowerManagerLog;->mStartTime:J

    .line 142
    :cond_61
    :goto_61
    iget v2, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v2, v2, 0x9c4

    iput v2, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    .line 145
    :cond_69
    if-nez p1, :cond_76

    .line 146
    iget-object v2, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_85

    .line 148
    :cond_76
    new-instance v2, Lcom/android/server/power/PowerManagerLog$LogEntry;

    invoke-direct {v2}, Lcom/android/server/power/PowerManagerLog$LogEntry;-><init>()V

    .line 149
    .local v2, "entry":Lcom/android/server/power/PowerManagerLog$LogEntry;
    int-to-byte v3, v0

    invoke-virtual {v2, p1, v3, p2, p5}, Lcom/android/server/power/PowerManagerLog$LogEntry;->set(BBS[Ljava/lang/Object;)V

    .line 150
    iget-object v3, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    aput-object v2, v3, v4

    .line 152
    .end local v2    # "entry":Lcom/android/server/power/PowerManagerLog$LogEntry;
    :goto_85
    iget v2, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v2, v2, 0x9c4

    iput v2, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    .line 153
    iput-wide p3, p0, Lcom/android/server/power/PowerManagerLog;->mLastTime:J

    .line 154
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_91
    move-exception v2

    monitor-exit v1
    :try_end_93
    .catchall {:try_start_28 .. :try_end_93} :catchall_91

    throw v2
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 220
    sget-boolean v0, Lcom/android/server/power/PowerManagerLog;->sEnableLogging:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 221
    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerLog;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 223
    :cond_11
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_b2

    .line 234
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerLog;->mStartTime:J

    .line 235
    .local v1, "timeReference":J
    const-wide/16 v3, 0x0

    .line 236
    .local v3, "time":J
    iget v5, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    .local v5, "current":I
    :goto_9
    iget v6, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    if-eq v5, v6, :cond_7f

    .line 238
    iget-object v6, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    aget-object v6, v6, v5

    .line 239
    .local v6, "element":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_1e

    .line 240
    move-object v7, v6

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-wide v3, v7

    goto :goto_78

    .line 241
    :cond_1e
    instance-of v7, v6, Lcom/android/server/power/PowerManagerLog$LogEntry;

    if-eqz v7, :cond_78

    .line 242
    move-object v7, v6

    check-cast v7, Lcom/android/server/power/PowerManagerLog$LogEntry;

    iget-byte v7, v7, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTime:B

    int-to-long v7, v7

    add-long/2addr v7, v1

    .line 243
    .end local v3    # "time":J
    .local v7, "time":J
    invoke-static {v7, v8}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 244
    .local v3, "instant":Ljava/time/Instant;
    nop

    .line 245
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    .line 244
    invoke-virtual {v3, v4}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    .line 245
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v4

    .line 246
    .local v4, "date":Ljava/time/LocalDateTime;
    sget-object v9, Lcom/android/server/power/PowerManagerLog;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v4, v9}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, v6

    check-cast v10, Lcom/android/server/power/PowerManagerLog$LogEntry;

    iget-short v10, v10, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTid:S

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, v6

    check-cast v10, Lcom/android/server/power/PowerManagerLog$LogEntry;

    invoke-virtual {v10}, Lcom/android/server/power/PowerManagerLog$LogEntry;->makeLogLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide v3, v7

    .line 250
    .end local v4    # "date":Ljava/time/LocalDateTime;
    .end local v7    # "time":J
    .local v3, "time":J
    :cond_78
    :goto_78
    move-wide v1, v3

    .line 237
    .end local v6    # "element":Ljava/lang/Object;
    add-int/lit8 v6, v5, 0x1

    rem-int/lit16 v6, v6, 0x9c4

    move v5, v6

    goto :goto_9

    .line 253
    .end local v5    # "current":I
    :cond_7f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    iget v7, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    sub-int/2addr v6, v7

    if-ltz v6, :cond_97

    iget v6, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    iget v7, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    sub-int/2addr v6, v7

    goto :goto_a0

    .line 254
    :cond_97
    iget-object v6, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    array-length v6, v6

    iget v7, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    iget v8, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    :goto_a0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 256
    .end local v1    # "timeReference":J
    .end local v3    # "time":J
    monitor-exit v0

    .line 259
    goto :goto_cb

    .line 256
    :catchall_af
    move-exception v1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_3 .. :try_end_b1} :catchall_af

    .end local p0    # "this":Lcom/android/server/power/PowerManagerLog;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :try_start_b1
    throw v1
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b2} :catch_b2

    .line 257
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerLog;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catch_b2
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Exception occurred in dumping PMS Log "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_cb
    :try_start_cb
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/data/log/pms_last_event.log"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_cb .. :try_end_d7} :catch_124
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d7} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d7} :catch_f0

    .line 262
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_d7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 263
    const-string v1, "============== beginning of last PMS event log =============="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, v0, p1}, Lcom/android/server/power/PowerManagerLog;->printLogFromFile(Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    :try_end_e2
    .catchall {:try_start_d7 .. :try_end_e2} :catchall_e6

    .line 265
    :try_start_e2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e5
    .catch Ljava/io/FileNotFoundException; {:try_start_e2 .. :try_end_e5} :catch_124
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_f0

    goto :goto_12b

    .line 261
    :catchall_e6
    move-exception v1

    :try_start_e7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_eb

    goto :goto_ef

    :catchall_eb
    move-exception v2

    :try_start_ec
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/power/PowerManagerLog;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :goto_ef
    throw v1
    :try_end_f0
    .catch Ljava/io/FileNotFoundException; {:try_start_ec .. :try_end_f0} :catch_124
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f0} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f0} :catch_f0

    .line 269
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerLog;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catch_f0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Exception occurred in dumping last PMS Log "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12c

    .line 267
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_10a
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException occurred in dumping PMS Log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_12b

    .line 265
    :catch_124
    move-exception v0

    .line 266
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "not found last pms event log file."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_12b
    nop

    .line 272
    :goto_12c
    return-void
.end method

.method public static getInstance()Lcom/android/server/power/PowerManagerLog;
    .registers 1

    .line 534
    # getter for: Lcom/android/server/power/PowerManagerLog$LazyHolder;->INSTANCE:Lcom/android/server/power/PowerManagerLog;
    invoke-static {}, Lcom/android/server/power/PowerManagerLog$LazyHolder;->access$100()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    return-object v0
.end method

.method private getRelativeTime(JJ)I
    .registers 9
    .param p1, "currentTime"    # J
    .param p3, "baseTime"    # J

    .line 166
    sub-long v0, p1, p3

    .line 168
    .local v0, "relativeTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    .line 169
    const/4 v2, -0x2

    return v2

    .line 170
    :cond_a
    const-wide/16 v2, 0xff

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    .line 171
    const/4 v2, -0x1

    return v2

    .line 174
    :cond_12
    long-to-int v2, v0

    return v2
.end method

.method private isBufferEmpty()Z
    .registers 3

    .line 158
    iget v0, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    iget v1, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isBufferFull()Z
    .registers 4

    .line 162
    iget v0, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x9c4

    iget v2, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private printLogFromFile(Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    .registers 13
    .param p1, "br"    # Ljava/io/BufferedReader;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "readLine":Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerLog;->mStartTime:J

    .line 307
    .local v1, "timeReference":J
    :goto_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    if-eqz v3, :cond_83

    .line 308
    const-wide/16 v3, 0x0

    .line 309
    .local v3, "time":J
    const-string v5, "Time ref:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 310
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_81

    .line 312
    :cond_25
    new-instance v5, Lcom/android/server/power/PowerManagerLog$LogEntry;

    invoke-direct {v5}, Lcom/android/server/power/PowerManagerLog$LogEntry;-><init>()V

    .line 313
    .local v5, "element":Lcom/android/server/power/PowerManagerLog$LogEntry;
    const/4 v6, 0x4

    const-string v7, ","

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerLog$LogEntry;->set([Ljava/lang/String;)V

    .line 315
    iget-byte v6, v5, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTime:B

    int-to-long v6, v6

    add-long v3, v1, v6

    .line 316
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v6

    .line 317
    .local v6, "instant":Ljava/time/Instant;
    nop

    .line 318
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v7

    .line 317
    invoke-virtual {v6, v7}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v7

    .line 318
    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v7

    .line 319
    .local v7, "date":Ljava/time/LocalDateTime;
    sget-object v8, Lcom/android/server/power/PowerManagerLog;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v7, v8}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v9, v5, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTid:S

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerLog$LogEntry;->makeLogLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    .end local v5    # "element":Lcom/android/server/power/PowerManagerLog$LogEntry;
    .end local v6    # "instant":Ljava/time/Instant;
    .end local v7    # "date":Ljava/time/LocalDateTime;
    :goto_81
    move-wide v1, v3

    .line 324
    .end local v3    # "time":J
    goto :goto_3

    .line 325
    :cond_83
    return-void
.end method

.method public static sendLogEvent(ILcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 13
    .param p0, "tag"    # I
    .param p1, "wl"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 198
    sget-boolean v0, Lcom/android/server/power/PowerManagerLog;->sEnableLogging:Z

    if-eqz v0, :cond_75

    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 199
    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerLog;->mHandler:Landroid/os/Handler;

    .line 201
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v1, "wakeLockArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-boolean v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v2, :cond_33

    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 205
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_35

    .line 206
    :cond_33
    const-string v2, " "

    .line 205
    :goto_35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_4c

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4e

    :cond_4c
    const-string v2, " "

    :goto_4e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v2, Lcom/android/server/power/PowerManagerLog;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 211
    const/4 v3, 0x1

    :try_start_55
    new-instance v10, Lcom/android/server/power/PowerManagerLog$LogEventValue;

    int-to-byte v5, p0

    .line 212
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    int-to-short v6, v4

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/PowerManagerLog$LogEventValue;-><init>(BSJ[Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v0, v3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    monitor-exit v2

    goto :goto_75

    :catchall_72
    move-exception v3

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_55 .. :try_end_74} :catchall_72

    throw v3

    .line 216
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "wakeLockArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_75
    :goto_75
    return-void
.end method

.method public static varargs sendLogEvent(I[Ljava/lang/Object;)V
    .registers 12
    .param p0, "tag"    # I
    .param p1, "list"    # [Ljava/lang/Object;

    .line 182
    sget-boolean v0, Lcom/android/server/power/PowerManagerLog;->sEnableLogging:Z

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 183
    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerLog;->mHandler:Landroid/os/Handler;

    .line 185
    .local v0, "handler":Landroid/os/Handler;
    sget-object v1, Lcom/android/server/power/PowerManagerLog;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    const/4 v2, 0x1

    :try_start_14
    new-instance v9, Lcom/android/server/power/PowerManagerLog$LogEventValue;

    int-to-byte v4, p0

    .line 187
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    int-to-short v5, v3

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, v9

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/PowerManagerLog$LogEventValue;-><init>(BSJ[Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0, v2, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    monitor-exit v1

    goto :goto_31

    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_2e

    throw v2

    .line 191
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public saveLogDataToFile()V
    .registers 7

    .line 279
    sget-boolean v0, Lcom/android/server/power/PowerManagerLog;->sEnableLogging:Z

    if-eqz v0, :cond_ab

    .line 280
    :try_start_4
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/data/log/pms_last_event.log"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_90
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_74

    .line 281
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_10
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/pms_last_event.log"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_20

    .line 283
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 285
    :cond_20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    monitor-enter v2
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_6a

    .line 286
    :try_start_23
    iget v3, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    .local v3, "current":I
    :goto_25
    iget v4, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    if-eq v3, v4, :cond_5f

    .line 288
    iget-object v4, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    aget-object v4, v4, v3

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_4e

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time ref:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_59

    .line 291
    :cond_4e
    iget-object v4, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    :goto_59
    add-int/lit8 v4, v3, 0x1

    rem-int/lit16 v4, v4, 0x9c4

    move v3, v4

    goto :goto_25

    .line 294
    .end local v3    # "current":I
    :cond_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_23 .. :try_end_60} :catchall_67

    .line 295
    :try_start_60
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_6a

    .line 296
    .end local v1    # "file":Ljava/io/File;
    :try_start_63
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_90
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_74

    goto :goto_ab

    .line 294
    .restart local v1    # "file":Ljava/io/File;
    :catchall_67
    move-exception v3

    :try_start_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/power/PowerManagerLog;
    :try_start_69
    throw v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 280
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerLog;
    :catchall_6a
    move-exception v1

    :try_start_6b
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception v2

    :try_start_70
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/power/PowerManagerLog;
    :goto_73
    throw v1
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_74} :catch_90
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_74

    .line 298
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerLog;
    :catch_74
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerLog"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_90
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException in saving last PowerManagerLog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerLog"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v0    # "e":Ljava/io/IOException;
    :cond_ab
    :goto_ab
    return-void
.end method
