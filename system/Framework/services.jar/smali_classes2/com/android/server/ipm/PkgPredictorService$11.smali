.class Lcom/android/server/ipm/PkgPredictorService$11;
.super Landroid/content/BroadcastReceiver;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/PkgPredictorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/PkgPredictorService;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 471
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$11;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 474
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_2a

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 476
    const/4 v1, 0x4

    const-string/jumbo v2, "wifi_state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 477
    .local v1, "state":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_24

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    goto :goto_24

    .line 480
    :cond_1d
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$11;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/ipm/PkgPredictorService;->mWifiState:I
    invoke-static {v2, v3}, Lcom/android/server/ipm/PkgPredictorService;->access$1602(Lcom/android/server/ipm/PkgPredictorService;I)I

    goto :goto_2a

    .line 478
    :cond_24
    :goto_24
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$11;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/ipm/PkgPredictorService;->mWifiState:I
    invoke-static {v2, v3}, Lcom/android/server/ipm/PkgPredictorService;->access$1602(Lcom/android/server/ipm/PkgPredictorService;I)I

    .line 483
    .end local v1    # "state":I
    :cond_2a
    :goto_2a
    return-void
.end method
