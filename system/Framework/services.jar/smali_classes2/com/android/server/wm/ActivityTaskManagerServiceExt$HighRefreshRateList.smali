.class Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;
.super Lcom/android/server/wm/BlockListManager;
.source "ActivityTaskManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HighRefreshRateList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 1009
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;->this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-direct {p0}, Lcom/android/server/wm/BlockListManager;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateBlockList$0$ActivityTaskManagerServiceExt$HighRefreshRateList()V
    .registers 3

    .line 1014
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;->this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1015
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;->this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1016
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1017
    return-void

    .line 1016
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateBlockList(Lcom/android/server/wm/PolicyDataMap;)V
    .registers 4
    .param p1, "policyDataMap"    # Lcom/android/server/wm/PolicyDataMap;

    .line 1012
    invoke-super {p0, p1}, Lcom/android/server/wm/BlockListManager;->updateBlockList(Lcom/android/server/wm/PolicyDataMap;)V

    .line 1013
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;->this$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$HighRefreshRateList$xK1Sxzl5KLA2Wcn8-Fq6IGGUAVI;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$HighRefreshRateList$xK1Sxzl5KLA2Wcn8-Fq6IGGUAVI;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1018
    return-void
.end method
