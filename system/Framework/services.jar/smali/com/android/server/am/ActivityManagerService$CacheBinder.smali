.class Lcom/android/server/am/ActivityManagerService$CacheBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheBinder"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .line 2760
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2761
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2762
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2767
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2768
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->enableFreezer(Z)V

    .line 2771
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "cacheinfo"

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_42

    if-nez v1, :cond_2d

    .line 2778
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2779
    invoke-static {v0}, Landroid/os/Process;->enableFreezer(Z)V

    .line 2773
    :cond_2c
    return-void

    .line 2776
    :cond_2d
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->dumpBinderCacheContents(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_42

    .line 2778
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2779
    invoke-static {v0}, Landroid/os/Process;->enableFreezer(Z)V

    .line 2782
    :cond_41
    return-void

    .line 2778
    :catchall_42
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$CacheBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v2, v2, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 2779
    invoke-static {v0}, Landroid/os/Process;->enableFreezer(Z)V

    .line 2781
    :cond_52
    throw v1
.end method
