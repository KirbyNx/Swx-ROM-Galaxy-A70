.class Lcom/android/server/ipm/SeedbedPreloadController$2;
.super Landroid/content/BroadcastReceiver;
.source "SeedbedPreloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/SeedbedPreloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/SeedbedPreloadController;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/SeedbedPreloadController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/SeedbedPreloadController;

    .line 170
    iput-object p1, p0, Lcom/android/server/ipm/SeedbedPreloadController$2;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.SEEDBED_SIZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_45

    .line 175
    # getter for: Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I
    invoke-static {}, Lcom/android/server/ipm/SeedbedPreloadController;->access$100()I

    move-result v1

    const-string/jumbo v4, "size"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 176
    .local v1, "size":I
    if-nez v1, :cond_21

    .line 177
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedPreloadController$2;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    invoke-virtual {v2, v3}, Lcom/android/server/ipm/SeedbedPreloadController;->switchOnoffSeedBedModule(Z)V

    goto :goto_63

    .line 178
    :cond_21
    if-lez v1, :cond_63

    .line 179
    # getter for: Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I
    invoke-static {}, Lcom/android/server/ipm/SeedbedPreloadController;->access$100()I

    move-result v4

    if-eq v1, v4, :cond_63

    .line 181
    iget-object v4, p0, Lcom/android/server/ipm/SeedbedPreloadController$2;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # setter for: Lcom/android/server/ipm/SeedbedPreloadController;->seedbedEnable:Z
    invoke-static {v4, v3}, Lcom/android/server/ipm/SeedbedPreloadController;->access$202(Lcom/android/server/ipm/SeedbedPreloadController;Z)Z

    .line 182
    iget-object v3, p0, Lcom/android/server/ipm/SeedbedPreloadController$2;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->setSeedBedOff()V
    invoke-static {v3}, Lcom/android/server/ipm/SeedbedPreloadController;->access$300(Lcom/android/server/ipm/SeedbedPreloadController;)V

    .line 184
    iget-object v3, p0, Lcom/android/server/ipm/SeedbedPreloadController$2;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    invoke-virtual {v3, v2}, Lcom/android/server/ipm/SeedbedPreloadController;->switchOnoffSeedBedModule(Z)V

    .line 185
    # setter for: Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I
    invoke-static {v1}, Lcom/android/server/ipm/SeedbedPreloadController;->access$102(I)I

    .line 186
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedPreloadController$2;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # getter for: Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;
    invoke-static {v2}, Lcom/android/server/ipm/SeedbedPreloadController;->access$400(Lcom/android/server/ipm/SeedbedPreloadController;)Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->setSeedbedListSize(I)V

    goto :goto_63

    .line 189
    .end local v1    # "size":I
    :cond_45
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 190
    const/4 v1, -0x1

    const-string/jumbo v4, "reason"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 191
    .local v1, "mReason":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5c

    .line 192
    invoke-static {v3}, Lcom/android/server/ipm/SeedbedPreloadController;->switchStaticOnoffSeedBedModule(Z)V

    goto :goto_64

    .line 193
    :cond_5c
    const/4 v3, 0x4

    if-ne v1, v3, :cond_64

    .line 194
    invoke-static {v2}, Lcom/android/server/ipm/SeedbedPreloadController;->switchStaticOnoffSeedBedModule(Z)V

    goto :goto_64

    .line 189
    .end local v1    # "mReason":I
    :cond_63
    :goto_63
    nop

    .line 197
    :cond_64
    :goto_64
    return-void
.end method
