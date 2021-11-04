.class public Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;
.super Ljava/lang/Object;
.source "DatabaseSizeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;
    }
.end annotation


# static fields
.field private static final COMPRESSED_RESULT_KEY:Ljava/lang/String; = "performCompressedEventsTransaction"

.field private static final DB_CLEAN_EVENT_COUNT:Ljava/lang/String; = "rev"

.field private static final DB_CLEAN_EVENT_EVENT_NAME:Ljava/lang/String; = "databaseCleaned"

.field public static final DB_CLEAN_EVENT_FEATURE:Ljava/lang/String; = "KNOX_ANALYTICS"

.field public static final DB_CLEAN_EVENT_SCHEMA_VERSION:I = 0x1

.field private static final DB_CLEAN_EVENT_SIZE_PARAMETER:Ljava/lang/String; = "rsz"

.field private static final DB_MAX_MAX_SIZE_BYTES:I = 0x500000

.field private static final FACTOR_ALERT:D = 0.9

.field private static final FACTOR_CLEANUP:D = 0.85

.field private static final HT_NAME:Ljava/lang/String; = "KnoxAnalyticsDatabaseSizeObserver"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

.field private mDbAlertSizeInBytes:J

.field private mDbMaxSizeInBytes:J

.field private mDbTargetSizeInBytes:J

.field private mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

.field private mFailure:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasAlertedUploader:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventQueue"    # Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    .line 130
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string v1, "DatabaseSizeObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->calculateDbMaxDbSize()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 26
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 26
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 26
    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 26
    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->startCompression()V

    return-void
.end method

.method private calculateDbMaxDbSize()V
    .registers 7

    .line 161
    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    .line 163
    long-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J

    .line 164
    long-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J

    .line 165
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateDbMaxDbSize(): dbMaxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , dbAlertSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mDbTargetSizeInBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private createDatabaseCleanEvent(JJ)V
    .registers 9
    .param p1, "lastDeletedSize"    # J
    .param p3, "lastDeletedEventsCount"    # J

    .line 175
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 176
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 175
    const-string v2, "createDatabaseCleanEvent(lastDeletedSize=%d, lastDeletedEventsCount=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_ANALYTICS"

    const-string v2, "databaseCleaned"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    .local v0, "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    const-string v1, "rsz"

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    .line 182
    const-string v1, "rev"

    invoke-virtual {v0, v1, p3, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    .line 183
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 184
    return-void
.end method

.method private createDatabaseCleanEvent(Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;)V
    .registers 6
    .param p1, "result"    # Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    .line 171
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->getDeletedSizeBytes()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->getDeletedEventsCount()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->createDatabaseCleanEvent(JJ)V

    .line 172
    return-void
.end method

.method private getFailureCount()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    return v0
.end method

.method private increaseFailureCount()V
    .registers 2

    .line 120
    iget v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    .line 121
    return-void
.end method

.method private resetFailureCount()V
    .registers 2

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    .line 113
    return-void
.end method

.method private startCleanDatabase()V
    .registers 4

    .line 124
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string v1, "startCleanDatabase()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->callDatabaseClean(Landroid/content/Context;J)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    move-result-object v0

    .line 126
    .local v0, "result":Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->createDatabaseCleanEvent(Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;)V

    .line 127
    return-void
.end method

.method private startCompression()V
    .registers 7

    .line 89
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getEventCount(Landroid/content/Context;)J

    move-result-wide v0

    .line 90
    .local v0, "count":J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_52

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->getFailureCount()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_14

    goto :goto_52

    .line 96
    :cond_14
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->queryEventChunk(Landroid/content/Context;)Lcom/samsung/android/knox/analytics/model/EventList;

    move-result-object v2

    .line 97
    .local v2, "events":Lcom/samsung/android/knox/analytics/model/EventList;
    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/model/EventList;->length()I

    move-result v3

    if-gtz v3, :cond_23

    goto :goto_4a

    .line 101
    :cond_23
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->performCompressedEventsTransaction(Landroid/content/Context;Lcom/samsung/android/knox/analytics/model/EventList;)Landroid/os/Bundle;

    move-result-object v3

    .line 102
    .local v3, "result":Landroid/os/Bundle;
    if-eqz v3, :cond_3f

    const-string v4, "performCompressedEventsTransaction"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_3f

    .line 107
    :cond_34
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->resetFailureCount()V

    .line 108
    sget-object v4, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string v5, "startCompression(): Data was compressed successfully."

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 103
    :cond_3f
    :goto_3f
    sget-object v4, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string v5, "startCompression(): Some error occurred when adding compressed data."

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->increaseFailureCount()V

    .line 105
    return-void

    .line 98
    .end local v3    # "result":Landroid/os/Bundle;
    :cond_4a
    :goto_4a
    sget-object v3, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string v4, "startCompression(): There is no data in Events table"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 91
    .end local v2    # "events":Lcom/samsung/android/knox/analytics/model/EventList;
    :cond_52
    :goto_52
    sget-object v2, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string v3, "startCompression(): Database is full and there is no sufficient data to compress"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->resetFailureCount()V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->startCleanDatabase()V

    .line 94
    return-void
.end method


# virtual methods
.method public start()V
    .registers 6

    .line 137
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KnoxAnalyticsDatabaseSizeObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 139
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 140
    new-instance v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;-><init>(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    .line 141
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 146
    return-void
.end method

.method public stop()V
    .registers 3

    .line 149
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    if-eqz v0, :cond_16

    .line 151
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 153
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    .line 154
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_20

    .line 155
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 157
    :cond_20
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 158
    return-void
.end method
