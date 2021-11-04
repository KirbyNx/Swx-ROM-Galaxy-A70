.class public final Lcom/android/server/rollback/RollbackManagerService;
.super Lcom/android/server/SystemService;
.source "RollbackManagerService.java"


# instance fields
.field private mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 50
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_9

    .line 51
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerService;->mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onBootCompleted()V

    .line 53
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 39
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerService;->mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 40
    const-string/jumbo v1, "rollback"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/rollback/RollbackManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 41
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "user"    # I

    .line 45
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerService;->mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onUnlockUser(I)V

    .line 46
    return-void
.end method
