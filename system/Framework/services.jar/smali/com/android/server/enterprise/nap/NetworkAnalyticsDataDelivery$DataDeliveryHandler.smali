.class Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;
.super Landroid/os/Handler;
.source "NetworkAnalyticsDataDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataDeliveryHandler"
.end annotation


# static fields
.field private static final ACTION_ACCUMULATE_DATA:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .param p2, "loop"    # Landroid/os/Looper;

    .line 1359
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 1361
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1363
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1373
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_50

    .line 1379
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1381
    .local v0, "dataPoint":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 1383
    return-void

    .line 1387
    :cond_d
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1389
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J
    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-lez v1, :cond_50

    .line 1391
    :cond_35
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->deliverData(Ljava/util/List;)I

    .line 1393
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1395
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->access$102(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;J)J

    .line 1407
    .end local v0    # "dataPoint":Ljava/lang/String;
    :cond_50
    :goto_50
    return-void
.end method
