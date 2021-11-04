.class Lcom/android/server/wm/ActivityTaskManagerService$1;
.super Ljava/util/ArrayList;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/server/wm/IController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 863
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 864
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$1;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$1;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$1;->add(Ljava/lang/Object;)Z

    .line 867
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$1;->add(Ljava/lang/Object;)Z

    .line 868
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiSplitBlockListController:Lcom/android/server/wm/MultiSplitBlockListController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$1;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexHelpController:Lcom/android/server/wm/DexHelpController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$1;->add(Ljava/lang/Object;)Z

    .line 870
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$1;->add(Ljava/lang/Object;)Z

    .line 871
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$1;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTaskItemController:Lcom/android/server/wm/RecentTaskItemController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$1;->add(Ljava/lang/Object;)Z

    .line 873
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$1;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$1;->add(Ljava/lang/Object;)Z

    .line 875
    return-void
.end method
