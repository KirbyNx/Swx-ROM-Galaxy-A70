.class Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "NfcConnectivity.java"

# interfaces
.implements Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;


# direct methods
.method private constructor <init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 80
    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, "state":I
    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_ADAPTER_STATE_CHANGED state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # setter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I
    invoke-static {v2, v0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$402(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I

    .line 83
    const/4 v2, 0x1

    if-eq v0, v2, :cond_50

    const/16 v2, 0xb

    if-eq v0, v2, :cond_50

    const/16 v2, 0xe

    if-eq v0, v2, :cond_49

    const/4 v2, 0x4

    if-eq v0, v2, :cond_49

    const/4 v2, 0x5

    if-eq v0, v2, :cond_36

    goto :goto_63

    .line 99
    :cond_36
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$200(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 100
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v3, 0x0

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->enableInternal(Z)Z
    invoke-static {v2, v3}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$500(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Z)Z

    goto :goto_50

    .line 87
    :cond_49
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v2, 0x3

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->sendStateChanged(I)V
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$300(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    .line 88
    goto :goto_63

    .line 106
    :cond_50
    :goto_50
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I
    invoke-static {v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$600(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)I

    move-result v2

    if-ne v2, v0, :cond_63

    .line 107
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v3, 0x2

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->sendStateChanged(I)V
    invoke-static {v2, v3}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$300(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    .line 108
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # setter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I
    invoke-static {v2, v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$602(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I

    .line 114
    :cond_63
    :goto_63
    return-void
.end method
