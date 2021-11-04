.class Lcom/android/server/notification/NotificationManagerService$9;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->init(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;Lcom/android/server/notification/RankingHandler;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Landroid/os/UserManager;Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/StatsManager;Landroid/telephony/TelephonyManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 2246
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAutomaticRuleStatusChanged$2$NotificationManagerService$9(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2286
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.AUTOMATIC_ZEN_RULE_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2287
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2288
    const-string v1, "android.app.extra.AUTOMATIC_ZEN_RULE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2289
    const-string v1, "android.app.extra.AUTOMATIC_ZEN_RULE_STATUS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2290
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2291
    return-void
.end method

.method public synthetic lambda$onPolicyChanged$1$NotificationManagerService$9()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2274
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    # invokes: Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2276
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 2278
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->notifyZenPolicy()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2280
    return-void
.end method

.method public synthetic lambda$onZenModeChanged$0$NotificationManagerService$9()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2255
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    # invokes: Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2256
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2258
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2256
    const-string v3, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2260
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2261
    :try_start_26
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2262
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_39

    .line 2263
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 2266
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->notifyZenPolicy()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2268
    return-void

    .line 2262
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 2285
    new-instance v6, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$DARUAjl2BH9-0W9SGvCD56guTNY;-><init>(Lcom/android/server/notification/NotificationManagerService$9;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2292
    return-void
.end method

.method public onConfigChanged()V
    .registers 2

    .line 2249
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2250
    return-void
.end method

.method onPolicyChanged()V
    .registers 2

    .line 2273
    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$-i4zcHQ1yOi6q4NT63hhT8Fbdd4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$-i4zcHQ1yOi6q4NT63hhT8Fbdd4;-><init>(Lcom/android/server/notification/NotificationManagerService$9;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2281
    return-void
.end method

.method onZenModeChanged()V
    .registers 2

    .line 2254
    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$fCHOFw3Gdic3Gac8kvtn-yXu0UI;

    invoke-direct {v0, p0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$9$fCHOFw3Gdic3Gac8kvtn-yXu0UI;-><init>(Lcom/android/server/notification/NotificationManagerService$9;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2269
    return-void
.end method
