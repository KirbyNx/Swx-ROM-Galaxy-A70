.class Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;
.super Lcom/android/server/biometrics/SemBiometricTrustAppManager;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->updateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;Ljava/lang/String;)V
    .registers 21
    .param p1, "this$1"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "constants"    # Lcom/android/server/biometrics/Constants;
    .param p4, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p5, "halDeviceId"    # J
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p9, "path"    # Ljava/lang/String;

    .line 2818
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleUpdate(I)V
    .registers 4
    .param p1, "status"    # I

    .line 2821
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;->this$1:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$20200(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$4$sZ_kTX-nl9RpfAon5rHE69MJt4U;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$4$sZ_kTX-nl9RpfAon5rHE69MJt4U;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 2826
    return-void
.end method

.method public synthetic lambda$handleUpdate$0$FaceService$ServiceExtensionImpl$4(I)V
    .registers 2
    .param p1, "status"    # I

    .line 2822
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;->onFaceStatusUpdate(I)Z

    .line 2823
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;->stop()I

    .line 2825
    return-void
.end method
