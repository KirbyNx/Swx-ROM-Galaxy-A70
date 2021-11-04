.class final Lcom/android/server/pm/PackageInstallTimeLogger;
.super Ljava/lang/Object;
.source "PackageInstallTimeLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "com.android.server.pm"

.field private static final DEBUG:Z = false

.field private static final ENABLE_SURVEY_MODE:Z

.field private static final FEATURE_INSTALL_TIME:Ljava/lang/String; = "INST"

.field private static final MAX_ACTIVE_TIMEINFO:J = 0x20L

.field private static final MAX_AGE_MILLIS:J = 0x6ddd00L

.field private static final MAX_HISTORICAL_TIMEINFO:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "PackageInstallTime"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mHistoricalInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallLogging:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PackageInstallTimeLogger;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageInstallTimeLogger;->ENABLE_SURVEY_MODE:Z

    .line 40
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    .line 76
    sput-object p1, Lcom/android/server/pm/PackageInstallTimeLogger;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private addHistoricalTimeInfo(Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;)V
    .registers 7
    .param p1, "info"    # Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :goto_8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0xa

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1c

    .line 225
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 227
    :cond_1c
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private getCurrentTime()J
    .registers 3

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private removeExpiredTimeInfo()V
    .registers 9

    .line 93
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallTimeLogger;->getCurrentTime()J

    move-result-wide v0

    const-wide/32 v2, 0x6ddd00

    sub-long/2addr v0, v2

    .line 95
    .local v0, "expired":J
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 96
    :try_start_b
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 97
    .local v4, "hash":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    .line 98
    .local v5, "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    if-nez v5, :cond_2c

    .line 99
    goto :goto_15

    .line 100
    :cond_2c
    iget-wide v6, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    cmp-long v6, v6, v0

    if-gez v6, :cond_37

    .line 101
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v4    # "hash":Ljava/lang/Integer;
    .end local v5    # "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    :cond_37
    goto :goto_15

    .line 104
    :cond_38
    monitor-exit v2

    .line 105
    return-void

    .line 104
    :catchall_3a
    move-exception v3

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v3
.end method


