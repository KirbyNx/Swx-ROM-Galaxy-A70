.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$14:Z

.field public final synthetic f$15:J

.field public final synthetic f$16:J

.field public final synthetic f$17:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZJJJ)V
    .registers 26

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$0:Lcom/android/server/am/BatteryStatsService;

    move v1, p2

    iput v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$1:I

    move v1, p3

    iput v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$2:I

    move v1, p4

    iput v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$3:I

    move v1, p5

    iput v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$4:I

    move v1, p6

    iput v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$5:I

    move v1, p7

    iput v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$6:I

    move v1, p8

    iput v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$7:I

    move v1, p9

    iput v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$8:I

    move-wide v1, p10

    iput-wide v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$9:J

    move v1, p12

    iput v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$10:I

    move/from16 v1, p13

    iput v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$11:I

    move/from16 v1, p14

    iput v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$12:I

    move/from16 v1, p15

    iput v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$13:I

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$14:Z

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$15:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$16:J

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$17:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$1:I

    iget v3, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$2:I

    iget v4, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$3:I

    iget v5, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$4:I

    iget v6, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$5:I

    iget v7, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$6:I

    iget v8, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$7:I

    iget v9, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$8:I

    iget-wide v10, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$9:J

    iget v12, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$10:I

    iget v13, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$11:I

    iget v14, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$12:I

    iget v15, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$13:I

    move-object/from16 v23, v1

    iget-boolean v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$14:Z

    move/from16 v16, v1

    move/from16 v24, v2

    iget-wide v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$15:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$16:J

    move-wide/from16 v19, v1

    iget-wide v0, v0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$O9D7c4aLHVLoJ9IXYqp_HxTZ4Es;->f$17:J

    move-wide/from16 v21, v0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual/range {v1 .. v22}, Lcom/android/server/am/BatteryStatsService;->lambda$setBatteryState$104$BatteryStatsService(IIIIIIIIJIIIIZJJJ)V

    return-void
.end method
