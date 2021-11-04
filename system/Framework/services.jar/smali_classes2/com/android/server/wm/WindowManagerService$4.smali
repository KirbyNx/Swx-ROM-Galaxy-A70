.class Lcom/android/server/wm/WindowManagerService$4;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 1154
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .registers 2
    .param p1, "transit"    # I

    .line 1158
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1162
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1163
    .local v0, "atoken":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_b

    .line 1164
    return-void

    .line 1171
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 1173
    .local v1, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_1a

    .line 1174
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/FreeformController;->minimizeExcessiveVisibleFreeformLocked(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 1178
    :cond_1a
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSplitWindowController:Lcom/android/server/wm/SplitWindowController;

    .line 1179
    invoke-virtual {v2}, Lcom/android/server/wm/SplitWindowController;->hasRemoteAnimationControllers()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_77

    if-eqz v1, :cond_77

    .line 1181
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_77

    .line 1182
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1183
    :cond_3a
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 1184
    .local v2, "taskOrganizerController":Lcom/android/server/wm/TaskOrganizerController;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskOrganizerController;->isDeferredSplitTaskOrganizerLocked()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 1185
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1186
    .local v5, "rootSecondaryTask":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_51

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_52

    :cond_51
    const/4 v6, 0x0

    .line 1187
    .local v6, "topTask":Lcom/android/server/wm/Task;
    :goto_52
    if-eqz v6, :cond_62

    .line 1188
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v7

    if-nez v7, :cond_60

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v7

    if-eqz v7, :cond_62

    :cond_60
    move v7, v3

    goto :goto_63

    :cond_62
    move v7, v4

    .line 1190
    .local v7, "isTopHomeOrRecents":Z
    :goto_63
    if-eqz v7, :cond_67

    .line 1191
    :try_start_65
    iput-boolean v3, v6, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    .line 1193
    :cond_67
    const-string v8, "app_transition_finished"

    invoke-virtual {v2, v8}, Lcom/android/server/wm/TaskOrganizerController;->continueSplitTaskOrganizerLocked(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_71

    .line 1196
    if-eqz v7, :cond_77

    .line 1197
    iput-boolean v4, v6, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    goto :goto_77

    .line 1196
    :catchall_71
    move-exception v3

    if-eqz v7, :cond_76

    .line 1197
    iput-boolean v4, v6, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    .line 1199
    :cond_76
    throw v3

    .line 1207
    .end local v2    # "taskOrganizerController":Lcom/android/server/wm/TaskOrganizerController;
    .end local v5    # "rootSecondaryTask":Lcom/android/server/wm/Task;
    .end local v6    # "topTask":Lcom/android/server/wm/Task;
    .end local v7    # "isTopHomeOrRecents":Z
    :cond_77
    :goto_77
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v2

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1208
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_8c

    goto :goto_8d

    :cond_8c
    move v3, v4

    :goto_8d
    move v2, v3

    .line 1209
    .local v2, "isRecentsAnimationTarget":Z
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_a2

    if-nez v2, :cond_a2

    .line 1211
    :try_start_94
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v3, v5}, Landroid/app/IActivityTaskManager;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_9d} :catch_9e

    .line 1213
    goto :goto_9f

    .line 1212
    :catch_9e
    move-exception v3

    .line 1214
    :goto_9f
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    goto :goto_b8

    .line 1216
    :cond_a2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 1219
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    if-eqz v3, :cond_b8

    if-nez v2, :cond_b8

    .line 1220
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 1222
    :try_start_ad
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/app/IActivityTaskManager;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b6} :catch_b7

    .line 1224
    goto :goto_b8

    .line 1223
    :catch_b7
    move-exception v3

    .line 1227
    :cond_b8
    :goto_b8
    return-void
.end method
