.class Lcom/android/server/sepunion/BRReceiverAgentService$1;
.super Landroid/content/BroadcastReceiver;
.source "BRReceiverAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/BRReceiverAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/BRReceiverAgentService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/BRReceiverAgentService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/BRReceiverAgentService;

    .line 68
    iput-object p1, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1;->this$0:Lcom/android/server/sepunion/BRReceiverAgentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sepunion/BRReceiverAgentService$1$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/sepunion/BRReceiverAgentService$1$1;-><init>(Lcom/android/server/sepunion/BRReceiverAgentService$1;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 80
    .local v0, "threadForSendingIntent":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    return-void
.end method
