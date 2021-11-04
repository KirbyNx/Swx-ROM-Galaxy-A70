.class Lcom/android/server/wm/DisplayRotation$OrientationListener;
.super Lcom/android/server/policy/WindowOrientationListener;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;
    }
.end annotation


# instance fields
.field mEnabled:Z

.field final mRunnableCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1750
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 1751
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1747
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mRunnableCache:Landroid/util/SparseArray;

    .line 1752
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 6

    .line 1802
    invoke-super {p0}, Lcom/android/server/policy/WindowOrientationListener;->disable()V

    .line 1803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 1804
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_16

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v2, -0x1a39227c

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1805
    :cond_16
    return-void
.end method

.method public enable(Z)V
    .registers 7
    .param p1, "clearCurrentRotation"    # Z

    .line 1795
    invoke-super {p0, p1}, Lcom/android/server/policy/WindowOrientationListener;->enable(Z)V

    .line 1796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 1797
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v1, -0x5d7ad82d

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1798
    :cond_17
    return-void
.end method

.method public onProposedRotationChanged(I)V
    .registers 11
    .param p1, "rotation"    # I

    .line 1777
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    int-to-long v3, p1

    .local v3, "protoLogParam0":J
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x7ee4b3b9

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0, v5, v6, v2, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1779
    .end local v3    # "protoLogParam0":J
    :cond_18
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 1780
    # getter for: Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I
    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->access$400(Lcom/android/server/wm/DisplayRotation;)I

    move-result v3

    # invokes: Lcom/android/server/wm/DisplayRotation;->isRotationChoicePossible(I)Z
    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayRotation;->access$500(Lcom/android/server/wm/DisplayRotation;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1781
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    # invokes: Lcom/android/server/wm/DisplayRotation;->sendProposedRotationChangeToStatusBarInternal(IZ)V
    invoke-static {v0, p1, v1}, Lcom/android/server/wm/DisplayRotation;->access$700(Lcom/android/server/wm/DisplayRotation;IZ)V

    goto :goto_49

    .line 1784
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mRunnableCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1785
    .local v0, "r":Ljava/lang/Runnable;
    if-nez v0, :cond_42

    .line 1786
    new-instance v1, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;-><init>(Lcom/android/server/wm/DisplayRotation$OrientationListener;I)V

    move-object v0, v1

    .line 1787
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mRunnableCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1789
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1791
    .end local v0    # "r":Ljava/lang/Runnable;
    :goto_49
    return-void
.end method
