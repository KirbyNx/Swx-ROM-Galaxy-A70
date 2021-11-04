.class Lcom/android/server/job/controllers/QuotaController$QcConstants;
.super Landroid/database/ContentObserver;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QcConstants"
.end annotation


# static fields
.field private static final DEFAULT_ALLOWED_TIME_PER_PERIOD_MS:J = 0x927c0L

.field private static final DEFAULT_IN_QUOTA_BUFFER_MS:J = 0x7530L

.field private static final DEFAULT_MAX_EXECUTION_TIME_MS:J = 0xdbba00L

.field private static final DEFAULT_MAX_JOB_COUNT_ACTIVE:I = 0x4b

.field private static final DEFAULT_MAX_JOB_COUNT_FREQUENT:I = 0xc8

.field private static final DEFAULT_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field private static final DEFAULT_MAX_JOB_COUNT_RARE:I = 0x30

.field private static final DEFAULT_MAX_JOB_COUNT_RESTRICTED:I = 0xa

.field private static final DEFAULT_MAX_JOB_COUNT_WORKING:I = 0x78

.field private static final DEFAULT_MAX_SESSION_COUNT_ACTIVE:I = 0x4b

.field private static final DEFAULT_MAX_SESSION_COUNT_FREQUENT:I = 0x8

.field private static final DEFAULT_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field private static final DEFAULT_MAX_SESSION_COUNT_RARE:I = 0x3

.field private static final DEFAULT_MAX_SESSION_COUNT_RESTRICTED:I = 0x1

.field private static final DEFAULT_MAX_SESSION_COUNT_WORKING:I = 0xa

.field private static final DEFAULT_MIN_QUOTA_CHECK_DELAY_MS:J = 0xea60L

.field private static final DEFAULT_RATE_LIMITING_WINDOW_MS:J = 0xea60L

.field private static final DEFAULT_TIMING_SESSION_COALESCING_DURATION_MS:J = 0x1388L

.field private static final DEFAULT_WINDOW_SIZE_ACTIVE_MS:J = 0x927c0L

.field private static final DEFAULT_WINDOW_SIZE_FREQUENT_MS:J = 0x1b77400L

.field private static final DEFAULT_WINDOW_SIZE_RARE_MS:J = 0x5265c00L

.field private static final DEFAULT_WINDOW_SIZE_RESTRICTED_MS:J = 0x5265c00L

.field private static final DEFAULT_WINDOW_SIZE_WORKING_MS:J = 0x6ddd00L

.field private static final KEY_ALLOWED_TIME_PER_PERIOD_MS:Ljava/lang/String; = "allowed_time_per_period_ms"

.field private static final KEY_IN_QUOTA_BUFFER_MS:Ljava/lang/String; = "in_quota_buffer_ms"

.field private static final KEY_MAX_EXECUTION_TIME_MS:Ljava/lang/String; = "max_execution_time_ms"

.field private static final KEY_MAX_JOB_COUNT_ACTIVE:Ljava/lang/String; = "max_job_count_active"

.field private static final KEY_MAX_JOB_COUNT_FREQUENT:Ljava/lang/String; = "max_job_count_frequent"

.field private static final KEY_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:Ljava/lang/String; = "max_job_count_per_rate_limiting_window"

.field private static final KEY_MAX_JOB_COUNT_RARE:Ljava/lang/String; = "max_job_count_rare"

.field private static final KEY_MAX_JOB_COUNT_RESTRICTED:Ljava/lang/String; = "max_job_count_restricted"

.field private static final KEY_MAX_JOB_COUNT_WORKING:Ljava/lang/String; = "max_job_count_working"

.field private static final KEY_MAX_SESSION_COUNT_ACTIVE:Ljava/lang/String; = "max_session_count_active"

.field private static final KEY_MAX_SESSION_COUNT_FREQUENT:Ljava/lang/String; = "max_session_count_frequent"

.field private static final KEY_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:Ljava/lang/String; = "max_session_count_per_rate_limiting_window"

.field private static final KEY_MAX_SESSION_COUNT_RARE:Ljava/lang/String; = "max_session_count_rare"

.field private static final KEY_MAX_SESSION_COUNT_RESTRICTED:Ljava/lang/String; = "max_session_count_restricted"

