.class Lcom/android/server/vr/RefreshRateModeController$6;
.super Landroid/database/ContentObserver;
.source "RefreshRateModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/RefreshRateModeController;->onSystemServiceReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/RefreshRateModeController;


# direct methods
.method constructor <init>(Lcom/android/server/vr/RefreshRateModeController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/vr/RefreshRateModeController;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 189
    iput-object p1, p0, Lcom/android/server/vr/RefreshRateModeController$6;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 192
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController$6;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/RefreshRateModeController;->access$000(Lcom/android/server/vr/RefreshRateModeController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 193
    :try_start_7
    const-string/jumbo v1, "refresh_rate_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 194
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController$6;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    iget-object v2, p0, Lcom/android/server/vr/RefreshRateModeController$6;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # invokes: Lcom/android/server/vr/RefreshRateModeController;->getRefreshRateModeSetting()I
    invoke-static {v2}, Lcom/android/server/vr/RefreshRateModeController;->access$1300(Lcom/android/server/vr/RefreshRateModeController;)I

    move-result v2

    # setter for: Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I
    invoke-static {v1, v2}, Lcom/android/server/vr/RefreshRateModeController;->access$1202(Lcom/android/server/vr/RefreshRateModeController;I)I

    .line 195
    # getter for: Lcom/android/server/vr/RefreshRateModeController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/vr/RefreshRateModeController;->access$400()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 196
    const-string v1, "RefreshRateModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange mRefreshRateMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/RefreshRateModeController$6;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    # getter for: Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I
    invoke-static {v3}, Lcom/android/server/vr/RefreshRateModeController;->access$1200(Lcom/android/server/vr/RefreshRateModeController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_42
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v1
.end method
