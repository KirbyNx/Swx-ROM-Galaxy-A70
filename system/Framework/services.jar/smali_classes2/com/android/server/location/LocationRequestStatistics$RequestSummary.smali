.class Lcom/android/server/location/LocationRequestStatistics$RequestSummary;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationRequestStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestSummary"
.end annotation


# static fields
.field static final REQUEST_ENDED_INTERVAL:J = -0x1L


# instance fields
.field private final mElapsedRealtimeMillis:J

.field private final mFeatureId:Ljava/lang/String;

.field private final mIntervalMillis:J

.field private final mPackageName:Ljava/lang/String;

.field private final mProviderName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "intervalMillis"    # J

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mPackageName:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mFeatureId:Ljava/lang/String;

    .line 262
    iput-object p3, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mProviderName:Ljava/lang/String;

    .line 263
    iput-wide p4, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mIntervalMillis:J

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mElapsedRealtimeMillis:J

    .line 265
    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;J)V
    .registers 12
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "systemElapsedOffsetMillis"    # J

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mElapsedRealtimeMillis:J

    add-long/2addr v1, p2

    .line 270
    .local v1, "systemTimeMillis":J
    const-string v3, "At "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-wide v3, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mIntervalMillis:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    const-string v3, "- "

    goto :goto_26

    :cond_24
    const-string v3, "+ "

    :goto_26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mProviderName:Ljava/lang/String;

    aput-object v7, v3, v4

    .line 272
    const-string v4, "%7s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " request from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mPackageName:Ljava/lang/String;

    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v3, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mFeatureId:Ljava/lang/String;

    if-eqz v3, :cond_52

    .line 275
    const-string v3, " with feature "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mFeatureId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_52
    iget-wide v3, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mIntervalMillis:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6a

    .line 278
    const-string v3, " at interval "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->mIntervalMillis:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_6a
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 281
    return-void
.end method
