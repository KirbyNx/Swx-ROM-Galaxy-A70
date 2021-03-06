.class Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;
.super Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[II)V
    .registers 31
    .param p1, "this$1"    # Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "userId"    # I
    .param p9, "groupId"    # I
    .param p10, "cryptoToken"    # [B
    .param p11, "restricted"    # Z
    .param p12, "owner"    # Ljava/lang/String;
    .param p13, "disabledFeatures"    # [I
    .param p14, "timeoutSec"    # I

    .line 524
    move-object/from16 v0, p1

    move-object/from16 v15, p0

    iput-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;->this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[II)V

    return-void
.end method


# virtual methods
.method public getAcquireIgnorelist()[I
    .registers 2

    .line 528
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;->this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreList:[I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$3200(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAcquireVendorIgnorelist()[I
    .registers 2

    .line 533
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;->this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreListVendor:[I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$3300(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0
.end method

.method public shouldVibrate()Z
    .registers 2

    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method protected statsModality()I
    .registers 2

    .line 543
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;->this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->statsModality()I

    move-result v0

    return v0
.end method
