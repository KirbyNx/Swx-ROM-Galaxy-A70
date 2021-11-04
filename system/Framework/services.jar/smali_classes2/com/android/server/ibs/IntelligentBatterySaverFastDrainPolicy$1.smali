.class Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$1;
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

    .line 248
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    # invokes: Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateActivated()V
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->access$000(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 252
    return-void
.end method
