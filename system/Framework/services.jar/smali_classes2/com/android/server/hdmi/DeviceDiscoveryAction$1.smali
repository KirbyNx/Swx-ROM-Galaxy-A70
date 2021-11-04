.class Lcom/android/server/hdmi/DeviceDiscoveryAction$1;
.super Ljava/lang/Object;
.source "DeviceDiscoveryAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/DeviceDiscoveryAction;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 128
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPollingFinished(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p1, "ackedAddress":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "DeviceDiscoveryAction"

    if-eqz v0, :cond_13

    .line 132
    const-string v0, "No device is detected."

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    # invokes: Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->access$000(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    .line 134
    return-void

    .line 137
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device detected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    # invokes: Lcom/android/server/hdmi/DeviceDiscoveryAction;->allocateDevices(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->access$100(Lcom/android/server/hdmi/DeviceDiscoveryAction;Ljava/util/List;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    # getter for: Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDelayPeriod:I
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->access$200(Lcom/android/server/hdmi/DeviceDiscoveryAction;)I

    move-result v0

    if-lez v0, :cond_3a

    .line 140
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    # invokes: Lcom/android/server/hdmi/DeviceDiscoveryAction;->startToDelayAction()V
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->access$300(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    goto :goto_3f

    .line 142
    :cond_3a
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    # invokes: Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPhysicalAddressStage()V
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    .line 144
    :goto_3f
    return-void
.end method
