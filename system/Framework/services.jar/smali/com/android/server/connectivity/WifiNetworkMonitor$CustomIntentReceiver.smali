.class Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomIntentReceiver"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mToken:I

.field private final mWhat:I

.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/lang/String;II)V
    .registers 9
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "token"    # I
    .param p4, "what"    # I

    .line 899
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 900
    iput p3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->mToken:I

    .line 901
    iput p4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->mWhat:I

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mCleartextDnsNetwork:Landroid/net/Network;
    invoke-static {p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    .line 903
    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 904
    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

    .line 895
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 4

    .line 906
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    # getter for: Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->access$3000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 912
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->mWhat:I

    iget v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;->mToken:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(Landroid/os/Message;)V

    .line 913
    :cond_19
    return-void
.end method
