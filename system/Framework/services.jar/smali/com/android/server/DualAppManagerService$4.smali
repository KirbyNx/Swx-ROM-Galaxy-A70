.class Lcom/android/server/DualAppManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DualAppManagerService;->registerDualUserChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DualAppManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DualAppManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DualAppManagerService;

    .line 1595
    iput-object p1, p0, Lcom/android/server/DualAppManagerService$4;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1597
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2b

    .line 1598
    const-string v0, "DualAppManagerService"

    const-string v2, "Received intent: ACTION_USER_ADDED"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1600
    .local v0, "userid":I
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1601
    iget-object v1, p0, Lcom/android/server/DualAppManagerService$4;->this$0:Lcom/android/server/DualAppManagerService;

    # invokes: Lcom/android/server/DualAppManagerService;->registerContentObserver()V
    invoke-static {v1}, Lcom/android/server/DualAppManagerService;->access$1100(Lcom/android/server/DualAppManagerService;)V

    .line 1602
    iget-object v1, p0, Lcom/android/server/DualAppManagerService$4;->this$0:Lcom/android/server/DualAppManagerService;

    # invokes: Lcom/android/server/DualAppManagerService;->registerContentObserverForDualUser(I)V
    invoke-static {v1, v0}, Lcom/android/server/DualAppManagerService;->access$1200(Lcom/android/server/DualAppManagerService;I)V

    goto :goto_7d

    .line 1604
    .end local v0    # "userid":I
    :cond_2b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1605
    const-string v0, "DualAppManagerService"

    const-string v2, "Received intent: ACTION_USER_REMOVED"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1607
    .restart local v0    # "userid":I
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1608
    # getter for: Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DualAppManagerService$4;->this$0:Lcom/android/server/DualAppManagerService;

    # getter for: Lcom/android/server/DualAppManagerService;->contentObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->access$1300(Lcom/android/server/DualAppManagerService;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1609
    # getter for: Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DualAppManagerService$4;->this$0:Lcom/android/server/DualAppManagerService;

    # getter for: Lcom/android/server/DualAppManagerService;->contentObserverForDualUser:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->access$1400(Lcom/android/server/DualAppManagerService;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1610
    # getter for: Lcom/android/server/DualAppManagerService;->mFilterMapRemoveDuplicateFile:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$700()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 1611
    :try_start_71
    # getter for: Lcom/android/server/DualAppManagerService;->mFilterMapRemoveDuplicateFile:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1612
    monitor-exit v1

    goto :goto_7e

    :catchall_7a
    move-exception v2

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_7a

    throw v2

    .line 1604
    .end local v0    # "userid":I
    :cond_7d
    :goto_7d
    nop

    .line 1616
    :cond_7e
    :goto_7e
    return-void
.end method
