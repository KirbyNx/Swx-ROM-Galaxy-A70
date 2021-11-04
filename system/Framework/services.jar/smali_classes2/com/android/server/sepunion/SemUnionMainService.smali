.class public Lcom/android/server/sepunion/SemUnionMainService;
.super Lcom/android/server/SystemService;
.source "SemUnionMainService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/sepunion/SemUnionMainService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 23
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 34
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootPhase = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onBootPhase(I)V

    .line 36
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 40
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCleanupUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onCleanupUser(I)V

    .line 42
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 27
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/sepunion/SemUnionMainService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 29
    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iget-object v1, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    iget-object v1, v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemUnionMainService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 64
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onStartUser(I)V

    .line 66
    return-void
.end method

.method public onStopUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 46
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onStopUser(I)V

    .line 48
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 52
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSwitchUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onSwitchUser(I)V

    .line 54
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 58
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnlockUser"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onUnlockUser(I)V

    .line 60
    return-void
.end method
