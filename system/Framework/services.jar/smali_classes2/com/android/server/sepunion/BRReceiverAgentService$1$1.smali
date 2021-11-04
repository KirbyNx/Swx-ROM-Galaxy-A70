.class Lcom/android/server/sepunion/BRReceiverAgentService$1$1;
.super Ljava/lang/Object;
.source "BRReceiverAgentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/BRReceiverAgentService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sepunion/BRReceiverAgentService$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/BRReceiverAgentService$1;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/sepunion/BRReceiverAgentService$1;

    .line 70
    iput-object p1, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1$1;->this$1:Lcom/android/server/sepunion/BRReceiverAgentService$1;

    iput-object p2, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1$1;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_17

    .line 74
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 75
    iget-object v0, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1$1;->this$1:Lcom/android/server/sepunion/BRReceiverAgentService$1;

    iget-object v0, v0, Lcom/android/server/sepunion/BRReceiverAgentService$1;->this$0:Lcom/android/server/sepunion/BRReceiverAgentService;

    # invokes: Lcom/android/server/sepunion/BRReceiverAgentService;->checkIsPossibleToSendIntent()V
    invoke-static {v0}, Lcom/android/server/sepunion/BRReceiverAgentService;->access$000(Lcom/android/server/sepunion/BRReceiverAgentService;)V

    .line 78
    :cond_17
    return-void
.end method
