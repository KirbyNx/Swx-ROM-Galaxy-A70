.class Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;
.super Ljava/util/TimerTask;
.source "ThreatDefenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    .line 175
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    # getter for: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;
    invoke-static {v0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$000(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    move-result-object v0

    if-nez v0, :cond_12

    .line 179
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    new-instance v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    invoke-direct {v1}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;-><init>()V

    # setter for: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$002(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;)Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    .line 180
    :cond_12
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    # getter for: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;
    invoke-static {v0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$000(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->schedule()V

    .line 183
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    # invokes: Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->resetPackageRules()V
    invoke-static {v0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->access$100(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V

    .line 184
    return-void
.end method
