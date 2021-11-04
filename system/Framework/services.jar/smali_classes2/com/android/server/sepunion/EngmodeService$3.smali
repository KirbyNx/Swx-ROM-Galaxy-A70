.class Lcom/android/server/sepunion/EngmodeService$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "EngmodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/EngmodeService;->registerNetworkCallback()Z
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

    .line 150
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 9
    .param p1, "network"    # Landroid/net/Network;

    .line 153
    const-string v0, "engmode_service"

    const-string v1, "Network is available"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mAvailableNetwork:Z
    invoke-static {v0, v1}, Lcom/android/server/sepunion/EngmodeService;->access$602(Lcom/android/server/sepunion/EngmodeService;Z)Z

    .line 156
    :try_start_d
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$400(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_38

    .line 157
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-virtual {v0}, Lcom/android/server/sepunion/EngmodeService;->makeTimerTask()V

    .line 158
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/android/server/sepunion/EngmodeService;->access$402(Lcom/android/server/sepunion/EngmodeService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 159
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$400(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mCheckServerTime:Ljava/util/TimerTask;
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$700(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/TimerTask;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0xa4cb80

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_38} :catch_39

    .line 163
    :cond_38
    goto :goto_3d

    .line 161
    :catch_39
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 168
    const-string v0, "engmode_service"

    const-string v1, "Network isn\'t available"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mAvailableNetwork:Z
    invoke-static {v0, v1}, Lcom/android/server/sepunion/EngmodeService;->access$602(Lcom/android/server/sepunion/EngmodeService;Z)Z

    .line 171
    :try_start_d
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$400(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 172
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    # getter for: Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->access$400(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    .line 175
    :cond_1e
    goto :goto_23

    .line 173
    :catch_1f
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/android/server/sepunion/EngmodeService;->access$402(Lcom/android/server/sepunion/EngmodeService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 177
    return-void
.end method
