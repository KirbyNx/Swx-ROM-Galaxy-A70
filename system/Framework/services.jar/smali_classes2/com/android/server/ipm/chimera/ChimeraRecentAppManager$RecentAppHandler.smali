.class public Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;
.super Landroid/os/Handler;
.source "ChimeraRecentAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentAppHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 252
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    .line 253
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 254
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 258
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 259
    .local v0, "uid":I
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    goto :goto_1d

    .line 264
    :cond_11
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    invoke-virtual {v1, v0}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->checkAppUsageEnd(I)V

    goto :goto_1d

    .line 261
    :cond_17
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;->this$0:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    invoke-virtual {v1, v0}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->checkAppUsageStart(I)V

    .line 262
    nop

    .line 267
    :goto_1d
    return-void
.end method
