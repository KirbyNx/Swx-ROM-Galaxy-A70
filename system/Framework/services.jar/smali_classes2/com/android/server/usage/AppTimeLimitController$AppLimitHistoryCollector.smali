.class public Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppLimitHistoryCollector"
.end annotation


# instance fields
.field private final MAX_LOG_LINE:I

.field private front:I

.field private mLogLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

.field private rear:I

.field stringBuffer:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->MAX_LOG_LINE:I

    .line 1114
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->stringBuffer:[Ljava/lang/String;

    .line 1117
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$Lock;-><init>(Lcom/android/server/usage/AppTimeLimitController$1;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->mLogLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 1120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->front:I

    .line 1121
    iput v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->rear:I

    .line 1122
    return-void
.end method

.method private isFull()Z
    .registers 4

    .line 1133
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->rear:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x3e8

    iget v2, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->front:I

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method


# virtual methods
.method public addLog(Ljava/lang/String;)V
    .registers 10
    .param p1, "logline"    # Ljava/lang/String;

    .line 1137
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->mLogLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 1138
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->stringBuffer:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->rear:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    .line 1139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1138
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1140
    iget v1, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->rear:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->rear:I

    .line 1141
    invoke-direct {p0}, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->isFull()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1142
    iget v1, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->front:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->front:I

    .line 1144
    :cond_48
    monitor-exit v0

    .line 1145
    return-void

    .line 1144
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public dumpLog(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1148
    const-string v0, "-------- Start of AppTimeLimit History ---------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->mLogLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 1150
    :try_start_8
    iget v1, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->front:I

    .line 1151
    .local v1, "start":I
    :goto_a
    iget v2, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->rear:I

    if-eq v1, v2, :cond_1b

    .line 1152
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->stringBuffer:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    add-int/lit8 v2, v1, 0x1

    rem-int/lit16 v2, v2, 0x3e8

    move v1, v2

    goto :goto_a

    .line 1155
    .end local v1    # "start":I
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_22

    .line 1156
    const-string v0, "-------- End of AppTimeLimit History ---------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    return-void

    .line 1155
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public size()I
    .registers 3

    .line 1125
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->front:I

    iget v1, p0, Lcom/android/server/usage/AppTimeLimitController$AppLimitHistoryCollector;->rear:I

    if-gt v0, v1, :cond_8

    .line 1126
    sub-int/2addr v1, v0

    return v1

    .line 1128
    :cond_8
    add-int/lit8 v1, v1, 0x1

    add-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v1, v0

    return v1
.end method
