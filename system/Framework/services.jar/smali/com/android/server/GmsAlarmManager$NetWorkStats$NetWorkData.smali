.class Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager$NetWorkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetWorkData"
.end annotation


# instance fields
.field endTime:J

.field startTime:J

.field totalTime:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GmsAlarmManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/GmsAlarmManager$1;

    .line 1176
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;-><init>()V

    return-void
.end method


# virtual methods
.method public setEndTime(J)V
    .registers 5
    .param p1, "time"    # J

    .line 1181
    iput-wide p1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    .line 1182
    iget-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 1183
    return-void
.end method
