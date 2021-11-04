.class Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;
.super Ljava/lang/Object;
.source "ChimeraRecentAppManager.java"

# interfaces
.implements Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final RESOURCE_USAGE_CHECK_INTERVAL:I

.field final synthetic this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    .line 46
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->RESOURCE_USAGE_CHECK_INTERVAL:I

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .registers 14
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z
    .param p4, "userId"    # I
    .param p5, "packages"    # [Ljava/lang/String;
    .param p6, "isHomePackage"    # Z

    .line 53
    if-eqz p3, :cond_7b

    if-nez p6, :cond_7b

    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    .line 55
    # getter for: Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->access$000(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/SettingRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SettingRepository;->isDynamicTargetFreeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    .line 56
    # getter for: Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->access$100(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/SystemRepository;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p5, v1

    invoke-interface {v0, v1, p4}, Lcom/android/server/ipm/chimera/SystemRepository;->hasPkgIcon(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 57
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->access$100(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/SystemRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;
    invoke-static {v1}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->access$200(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    # invokes: Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->isRecentAppExist(I)Z
    invoke-static {v0, p2}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->access$300(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;I)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->access$100(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/SystemRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;
    invoke-static {v1}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->access$200(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v1, v3, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 60
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->access$100(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/SystemRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;
    invoke-static {v1}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->access$200(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 63
    :cond_65
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->access$100(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/SystemRepository;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    # getter for: Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;
    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->access$200(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-interface/range {v1 .. v6}, Lcom/android/server/ipm/chimera/SystemRepository;->sendMessageDelayed(Landroid/os/Handler;ILjava/lang/Object;J)V

    .line 66
    :cond_7b
    return-void
.end method
