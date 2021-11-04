.class Lcom/android/server/ConnectivityService$NetworkTestedResults;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkTestedResults"
.end annotation


# instance fields
.field private final mNetId:I

.field private final mRedirectUrl:Ljava/lang/String;

.field private final mTestResult:I

.field private final mTimestampMillis:J


# direct methods
.method private constructor <init>(IIJLjava/lang/String;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "testResult"    # I
    .param p3, "timestampMillis"    # J
    .param p5, "redirectUrl"    # Ljava/lang/String;

    .line 11887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11888
    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mNetId:I

    .line 11889
    iput p2, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mTestResult:I

    .line 11890
    iput-wide p3, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mTimestampMillis:J

    .line 11891
    iput-object p5, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mRedirectUrl:Ljava/lang/String;

    .line 11892
    return-void
.end method

.method synthetic constructor <init>(IIJLjava/lang/String;Lcom/android/server/ConnectivityService$1;)V
    .registers 7
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # Lcom/android/server/ConnectivityService$1;

    .line 11880
    invoke-direct/range {p0 .. p5}, Lcom/android/server/ConnectivityService$NetworkTestedResults;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService$NetworkTestedResults;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$NetworkTestedResults;

    .line 11880
    iget v0, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mNetId:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/ConnectivityService$NetworkTestedResults;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$NetworkTestedResults;

    .line 11880
    iget v0, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mTestResult:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService$NetworkTestedResults;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$NetworkTestedResults;

    .line 11880
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method
