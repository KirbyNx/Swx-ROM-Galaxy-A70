.class Lcom/android/server/ConnectivityService$ConnectivityReportEvent;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectivityReportEvent"
.end annotation


# instance fields
.field private final mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private final mTimestampMillis:J


# direct methods
.method private constructor <init>(JLcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4
    .param p1, "timestampMillis"    # J
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 11903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11904
    iput-wide p1, p0, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;->mTimestampMillis:J

    .line 11905
    iput-object p3, p0, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 11906
    return-void
.end method

.method synthetic constructor <init>(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$1;)V
    .registers 5
    .param p1, "x0"    # J
    .param p3, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "x2"    # Lcom/android/server/ConnectivityService$1;

    .line 11899
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;-><init>(JLcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/ConnectivityService$ConnectivityReportEvent;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$ConnectivityReportEvent;

    .line 11899
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/android/server/ConnectivityService$ConnectivityReportEvent;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$ConnectivityReportEvent;

    .line 11899
    iget-wide v0, p0, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;->mTimestampMillis:J

    return-wide v0
.end method
