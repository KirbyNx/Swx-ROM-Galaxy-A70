.class final Lcom/android/server/firewall/IntentFirewall$FirewallHandler;
.super Landroid/os/Handler;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FirewallHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/firewall/IntentFirewall;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 550
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;->this$0:Lcom/android/server/firewall/IntentFirewall;

    .line 551
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 552
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 556
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;->this$0:Lcom/android/server/firewall/IntentFirewall;

    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    move-result-object v1

    # invokes: Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/android/server/firewall/IntentFirewall;->access$300(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    .line 557
    return-void
.end method
