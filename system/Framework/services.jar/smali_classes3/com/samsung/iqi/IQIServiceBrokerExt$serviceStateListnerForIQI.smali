.class Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;
.super Ljava/lang/Object;
.source "IQIServiceBrokerExt.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/iqi/IQIServiceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "serviceStateListnerForIQI"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/iqi/IQIServiceBrokerExt;

    .line 203
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChange(Z)V
    .registers 3
    .param p1, "paramBoolean"    # Z

    .line 205
    if-eqz p1, :cond_6

    .line 206
    const/4 v0, 0x1

    # invokes: Lcom/samsung/iqi/IQIServiceBrokerExt;->submitSS2S(Z)V
    invoke-static {v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->access$700(Z)V

    .line 208
    :cond_6
    return-void
.end method
