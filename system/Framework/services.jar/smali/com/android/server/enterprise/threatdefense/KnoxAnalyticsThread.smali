.class Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;
.super Ljava/lang/Object;
.source "KnoxAnalyticsThread.java"


# static fields
.field static final API_LEN:I = 0x3

.field private static final EVENT:[Ljava/lang/String;

.field static final GET_PROCESSID:I = 0x2

.field private static final KNOX_ANALYTICS_COUNT_TAG:Ljava/lang/String; = "c"

.field private static final KNOX_ANALYTICS_EVENT_NAME:Ljava/lang/String; = "MTD_USAGE_EVENT"

.field private static final KNOX_ANALYTICS_EVENT_TAG:Ljava/lang/String; = "e"

.field private static final KNOX_ANALYTICS_FEATURE_NAME:Ljava/lang/String; = "KNOX_MTD"

.field private static final KNOX_ANALYTICS_PACKAGE_TAG:Ljava/lang/String; = "pN"

.field private static final KNOX_ANALYTICS_SCHEMA_VERSION:I = 0x1

.field static final PROCESS_PROC_READER:I = 0x1

.field static final PROC_READER:I

.field private static final TAG:Ljava/lang/String;

.field private static final sApiCalledCount:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 11
    const-class v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    .line 20
    const-string v0, "PROC_USAGE"

    const-string v1, "PROC_PID_USAGE"

    const-string v2, "GET_PID_USAGE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->EVENT:[Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private flush(Ljava/lang/String;I)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "apiNumber"    # I

    .line 129
    if-eqz p1, :cond_78

    const/4 v0, 0x3

    if-lt p2, v0, :cond_6

    goto :goto_78

    .line 133
    :cond_6
    const-wide/16 v0, 0x0

    .line 134
    .local v0, "prev":J
    const-wide/16 v2, 0x0

    .line 137
    .local v2, "cur":J
    :try_start_a
    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_d} :catch_55

    .line 138
    :try_start_d
    sget-object v5, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide v0, v5

    .line 139
    sget-object v5, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v5, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide v2, v5

    .line 141
    monitor-exit v4

    .line 144
    goto :goto_59

    .line 141
    :catchall_52
    move-exception v5

    monitor-exit v4
    :try_end_54
    .catchall {:try_start_d .. :try_end_54} :catchall_52

    .end local v0    # "prev":J
    .end local v2    # "cur":J
    .end local p0    # "this":Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "apiNumber":I
    :try_start_54
    throw v5
    :try_end_55
    .catch Ljava/lang/NullPointerException; {:try_start_54 .. :try_end_55} :catch_55

    .line 142
    .restart local v0    # "prev":J
    .restart local v2    # "cur":J
    .restart local p0    # "this":Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "apiNumber":I
    :catch_55
    move-exception v4

    .line 143
    .local v4, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 145
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    :goto_59
    sget-object v4, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Flush!! status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 130
    .end local v0    # "prev":J
    .end local v2    # "cur":J
    :cond_78
    :goto_78
    sget-object v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", api="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method private reset()V
    .registers 3

    .line 122
    sget-object v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    const-string v1, "Reset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_a
    sget-object v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v1
.end method

