.class public Lcom/android/server/privilege/SemPrivilegeManagerService;
.super Lcom/android/server/SystemService;
.source "SemPrivilegeManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mServiceImpl:Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/privilege/SemPrivilegeManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/privilege/SemPrivilegeManagerService;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/privilege/SemPrivilegeManagerService;->mServiceImpl:Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {p1}, Lcom/android/server/privilege/SemPrivilegeManagerService;->setServiceImpl(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private static declared-synchronized getServiceImpl()Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;
    .registers 2

    const-class v0, Lcom/android/server/privilege/SemPrivilegeManagerService;

    monitor-enter v0

    .line 19
    :try_start_3
    sget-object v1, Lcom/android/server/privilege/SemPrivilegeManagerService;->mServiceImpl:Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 19
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isAllowedOperation(ILjava/lang/String;)Z
    .registers 5
    .param p0, "uid"    # I
    .param p1, "operation"    # Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/android/server/privilege/SemPrivilegeManagerService;->getServiceImpl()Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;

    move-result-object v0

    .line 39
    .local v0, "serviceImpl":Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;
    if-nez v0, :cond_f

    .line 40
    sget-object v1, Lcom/android/server/privilege/SemPrivilegeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "failed to get SemPrivilegeManagerServiceImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v1, 0x0

    return v1

    .line 43
    :cond_f
    invoke-static {p0, p1}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->isPrivilegeApplication(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isVirtualDisplayAllowed(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 34
    const-string/jumbo v0, "virtual_display"

    invoke-static {p0, v0}, Lcom/android/server/privilege/SemPrivilegeManagerService;->isAllowedOperation(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized setServiceImpl(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/privilege/SemPrivilegeManagerService;

    monitor-enter v0

    .line 15
    :try_start_3
    new-instance v1, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;

    invoke-direct {v1, p0}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/privilege/SemPrivilegeManagerService;->mServiceImpl:Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 16
    monitor-exit v0

    return-void

    .line 14
    .end local p0    # "context":Landroid/content/Context;
    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 29
    sget-object v0, Lcom/android/server/privilege/SemPrivilegeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/android/server/privilege/SemPrivilegeManagerService;->getServiceImpl()Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;

    move-result-object v0

    const-string/jumbo v1, "semprivilege"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/privilege/SemPrivilegeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 31
    return-void
.end method
