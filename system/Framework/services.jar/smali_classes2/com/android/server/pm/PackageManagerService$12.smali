.class Lcom/android/server/pm/PackageManagerService$12;
.super Landroid/content/IIntentReceiver$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->unloadMediaPackages(Landroid/util/ArrayMap;[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$keys:Ljava/util/Set;

.field final synthetic val$reportStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/util/Set;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 28260
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$reportStatus:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$keys:Ljava/util/Set;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$performReceive$0$PackageManagerService$12(ZLjava/util/Set;)V
    .registers 5
    .param p1, "reportStatus"    # Z
    .param p2, "keys"    # Ljava/util/Set;

    .line 28267
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 28268
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, -0x1

    # invokes: Lcom/android/server/pm/PackageManagerService;->updateMediaStatus(IILjava/util/Set;)V
    invoke-static {v0, p1, v1, p2}, Lcom/android/server/pm/PackageManagerService;->access$7000(Lcom/android/server/pm/PackageManagerService;IILjava/util/Set;)V

    .line 28270
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->setAvailableMountSync(Z)V

    .line 28271
    const-string v0, "PackageManager"

    const-string/jumbo v1, "setAvailableMountSync false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28272
    return-void
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do force gc after sending broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28266
    new-instance v0, Ljava/lang/Thread;

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$12;->val$reportStatus:Z

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$keys:Ljava/util/Set;

    new-instance v3, Lcom/android/server/pm/-$$Lambda$PackageManagerService$12$87wBkYsp6raunkdUhYtnaBrp2HI;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$12$87wBkYsp6raunkdUhYtnaBrp2HI;-><init>(Lcom/android/server/pm/PackageManagerService$12;ZLjava/util/Set;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 28272
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 28273
    return-void
.end method
