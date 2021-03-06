.class Lcom/android/server/pm/permission/PermissionManagerService$1;
.super Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 403
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onGidsChanged$0(II)V
    .registers 3
    .param p0, "appId"    # I
    .param p1, "userId"    # I

    .line 406
    const-string/jumbo v0, "permission grant or revoke changed gids"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onPermissionRevoked$1(II)V
    .registers 3
    .param p0, "appId"    # I
    .param p1, "userId"    # I

    .line 427
    const-string/jumbo v0, "permissions revoked"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onPermissionRevoked$2(IILjava/lang/String;)V
    .registers 3
    .param p0, "appId"    # I
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 429
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .registers 5
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 406
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$000(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$QSCLyelVDMHZe8LrlYhYvfz5G2c;

    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$QSCLyelVDMHZe8LrlYhYvfz5G2c;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    return-void
.end method

.method public onInstallPermissionGranted()V
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 418
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .registers 3

    .line 434
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 435
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 443
    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 457
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$1;->onInstallPermissionUpdated()V

    .line 458
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 459
    return-void
.end method

.method public onPermissionGranted(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 410
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 413
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 414
    return-void
.end method

.method public onPermissionRemoved()V
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 447
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 424
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 425
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 426
    .local v0, "appId":I
    if-nez p3, :cond_28

    .line 427
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$000(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$7A2ffMA57G4PvFD5RbG2mRh2Q_8;

    invoke-direct {v2, v0, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$7A2ffMA57G4PvFD5RbG2mRh2Q_8;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_36

    .line 429
    :cond_28
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$000(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$5y_AV_Q7BQ7QMC5yBezSflQuMpw;

    invoke-direct {v2, v0, p2, p3}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$1$5y_AV_Q7BQ7QMC5yBezSflQuMpw;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 431
    :goto_36
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .registers 5
    .param p1, "userIds"    # [I
    .param p2, "sync"    # Z

    .line 438
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 439
    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .registers 7
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z
    .param p3, "uid"    # I

    .line 450
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService$1;->onPermissionUpdated([IZ)V

    .line 451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_1d

    .line 452
    aget v1, p1, v0

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 453
    .local v1, "userUid":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;
    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 451
    .end local v1    # "userUid":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 455
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method
