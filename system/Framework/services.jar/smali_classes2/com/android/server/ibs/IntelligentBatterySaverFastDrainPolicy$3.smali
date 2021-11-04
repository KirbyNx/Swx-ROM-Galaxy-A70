.class Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$3;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverFastDrainPolicy.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 869
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$3;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 5

    .line 872
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$3;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2100(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    .line 873
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$3;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    const/4 v1, 0x5

    # setter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I
    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2102(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)I

    .line 874
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$3;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2200(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object v0

    const-string/jumbo v2, "move to safe check"

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$3;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->clearSafeCheck()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2600(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 876
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$3;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    const-wide/32 v2, 0xea60

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->scheduleSaveCheckTimeoutAlarm(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2700(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;J)V

    .line 877
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$3;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$2800(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->sendEmptyMessage(I)Z

    goto :goto_39

    .line 879
    :cond_32
    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    const-string v1, " motion alarm triggered but state is not motion!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :goto_39
    return-void
.end method
