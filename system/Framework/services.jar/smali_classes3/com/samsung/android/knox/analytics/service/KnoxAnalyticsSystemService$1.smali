.class Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;
.super Ljava/lang/Object;
.source "KnoxAnalyticsSystemService.java"

# interfaces
.implements Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    .line 62
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxAnalyticsActivation(Z)V
    .registers 5
    .param p1, "isNewActivation"    # Z

    .line 65
    # getter for: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onKnoxAnalyticsActivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    # invokes: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->startSystemService()V
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$100(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastAnalyticsStatus(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$200(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V

    .line 68
    if-eqz p1, :cond_1c

    .line 70
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    # invokes: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logActivationEventAfterStart()V
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$300(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    .line 72
    :cond_1c
    return-void
.end method

.method public onKnoxAnalyticsDeactivation(Z)V
    .registers 4
    .param p1, "isForceful"    # Z

    .line 76
    # getter for: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onKnoxAnalyticsDeactivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    const/4 v1, 0x0

    # invokes: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->broadcastAnalyticsStatus(ZZ)V
    invoke-static {v0, v1, p1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$200(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZ)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    # invokes: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->stopSystemService()V
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$400(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;)V

    .line 79
    return-void
.end method

.method public onStatusChanged(IZLjava/lang/String;)V
    .registers 5
    .param p1, "trigger"    # I
    .param p2, "status"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    # invokes: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logStatusChangedEventAfterStart(IZLjava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$600(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    .line 89
    return-void
.end method

.method public onTriggerChanged(IZLjava/lang/String;)V
    .registers 5
    .param p1, "trigger"    # I
    .param p2, "status"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    # invokes: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->logTriggerEventAfterStart(IZLjava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->access$500(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;IZLjava/lang/String;)V

    .line 84
    return-void
.end method
