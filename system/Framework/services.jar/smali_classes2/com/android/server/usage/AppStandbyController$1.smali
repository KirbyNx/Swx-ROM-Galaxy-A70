.class Lcom/android/server/usage/AppStandbyController$1;
.super Ljava/lang/Object;
.source "AppStandbyController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usage/AppStandbyController;

    .line 2231
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2234
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 2240
    if-nez p1, :cond_25

    .line 2241
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    # invokes: Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z
    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$1500(Lcom/android/server/usage/AppStandbyController;)Z

    move-result v0

    .line 2242
    .local v0, "displayOn":Z
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    # getter for: Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->access$1600(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2243
    :try_start_f
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    # getter for: Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    invoke-static {v2}, Lcom/android/server/usage/AppStandbyController;->access$1700(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$1;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V

    .line 2244
    monitor-exit v1

    goto :goto_25

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_22

    throw v2

    .line 2246
    .end local v0    # "displayOn":Z
    :cond_25
    :goto_25
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2237
    return-void
.end method
