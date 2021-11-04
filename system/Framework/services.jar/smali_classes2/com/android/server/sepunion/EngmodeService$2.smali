.class Lcom/android/server/sepunion/EngmodeService$2;
.super Landroid/content/BroadcastReceiver;
.source "EngmodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/EngmodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/EngmodeService;

    .line 110
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$2;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 113
    if-eqz p2, :cond_28

    .line 114
    :try_start_2
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 115
    const-string v0, "engmode_service"

    const-string v1, "BootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$2;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # invokes: Lcom/android/server/sepunion/EngmodeService;->registerNetworkCallback()Z
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$500(Lcom/android/server/sepunion/EngmodeService;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 117
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$2;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # invokes: Lcom/android/server/sepunion/EngmodeService;->registerNetworkCallback()Z
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$500(Lcom/android/server/sepunion/EngmodeService;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_28

    .line 121
    :catch_23
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28
    :goto_28
    nop

    .line 124
    :goto_29
    return-void
.end method
