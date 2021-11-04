.class Lcom/android/server/wm/ImmersiveModeConfirmation$2;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 737
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 742
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 743
    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$500(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 744
    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z
    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$900()Z

    move-result v0

    if-nez v0, :cond_34

    .line 745
    # setter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z
    invoke-static {v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$902(Z)Z

    .line 746
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1000(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/server/wm/ImmersiveModeConfirmation;->saveGestureSetting(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1100(Landroid/content/Context;)V

    goto :goto_34

    .line 750
    :cond_22
    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z
    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1200()Z

    move-result v0

    if-nez v0, :cond_34

    .line 751
    # setter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z
    invoke-static {v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1202(Z)Z

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1000(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/server/wm/ImmersiveModeConfirmation;->saveSetting(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1300(Landroid/content/Context;)V

    .line 757
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 759
    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverManager:Lcom/samsung/android/cover/CoverManager;
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1400(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1500(Lcom/android/server/wm/ImmersiveModeConfirmation;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 760
    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z
    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_65

    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z
    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$900()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 761
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverManager:Lcom/samsung/android/cover/CoverManager;
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1400(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;
    invoke-static {v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1600(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 762
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1502(Lcom/android/server/wm/ImmersiveModeConfirmation;Z)Z

    .line 766
    :cond_65
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    # invokes: Lcom/android/server/wm/ImmersiveModeConfirmation;->handleHide()V
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1700(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    .line 767
    return-void
.end method
