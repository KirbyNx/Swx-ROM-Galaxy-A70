.class public Lcom/android/server/isrb/IsrbManagerService;
.super Lcom/android/server/SystemService;
.source "IsrbManagerService.java"


# instance fields
.field private final mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 43
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 52
    const/16 v0, 0x258

    if-ne p1, v0, :cond_a

    .line 53
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->systemRunning()V

    goto :goto_13

    .line 54
    :cond_a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_13

    .line 55
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->systemBootComplete()V

    .line 57
    :cond_13
    :goto_13
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    const-string/jumbo v1, "isrb"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/isrb/IsrbManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    return-void
.end method
