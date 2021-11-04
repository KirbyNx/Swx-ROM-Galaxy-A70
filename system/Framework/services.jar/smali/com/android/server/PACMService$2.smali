.class Lcom/android/server/PACMService$2;
.super Landroid/content/BroadcastReceiver;
.source "PACMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PACMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method constructor <init>(Lcom/android/server/PACMService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/PACMService;

    .line 203
    iput-object p1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PACMService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v1, "com.android.server.em.EM_SYNC_TOKEN_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 210
    iget-object v1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "ts"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/PACMService;->access$502(Lcom/android/server/PACMService;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PACMService;->access$500(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PACMService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/PACMService;->access$600(Lcom/android/server/PACMService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 213
    :try_start_56
    iget-object v2, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/server/PACMService;->access$700(Lcom/android/server/PACMService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 214
    monitor-exit v1

    goto :goto_a8

    :catchall_61
    move-exception v2

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_61

    throw v2

    .line 215
    :cond_64
    const-string v1, "com.samsung.android.aircommandmanager.START_LOCAL_SOCKET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 216
    const-string v1, "PACMService"

    const-string v2, "GalaxyDiag app start"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    const-string v2, "com.samsung.android.app.mobiledoctor"

    # invokes: Lcom/android/server/PACMService;->isPackageInstalled(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/server/PACMService;->access$800(Lcom/android/server/PACMService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_92

    iget-object v1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    .line 218
    const-string/jumbo v2, "kr.co.avad.diagnostictool"

    # invokes: Lcom/android/server/PACMService;->isPackageInstalled(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/server/PACMService;->access$800(Lcom/android/server/PACMService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_92

    iget-object v1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    .line 219
    const-string v2, "com.samsung.android.app.mobiledoctor.ve"

    # invokes: Lcom/android/server/PACMService;->isPackageInstalled(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/server/PACMService;->access$800(Lcom/android/server/PACMService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 220
    :cond_92
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/PACMService;->mGalaxyDiag:Z

    goto :goto_a8

    .line 221
    :cond_96
    const-string v1, "com.samsung.android.aircommandmanager.STOP_LOCAL_SOCKET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 222
    const-string v1, "PACMService"

    const-string v2, "GalaxyDiag app end"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/PACMService;->mGalaxyDiag:Z

    .line 225
    :cond_a8
    :goto_a8
    return-void
.end method
