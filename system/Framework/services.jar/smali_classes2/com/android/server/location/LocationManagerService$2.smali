.class Lcom/android/server/location/LocationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationManagerService;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/LocationManagerService;

    .line 475
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 478
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 479
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_50

    .line 483
    :cond_19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.location.mock.delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 484
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 485
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z
    invoke-static {v1, v2}, Lcom/android/server/location/LocationManagerService;->access$1002(Lcom/android/server/location/LocationManagerService;Z)Z

    .line 486
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_4b

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/location/LocationManagerService;->access$1100(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 488
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    # invokes: Lcom/android/server/location/LocationManagerService;->recoverRealProviderLocked(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/server/location/LocationManagerService;->access$1200(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V

    .line 489
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_4b
    monitor-exit v0

    goto :goto_55

    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_4d

    throw v1

    .line 480
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    # invokes: Lcom/android/server/location/LocationManagerService;->onScreenStateChanged()V
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$900(Lcom/android/server/location/LocationManagerService;)V

    .line 492
    :cond_55
    :goto_55
    return-void
.end method
