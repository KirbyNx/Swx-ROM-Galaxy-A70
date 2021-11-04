.class Lcom/android/server/BatteryService$14;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->checkLongLifeBattery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .line 1325
    iput-object p1, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1328
    iget-object v0, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1329
    :try_start_7
    # operator++ for: Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$3608()I

    .line 1330
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_61

    .line 1332
    iget-object v0, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->checkLongLifeBatteryInternal()I
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$3700(Lcom/android/server/BatteryService;)I

    move-result v0

    .line 1333
    .local v0, "nReturnValue":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_58

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    goto :goto_60

    .line 1341
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ Faild to get property values, longBatteryRetryCnt= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$3600()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[LLB] "

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    # getter for: Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$3600()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_48

    iget-object v1, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_60

    .line 1343
    :cond_48
    const-string v1, "[LLB] "

    const-string v2, "!@ Faild to calc checkLongLifeBatteryInternal, Do not try anymore"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 1338
    :cond_50
    const-string v1, "[LLB] "

    const-string v2, "!@ Calc error! check date!  "

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    goto :goto_60

    .line 1335
    :cond_58
    const-string v1, "[LLB] "

    const-string v2, "!@ success to check weekly diff "

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    nop

    .line 1347
    :goto_60
    return-void

    .line 1330
    .end local v0    # "nReturnValue":I
    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v1
.end method
