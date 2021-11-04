.class Lcom/android/server/display/WifiDisplayAdapter$13;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->turnOffPeriodicWifiScan(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$off:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .line 884
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-boolean p2, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->val$off:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 887
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 888
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 889
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 890
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x12

    iput v2, v1, Landroid/os/Message;->what:I

    .line 891
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 892
    .local v2, "args":Landroid/os/Bundle;
    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->val$off:Z

    const-string/jumbo v4, "stop"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 893
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 894
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 896
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_32
    return-void
.end method