.method private sendKnoxAnalyticsLogs(Ljava/lang/String;IJ)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "apiNumber"    # I
    .param p3, "count"    # J

    .line 103
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_MTD"

    const/4 v2, 0x1

    const-string v3, "MTD_USAGE_EVENT"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    .local v0, "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    sget-object v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->EVENT:[Ljava/lang/String;

    aget-object v1, v1, p2

    const-string v2, "e"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "c"

    invoke-virtual {v0, v1, p3, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    .line 107
    const-string/jumbo v1, "pN"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_3b

    .line 109
    sget-object v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip!! api="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 111
    :cond_3b
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 112
    sget-boolean v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    const-string v2, "KA Data : "

    if-eqz v1, :cond_5d

    .line 113
    sget-object v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 115
    :cond_5d
    sget-object v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_79
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->flush(Ljava/lang/String;I)V

    .line 119
    :goto_7c
    return-void
.end method


# virtual methods
.method countApiCall(Ljava/lang/String;I)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "apiNumber"    # I

    .line 35
    if-eqz p1, :cond_cf

    const/4 v0, 0x3

    if-lt p2, v0, :cond_7

    goto/16 :goto_cf

    .line 38
    :cond_7
    const/4 v0, 0x0

    .line 39
    .local v0, "reset":Z
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_b
    sget-object v2, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_43

    .line 42
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 43
    .local v2, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v3, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v2    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_43
    sget-object v2, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 50
    .local v2, "count":J
    const-wide/32 v4, 0x7ffffffe

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x1

    if-nez v4, :cond_96

    .line 51
    sget-boolean v4, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v4, :cond_8d

    .line 52
    sget-object v4, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", api="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_8d
    add-long/2addr v5, v2

    move-wide v2, v5

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sendKnoxAnalyticsLogs(Ljava/lang/String;IJ)V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->flush(Ljava/lang/String;I)V

    goto :goto_c5

    .line 57
    :cond_96
    sget-object v4, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    add-long/2addr v5, v2

    move-wide v2, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_ab} :catch_c0
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_ab} :catch_ba
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_ab} :catch_b4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_ab} :catch_ae
    .catchall {:try_start_b .. :try_end_ab} :catchall_ac

    goto :goto_c5

    .line 75
    .end local v2    # "count":J
    :catchall_ac
    move-exception v2

    goto :goto_cd

    .line 68
    :catch_ae
    move-exception v2

    .line 69
    .local v2, "uoe":Ljava/lang/UnsupportedOperationException;
    :try_start_af
    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 70
    const/4 v0, 0x1

    goto :goto_c6

    .line 65
    .end local v2    # "uoe":Ljava/lang/UnsupportedOperationException;
    :catch_b4
    move-exception v2

    .line 66
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 67
    const/4 v0, 0x1

    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    goto :goto_c5

    .line 62
    :catch_ba
    move-exception v2

    .line 63
    .local v2, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 64
    const/4 v0, 0x1

    .end local v2    # "cce":Ljava/lang/ClassCastException;
    goto :goto_c5

    .line 59
    :catch_c0
    move-exception v2

    .line 60
    .local v2, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 61
    const/4 v0, 0x1

    .line 71
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_c5
    nop

    .line 72
    :goto_c6
    if-eqz v0, :cond_cb

    .line 73
    invoke-direct {p0}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->reset()V

    .line 75
    :cond_cb
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :goto_cd
    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_af .. :try_end_ce} :catchall_ac

    throw v2

    .line 36
    .end local v0    # "reset":Z
    :cond_cf
    :goto_cf
    return-void
.end method

.method schedule()V
    .registers 8

    .line 79
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 81
    .local v2, "e":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "pkg":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v4, :cond_39

    .line 83
    sget-object v4, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KnoxAnalytics triggered pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_39
    if-eqz v3, :cond_66

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_69

    if-nez v4, :cond_66

    .line 86
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_42
    const/4 v5, 0x3

    if-ge v4, v5, :cond_66

    .line 91
    :try_start_45
    sget-object v5, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sendKnoxAnalyticsLogs(Ljava/lang/String;IJ)V
    :try_end_5e
    .catch Ljava/lang/NullPointerException; {:try_start_45 .. :try_end_5e} :catch_5f
    .catchall {:try_start_45 .. :try_end_5e} :catchall_69

    .line 94
    goto :goto_63

    .line 92
    :catch_5f
    move-exception v5

    .line 93
    .local v5, "npe":Ljava/lang/NullPointerException;
    :try_start_60
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 86
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 97
    .end local v2    # "e":Ljava/util/Map$Entry;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_66
    goto :goto_d

    .line 99
    :cond_67
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_60 .. :try_end_6b} :catchall_69

    throw v1
.end method
