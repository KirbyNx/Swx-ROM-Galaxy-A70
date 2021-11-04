.class Lcom/android/server/input/InputManagerService$41;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .line 5990
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$41;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5993
    # getter for: Lcom/android/server/input/InputManagerService;->SEP_FULL:Z
    invoke-static {}, Lcom/android/server/input/InputManagerService;->access$5500()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 5994
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5995
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 5996
    const-string/jumbo v1, "mlstatus"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5997
    .local v1, "mlstatus":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_53

    .line 5999
    const-string/jumbo v2, "net.mirrorlink.on"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 6000
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$41;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$2800(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v4

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetMirrorLinkMode(JZ)V
    invoke-static {v4, v5, v3}, Lcom/android/server/input/InputManagerService;->access$5600(JZ)V

    goto :goto_5c

    .line 6002
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but property is not 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 6006
    :cond_53
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$41;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$2800(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v3

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetMirrorLinkMode(JZ)V
    invoke-static {v3, v4, v2}, Lcom/android/server/input/InputManagerService;->access$5600(JZ)V

    .line 6010
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "mlstatus":I
    :cond_5c
    :goto_5c
    return-void
.end method
