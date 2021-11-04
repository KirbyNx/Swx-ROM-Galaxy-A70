.class public Lcom/android/server/cover/CoverManagerService;
.super Lcom/android/server/SystemService;
.source "CoverManagerService.java"


# instance fields
.field private final mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    .line 43
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 52
    const/16 v0, 0x258

    if-ne p1, v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->systemRunning()V

    .line 55
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    const-string v1, "cover"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/cover/CoverManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    return-void
.end method
