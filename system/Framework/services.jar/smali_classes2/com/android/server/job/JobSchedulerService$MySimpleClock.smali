.class abstract Lcom/android/server/job/JobSchedulerService$MySimpleClock;
.super Ljava/time/Clock;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MySimpleClock"
.end annotation


# instance fields
.field private final mZoneId:Ljava/time/ZoneId;


# direct methods
.method constructor <init>(Ljava/time/ZoneId;)V
    .registers 2
    .param p1, "zoneId"    # Ljava/time/ZoneId;

    .line 162
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->mZoneId:Ljava/time/ZoneId;

    .line 164
    return-void
.end method


# virtual methods
.method public getZone()Ljava/time/ZoneId;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->mZoneId:Ljava/time/ZoneId;

    return-object v0
.end method

.method public instant()Ljava/time/Instant;
    .registers 3

    .line 186
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public abstract millis()J
.end method

.method public withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 173
    new-instance v0, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;-><init>(Lcom/android/server/job/JobSchedulerService$MySimpleClock;Ljava/time/ZoneId;)V

    return-object v0
.end method