.field private static final KEY_MAX_SESSION_COUNT_WORKING:Ljava/lang/String; = "max_session_count_working"

.field private static final KEY_MIN_QUOTA_CHECK_DELAY_MS:Ljava/lang/String; = "min_quota_check_delay_ms"

.field private static final KEY_RATE_LIMITING_WINDOW_MS:Ljava/lang/String; = "rate_limiting_window_ms"

.field private static final KEY_TIMING_SESSION_COALESCING_DURATION_MS:Ljava/lang/String; = "timing_session_coalescing_duration_ms"

.field private static final KEY_WINDOW_SIZE_ACTIVE_MS:Ljava/lang/String; = "window_size_active_ms"

.field private static final KEY_WINDOW_SIZE_FREQUENT_MS:Ljava/lang/String; = "window_size_frequent_ms"

.field private static final KEY_WINDOW_SIZE_RARE_MS:Ljava/lang/String; = "window_size_rare_ms"

.field private static final KEY_WINDOW_SIZE_RESTRICTED_MS:Ljava/lang/String; = "window_size_restricted_ms"

.field private static final KEY_WINDOW_SIZE_WORKING_MS:Ljava/lang/String; = "window_size_working_ms"

.field private static final MIN_BUCKET_JOB_COUNT:I = 0xa

.field private static final MIN_BUCKET_SESSION_COUNT:I = 0x1

.field private static final MIN_MAX_EXECUTION_TIME_MS:J = 0x36ee80L

.field private static final MIN_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0xa

.field private static final MIN_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0xa

.field private static final MIN_RATE_LIMITING_WINDOW_MS:J = 0x7530L


# instance fields
.field public ALLOWED_TIME_PER_PERIOD_MS:J

.field public IN_QUOTA_BUFFER_MS:J

.field public MAX_EXECUTION_TIME_MS:J

.field public MAX_JOB_COUNT_ACTIVE:I

.field public MAX_JOB_COUNT_FREQUENT:I

.field public MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

.field public MAX_JOB_COUNT_RARE:I

.field public MAX_JOB_COUNT_RESTRICTED:I

.field public MAX_JOB_COUNT_WORKING:I

.field public MAX_SESSION_COUNT_ACTIVE:I

.field public MAX_SESSION_COUNT_FREQUENT:I

.field public MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

.field public MAX_SESSION_COUNT_RARE:I

.field public MAX_SESSION_COUNT_RESTRICTED:I

.field public MAX_SESSION_COUNT_WORKING:I

.field public MIN_QUOTA_CHECK_DELAY_MS:J

.field public RATE_LIMITING_WINDOW_MS:J

.field public TIMING_SESSION_COALESCING_DURATION_MS:J

.field public WINDOW_SIZE_ACTIVE_MS:J

.field public WINDOW_SIZE_FREQUENT_MS:J

.field public WINDOW_SIZE_RARE_MS:J

.field public WINDOW_SIZE_RESTRICTED_MS:J

