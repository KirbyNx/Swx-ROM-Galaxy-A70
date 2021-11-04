.class public Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;
.super Ljava/lang/Object;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsUtils"
.end annotation


# static fields
.field public static final PRIVATE_DNS_PROBE_HOST_SUFFIX:Ljava/lang/String; = "-dnsotls-ds.metric.gstatic.com"

.field private static final TAG:Ljava/lang/String; = "WifiNetworkMonitor:DnsUtils"

.field public static final TYPE_ADDRCONFIG:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dnsTypeToStr(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 2986
    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_d

    .line 2995
    const-string v0, "UNDEFINED"

    return-object v0

    .line 2990
    :cond_d
    const-string v0, "AAAA"

    return-object v0

    .line 2988
    :cond_10
    const-string v0, "A"

    return-object v0

    .line 2992
    :cond_13
    const-string v0, "ADDRCONFIG"

    return-object v0
.end method

.method public static getAllByName(Landroid/net/DnsResolver;Landroid/net/Network;Ljava/lang/String;I)[Ljava/net/InetAddress;
    .registers 18
    .param p0, "dnsResolver"    # Landroid/net/DnsResolver;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 2879
    move-object/from16 v7, p2

    const-string v8, " (%s)%s"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 2880
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 2883
    .local v10, "errorMsg":Ljava/lang/StringBuilder;
    const/16 v4, 0x1c

    const/4 v5, 0x4

    .line 2884
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p3

    :try_start_1c
    invoke-static/range {v1 .. v6}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;->getAllByName(Landroid/net/DnsResolver;Landroid/net/Network;Ljava/lang/String;III)[Ljava/net/InetAddress;

    move-result-object v0

    .line 2883
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_27
    .catch Ljava/net/UnknownHostException; {:try_start_1c .. :try_end_27} :catch_28

    .line 2889
    goto :goto_40

    .line 2886
    :catch_28
    move-exception v0

    .line 2888
    .local v0, "e":Ljava/net/UnknownHostException;
    new-array v1, v11, [Ljava/lang/Object;

    const/16 v2, 0x1c

    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;->dnsTypeToStr(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_40
    const/4 v4, 0x1

    const/4 v5, 0x4

    .line 2892
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p3

    :try_start_48
    invoke-static/range {v1 .. v6}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;->getAllByName(Landroid/net/DnsResolver;Landroid/net/Network;Ljava/lang/String;III)[Ljava/net/InetAddress;

    move-result-object v0

    .line 2891
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_53
    .catch Ljava/net/UnknownHostException; {:try_start_48 .. :try_end_53} :catch_54

    .line 2897
    goto :goto_6a

    .line 2894
    :catch_54
    move-exception v0

    .line 2896
    .restart local v0    # "e":Ljava/net/UnknownHostException;
    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v12}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;->dnsTypeToStr(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2899
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_6a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_99

    .line 2903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    invoke-static {v13, v7, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6100(ILjava/lang/Object;Ljava/lang/String;)V

    .line 2904
    new-array v0, v13, [Ljava/net/InetAddress;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0

    .line 2900
    :cond_99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    invoke-static {v13, v7, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6100(ILjava/lang/Object;Ljava/lang/String;)V

    .line 2901
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, v7}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllByName(Landroid/net/DnsResolver;Landroid/net/Network;Ljava/lang/String;III)[Ljava/net/InetAddress;
    .registers 24
    .param p0, "dnsResolver"    # Landroid/net/DnsResolver;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "flag"    # I
    .param p5, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 2915
    move-object/from16 v15, p2

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v14, v0

    .line 2916
    .local v14, "resultRef":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->start()Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    move-result-object v16

    .line 2917
    .local v16, "watch":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    new-instance v7, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils$1;

    invoke-direct {v7, v14, v15}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils$1;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    .line 2940
    .local v7, "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    const/16 v0, -0x7f

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v17

    .line 2943
    .local v17, "oldTag":I
    const/4 v0, -0x1

    move/from16 v13, p3

    if-ne v13, v0, :cond_33

    .line 2944
    sget-object v5, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$DnsUtils$I9B5QqVbOEkXhvtONZ-ydz8foi0;->INSTANCE:Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$DnsUtils$I9B5QqVbOEkXhvtONZ-ydz8foi0;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    move-object v2, v14

    move-object v1, v15

    goto :goto_48

    .line 2947
    :cond_33
    sget-object v0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$DnsUtils$NJDmKOKxHtSq1T6qH1Y7VFWolvo;->INSTANCE:Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$DnsUtils$NJDmKOKxHtSq1T6qH1Y7VFWolvo;

    const/4 v1, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object v13, v0

    move-object v2, v14

    .end local v14    # "resultRef":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    .local v2, "resultRef":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/util/List<Ljava/net/InetAddress;>;>;"
    move-object v14, v1

    move-object v1, v15

    move-object v15, v7

    invoke-virtual/range {v8 .. v15}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    .line 2951
    :goto_48
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2953
    const/4 v3, 0x0

    .line 2954
    .local v3, "errorMsg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2956
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    move/from16 v5, p5

    int-to-long v8, v5

    :try_start_50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;
    :try_end_59
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_50 .. :try_end_59} :catch_6e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_50 .. :try_end_59} :catch_6a
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_59} :catch_6a
    .catchall {:try_start_50 .. :try_end_59} :catchall_68

    .line 2962
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->stop()J

    move-result-wide v9

    const/4 v13, 0x0

    move/from16 v11, p3

    move-object v12, v3

    move-object/from16 v14, p2

    invoke-static/range {v8 .. v14}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;->logDnsResult(Ljava/util/List;JILjava/lang/String;ILjava/lang/Object;)V

    .line 2963
    move-object v4, v8

    goto :goto_81

    .line 2962
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :catchall_68
    move-exception v0

    goto :goto_93

    .line 2959
    :catch_6a
    move-exception v0

    .line 2960
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6b
    const-string v12, "Timeout"

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "errorMsg":Ljava/lang/String;
    .local v12, "errorMsg":Ljava/lang/String;
    goto :goto_73

    .line 2957
    .end local v12    # "errorMsg":Ljava/lang/String;
    .restart local v3    # "errorMsg":Ljava/lang/String;
    :catch_6e
    move-exception v0

    .line 2958
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v12
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_68

    .line 2962
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v3    # "errorMsg":Ljava/lang/String;
    .restart local v12    # "errorMsg":Ljava/lang/String;
    :goto_73
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->stop()J

    move-result-wide v9

    const/4 v13, 0x0

    move-object v8, v4

    move/from16 v11, p3

    move-object/from16 v14, p2

    invoke-static/range {v8 .. v14}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;->logDnsResult(Ljava/util/List;JILjava/lang/String;ILjava/lang/Object;)V

    .line 2963
    move-object v3, v12

    .line 2965
    .end local v12    # "errorMsg":Ljava/lang/String;
    .restart local v3    # "errorMsg":Ljava/lang/String;
    :goto_81
    if-nez v3, :cond_8d

    .line 2967
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/InetAddress;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0

    .line 2965
    :cond_8d
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2962
    :goto_93
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->stop()J

    move-result-wide v9

    const/4 v13, 0x0

    move-object v8, v4

    move/from16 v11, p3

    move-object v12, v3

    move-object/from16 v14, p2

    invoke-static/range {v8 .. v14}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;->logDnsResult(Ljava/util/List;JILjava/lang/String;ILjava/lang/Object;)V

    .line 2963
    throw v0
.end method

.method static synthetic lambda$getAllByName$0(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 2944
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$getAllByName$1(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 2947
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static logDnsResult(Ljava/util/List;JILjava/lang/String;ILjava/lang/Object;)V
    .registers 14
    .param p1, "latency"    # J
    .param p3, "type"    # I
    .param p4, "errorMsg"    # Ljava/lang/String;
    .param p5, "probeType"    # I
    .param p6, "url"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;JI",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2973
    .local p0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_45

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_45

    .line 2974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2975
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 2976
    .local v5, "address":Ljava/net/InetAddress;
    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2977
    .end local v5    # "address":Ljava/net/InetAddress;
    goto :goto_14

    .line 2978
    :cond_2d
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%dms OK %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    invoke-static {p5, p6, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6100(ILjava/lang/Object;Ljava/lang/String;)V

    .line 2979
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    goto :goto_5f

    .line 2980
    :cond_45
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;->dnsTypeToStr(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    aput-object p4, v3, v0

    const-string v0, "%dms FAIL in type %s %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    invoke-static {p5, p6, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$6100(ILjava/lang/Object;Ljava/lang/String;)V

    .line 2983
    :goto_5f
    return-void
.end method
