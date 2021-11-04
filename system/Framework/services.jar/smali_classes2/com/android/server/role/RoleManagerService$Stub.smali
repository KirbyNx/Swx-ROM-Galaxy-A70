.class Lcom/android/server/role/RoleManagerService$Stub;
.super Landroid/app/role/IRoleManager$Stub;
.source "RoleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/RoleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .registers 2

    .line 540
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Landroid/app/role/IRoleManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/role/RoleManagerService;
    .param p2, "x1"    # Lcom/android/server/role/RoleManagerService$1;

    .line 540
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService$Stub;-><init>(Lcom/android/server/role/RoleManagerService;)V

    return-void
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 829
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 831
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v2}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_16} :catch_1f
    .catchall {:try_start_4 .. :try_end_16} :catchall_1a

    .line 836
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    return v2

    .line 836
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 837
    throw v2

    .line 833
    :catch_1f
    move-exception v2

    .line 834
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 836
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    return v3
.end method

.method private handleIncomingUser(IZLjava/lang/String;)I
    .registers 11
    .param p1, "userId"    # I
    .param p2, "allowAll"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 770
    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingUid()I

    move-result v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addOnRoleHoldersChangedListenerAsUser(Landroid/app/role/IOnRoleHoldersChangedListener;I)V
    .registers 6
    .param p1, "listener"    # Landroid/app/role/IOnRoleHoldersChangedListener;
    .param p2, "userId"    # I

    .line 670
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # getter for: Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;
    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$1000(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 671
    # getter for: Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void

    .line 674
    :cond_2e
    const/4 v0, 0x1

    const-string v1, "addOnRoleHoldersChangedListenerAsUser"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p2

    .line 675
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.OBSERVE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 680
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateListeners(I)Landroid/os/RemoteCallbackList;
    invoke-static {v0, p2}, Lcom/android/server/role/RoleManagerService;->access$1400(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 682
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 683
    return-void
.end method

.method public addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    .registers 10
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Landroid/os/RemoteCallback;

    .line 590
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # getter for: Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;
    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$1000(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 591
    # getter for: Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void

    .line 594
    :cond_2b
    const/4 v0, 0x0

    const-string v1, "addRoleHolderAsUser"

    invoke-direct {p0, p4, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p4

    .line 595
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v2}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string/jumbo v1, "roleName cannot be null or empty"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 599
    const-string/jumbo v1, "packageName cannot be null or empty"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 600
    const-string v1, "callback cannot be null"

    invoke-static {p5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRoleHolderAsUser, role: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-static {v1}, Lcom/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 608
    nop

    .line 609
    const-string v1, "android.app.role.SMS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    if-nez p4, :cond_a8

    .line 610
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # getter for: Lcom/android/server/role/RoleManagerService;->mRoleSMSChangedBroadcaster:Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;
    invoke-static {v1}, Lcom/android/server/role/RoleManagerService;->access$1200(Lcom/android/server/role/RoleManagerService;)Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v2}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 611
    invoke-virtual {p0, v0}, Lcom/android/server/role/RoleManagerService$Stub;->getDefaultSmsPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-virtual {v1, v2, v0, p2}, Lcom/android/server/role/RoleManagerService$RoleSMSChangedBroadcaster;->sendBroadcastIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_a8
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateController(I)Landroid/app/role/RoleControllerManager;
    invoke-static {v0, p4}, Lcom/android/server/role/RoleManagerService;->access$1300(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p5}, Landroid/app/role/RoleControllerManager;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 615
    return-void
.end method

.method public addRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 720
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string v2, "addRoleHolderFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 725
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 727
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 729
    .local v0, "userId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRoleHolderFromController, role: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-static {v1}, Lcom/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 733
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/role/RoleUserState;->addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public clearRoleHoldersAsUser(Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 647
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # getter for: Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;
    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$1000(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 648
    # getter for: Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void

    .line 651
    :cond_2b
    const/4 v0, 0x0

    const-string v1, "clearRoleHoldersAsUser"

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p3

    .line 652
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 656
    const-string v0, "callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearRoleHoldersAsUser, role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    invoke-static {v0}, Lcom/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateController(I)Landroid/app/role/RoleControllerManager;
    invoke-static {v0, p3}, Lcom/android/server/role/RoleManagerService;->access$1300(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Landroid/app/role/RoleControllerManager;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 665
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 802
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 803
    return-void

    .line 806
    :cond_11
    if-eqz p3, :cond_1d

    const-string v0, "--proto"

    invoke-static {p3, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 808
    .local v0, "dumpAsProto":Z
    :goto_1e
    if-eqz v0, :cond_2b

    .line 809
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .local v1, "dumpOutputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    goto :goto_3c

    .line 811
    .end local v1    # "dumpOutputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :cond_2b
    const-string v1, "ROLE MANAGER STATE (dumpsys role):"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 815
    .restart local v1    # "dumpOutputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :goto_3c
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # getter for: Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;
    invoke-static {v2}, Lcom/android/server/role/RoleManagerService;->access$1000(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    .line 816
    .local v2, "userIds":[I
    array-length v3, v2

    .line 817
    .local v3, "userIdsLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_48
    if-ge v4, v3, :cond_60

    .line 818
    aget v5, v2, v4

    .line 820
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    invoke-static {v6, v5}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v6

    .line 821
    .local v6, "userState":Lcom/android/server/role/RoleUserState;
    const-wide v7, 0x20b00000001L

    const-string/jumbo v9, "user_states"

    invoke-virtual {v6, v1, v9, v7, v8}, Lcom/android/server/role/RoleUserState;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 817
    .end local v5    # "userId":I
    .end local v6    # "userState":Lcom/android/server/role/RoleUserState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 825
    .end local v4    # "i":I
    :cond_60
    invoke-virtual {v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    .line 826
    return-void
.end method

.method public getDefaultSmsPackage(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 784
    const/4 v0, 0x0

    const-string v1, "getDefaultSmsPackage"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p1

    .line 785
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # getter for: Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;
    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$1000(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 786
    # getter for: Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v0, 0x0

    return-object v0

    .line 790
    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 792
    .local v0, "identity":J
    :try_start_37
    const-string v2, "android.app.role.SMS"

    .line 793
    invoke-virtual {p0, v2, p1}, Lcom/android/server/role/RoleManagerService$Stub;->getRoleHoldersAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 792
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_47

    .line 795
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 792
    return-object v2

    .line 795
    :catchall_47
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 796
    throw v2
.end method

.method public getHeldRolesFromController(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string v2, "getRolesHeldFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 763
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 764
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/role/RoleUserState;->getHeldRoles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getRoleHoldersAsUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # getter for: Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;
    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$1000(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 570
    # getter for: Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 573
    :cond_2f
    const/4 v0, 0x0

    const-string v1, "getRoleHoldersAsUser"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p2

    .line 574
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 579
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    invoke-static {v0, p2}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 580
    .local v0, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_58

    .line 581
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 583
    :cond_58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public isRoleAvailable(Ljava/lang/String;)Z
    .registers 4
    .param p1, "roleName"    # Ljava/lang/String;

    .line 544
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 546
    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 547
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/role/RoleUserState;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isRoleHeld(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 552
    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingUid()I

    move-result v0

    .line 553
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # getter for: Lcom/android/server/role/RoleManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v1}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 555
    const-string/jumbo v1, "roleName cannot be null or empty"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 556
    const-string/jumbo v1, "packageName cannot be null or empty"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 558
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 559
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    invoke-static {v2, v1}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    .line 560
    .local v2, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_2b

    .line 561
    const/4 v3, 0x0

    return v3

    .line 563
    :cond_2b
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 778
    new-instance v0, Lcom/android/server/role/RoleManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/role/RoleManagerShellCommand;-><init>(Landroid/app/role/IRoleManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/role/RoleManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 780
    return-void
.end method

.method public removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/IOnRoleHoldersChangedListener;I)V
    .registers 6
    .param p1, "listener"    # Landroid/app/role/IOnRoleHoldersChangedListener;
    .param p2, "userId"    # I

    .line 688
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # getter for: Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;
    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$1000(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 689
    # getter for: Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return-void

    .line 692
    :cond_2e
    const/4 v0, 0x1

    const-string/jumbo v1, "removeOnRoleHoldersChangedListenerAsUser"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p2

    .line 693
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.OBSERVE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 698
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getListeners(I)Landroid/os/RemoteCallbackList;
    invoke-static {v0, p2}, Lcom/android/server/role/RoleManagerService;->access$1500(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 699
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    if-nez p1, :cond_50

    .line 700
    return-void

    .line 702
    :cond_50
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 703
    return-void
.end method

.method public removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    .registers 9
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Landroid/os/RemoteCallback;

    .line 621
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # getter for: Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;
    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$1000(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 622
    # getter for: Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void

    .line 625
    :cond_2b
    const/4 v0, 0x0

    const-string/jumbo v1, "removeRoleHolderAsUser"

    invoke-direct {p0, p4, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p4

    .line 626
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 630
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 631
    const-string v0, "callback cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeRoleHolderAsUser, role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-static {v0}, Lcom/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateController(I)Landroid/app/role/RoleControllerManager;
    invoke-static {v0, p4}, Lcom/android/server/role/RoleManagerService;->access$1300(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p5}, Landroid/app/role/RoleControllerManager;->onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 641
    return-void
.end method

.method public removeRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 739
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string/jumbo v2, "removeRoleHolderFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string/jumbo v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 744
    const-string/jumbo v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 746
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 748
    .local v0, "userId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRoleHolderFromController, role: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    invoke-static {v1}, Lcom/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 752
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/role/RoleUserState;->removeRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setRoleNamesFromController(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 707
    .local p1, "roleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string/jumbo v2, "setRoleNamesFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string/jumbo v0, "roleNames cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 713
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 714
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    # invokes: Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/role/RoleUserState;->setRoleNames(Ljava/util/List;)V

    .line 715
    return-void
.end method
