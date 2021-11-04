.class Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;
.super Landroid/os/Handler;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 448
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 449
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 450
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 453
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_7

    goto :goto_11

    .line 455
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;

    .line 456
    .local v0, "resultParams":Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->onDnsErrorEvent(Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;)V

    .line 457
    nop

    .line 460
    .end local v0    # "resultParams":Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;
    :goto_11
    return-void
.end method
