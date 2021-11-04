.class final Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
.super Ljava/lang/Object;
.source "SemInDisplaySensorImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MaskClient"
.end annotation


# instance fields
.field private mIsCalibrationMode:Z

.field private mIsKeyguard:Z

.field private mPackageName:Ljava/lang/String;

.field private mSessionId:I

.field private mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;Landroid/os/IBinder;Ljava/lang/String;ZI)V
    .registers 11
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "calibrationMode"    # Z
    .param p5, "calibrationType"    # I

    .line 739
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput-object p2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mToken:Landroid/os/IBinder;

    .line 741
    iput-object p3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mPackageName:Ljava/lang/String;

    .line 742
    iput-boolean p4, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mIsCalibrationMode:Z

    .line 743
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 744
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "KEY_PACKAGE_NAME"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 746
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mIsKeyguard:Z

    .line 747
    const-string v1, "KEY_KEYGUARD"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 750
    :cond_25
    const/4 v1, 0x0

    :try_start_26
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    .line 753
    goto :goto_45

    .line 751
    :catch_2a
    move-exception v1

    .line 752
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MaskClient: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FingerprintService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    const/16 v1, 0x1f4

    .line 755
    .local v1, "cmd":I
    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mIsCalibrationMode:Z

    if-eqz v3, :cond_72

    .line 756
    const/16 v1, 0x1f5

    .line 757
    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;
    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1200(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    move-result-object v3

    if-eqz v3, :cond_72

    .line 758
    const-string/jumbo v3, "nits"

    if-ne p5, v2, :cond_64

    .line 759
    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;
    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1200(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    move-result-object p1

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mBrightnessColor:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->access$300(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    .line 760
    :cond_64
    const/4 v4, 0x2

    if-ne p5, v4, :cond_72

    .line 761
    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;
    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1200(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    move-result-object p1

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mBrightnessColorForLowBrightness:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->access$1300(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_72
    :goto_72
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mSessionId:I

    .line 767
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object p1

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mSessionId:I

    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    .line 768
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaskClient: binderDied, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1400(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$MaskClient$HdkaGIGHNdzdgRvwB1hcDH4DS-0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$MaskClient$HdkaGIGHNdzdgRvwB1hcDH4DS-0;-><init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 780
    return-void
.end method

.method public destroy()V
    .registers 6

    .line 784
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_7

    .line 787
    goto :goto_22

    .line 785
    :catch_7
    move-exception v1

    .line 786
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaskClient: destroy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_22
    const/16 v1, 0x1f4

    .line 789
    .local v1, "cmd":I
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mIsCalibrationMode:Z

    if-eqz v2, :cond_2a

    .line 790
    const/16 v1, 0x1f5

    .line 792
    :cond_2a
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mSessionId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    .line 793
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mSessionId:I

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(I)V

    .line 794
    iput-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mToken:Landroid/os/IBinder;

    .line 795
    iput-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mPackageName:Ljava/lang/String;

    .line 796
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 803
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 2

    .line 799
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public isKeyguard()Z
    .registers 2

    .line 807
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mIsKeyguard:Z

    return v0
.end method

.method public synthetic lambda$binderDied$0$SemInDisplaySensorImpl$MaskClient()V
    .registers 5

    .line 774
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mIsCalibrationMode:Z

    if-eqz v0, :cond_11

    .line 775
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getOpticalSensorHelper()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->handleCalibrationMode(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_1a

    .line 777
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 779
    :goto_1a
    return-void
.end method
