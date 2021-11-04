.class Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;
.super Landroid/database/ContentObserver;
.source "ScreenshotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenshotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestrictionPolicyObserver"
.end annotation


# instance fields
.field private final SCREENSHOT_RESTRICTION_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/wm/ScreenshotController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ScreenshotController;)V
    .registers 5

    .line 739
    iput-object p1, p0, Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;->this$0:Lcom/android/server/wm/ScreenshotController;

    .line 740
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 735
    nop

    .line 736
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3/isScreenCaptureEnabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;->SCREENSHOT_RESTRICTION_URI:Landroid/net/Uri;

    .line 741
    # getter for: Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/ScreenshotController;->access$800(Lcom/android/server/wm/ScreenshotController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;->SCREENSHOT_RESTRICTION_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 743
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ScreenshotController;Lcom/android/server/wm/ScreenshotController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/ScreenshotController;
    .param p2, "x1"    # Lcom/android/server/wm/ScreenshotController$1;

    .line 734
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;-><init>(Lcom/android/server/wm/ScreenshotController;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 747
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;->SCREENSHOT_RESTRICTION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 748
    const/4 v0, 0x0

    .line 750
    .local v0, "isScreenshotDisabled":Z
    const/4 v1, 0x0

    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;->this$0:Lcom/android/server/wm/ScreenshotController;

    # invokes: Lcom/android/server/wm/ScreenshotController;->getRestrictionPolicyService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    invoke-static {v2}, Lcom/android/server/wm/ScreenshotController;->access$900(Lcom/android/server/wm/ScreenshotController;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 751
    iget-object v2, p0, Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;->this$0:Lcom/android/server/wm/ScreenshotController;

    # invokes: Lcom/android/server/wm/ScreenshotController;->getRestrictionPolicyService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    invoke-static {v2}, Lcom/android/server/wm/ScreenshotController;->access$900(Lcom/android/server/wm/ScreenshotController;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    .line 752
    invoke-interface {v2, p3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_20

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 756
    :cond_1f
    goto :goto_22

    .line 754
    :catch_20
    move-exception v2

    .line 755
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v0, 0x1

    .line 757
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_22
    iget-object v2, p0, Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;->this$0:Lcom/android/server/wm/ScreenshotController;

    # getter for: Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/ScreenshotController;->access$600(Lcom/android/server/wm/ScreenshotController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 758
    iget-object v3, p0, Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;->this$0:Lcom/android/server/wm/ScreenshotController;

    # getter for: Lcom/android/server/wm/ScreenshotController;->mScreenshotRestrictionPolicies:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/wm/ScreenshotController;->access$1000(Lcom/android/server/wm/ScreenshotController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 759
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v3

    invoke-virtual {v3, p3, v1}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(IZ)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 760
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 762
    :cond_4a
    :try_start_4a
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;->this$0:Lcom/android/server/wm/ScreenshotController;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/ScreenshotController;->updateScreenshotRestrictionPolicyLocked(I)V

    .line 763
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5a

    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 765
    .end local v0    # "isScreenshotDisabled":Z
    :cond_5a
    :goto_5a
    return-void
.end method
