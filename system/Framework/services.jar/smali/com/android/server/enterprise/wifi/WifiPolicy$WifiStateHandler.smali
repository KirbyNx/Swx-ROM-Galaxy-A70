.class Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;
.super Landroid/os/Handler;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 337
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 338
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 339
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 343
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "WifiPolicyService"

    if-eqz v0, :cond_1a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    .line 355
    const-string v0, "Not defined state. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 350
    :cond_f
    const-string v0, "Updating WPS Blocked networks"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # invokes: Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWpsBlockedNetworks()Z
    invoke-static {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$000(Lcom/android/server/enterprise/wifi/WifiPolicy;)Z

    .line 352
    goto :goto_25

    .line 345
    :cond_1a
    const-string v0, "Updating configured networks"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->edmUpdateConfiguredNetworks()V

    .line 347
    nop

    .line 358
    :goto_25
    return-void
.end method
