.class Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OMSCallbackRunnable"
.end annotation


# instance fields
.field private final overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

.field private final overlayTarget:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final removed:Z

.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

.field private final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;IZ)V
    .registers 7
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overlayTarget"    # Ljava/lang/String;
    .param p4, "overlayManagerCallback"    # Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;
    .param p5, "userId"    # I
    .param p6, "removed"    # Z

    .line 31499
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31500
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    .line 31501
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    .line 31502
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    .line 31503
    iput-boolean p6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->removed:Z

    .line 31504
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    .line 31505
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 31509
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->removed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_159

    .line 31510
    const/4 v0, 0x0

    .line 31511
    .local v0, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 31512
    :try_start_d
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v0, v3

    .line 31513
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMSCallbackRunnable running for removed package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " overlayTarget = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ParserPackage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " theme? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31515
    if-eqz v0, :cond_4f

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSamsungThemeOverlay()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_51

    :cond_4f
    const-string v5, "PS was null"

    :goto_51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31513
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31516
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_d .. :try_end_5c} :catchall_156

    .line 31517
    if-eqz v0, :cond_125

    .line 31518
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSamsungThemeOverlay()Z

    move-result v2

    if-eqz v2, :cond_cf

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_cf

    .line 31519
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/overlays/currentstyle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 31522
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 31523
    :try_start_7d
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/pm/PackageManagerService;->removePackageLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    invoke-static {v3, v0, v4}, Lcom/android/server/pm/PackageManagerService;->access$12300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 31524
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_cc

    .line 31525
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 31526
    :try_start_8d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->removePackageLPw(Ljava/lang/String;)I

    .line 31527
    monitor-exit v3
    :try_end_99
    .catchall {:try_start_8d .. :try_end_99} :catchall_c9

    .line 31528
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    if-eqz v2, :cond_155

    .line 31529
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31531
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 31532
    .local v2, "users":[I
    array-length v3, v2

    :goto_b1
    if-ge v1, v3, :cond_c7

    aget v4, v2, v1

    .line 31533
    .local v4, "uId":I
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 31534
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v4}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31532
    .end local v4    # "uId":I
    :cond_c4
    add-int/lit8 v1, v1, 0x1

    goto :goto_b1

    .line 31538
    .end local v2    # "users":[I
    :cond_c7
    goto/16 :goto_155

    .line 31527
    :catchall_c9
    move-exception v1

    :try_start_ca
    monitor-exit v3
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v1

    .line 31524
    :catchall_cc
    move-exception v1

    :try_start_cd
    monitor-exit v2
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw v1

    .line 31539
    :cond_cf
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSamsungThemeOverlay()Z

    move-result v2

    if-eqz v2, :cond_e7

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e7

    .line 31540
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f9

    .line 31541
    :cond_e7
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_155

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/overlays/current_locale_apks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_155

    .line 31543
    :cond_f9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    if-eqz v2, :cond_155

    .line 31544
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    invoke-interface {v2, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageChanged(Ljava/lang/String;IZ)V

    .line 31545
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 31546
    .restart local v2    # "users":[I
    array-length v3, v2

    move v4, v1

    :goto_110
    if-ge v4, v3, :cond_124

    aget v5, v2, v4

    .line 31547
    .local v5, "uId":I
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_121

    .line 31548
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7, v5, v1}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageChanged(Ljava/lang/String;IZ)V

    .line 31546
    .end local v5    # "uId":I
    :cond_121
    add-int/lit8 v4, v4, 0x1

    goto :goto_110

    .line 31552
    .end local v2    # "users":[I
    :cond_124
    goto :goto_155

    .line 31557
    :cond_125
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    if-nez v2, :cond_155

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    if-eqz v3, :cond_155

    .line 31558
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    invoke-interface {v3, v4, v2, v5}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31560
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 31561
    .restart local v2    # "users":[I
    array-length v3, v2

    :goto_13f
    if-ge v1, v3, :cond_155

    aget v4, v2, v1

    .line 31562
    .restart local v4    # "uId":I
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_152

    .line 31563
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayTarget:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v4}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31561
    .end local v4    # "uId":I
    :cond_152
    add-int/lit8 v1, v1, 0x1

    goto :goto_13f

    .line 31569
    .end local v0    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "users":[I
    :cond_155
    :goto_155
    goto :goto_19d

    .line 31516
    .restart local v0    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_156
    move-exception v1

    :try_start_157
    monitor-exit v2
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_156

    throw v1

    .line 31571
    .end local v0    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_159
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    if-eqz v0, :cond_19d

    .line 31572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMSCallbackRunnable Enabling package at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31573
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->userId:I

    invoke-interface {v0, v2, v3}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageAdded(Ljava/lang/String;I)V

    .line 31574
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->this$1:Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 31575
    .local v0, "users":[I
    array-length v2, v0

    :goto_189
    if-ge v1, v2, :cond_19d

    aget v3, v0, v1

    .line 31576
    .local v3, "uId":I
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_19a

    .line 31577
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->overlayManagerCallback:Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;->onOverlayPackageAdded(Ljava/lang/String;I)V

    .line 31575
    .end local v3    # "uId":I
    :cond_19a
    add-int/lit8 v1, v1, 0x1

    goto :goto_189

    .line 31582
    .end local v0    # "users":[I
    :cond_19d
    :goto_19d
    return-void
.end method
