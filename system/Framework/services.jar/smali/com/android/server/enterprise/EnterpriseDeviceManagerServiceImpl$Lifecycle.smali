.class public final Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;
.super Lcom/android/server/SystemService;
.source "EnterpriseDeviceManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 307
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 308
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 309
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 325
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->systemReady(I)V
    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 326
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 375
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 316
    return-void
.end method

.method public onStartUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 334
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->onStartUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->access$100(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 335
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->updateCurrentUser()V
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    .line 336
    return-void
.end method

.method public onStopUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 365
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 353
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->updateCurrentUser()V
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    .line 354
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 345
    return-void
.end method
