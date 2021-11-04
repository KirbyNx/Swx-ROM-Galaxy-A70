.class Lcom/android/server/net/MdoNotification$2;
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

    .line 80
    iput-object p1, p0, Lcom/android/server/net/MdoNotification$2;->this$0:Lcom/android/server/net/MdoNotification;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 83
    const-string v0, "MdoNotification"

    const-string v1, "ethernet onAvailable."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/server/net/MdoNotification$2;->this$0:Lcom/android/server/net/MdoNotification;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/net/MdoNotification;->mIsEthernetConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/net/MdoNotification;->access$102(Lcom/android/server/net/MdoNotification;Z)Z

    .line 85
    iget-object v0, p0, Lcom/android/server/net/MdoNotification$2;->this$0:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    .line 86
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 87
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 91
    const-string v0, "MdoNotification"

    const-string v1, "ethernet onLost."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/server/net/MdoNotification$2;->this$0:Lcom/android/server/net/MdoNotification;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/net/MdoNotification;->mIsEthernetConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/net/MdoNotification;->access$102(Lcom/android/server/net/MdoNotification;Z)Z

    .line 93
    iget-object v0, p0, Lcom/android/server/net/MdoNotification$2;->this$0:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    .line 94
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 95
    return-void
.end method
