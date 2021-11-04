.class Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;
.super Lcom/android/server/MasterClearReceiver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryWipeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .registers 2

    .line 1499
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Lcom/android/server/MasterClearReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/security/SecurityPolicy$1;

    .line 1499
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1503
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1505
    const/4 v0, 0x1

    .line 1506
    .local v0, "broadcastResult":Z
    new-instance v1, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V

    .line 1507
    .local v1, "rHandler":Landroid/os/Handler;
    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1508
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    .line 1511
    nop

    .end local v0    # "broadcastResult":Z
    .end local v1    # "rHandler":Landroid/os/Handler;
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_1e

    .line 1509
    :catch_1a
    move-exception v0

    .line 1510
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1512
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method