# virtual methods
.method abandonInstallTimeInfo(I)V
    .registers 5
    .param p1, "key"    # I

    .line 292
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 293
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    .line 298
    monitor-exit v0

    .line 299
    return-void

    .line 298
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method changeInstallTimeInfoKey(II)V
    .registers 8
    .param p1, "oldKey"    # I
    .param p2, "newKey"    # I

    .line 198
    if-eqz p1, :cond_4d

    if-nez p2, :cond_5

    goto :goto_4d

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 206
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    .line 207
    .local v1, "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    if-nez v1, :cond_34

    .line 208
    const-string v2, "PackageInstallTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeInstallTimeInfoKey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ...): cannot find InstallTimeInfo with key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    monitor-exit v0

    return-void

    .line 212
    :cond_34
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    monitor-exit v0

    .line 215
    return-void

    .line 214
    .end local v1    # "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_4a

    throw v1

    .line 199
    :cond_4d
    :goto_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeInstallTimeInfoKey: invaild keys, old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallTime"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method createInstallTimeInfo(II)Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    .registers 9
    .param p1, "hash"    # I
    .param p2, "userId"    # I

    .line 112
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 113
    const-string v1, "PackageInstallTime"

    const-string v2, "createInstallTimeInfo() failed :Observer Hash is zero"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v0

    .line 117
    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 118
    :try_start_e
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x20

    cmp-long v2, v2, v4

    if-ltz v2, :cond_27

    .line 119
    const-string v2, "PackageInstallTime"

    const-string v3, "Active Logging info over 32"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallTimeLogger;->removeExpiredTimeInfo()V

    .line 121
    monitor-exit v1

    return-object v0

    .line 123
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_4c

    .line 125
    new-instance v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;-><init>(Lcom/android/server/pm/PackageInstallTimeLogger;Lcom/android/server/pm/PackageInstallTimeLogger$1;)V

    move-object v0, v1

    .line 126
    .local v0, "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallTimeLogger;->getCurrentTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    .line 127
    iget-wide v1, v0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    iput-wide v1, v0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mLastTime:J

    .line 128
    iput p2, v0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mUserId:I

    .line 129
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 130
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v2

    .line 133
    return-object v0

    .line 131
    :catchall_49
    move-exception v1

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_49

    throw v1

    .line 123
    .end local v0    # "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 302
    if-nez p1, :cond_3

    .line 303
    return-void

    .line 309
    :cond_3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 311
    .local v0, "pendingLogInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 312
    :try_start_b
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 313
    .local v3, "hash":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    .line 314
    .local v4, "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    if-nez v4, :cond_2c

    .line 315
    goto :goto_15

    .line 318
    :cond_2c
    iget-object v5, v4, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_1eb

    .line 319
    :try_start_2f
    iget-object v6, v4, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 320
    .local v6, "infoSize":I
    new-instance v7, Ljava/lang/StringBuilder;

    mul-int/lit8 v8, v6, 0x40

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    .local v7, "r":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v4, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ": \"Ver\":\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5d
    if-ge v8, v6, :cond_7e

    .line 324
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    add-int/lit8 v8, v8, 0x1

    goto :goto_5d

    .line 326
    .end local v8    # "i":I
    :cond_7e
    iget-object v8, v4, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    nop

    .end local v6    # "infoSize":I
    .end local v7    # "r":Ljava/lang/StringBuilder;
    monitor-exit v5

    .line 328
    .end local v3    # "hash":Ljava/lang/Integer;
    .end local v4    # "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    goto :goto_15

    .line 327
    .restart local v3    # "hash":Ljava/lang/Integer;
    .restart local v4    # "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    :catchall_8a
    move-exception v2

    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_2f .. :try_end_8c} :catchall_8a

    .end local v0    # "pendingLogInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallTimeLogger;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :try_start_8c
    throw v2

    .line 329
    .end local v3    # "hash":Ljava/lang/Integer;
    .end local v4    # "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    .restart local v0    # "pendingLogInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallTimeLogger;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :cond_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_1eb

    .line 330
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x78

    if-lez v1, :cond_eb

    .line 331
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v1, p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 332
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 333
    const-string v3, "Active install Logging info:"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 335
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 336
    .local v4, "pkg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 338
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 340
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_b0

    .line 341
    :cond_e5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 342
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 348
    .end local v1    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_eb
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v1

    .line 349
    .local v3, "historicalLogInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    monitor-enter v4

    .line 350
    :try_start_f4
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_167

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    .line 351
    .local v5, "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    iget-object v6, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_109
    .catchall {:try_start_f4 .. :try_end_109} :catchall_1e8

    .line 352
    :try_start_109
    iget-object v7, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 353
    .local v7, "infoSize":I
    new-instance v8, Ljava/lang/StringBuilder;

    mul-int/lit8 v9, v7, 0x40

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 354
    .local v8, "r":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ": \"Ver\":\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_137
    if-ge v9, v7, :cond_158

    .line 357
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v9, v9, 0x1

    goto :goto_137

    .line 359
    .end local v9    # "i":I
    :cond_158
    iget-object v9, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    nop

    .end local v7    # "infoSize":I
    .end local v8    # "r":Ljava/lang/StringBuilder;
    monitor-exit v6

    .line 361
    .end local v5    # "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    goto :goto_fa

    .line 360
    .restart local v5    # "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    :catchall_164
    move-exception v1

    monitor-exit v6
    :try_end_166
    .catchall {:try_start_109 .. :try_end_166} :catchall_164

    .end local v0    # "pendingLogInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "historicalLogInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallTimeLogger;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :try_start_166
    throw v1

    .line 362
    .end local v5    # "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    .restart local v0    # "pendingLogInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "historicalLogInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallTimeLogger;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :cond_167
    monitor-exit v4
    :try_end_168
    .catchall {:try_start_166 .. :try_end_168} :catchall_1e8

    .line 364
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_1e7

    .line 365
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v1, p1, v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 367
    .restart local v1    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Historical install Logging info("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    .line 369
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 371
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1ac
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 372
    .restart local v4    # "pkg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 374
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 376
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_1ac

    .line 377
    :cond_1e1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 378
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 384
    .end local v1    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_1e7
    return-void

    .line 362
    :catchall_1e8
    move-exception v1

    :try_start_1e9
    monitor-exit v4
    :try_end_1ea
    .catchall {:try_start_1e9 .. :try_end_1ea} :catchall_1e8

    throw v1

    .line 329
    .end local v3    # "historicalLogInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1eb
    move-exception v2

    :try_start_1ec
    monitor-exit v1
    :try_end_1ed
    .catchall {:try_start_1ec .. :try_end_1ed} :catchall_1eb

    throw v2
.end method

.method finishInstallTimeInfo(I)V
    .registers 15
    .param p1, "hash"    # I

    .line 235
    if-nez p1, :cond_a

    .line 236
    const-string v0, "PackageInstallTime"

    const-string v1, "finishInstallTimeInfo: invaild hash"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 241
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 242
    :try_start_d
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    .line 243
    .local v1, "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_ec

    .line 245
    if-nez v1, :cond_39

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishInstallTimeInfo("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): info not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageInstallTime"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 250
    :cond_39
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallTimeLogger;->getCurrentTime()J

    move-result-wide v2

    .line 251
    .local v2, "endTime":J
    iget-wide v4, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    sub-long v4, v2, v4

    .line 253
    .local v4, "totalTime":J
    const/4 v0, 0x0

    .line 255
    .local v0, "r":Ljava/lang/StringBuilder;
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 256
    :try_start_45
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 258
    .local v7, "infoSize":I
    new-instance v8, Ljava/lang/StringBuilder;

    mul-int/lit8 v9, v7, 0x20

    add-int/lit16 v9, v9, 0x100

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v8

    .line 259
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{\"Pkg\":\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\", \"Ver\":\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7c
    if-ge v8, v7, :cond_9d

    .line 262
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    add-int/lit8 v8, v8, 0x1

    goto :goto_7c

    .line 264
    .end local v7    # "infoSize":I
    .end local v8    # "i":I
    :cond_9d
    monitor-exit v6
    :try_end_9e
    .catchall {:try_start_45 .. :try_end_9e} :catchall_e9

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\"end\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/Long;

    iget-wide v8, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mLastTime:J

    sub-long v8, v2, v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 274
    :try_start_c3
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    monitor-exit v7
    :try_end_ce
    .catchall {:try_start_c3 .. :try_end_ce} :catchall_e6

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Landroid/os/UserHandle;

    iget v6, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mUserId:I

    invoke-direct {v12, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v7, "com.android.server.pm"

    const-string v8, "INST"

    move-object v6, p0

    move-wide v10, v4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/pm/PackageInstallTimeLogger;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)V

    .line 282
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallTimeLogger;->addHistoricalTimeInfo(Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;)V

    .line 284
    return-void

    .line 275
    :catchall_e6
    move-exception v6

    :try_start_e7
    monitor-exit v7
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v6

    .line 264
    :catchall_e9
    move-exception v7

    :try_start_ea
    monitor-exit v6
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    throw v7

    .line 243
    .end local v0    # "r":Ljava/lang/StringBuilder;
    .end local v1    # "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    .end local v2    # "endTime":J
    .end local v4    # "totalTime":J
    :catchall_ec
    move-exception v1

    :try_start_ed
    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    throw v1
.end method

.method insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)V
    .registers 10
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J
    .param p6, "user"    # Landroid/os/UserHandle;

    .line 388
    sget-boolean v0, Lcom/android/server/pm/PackageInstallTimeLogger;->ENABLE_SURVEY_MODE:Z

    if-eqz v0, :cond_44

    sget-object v0, Lcom/android/server/pm/PackageInstallTimeLogger;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_44

    .line 389
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 390
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v1, "feature"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v1, "extra"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 395
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 396
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 399
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    sget-object v2, Lcom/android/server/pm/PackageInstallTimeLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 407
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    :cond_44
    return-void
.end method

.method updateInstallTimeInfo(ILjava/lang/String;)V
    .registers 11
    .param p1, "hash"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 163
    if-eqz p1, :cond_89

    if-nez p2, :cond_6

    goto/16 :goto_89

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 171
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    .line 172
    .local v1, "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_86

    .line 173
    if-nez v1, :cond_39

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInstallTimeInfo: invalid ObserverHash: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageInstallTime"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 179
    :cond_39
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallTimeLogger;->getCurrentTime()J

    move-result-wide v2

    .line 180
    .local v2, "now":J
    new-instance v0, Ljava/lang/Long;

    iget-wide v4, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mLastTime:J

    sub-long v4, v2, v4

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "value":Ljava/lang/String;
    iput-wide v2, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mLastTime:J

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v0

    .line 183
    .local v5, "r":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\":\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 186
    :try_start_78
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    monitor-exit v6

    .line 188
    return-void

    .line 187
    :catchall_83
    move-exception v0

    monitor-exit v6
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_83

    throw v0

    .line 172
    .end local v1    # "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    .end local v2    # "now":J
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "r":Ljava/lang/StringBuilder;
    :catchall_86
    move-exception v1

    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v1

    .line 164
    :cond_89
    :goto_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInstallTimeInfo: invalid hash("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") or tag("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallTime"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method updateInstallTimeInfo(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "hash"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 137
    if-eqz p2, :cond_38

    if-nez p3, :cond_5

    goto :goto_38

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 148
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    .line 149
    .local v1, "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_35

    .line 150
    if-nez v1, :cond_30

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInstallTimeInfo: invalid ObserverHash: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageInstallTime"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 154
    :cond_30
    iput-object p2, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    .line 155
    iput-object p3, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    .line 156
    return-void

    .line 149
    .end local v1    # "info":Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1

    .line 138
    :cond_38
    :goto_38
    return-void
.end method
