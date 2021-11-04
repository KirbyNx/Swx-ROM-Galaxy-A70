.class public final Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil$History;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryInternal"
.end annotation


# instance fields
.field public final log:Ljava/lang/String;

.field public final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p1, p0, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;->time:Ljava/lang/String;

    .line 586
    iput-object p2, p0, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;->log:Ljava/lang/String;

    .line 587
    return-void
.end method
