.class Lcom/android/server/wm/WindowManagerServiceExt$1;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "WindowManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerServiceExt;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerServiceExt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1508
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "type"    # I

    .line 1511
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1512
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    # getter for: Lcom/android/server/wm/WindowManagerServiceExt;->mMetaScreenEnabled:Z
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerServiceExt;->access$100(Lcom/android/server/wm/WindowManagerServiceExt;)Z

    move-result v1

    .line 1513
    .local v1, "lastMetaScreenEnabled":Z
    const/high16 v2, 0x100000

    const/4 v3, 0x1

    if-eq p1, v2, :cond_35

    const/high16 v2, 0x200000

    const/4 v4, 0x0

    if-eq p1, v2, :cond_2f

    const/high16 v2, 0x1000000

    if-eq p1, v2, :cond_29

    const/high16 v2, 0x2000000

    if-eq p1, v2, :cond_23

    goto :goto_3b

    .line 1518
    :cond_23
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    # setter for: Lcom/android/server/wm/WindowManagerServiceExt;->mMetaScreenEnabled:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerServiceExt;->access$102(Lcom/android/server/wm/WindowManagerServiceExt;Z)Z

    .line 1519
    goto :goto_3b

    .line 1515
    :cond_29
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    # setter for: Lcom/android/server/wm/WindowManagerServiceExt;->mMetaScreenEnabled:Z
    invoke-static {v2, v3}, Lcom/android/server/wm/WindowManagerServiceExt;->access$102(Lcom/android/server/wm/WindowManagerServiceExt;Z)Z

    .line 1516
    goto :goto_3b

    .line 1524
    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    # setter for: Lcom/android/server/wm/WindowManagerServiceExt;->mGearVrPersistentVrMode:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerServiceExt;->access$202(Lcom/android/server/wm/WindowManagerServiceExt;Z)Z

    goto :goto_3b

    .line 1521
    :cond_35
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    # setter for: Lcom/android/server/wm/WindowManagerServiceExt;->mGearVrPersistentVrMode:Z
    invoke-static {v2, v3}, Lcom/android/server/wm/WindowManagerServiceExt;->access$202(Lcom/android/server/wm/WindowManagerServiceExt;Z)Z

    .line 1522
    nop

    .line 1529
    :goto_3b
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    # getter for: Lcom/android/server/wm/WindowManagerServiceExt;->mMetaScreenEnabled:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerServiceExt;->access$100(Lcom/android/server/wm/WindowManagerServiceExt;)Z

    move-result v2

    if-eq v1, v2, :cond_90

    .line 1530
    const-string v2, "WindowManagerServiceExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[metascreen] requestMetaScreenEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    # getter for: Lcom/android/server/wm/WindowManagerServiceExt;->mMetaScreenEnabled:Z
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerServiceExt;->access$100(Lcom/android/server/wm/WindowManagerServiceExt;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    # getter for: Lcom/android/server/wm/WindowManagerServiceExt;->mMetaScreenEnabled:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerServiceExt;->access$100(Lcom/android/server/wm/WindowManagerServiceExt;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1532
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v3}, Lcom/samsung/android/vr/GearVrManagerInternal;->getMetaScreenDisplayId()I

    move-result v3

    # invokes: Lcom/android/server/wm/WindowManagerServiceExt;->requestMetaScreenDisplayLocked(I)V
    invoke-static {v2, v3}, Lcom/android/server/wm/WindowManagerServiceExt;->access$300(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    .line 1533
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->waitForAnimationsToComplete()V

    goto :goto_89

    .line 1535
    :cond_7c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->waitForAnimationsToComplete()V

    .line 1536
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$1;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    const/4 v3, -0x1

    # invokes: Lcom/android/server/wm/WindowManagerServiceExt;->requestMetaScreenDisplayLocked(I)V
    invoke-static {v2, v3}, Lcom/android/server/wm/WindowManagerServiceExt;->access$300(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    .line 1538
    :goto_89
    const-string v2, "WindowManagerServiceExt"

    const-string v3, "[metascreen] waitForAnimations.. completed"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    .end local v1    # "lastMetaScreenEnabled":Z
    :cond_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_7 .. :try_end_91} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1542
    return-void

    .line 1541
    :catchall_95
    move-exception v1

    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
