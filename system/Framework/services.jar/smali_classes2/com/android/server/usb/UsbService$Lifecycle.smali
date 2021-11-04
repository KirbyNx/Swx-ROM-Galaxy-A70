.class public Lcom/android/server/usb/UsbService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mOnActivityManagerPhaseFinished:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnStartFinished:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbService:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnStartFinished:Ljava/util/concurrent/CompletableFuture;

    .line 100
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnActivityManagerPhaseFinished:Ljava/util/concurrent/CompletableFuture;

    .line 105
    return-void
.end method


# virtual methods
.method public synthetic lambda$onBootPhase$1$UsbService$Lifecycle()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnStartFinished:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbService;->systemReady()V

    .line 123
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnActivityManagerPhaseFinished:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public synthetic lambda$onStart$0$UsbService$Lifecycle()V
    .registers 3

    .line 110
    new-instance v0, Lcom/android/server/usb/UsbService;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    .line 111
    const-string/jumbo v1, "usb"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/UsbService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnStartFinished:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public synthetic lambda$onUserSwitching$2$UsbService$Lifecycle(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 135
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    # invokes: Lcom/android/server/usb/UsbService;->onSwitchUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbService;->access$100(Lcom/android/server/usb/UsbService;I)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 118
    const-string v0, "UsbService"

    const/16 v1, 0x226

    if-ne p1, v1, :cond_16

    .line 119
    const-string v1, "UsbService -> SystemService.PHASE_ACTIVITY_MANAGER_READY"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Lcom/android/server/usb/-$$Lambda$UsbService$Lifecycle$sV0bZ5BCi6DR9FlGZbY2PyYUP58;

    invoke-direct {v0, p0}, Lcom/android/server/usb/-$$Lambda$UsbService$Lifecycle$sV0bZ5BCi6DR9FlGZbY2PyYUP58;-><init>(Lcom/android/server/usb/UsbService$Lifecycle;)V

    const-string v1, "UsbService$Lifecycle#onBootPhase"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    goto :goto_29

    .line 125
    :cond_16
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_29

    .line 126
    const-string v1, "UsbService -> SystemService.PHASE_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnActivityManagerPhaseFinished:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbService;->bootCompleted()V

    .line 130
    :cond_29
    :goto_29
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 109
    new-instance v0, Lcom/android/server/usb/-$$Lambda$UsbService$Lifecycle$KjOG0MXO3C0J-L5Ymrj6FnSwXwQ;

    invoke-direct {v0, p0}, Lcom/android/server/usb/-$$Lambda$UsbService$Lifecycle$KjOG0MXO3C0J-L5Ymrj6FnSwXwQ;-><init>(Lcom/android/server/usb/UsbService$Lifecycle;)V

    const-string v1, "UsbService$Lifecycle#onStart"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 114
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "userInfo"    # Lcom/android/server/SystemService$TargetUser;

    .line 140
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    # invokes: Lcom/android/server/usb/UsbService;->onStopUser(Landroid/os/UserHandle;)V
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbService;->access$000(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V

    .line 141
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 134
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/usb/-$$Lambda$UsbService$Lifecycle$uW1Zp8w_9pHt-c93nC2qQFOakXo;

    invoke-direct {v1, p0, p2}, Lcom/android/server/usb/-$$Lambda$UsbService$Lifecycle$uW1Zp8w_9pHt-c93nC2qQFOakXo;-><init>(Lcom/android/server/usb/UsbService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "userInfo"    # Lcom/android/server/SystemService$TargetUser;

    .line 145
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbService;->onUnlockUser(I)V

    .line 146
    return-void
.end method
