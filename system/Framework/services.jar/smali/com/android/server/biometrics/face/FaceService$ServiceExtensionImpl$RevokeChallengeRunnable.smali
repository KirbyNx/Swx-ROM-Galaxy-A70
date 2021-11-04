.class Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;
.super Ljava/lang/Object;
.source "FaceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RevokeChallengeRunnable"
.end annotation


# instance fields
.field mToken:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V
    .registers 2

    .line 2487
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2488
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Lcom/android/server/biometrics/face/FaceService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p2, "x1"    # Lcom/android/server/biometrics/face/FaceService$1;

    .line 2487
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2497
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$19000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    if-nez v0, :cond_14

    .line 2500
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;->mToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->startRevokeChallenge(Landroid/os/IBinder;)I
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$19100(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)I

    goto :goto_1c

    .line 2504
    :cond_14
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$2102(Lcom/android/server/biometrics/face/FaceService;Z)Z

    .line 2506
    :goto_1c
    return-void
.end method

.method setToken(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2491
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;->mToken:Landroid/os/IBinder;

    .line 2492
    return-void
.end method
