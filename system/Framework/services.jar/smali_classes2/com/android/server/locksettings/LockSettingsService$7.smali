.class Lcom/android/server/locksettings/LockSettingsService$7;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 5963
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$7;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5966
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const-string/jumbo v2, "urid"

    if-eqz v0, :cond_33

    .line 5967
    const-string v0, "LockSettingsService.SDP"

    const-string/jumbo v3, "onReceive :: android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5969
    const-string v0, "cred"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5970
    .local v0, "credential":Ljava/lang/String;
    const-string/jumbo v3, "token"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5971
    .local v3, "tokenStr":Ljava/lang/String;
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5973
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$7;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$4000(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordDump;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/server/locksettings/SyntheticPasswordDump;->dump(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5974
    .end local v0    # "credential":Ljava/lang/String;
    .end local v1    # "userId":I
    .end local v3    # "tokenStr":Ljava/lang/String;
    goto :goto_62

    .line 5976
    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.DUMP_DUALDAR_PASSWORD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 5977
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "LockSettingsService.DUALDAR"

    const-string/jumbo v4, "onReceive :: android.intent.action.DUMP_DUALDAR_PASSWORD"

    invoke-static {v3, v4, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5979
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 5980
    .local v0, "userId":I
    const-string/jumbo v1, "path"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5982
    .local v1, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$7;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$2600(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    move-result-object v2

    .line 5983
    .local v2, "ddarProxy":Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
    invoke-virtual {v2, v0, v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->dumpSecret(ILjava/lang/String;)Z

    .line 5986
    .end local v0    # "userId":I
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "ddarProxy":Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
    :cond_62
    :goto_62
    return-void
.end method
