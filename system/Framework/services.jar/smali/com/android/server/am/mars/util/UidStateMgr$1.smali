.class Lcom/android/server/am/mars/util/UidStateMgr$1;
.super Landroid/app/IUidObserver$Stub;
.source "UidStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/util/UidStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/mars/util/UidStateMgr;


# direct methods
.method constructor <init>(Lcom/android/server/am/mars/util/UidStateMgr;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/mars/util/UidStateMgr;

    .line 95
    iput-object p1, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    # invokes: Lcom/android/server/am/mars/util/UidStateMgr;->removeFromUidIdleList(I)V
    invoke-static {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->access$400(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    .line 112
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    # invokes: Lcom/android/server/am/mars/util/UidStateMgr;->addToRunningList(I)V
    invoke-static {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->access$300(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    .line 113
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    # invokes: Lcom/android/server/am/mars/util/UidStateMgr;->removeFromUidIdleList(I)V
    invoke-static {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->access$400(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    .line 106
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    # invokes: Lcom/android/server/am/mars/util/UidStateMgr;->removeFromRunningList(I)V
    invoke-static {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->access$500(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    .line 107
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    # invokes: Lcom/android/server/am/mars/util/UidStateMgr;->addToUidIdleList(I)V
    invoke-static {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->access$200(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    .line 99
    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    # invokes: Lcom/android/server/am/mars/util/UidStateMgr;->addToRunningList(I)V
    invoke-static {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->access$300(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    .line 100
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 118
    return-void
.end method
