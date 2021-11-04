.class public interface abstract Lcom/android/server/enterprise/EnterpriseServiceCallback;
.super Ljava/lang/Object;
.source "EnterpriseServiceCallback.java"


# virtual methods
.method public hasDeferredBroadcastReceiverToRegister()Z
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public abstract notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
.end method

.method public abstract onAdminAdded(I)V
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 74
    return-void
.end method

.method public onAdminRemoved(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "isRemovalDueToTransfer"    # Z

    .line 77
    invoke-interface {p0, p1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(I)V

    .line 78
    return-void
.end method

.method public abstract onPreAdminRemoval(I)V
.end method

.method public registerDeferredBoradcastReceiver()V
    .registers 1

    .line 84
    return-void
.end method

.method public abstract systemReady()V
.end method
