.class public Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field private mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 2067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2068
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 2069
    invoke-virtual {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 2070
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2071
    return-void
.end method


# virtual methods
.method public createServiceListener(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .registers 3
    .param p1, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 2186
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->createServiceListenerImpl(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    move-result-object v0

    return-object v0
.end method

.method public final getAuthenticatorIds()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2196
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$12200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getConstants()Lcom/android/server/biometrics/Constants;
    .registers 2

    .line 2182
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 2074
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAuthClientExtensionImpl()Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    .registers 3

    .line 2105
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$11600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 2106
    .local v0, "c":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    if-eqz v1, :cond_11

    .line 2107
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getExtensionImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    return-object v1

    .line 2109
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    .registers 2

    .line 2097
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$11400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserId()I
    .registers 2

    .line 2170
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$12000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v0

    return v0
.end method

.method public getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2

    .line 2166
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledTemplates(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 2210
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 2

    .line 2162
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method public getHalDeviceId()J
    .registers 3

    .line 2178
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$12100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPendingClient()Lcom/android/server/biometrics/ClientMonitor;
    .registers 2

    .line 2101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$11500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getPowerManager()Landroid/os/PowerManager;
    .registers 2

    .line 2082
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method public getPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .registers 2

    .line 2086
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method public getSemFaceManager()Lcom/samsung/android/bio/face/SemBioFaceManager;
    .registers 2

    .line 2090
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v0, :cond_10

    .line 2091
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 2093
    :cond_10
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method public getServiceExtension()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    .registers 2

    .line 2078
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v0

    return-object v0
.end method

.method public getUserOrWorkProfileId(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2132
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I
    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$11900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hGetAuthenticatorId()J
    .registers 4

    .line 2154
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->getAuthenticatorId()J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    .line 2155
    :catch_b
    move-exception v0

    .line 2156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hGetAuthenticatorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hRemove(II)I
    .registers 6
    .param p1, "userId"    # I
    .param p2, "id"    # I

    .line 2145
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->remove(II)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 2146
    :catch_b
    move-exception v0

    .line 2147
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hRemove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method public handleAcquired(II)V
    .registers 6
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 2128
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->handleAcquired(JII)V

    .line 2129
    return-void
.end method

.method public handleError(II)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "vendorCode"    # I

    .line 2113
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$11700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$Injector$RSbsSwXqtUKcmPgMzFm577dG6iM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$Injector$RSbsSwXqtUKcmPgMzFm577dG6iM;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 2116
    return-void
.end method

.method public handleError(Lcom/android/server/biometrics/ClientMonitor;II)V
    .registers 6
    .param p1, "client"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "error"    # I
    .param p3, "vendorCode"    # I

    .line 2119
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$11800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$Injector$9Hs6rAHrE3Eec_gKWg3JjStUCC8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$Injector$9Hs6rAHrE3Eec_gKWg3JjStUCC8;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;Lcom/android/server/biometrics/ClientMonitor;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 2125
    return-void
.end method

.method public isWorkProfile(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2219
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->isWorkProfile(I)Z
    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$12600(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$handleError$0$FingerprintService$Injector(II)V
    .registers 6
    .param p1, "errorCode"    # I
    .param p2, "vendorCode"    # I

    .line 2114
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->handleError(JII)V

    .line 2115
    return-void
.end method

.method public synthetic lambda$handleError$1$FingerprintService$Injector(Lcom/android/server/biometrics/ClientMonitor;II)V
    .registers 7
    .param p1, "client"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "error"    # I
    .param p3, "vendorCode"    # I

    .line 2120
    if-eqz p1, :cond_6

    .line 2121
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 2123
    :cond_6
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->handleError(JII)V

    .line 2124
    return-void
.end method

.method public request(II)I
    .registers 4
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 2136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v0

    return v0
.end method

.method public request(II[B[B)I
    .registers 6
    .param p1, "cmd"    # I
    .param p2, "param"    # I
    .param p3, "input"    # [B
    .param p4, "output"    # [B

    .line 2140
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->request(II[B[B)I

    move-result v0

    return v0
.end method

.method public setAuthenticatorId(IJ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "authenticatorId"    # J

    .line 2200
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$12300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 2201
    :try_start_7
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$12400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    monitor-exit v0

    .line 2203
    return-void

    .line 2202
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public startCurrentClient(I)V
    .registers 3
    .param p1, "cookie"    # I

    .line 2215
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->startCurrentClient(I)V
    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$12500(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    .line 2216
    return-void
.end method

.method public startPostEnroll()V
    .registers 3

    .line 2206
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)I

    .line 2207
    return-void
.end method

.method public updateActiveGroup(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 2174
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->mFingerprintService:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 2175
    return-void
.end method
