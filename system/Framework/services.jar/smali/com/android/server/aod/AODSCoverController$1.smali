.class Lcom/android/server/aod/AODSCoverController$1;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "AODSCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODSCoverController;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODSCoverController;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODSCoverController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/aod/AODSCoverController;

    .line 46
    iput-object p1, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .line 49
    if-eqz p1, :cond_55

    .line 50
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    # setter for: Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z
    invoke-static {v0, v1}, Lcom/android/server/aod/AODSCoverController;->access$002(Lcom/android/server/aod/AODSCoverController;Z)Z

    .line 51
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    # setter for: Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z
    invoke-static {v0, v1}, Lcom/android/server/aod/AODSCoverController;->access$102(Lcom/android/server/aod/AODSCoverController;Z)Z

    .line 52
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    # getter for: Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z
    invoke-static {v0}, Lcom/android/server/aod/AODSCoverController;->access$000(Lcom/android/server/aod/AODSCoverController;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    # getter for: Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z
    invoke-static {v1}, Lcom/android/server/aod/AODSCoverController;->access$100(Lcom/android/server/aod/AODSCoverController;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v2

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    # setter for: Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z
    invoke-static {v0, v1}, Lcom/android/server/aod/AODSCoverController;->access$202(Lcom/android/server/aod/AODSCoverController;Z)Z

    .line 53
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    # getter for: Lcom/android/server/aod/AODSCoverController;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;
    invoke-static {v0}, Lcom/android/server/aod/AODSCoverController;->access$300(Lcom/android/server/aod/AODSCoverController;)Lcom/android/server/aod/AODSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/aod/AODSettingHelper;->isAODEnabled()Z

    move-result v0

    .line 54
    .local v0, "isAODModeEnabled":Z
    if-eqz v0, :cond_50

    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    # getter for: Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z
    invoke-static {v1}, Lcom/android/server/aod/AODSCoverController;->access$000(Lcom/android/server/aod/AODSCoverController;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-static {}, Lcom/android/server/aod/AODConfig;->canRegisterAODListener()Z

    move-result v1

    if-eqz v1, :cond_50

    iget v1, p1, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne v1, v2, :cond_50

    .line 56
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    # invokes: Lcom/android/server/aod/AODSCoverController;->registerSViewCoverSensorListener()V
    invoke-static {v1}, Lcom/android/server/aod/AODSCoverController;->access$400(Lcom/android/server/aod/AODSCoverController;)V

    goto :goto_55

    .line 58
    :cond_50
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    # invokes: Lcom/android/server/aod/AODSCoverController;->unregisterSViewCoverSensorListener()V
    invoke-static {v1}, Lcom/android/server/aod/AODSCoverController;->access$500(Lcom/android/server/aod/AODSCoverController;)V

    .line 61
    .end local v0    # "isAODModeEnabled":Z
    :cond_55
    :goto_55
    return-void
.end method
