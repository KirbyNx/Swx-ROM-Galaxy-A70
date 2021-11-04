.class Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;
.super Landroid/os/Handler;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/EventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/EventQueue;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 45
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 49
    if-nez p1, :cond_c

    .line 50
    # getter for: Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage(): msg is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void

    .line 53
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    # invokes: Lcom/samsung/android/knox/analytics/service/EventQueue;->waitVersioningCompleted()V
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$100(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "KnoxAnalyticsData"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_60

    const/4 v3, 0x2

    if-eq v0, v3, :cond_42

    const/4 v2, 0x3

    if-eq v0, v2, :cond_28

    .line 76
    # getter for: Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage(): invalid msg.what"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 70
    :cond_28
    # getter for: Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_CLEANED_LOG_API"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 73
    .local v1, "cleanedKAData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    const/4 v3, 0x0

    # invokes: Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V
    invoke-static {v2, v1, v3}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$200(Lcom/samsung/android/knox/analytics/service/EventQueue;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V

    .line 74
    goto :goto_79

    .line 63
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "cleanedKAData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    :cond_42
    # getter for: Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_KA_DEACTIVATION"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .restart local v0    # "data":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 66
    .local v1, "deactivationData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    # invokes: Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V
    invoke-static {v3, v1, v2}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$200(Lcom/samsung/android/knox/analytics/service/EventQueue;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V

    .line 67
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    # invokes: Lcom/samsung/android/knox/analytics/service/EventQueue;->stop()V
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$300(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    .line 68
    goto :goto_79

    .line 57
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "deactivationData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    :cond_60
    # getter for: Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_LOG_API"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .restart local v0    # "data":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 60
    .local v1, "analyticsData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    # invokes: Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V
    invoke-static {v3, v1, v2}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$200(Lcom/samsung/android/knox/analytics/service/EventQueue;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V

    .line 61
    nop

    .line 79
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "analyticsData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    :goto_79
    return-void
.end method
