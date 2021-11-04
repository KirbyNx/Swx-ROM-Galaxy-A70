.class Lcom/android/server/net/MdoNotification$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MdoNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MdoNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MdoNotification;


# direct methods
.method constructor <init>(Lcom/android/server/net/MdoNotification;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/MdoNotification;

    .line 62
    iput-object p1, p0, Lcom/android/server/net/MdoNotification$1;->this$0:Lcom/android/server/net/MdoNotification;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 65
    const-string v0, "MdoNotification"

    const-string/jumbo v1, "wifi onAvailable."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/server/net/MdoNotification$1;->this$0:Lcom/android/server/net/MdoNotification;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/net/MdoNotification;->mIsWifiConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/net/MdoNotification;->access$002(Lcom/android/server/net/MdoNotification;Z)Z

    .line 67
    iget-object v0, p0, Lcom/android/server/net/MdoNotification$1;->this$0:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    .line 68
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 69
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 73
    const-string v0, "MdoNotification"

    const-string/jumbo v1, "wifi onLost."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/server/net/MdoNotification$1;->this$0:Lcom/android/server/net/MdoNotification;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/net/MdoNotification;->mIsWifiConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/net/MdoNotification;->access$002(Lcom/android/server/net/MdoNotification;Z)Z

    .line 75
    iget-object v0, p0, Lcom/android/server/net/MdoNotification$1;->this$0:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    .line 76
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 77
    return-void
.end method
