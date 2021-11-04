.class Lcom/att/iqi/IQIServiceBroker$6;
.super Ljava/lang/Object;
.source "IQIServiceBroker.java"

# interfaces
.implements Lcom/att/iqi/IIQIService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 226
    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$6;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .registers 3
    .param p1, "metricId"    # Lcom/att/iqi/lib/Metric$ID;
    .param p2, "callback"    # Lcom/att/iqi/IMetricQueryCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    return-void
.end method

.method public registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .registers 3
    .param p1, "metricId"    # Lcom/att/iqi/lib/Metric$ID;
    .param p2, "callback"    # Lcom/att/iqi/IMetricSourcingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    return-void
.end method

.method public registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/att/iqi/IProfileChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    return-void
.end method

.method public reportKeyCode([B)Z
    .registers 3
    .param p1, "keyCode"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .registers 3
    .param p1, "metricId"    # Lcom/att/iqi/lib/Metric$ID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .registers 2
    .param p1, "metric"    # Lcom/att/iqi/lib/Metric;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    return-void
.end method

.method public unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .registers 3
    .param p1, "metricId"    # Lcom/att/iqi/lib/Metric$ID;
    .param p2, "callback"    # Lcom/att/iqi/IMetricQueryCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    return-void
.end method

.method public unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .registers 3
    .param p1, "metricId"    # Lcom/att/iqi/lib/Metric$ID;
    .param p2, "callback"    # Lcom/att/iqi/IMetricSourcingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    return-void
.end method

.method public unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/att/iqi/IProfileChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    return-void
.end method
