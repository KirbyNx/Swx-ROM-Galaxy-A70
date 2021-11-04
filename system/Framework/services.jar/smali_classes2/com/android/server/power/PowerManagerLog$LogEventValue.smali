.class Lcom/android/server/power/PowerManagerLog$LogEventValue;
.super Ljava/lang/Object;
.source "PowerManagerLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogEventValue"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public tag:B

.field public tid:S

.field public time:J


# direct methods
.method constructor <init>(BSJ[Ljava/lang/Object;)V
    .registers 6
    .param p1, "tag"    # B
    .param p2, "tid"    # S
    .param p3, "time"    # J
    .param p5, "args"    # [Ljava/lang/Object;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-byte p1, p0, Lcom/android/server/power/PowerManagerLog$LogEventValue;->tag:B

    .line 354
    iput-wide p3, p0, Lcom/android/server/power/PowerManagerLog$LogEventValue;->time:J

    .line 355
    iput-short p2, p0, Lcom/android/server/power/PowerManagerLog$LogEventValue;->tid:S

    .line 356
    iput-object p5, p0, Lcom/android/server/power/PowerManagerLog$LogEventValue;->args:[Ljava/lang/Object;

    .line 357
    return-void
.end method
