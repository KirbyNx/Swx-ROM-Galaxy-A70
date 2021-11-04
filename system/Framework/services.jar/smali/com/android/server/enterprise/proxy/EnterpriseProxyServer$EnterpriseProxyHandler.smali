.class Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;
.super Landroid/os/Handler;
.source "EnterpriseProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnterpriseProxyHandler"
.end annotation


# static fields
.field private static final ACTION_ON_CREDENTIALS_RECEIVED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 974
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 975
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 976
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 980
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_f

    .line 982
    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;

    # invokes: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->onCredentialsReceived(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$1000(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;)V

    .line 985
    :goto_f
    return-void
.end method
