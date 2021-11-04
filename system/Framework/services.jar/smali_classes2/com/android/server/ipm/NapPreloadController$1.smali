.class Lcom/android/server/ipm/NapPreloadController$1;
.super Landroid/content/BroadcastReceiver;
.source "NapPreloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/NapPreloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/NapPreloadController;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/NapPreloadController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/NapPreloadController;

    .line 195
    iput-object p1, p0, Lcom/android/server/ipm/NapPreloadController$1;->this$0:Lcom/android/server/ipm/NapPreloadController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.DO_ML_LAUNCH_REPLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 201
    const-string/jumbo v1, "package_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v2, "preload_type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "type":Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v4, "preload_uid"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 205
    .local v3, "userId":I
    if-eqz v1, :cond_85

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_85

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ML] Get reply pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PkgPredictorService-NapPreloadController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    # getter for: Lcom/android/server/ipm/NapPreloadController;->mPreloadPkgLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/ipm/NapPreloadController;->access$400()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 208
    :try_start_55
    iget-object v5, p0, Lcom/android/server/ipm/NapPreloadController$1;->this$0:Lcom/android/server/ipm/NapPreloadController;

    # getter for: Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;
    invoke-static {v5}, Lcom/android/server/ipm/NapPreloadController;->access$500(Lcom/android/server/ipm/NapPreloadController;)Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    const-string v5, "booster"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 209
    iget-object v5, p0, Lcom/android/server/ipm/NapPreloadController$1;->this$0:Lcom/android/server/ipm/NapPreloadController;

    # getter for: Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;
    invoke-static {v5}, Lcom/android/server/ipm/NapPreloadController;->access$500(Lcom/android/server/ipm/NapPreloadController;)Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_72
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_55 .. :try_end_73} :catchall_82

    .line 212
    const-string/jumbo v4, "ml"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 213
    iget-object v4, p0, Lcom/android/server/ipm/NapPreloadController$1;->this$0:Lcom/android/server/ipm/NapPreloadController;

    # setter for: Lcom/android/server/ipm/NapPreloadController;->mNapPreloadPkg:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/android/server/ipm/NapPreloadController;->access$602(Lcom/android/server/ipm/NapPreloadController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_85

    .line 211
    :catchall_82
    move-exception v5

    :try_start_83
    monitor-exit v4
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v5

    .line 217
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "userId":I
    :cond_85
    :goto_85
    return-void
.end method
