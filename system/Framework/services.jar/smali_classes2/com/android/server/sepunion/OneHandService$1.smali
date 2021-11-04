.class Lcom/android/server/sepunion/OneHandService$1;
.super Landroid/content/BroadcastReceiver;
.source "OneHandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/OneHandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/OneHandService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/OneHandService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/OneHandService;

    .line 145
    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$1;->this$0:Lcom/android/server/sepunion/OneHandService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 147
    if-eqz p2, :cond_13

    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 149
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$1;->this$0:Lcom/android/server/sepunion/OneHandService;

    # invokes: Lcom/android/server/sepunion/OneHandService;->startGestureService()V
    invoke-static {v0}, Lcom/android/server/sepunion/OneHandService;->access$100(Lcom/android/server/sepunion/OneHandService;)V

    .line 152
    :cond_13
    return-void
.end method
