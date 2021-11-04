.class Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 743
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 747
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    monitor-enter v0

    .line 748
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    # getter for: Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->access$700(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)Z

    move-result v1

    .line 749
    .local v1, "loaded":Z
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_21

    .line 750
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1b

    if-nez v1, :cond_1b

    .line 751
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    # invokes: Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->loadInternal()V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->access$800(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    .line 753
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$1;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    # invokes: Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->scheduleLoad()V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->access$200(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    .line 754
    return-void

    .line 749
    .end local v1    # "loaded":Z
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method