.field public WINDOW_SIZE_WORKING_MS:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Handler;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2260
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2261
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2031
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 2103
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    .line 2109
    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2116
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2123
    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2130
    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2137
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2144
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 2149
    const-wide/32 v0, 0xdbba00

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 2155
    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 2161
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 2167
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 2173
    const/16 v1, 0x30

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 2179
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    .line 2182
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 2187
    const/16 v4, 0x14

    iput v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2194
    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 2200
    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 2206
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 2212
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 2218
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    .line 2224
    iput v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2231
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2235
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 2262
    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/job/controllers/QuotaController$QcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2029
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .param p1, "x1"    # Landroid/util/proto/ProtoOutputStream;

    .line 2029
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 2029
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->start(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2529
    const-wide v0, 0x10b00000018L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2530
    .local v0, "qcToken":J
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2532
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2533
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2535
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2537
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-wide v4, 0x10300000005L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2539
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    const-wide v4, 0x10300000006L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2540
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    const-wide v4, 0x10300000014L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2542
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    const-wide v4, 0x10300000007L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2544
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    const-wide v3, 0x10500000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2545
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2547
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    const-wide v3, 0x1050000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2549
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2550
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    const-wide v3, 0x10500000015L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2552
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const-wide v4, 0x10500000013L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2554
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide v3, 0x1050000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2556
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    const-wide v3, 0x1050000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2558
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    const-wide v3, 0x1050000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2560
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    const-wide v3, 0x1050000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2562
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    const-wide v3, 0x10500000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2564
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    const-wide v3, 0x10500000016L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2566
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide v3, 0x10500000011L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2568
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    const-wide v4, 0x10300000012L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2570
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    const-wide v4, 0x10300000017L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2572
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2573
    return-void
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2496
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2497
    const-string v0, "QuotaController:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2498
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2499
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "allowed_time_per_period_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2500
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "in_quota_buffer_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2501
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_active_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2502
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_working_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2503
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_frequent_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2504
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_rare_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2505
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_restricted_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2506
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "max_execution_time_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2507
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_active"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2508
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_working"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2509
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_frequent"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2510
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_rare"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2511
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_restricted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2512
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "rate_limiting_window_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2513
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2514
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2513
    const-string/jumbo v1, "max_job_count_per_rate_limiting_window"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 2514
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2515
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_active"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2516
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_working"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2517
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_frequent"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2518
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_rare"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2519
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_restricted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2520
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2521
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2520
    const-string/jumbo v1, "max_session_count_per_rate_limiting_window"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 2521
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2522
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2523
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2522
    const-string/jumbo v1, "timing_session_coalescing_duration_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 2523
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2524
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "min_quota_check_delay_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2525
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2526
    return-void
.end method

.method private start(Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 2265
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mResolver:Landroid/content/ContentResolver;

    .line 2266
    const-string/jumbo v0, "job_scheduler_quota_controller_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2268
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->onChange(ZLandroid/net/Uri;)V

    .line 2269
    return-void
.end method


# virtual methods
.method public synthetic lambda$updateConstants$0$QuotaController$QcConstants()V
    .registers 3

    .line 2486
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2487
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked()V

    .line 2488
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # invokes: Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V
    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3700(Lcom/android/server/job/controllers/QuotaController;)V

    .line 2489
    monitor-exit v0

    .line 2490
    return-void

    .line 2489
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 11
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 2273
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "job_scheduler_quota_controller_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2277
    .local v0, "constants":Ljava/lang/String;
    :try_start_9
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    .line 2281
    goto :goto_17

    .line 2278
    :catch_f
    move-exception v1

    .line 2280
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "JobScheduler.Quota"

    const-string v3, "Bad jobscheduler quota controller settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2283
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_17
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "allowed_time_per_period_ms"

    const-wide/32 v3, 0x927c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    .line 2285
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/16 v5, 0x7530

    const-string/jumbo v2, "in_quota_buffer_ms"

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2287
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "window_size_active_ms"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2289
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v2, 0x6ddd00

    const-string/jumbo v4, "window_size_working_ms"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2291
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v2, 0x1b77400

    const-string/jumbo v4, "window_size_frequent_ms"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2293
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "window_size_rare_ms"

    const-wide/32 v3, 0x5265c00

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2295
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "window_size_restricted_ms"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 2297
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v2, 0xdbba00

    const-string/jumbo v4, "max_execution_time_ms"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 2299
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_job_count_active"

    const/16 v3, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 2301
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v2, 0x78

    const-string/jumbo v4, "max_job_count_working"

    invoke-virtual {v1, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 2303
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v2, 0xc8

    const-string/jumbo v4, "max_job_count_frequent"

    invoke-virtual {v1, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 2305
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v2, 0x30

    const-string/jumbo v4, "max_job_count_rare"

    invoke-virtual {v1, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 2307
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_job_count_restricted"

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    .line 2309
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "rate_limiting_window_ms"

    const-wide/32 v5, 0xea60

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 2311
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_job_count_per_rate_limiting_window"

    const/16 v7, 0x14

    invoke-virtual {v1, v2, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2314
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_session_count_active"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 2316
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_session_count_working"

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 2318
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v2, 0x8

    const-string/jumbo v3, "max_session_count_frequent"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 2320
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v2, 0x3

    const-string/jumbo v3, "max_session_count_rare"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 2322
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v2, 0x1

    const-string/jumbo v3, "max_session_count_restricted"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    .line 2324
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_session_count_per_rate_limiting_window"

    invoke-virtual {v1, v2, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2327
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/16 v2, 0x1388

    const-string/jumbo v4, "timing_session_coalescing_duration_ms"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2330
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "min_quota_check_delay_ms"

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 2333
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateConstants()V

    .line 2334
    return-void
.end method

.method updateConstants()V
    .registers 44

    .line 2338
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2339
    const/4 v0, 0x0

    .line 2341
    .local v0, "changed":Z
    const-wide/32 v3, 0x36ee80

    :try_start_b
    iget-wide v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 2342
    const-wide/32 v7, 0x5265c00

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 2341
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2343
    .local v3, "newMaxExecutionTimeMs":J
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J
    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_3a

    .line 2344
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # setter for: Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J
    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$2502(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2345
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v6, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J
    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    iget-object v6, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J
    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    # setter for: Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J
    invoke-static {v5, v9, v10}, Lcom/android/server/job/controllers/QuotaController;->access$2602(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2346
    const/4 v0, 0x1

    .line 2348
    :cond_3a
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J
    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    const-wide/32 v9, 0xea60

    iget-wide v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    .line 2349
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 2348
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 2350
    .local v5, "newAllowedTimeMs":J
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J
    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-eqz v9, :cond_6f

    .line 2351
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # setter for: Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J
    invoke-static {v9, v5, v6}, Lcom/android/server/job/controllers/QuotaController;->access$2802(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2352
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v10, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J
    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    iget-object v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J
    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    # setter for: Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J
    invoke-static {v9, v10, v11}, Lcom/android/server/job/controllers/QuotaController;->access$2902(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2353
    const/4 v0, 0x1

    .line 2357
    :cond_6f
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J
    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    const-wide/32 v11, 0x493e0

    iget-wide v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2358
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 2357
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 2359
    .local v9, "newQuotaBufferMs":J
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J
    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    cmp-long v13, v13, v9

    if-eqz v13, :cond_bc

    .line 2360
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # setter for: Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J
    invoke-static {v13, v9, v10}, Lcom/android/server/job/controllers/QuotaController;->access$2702(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2361
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v14, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J
    invoke-static {v14}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v14

    iget-object v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J
    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v11

    sub-long/2addr v14, v11

    # setter for: Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J
    invoke-static {v13, v14, v15}, Lcom/android/server/job/controllers/QuotaController;->access$2902(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2362
    iget-object v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J
    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    iget-object v14, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J
    invoke-static {v14}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    # setter for: Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J
    invoke-static {v11, v12, v13}, Lcom/android/server/job/controllers/QuotaController;->access$2602(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2363
    const/4 v0, 0x1

    .line 2365
    :cond_bc
    iget-object v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J
    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2366
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 2365
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 2367
    .local v11, "newActivePeriodMs":J
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J
    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v13

    const/4 v14, 0x0

    aget-wide v16, v13, v14

    cmp-long v13, v16, v11

    if-eqz v13, :cond_e2

    .line 2368
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J
    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v13

    aput-wide v11, v13, v14

    .line 2369
    const/4 v0, 0x1

    .line 2371
    :cond_e2
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J
    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v14

    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2372
    move-wide/from16 v19, v3

    const-wide/32 v3, 0x5265c00

    .end local v3    # "newMaxExecutionTimeMs":J
    .local v19, "newMaxExecutionTimeMs":J
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 2371
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2373
    .local v3, "newWorkingPeriodMs":J
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    const/4 v8, 0x1

    aget-wide v13, v7, v8

    cmp-long v7, v13, v3

    if-eqz v7, :cond_10d

    .line 2374
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    aput-wide v3, v7, v8

    .line 2375
    const/4 v0, 0x1

    .line 2377
    :cond_10d
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    move-wide/from16 v21, v9

    .end local v9    # "newQuotaBufferMs":J
    .local v21, "newQuotaBufferMs":J
    iget-wide v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2378
    move-wide/from16 v23, v3

    const-wide/32 v3, 0x5265c00

    .end local v3    # "newWorkingPeriodMs":J
    .local v23, "newWorkingPeriodMs":J
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 2377
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2379
    .local v3, "newFrequentPeriodMs":J
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J
    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    const/4 v9, 0x2

    aget-wide v13, v8, v9

    cmp-long v8, v13, v3

    if-eqz v8, :cond_13a

    .line 2380
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J
    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aput-wide v3, v8, v9

    .line 2381
    const/4 v0, 0x1

    .line 2383
    :cond_13a
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J
    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2384
    move-wide/from16 v25, v11

    const-wide/32 v10, 0x5265c00

    .end local v11    # "newActivePeriodMs":J
    .local v25, "newActivePeriodMs":J
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 2383
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-wide v10, v7

    .line 2385
    .local v10, "newRarePeriodMs":J
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    const/4 v8, 0x3

    aget-wide v13, v7, v8

    cmp-long v7, v13, v10

    if-eqz v7, :cond_166

    .line 2386
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    aput-wide v10, v7, v8

    .line 2387
    const/4 v0, 0x1

    .line 2390
    :cond_166
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    const-wide/32 v8, 0x240c8400

    move-wide/from16 v28, v13

    iget-wide v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    .line 2391
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 2390
    move-wide/from16 v12, v28

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2392
    .local v8, "newRestrictedPeriodMs":J
    iget-object v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J
    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v12

    const/4 v13, 0x5

    aget-wide v28, v12, v13

    cmp-long v12, v28, v8

    if-eqz v12, :cond_193

    .line 2393
    iget-object v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J
    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v12

    aput-wide v8, v12, v13

    .line 2394
    const/4 v0, 0x1

    .line 2396
    :cond_193
    move-wide/from16 v28, v8

    .end local v8    # "newRestrictedPeriodMs":J
    .local v28, "newRestrictedPeriodMs":J
    const-wide/16 v7, 0x7530

    iget-wide v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 2397
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 2396
    const-wide/32 v12, 0x5265c00

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    move-wide v12, v7

    .line 2398
    .local v12, "newRateLimitingWindowMs":J
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3100(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-eqz v7, :cond_1b5

    .line 2399
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # setter for: Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J
    invoke-static {v7, v12, v13}, Lcom/android/server/job/controllers/QuotaController;->access$3102(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2400
    const/4 v0, 0x1

    .line 2402
    :cond_1b5
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const/16 v8, 0xa

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2405
    .local v7, "newMaxJobCountPerRateLimitingWindow":I
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I
    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->access$3200(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v9

    if-eq v9, v7, :cond_1cb

    .line 2406
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # setter for: Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I
    invoke-static {v9, v7}, Lcom/android/server/job/controllers/QuotaController;->access$3202(Lcom/android/server/job/controllers/QuotaController;I)I

    .line 2407
    const/4 v0, 0x1

    .line 2409
    :cond_1cb
    iget v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2410
    .local v9, "newActiveMaxJobCount":I
    iget-object v14, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I
    invoke-static {v14}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v14

    const/16 v16, 0x0

    aget v14, v14, v16

    if-eq v14, v9, :cond_1e6

    .line 2411
    iget-object v14, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I
    invoke-static {v14}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v14

    aput v9, v14, v16

    .line 2412
    const/4 v0, 0x1

    .line 2414
    :cond_1e6
    iget v14, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 2415
    .local v14, "newWorkingMaxJobCount":I
    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I
    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v15

    const/16 v18, 0x1

    aget v15, v15, v18

    if-eq v15, v14, :cond_204

    .line 2416
    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I
    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v15

    aput v14, v15, v18

    move/from16 v18, v7

    .line 2417
    .end local v7    # "newMaxJobCountPerRateLimitingWindow":I
    .local v18, "newMaxJobCountPerRateLimitingWindow":I
    const/4 v0, 0x1

    goto :goto_206

    .line 2415
    .end local v18    # "newMaxJobCountPerRateLimitingWindow":I
    .restart local v7    # "newMaxJobCountPerRateLimitingWindow":I
    :cond_204
    move/from16 v18, v7

    .line 2419
    .end local v7    # "newMaxJobCountPerRateLimitingWindow":I
    .restart local v18    # "newMaxJobCountPerRateLimitingWindow":I
    :goto_206
    iget v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 2420
    .local v15, "newFrequentMaxJobCount":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v30, 0x2

    aget v7, v7, v30

    if-eq v7, v15, :cond_224

    .line 2421
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    aput v15, v7, v30

    move/from16 v30, v15

    .line 2422
    .end local v15    # "newFrequentMaxJobCount":I
    .local v30, "newFrequentMaxJobCount":I
    const/4 v0, 0x1

    goto :goto_226

    .line 2420
    .end local v30    # "newFrequentMaxJobCount":I
    .restart local v15    # "newFrequentMaxJobCount":I
    :cond_224
    move/from16 v30, v15

    .line 2424
    .end local v15    # "newFrequentMaxJobCount":I
    .restart local v30    # "newFrequentMaxJobCount":I
    :goto_226
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2425
    .local v7, "newRareMaxJobCount":I
    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I
    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v15

    const/16 v27, 0x3

    aget v15, v15, v27

    if-eq v15, v7, :cond_241

    .line 2426
    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I
    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v15

    aput v7, v15, v27

    .line 2427
    const/4 v0, 0x1

    .line 2429
    :cond_241
    iget v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 2431
    .local v15, "newRestrictedMaxJobCount":I
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I
    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v8

    const/16 v17, 0x5

    aget v8, v8, v17

    if-eq v8, v15, :cond_25e

    .line 2432
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I
    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v8

    aput v15, v8, v17

    move v8, v9

    .line 2433
    .end local v9    # "newActiveMaxJobCount":I
    .local v8, "newActiveMaxJobCount":I
    const/4 v0, 0x1

    goto :goto_25f

    .line 2431
    .end local v8    # "newActiveMaxJobCount":I
    .restart local v9    # "newActiveMaxJobCount":I
    :cond_25e
    move v8, v9

    .line 2435
    .end local v9    # "newActiveMaxJobCount":I
    .restart local v8    # "newActiveMaxJobCount":I
    :goto_25f
    iget v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    move/from16 v34, v0

    const/16 v0, 0xa

    .end local v0    # "changed":Z
    .local v34, "changed":Z
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2438
    .local v0, "newMaxSessionCountPerRateLimitPeriod":I
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I
    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->access$3400(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v9

    if-eq v9, v0, :cond_279

    .line 2439
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # setter for: Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I
    invoke-static {v9, v0}, Lcom/android/server/job/controllers/QuotaController;->access$3402(Lcom/android/server/job/controllers/QuotaController;I)I

    .line 2440
    const/4 v9, 0x1

    move/from16 v34, v9

    .line 2442
    :cond_279
    iget v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 2443
    move/from16 v33, v0

    const/4 v0, 0x1

    .end local v0    # "newMaxSessionCountPerRateLimitPeriod":I
    .local v33, "newMaxSessionCountPerRateLimitPeriod":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v0, v7

    .line 2444
    .end local v7    # "newRareMaxJobCount":I
    .local v0, "newRareMaxJobCount":I
    .local v9, "newActiveMaxSessionCount":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v16, 0x0

    aget v7, v7, v16

    if-eq v7, v9, :cond_299

    .line 2445
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    aput v9, v7, v16

    .line 2446
    const/16 v34, 0x1

    .line 2448
    :cond_299
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 2449
    move/from16 v35, v0

    const/4 v0, 0x1

    .end local v0    # "newRareMaxJobCount":I
    .local v35, "newRareMaxJobCount":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2450
    .local v7, "newWorkingMaxSessionCount":I
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I
    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v0

    const/16 v31, 0x1

    aget v0, v0, v31

    if-eq v0, v7, :cond_2ba

    .line 2451
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I
    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v0

    aput v7, v0, v31

    move v0, v7

    .line 2452
    .end local v7    # "newWorkingMaxSessionCount":I
    .local v0, "newWorkingMaxSessionCount":I
    const/16 v34, 0x1

    goto :goto_2bb

    .line 2450
    .end local v0    # "newWorkingMaxSessionCount":I
    .restart local v7    # "newWorkingMaxSessionCount":I
    :cond_2ba
    move v0, v7

    .line 2454
    .end local v7    # "newWorkingMaxSessionCount":I
    .restart local v0    # "newWorkingMaxSessionCount":I
    :goto_2bb
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 2455
    move/from16 v36, v0

    const/4 v0, 0x1

    .end local v0    # "newWorkingMaxSessionCount":I
    .local v36, "newWorkingMaxSessionCount":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v0, v31

    .line 2456
    .local v0, "newFrequentMaxSessionCount":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v32, 0x2

    aget v7, v7, v32

    if-eq v7, v0, :cond_2dc

    .line 2457
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    aput v0, v7, v32

    .line 2458
    const/16 v34, 0x1

    .line 2460
    :cond_2dc
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 2461
    move/from16 v32, v0

    const/4 v0, 0x1

    .end local v0    # "newFrequentMaxSessionCount":I
    .local v32, "newFrequentMaxSessionCount":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2462
    .local v0, "newRareMaxSessionCount":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v27, 0x3

    aget v7, v7, v27

    if-eq v7, v0, :cond_2fb

    .line 2463
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    aput v0, v7, v27

    .line 2464
    const/16 v34, 0x1

    .line 2466
    :cond_2fb
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    move/from16 v27, v0

    const/4 v0, 0x0

    .end local v0    # "newRareMaxSessionCount":I
    .local v27, "newRareMaxSessionCount":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2467
    .local v0, "newRestrictedMaxSessionCount":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v16, 0x5

    aget v7, v7, v16

    if-eq v7, v0, :cond_31a

    .line 2468
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    aput v0, v7, v16

    .line 2469
    const/16 v34, 0x1

    .line 2471
    :cond_31a
    move-wide/from16 v16, v3

    .end local v3    # "newFrequentPeriodMs":J
    .local v16, "newFrequentPeriodMs":J
    iget-wide v3, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2472
    move-wide/from16 v37, v5

    const-wide/16 v5, 0x0

    .end local v5    # "newAllowedTimeMs":J
    .local v37, "newAllowedTimeMs":J
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2471
    const-wide/32 v5, 0xdbba0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 2473
    .local v3, "newSessionCoalescingDurationMs":J
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3600(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v39

    cmp-long v7, v39, v3

    if-eqz v7, :cond_33e

    .line 2474
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # setter for: Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J
    invoke-static {v7, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$3602(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2475
    const/16 v34, 0x1

    .line 2480
    :cond_33e
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    # getter for: Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;
    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$1100(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    move-result-object v7

    iget-wide v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    .line 2481
    move-wide/from16 v41, v3

    const-wide/16 v3, 0x0

    .end local v3    # "newSessionCoalescingDurationMs":J
    .local v41, "newSessionCoalescingDurationMs":J
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/32 v5, 0xdbba0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 2480
    invoke-virtual {v7, v3, v4}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->setMinQuotaCheckDelayMs(J)V

    .line 2483
    if-eqz v34, :cond_366

    .line 2485
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$QcConstants$RqRCx_b6VU7ay15cmbscxEnJw7Q;

    invoke-direct {v4, v1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$QcConstants$RqRCx_b6VU7ay15cmbscxEnJw7Q;-><init>(Lcom/android/server/job/controllers/QuotaController$QcConstants;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2492
    .end local v0    # "newRestrictedMaxSessionCount":I
    .end local v8    # "newActiveMaxJobCount":I
    .end local v9    # "newActiveMaxSessionCount":I
    .end local v10    # "newRarePeriodMs":J
    .end local v12    # "newRateLimitingWindowMs":J
    .end local v14    # "newWorkingMaxJobCount":I
    .end local v15    # "newRestrictedMaxJobCount":I
    .end local v16    # "newFrequentPeriodMs":J
    .end local v18    # "newMaxJobCountPerRateLimitingWindow":I
    .end local v19    # "newMaxExecutionTimeMs":J
    .end local v21    # "newQuotaBufferMs":J
    .end local v23    # "newWorkingPeriodMs":J
    .end local v25    # "newActivePeriodMs":J
    .end local v27    # "newRareMaxSessionCount":I
    .end local v28    # "newRestrictedPeriodMs":J
    .end local v30    # "newFrequentMaxJobCount":I
    .end local v32    # "newFrequentMaxSessionCount":I
    .end local v33    # "newMaxSessionCountPerRateLimitPeriod":I
    .end local v34    # "changed":Z
    .end local v35    # "newRareMaxJobCount":I
    .end local v36    # "newWorkingMaxSessionCount":I
    .end local v37    # "newAllowedTimeMs":J
    .end local v41    # "newSessionCoalescingDurationMs":J
    :cond_366
    monitor-exit v2

    .line 2493
    return-void

    .line 2492
    :catchall_368
    move-exception v0

    monitor-exit v2
    :try_end_36a
    .catchall {:try_start_b .. :try_end_36a} :catchall_368

    throw v0
.end method
