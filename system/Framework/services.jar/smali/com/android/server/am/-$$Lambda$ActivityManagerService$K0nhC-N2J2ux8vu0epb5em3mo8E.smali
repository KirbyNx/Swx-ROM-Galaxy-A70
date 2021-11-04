.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$K0nhC-N2J2ux8vu0epb5em3mo8E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/ProcessCpuTracker$FilterStats;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$K0nhC-N2J2ux8vu0epb5em3mo8E;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$K0nhC-N2J2ux8vu0epb5em3mo8E;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$ActivityManagerService$K0nhC-N2J2ux8vu0epb5em3mo8E;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$K0nhC-N2J2ux8vu0epb5em3mo8E;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$K0nhC-N2J2ux8vu0epb5em3mo8E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->lambda$reportMemUsage$9(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p1

    return p1
.end method
