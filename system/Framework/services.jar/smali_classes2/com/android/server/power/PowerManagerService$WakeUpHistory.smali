.class public final Lcom/android/server/power/PowerManagerService$WakeUpHistory;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeUpHistory"
.end annotation


# static fields
.field private static final MAX_HISTORY:I = 0x64


# instance fields
.field public final on:I

.field public final packageName:Ljava/lang/String;

.field public final reasonNum:I

.field public final reasonStr:Ljava/lang/String;

.field public final time:Ljava/lang/String;

.field public final timeMillis:J

.field public final topActivity:Ljava/lang/String;

.field public final topPackage:Ljava/lang/String;

.field public final uid:I


# direct methods
.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "on"    # I
    .param p2, "uid"    # I
    .param p3, "reasonNum"    # I
    .param p4, "reasonStr"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "topActivty"    # Ljava/lang/String;
    .param p7, "topPackage"    # Ljava/lang/String;

    .line 9982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9983
    iput p1, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->on:I

    .line 9984
    iput p2, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->uid:I

    .line 9985
    iput p3, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->reasonNum:I

    .line 9986
    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->reasonStr:Ljava/lang/String;

    .line 9987
    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->packageName:Ljava/lang/String;

    .line 9989
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9990
    .local v0, "mTimeFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->timeMillis:J

    .line 9991
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->timeMillis:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->time:Ljava/lang/String;

    .line 9993
    iput-object p6, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->topActivity:Ljava/lang/String;

    .line 9994
    iput-object p7, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->topPackage:Ljava/lang/String;

    .line 9995
    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 9
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Lcom/android/server/power/PowerManagerService$1;

    .line 9967
    invoke-direct/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService$WakeUpHistory;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getHistory()[Lcom/android/server/power/PowerManagerService$WakeUpHistory;
    .registers 1

    .line 9998
    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeUpHistory:Lcom/android/internal/util/RingBuffer;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2900()Lcom/android/internal/util/RingBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/PowerManagerService$WakeUpHistory;

    return-object v0
.end method
