.class Lcom/android/server/ibs/IntelligentBatterySaverGather$1;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverGather.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverGather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;


# direct methods
.method constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ibs/IntelligentBatterySaverGather;

    .line 99
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 101
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 107
    if-nez p1, :cond_15

    .line 108
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    monitor-enter v0

    .line 109
    :try_start_5
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;
    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverGather;->access$100(Lcom/android/server/ibs/IntelligentBatterySaverGather;)Lcom/android/server/ibs/IntelligentBatterySaverService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateDisplayLocked()V

    .line 110
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1

    .line 112
    :cond_15
    :goto_15
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 104
    return-void
.end method
