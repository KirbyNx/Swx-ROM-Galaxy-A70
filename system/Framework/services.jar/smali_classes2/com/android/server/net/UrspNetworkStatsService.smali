.class public final Lcom/android/server/net/UrspNetworkStatsService;
.super Landroid/os/Handler;
.source "UrspNetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/UrspNetworkStatsService$UrspNetStatsHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "UrspNetworkStatsService"

.field private static final VDBG:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mNetworkStats:Landroid/net/INetworkStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkStats"    # Landroid/net/INetworkStatsService;

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    const-string/jumbo v0, "start UrspNetworkStatsService"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkStatsService;->log(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/android/server/net/UrspNetworkStatsService;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/net/UrspNetworkStatsService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UrspNetworkStatsService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 55
    .local v1, "mLooper":Landroid/os/Looper;
    if-eqz v1, :cond_25

    .line 56
    new-instance v2, Lcom/android/server/net/UrspNetworkStatsService$UrspNetStatsHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/UrspNetworkStatsService$UrspNetStatsHandler;-><init>(Lcom/android/server/net/UrspNetworkStatsService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/UrspNetworkStatsService;->mHandler:Landroid/os/Handler;

    goto :goto_2b

    .line 58
    :cond_25
    const-string/jumbo v2, "handlerThread.getLooper() returned null"

    invoke-static {v2}, Lcom/android/server/net/UrspNetworkStatsService;->logn(Ljava/lang/String;)V

    .line 60
    :goto_2b
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 90
    const-string v0, "UrspNetworkStatsService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 95
    const-string v0, "UrspNetworkStatsService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method


# virtual methods
.method public getIntervalUsageForUrsp(ILjava/lang/String;IJJ)J
    .registers 16
    .param p1, "type"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "start"    # J
    .param p6, "end"    # J

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkStatsService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/net/INetworkStatsService;->getIntervalUsageForUrsp(ILjava/lang/String;IJJ)J

    move-result-wide v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-wide v0

    .line 82
    :catch_c
    move-exception v0

    .line 83
    .local v0, "ignored":Landroid/os/RemoteException;
    const-string v1, "getIntervalUsageForUrsp exception"

    invoke-static {v1}, Lcom/android/server/net/UrspNetworkStatsService;->log(Ljava/lang/String;)V

    .line 84
    const-wide/16 v1, 0x0

    return-wide v1
.end method
