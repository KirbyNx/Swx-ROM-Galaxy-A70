.class Lcom/android/server/wifioffload/WifiOffloadService$1;
.super Landroid/os/Handler;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifioffload/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifioffload/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .line 602
    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService$1;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received , msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiOffloadService"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v0, v2, :cond_28

    .line 610
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService$1;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifioffload/WifiOffloadService;->access$000(Lcom/android/server/wifioffload/WifiOffloadService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifioffload/WifiOffloadService;->checkWifiOffloadConditions(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifioffload/WifiOffloadService;->access$100(Lcom/android/server/wifioffload/WifiOffloadService;Ljava/lang/String;)V

    .line 611
    return-void

    .line 614
    :cond_28
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v0, v2, :cond_38

    .line 615
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService$1;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # invokes: Lcom/android/server/wifioffload/WifiOffloadService;->startWifiOffloadActivity()V
    invoke-static {v0}, Lcom/android/server/wifioffload/WifiOffloadService;->access$200(Lcom/android/server/wifioffload/WifiOffloadService;)V

    .line 616
    const-string v0, "MSG_START_WIFIOFFLOAD_DIALOG_DELAYED_MSG  wil start ="

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_38
    return-void
.end method
