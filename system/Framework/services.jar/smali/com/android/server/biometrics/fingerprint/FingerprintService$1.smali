.class Lcom/android/server/biometrics/fingerprint/FingerprintService$1;
.super Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 1101
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAcquired_2_2$1$FingerprintService$1(IIJ)V
    .registers 6
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I
    .param p3, "deviceId"    # J

    .line 1130
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_SPEN_CHARGER:Z

    if-nez v0, :cond_10

    .line 1131
    const/4 v0, 0x6

    if-ne p1, v0, :cond_10

    .line 1132
    const/16 v0, 0x7531

    if-eq p2, v0, :cond_f

    const/16 v0, 0x7532

    if-ne p2, v0, :cond_10

    .line 1134
    :cond_f
    return-void

    .line 1138
    :cond_10
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, p3, p4, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->handleAcquired(JII)V

    .line 1140
    return-void
.end method

.method public synthetic lambda$onAuthenticated$2$FingerprintService$1(IIJLjava/util/ArrayList;)V
    .registers 20
    .param p1, "groupId"    # I
    .param p2, "fingerId"    # I
    .param p3, "deviceId"    # J
    .param p5, "token"    # Ljava/util/ArrayList;

    .line 1169
    move-object v0, p0

    move/from16 v7, p2

    const-string v1, ""

    .line 1170
    .local v1, "name":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 1171
    invoke-virtual {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    move v8, p1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v9

    .line 1172
    .local v9, "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v9, :cond_33

    .line 1173
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 1174
    .local v3, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v4

    if-ne v4, v7, :cond_32

    .line 1175
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1176
    move-object v10, v1

    goto :goto_34

    .line 1178
    .end local v3    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_32
    goto :goto_1a

    .line 1182
    :cond_33
    move-object v10, v1

    .end local v1    # "name":Ljava/lang/CharSequence;
    .local v10, "name":Ljava/lang/CharSequence;
    :goto_34
    if-eqz v7, :cond_38

    const/4 v1, 0x1

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    .line 1183
    .local v1, "authenticated":Z
    :goto_39
    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$11200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v11

    .line 1184
    .local v11, "client":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v2, v11, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    if-eqz v2, :cond_56

    .line 1185
    move-object v2, v11

    check-cast v2, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    invoke-virtual {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->isDetectOnly()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1186
    const-string v2, "FingerprintService"

    const-string v3, "Detect-only. Device is encrypted or locked down"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v1, 0x1

    move v12, v1

    goto :goto_57

    .line 1190
    :cond_56
    move v12, v1

    .end local v1    # "authenticated":Z
    .local v12, "authenticated":Z
    :goto_57
    new-instance v13, Landroid/hardware/fingerprint/Fingerprint;

    move-object v1, v13

    move-object v2, v10

    move v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 1197
    .local v1, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v3, p5

    invoke-virtual {v2, v12, v1, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->handleAuthenticated(ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    .line 1199
    return-void
.end method

.method public synthetic lambda$onEnrollResult$0$FingerprintService$1(IIJI)V
    .registers 13
    .param p1, "groupId"    # I
    .param p2, "fingerId"    # I
    .param p3, "deviceId"    # J
    .param p5, "remaining"    # I

    .line 1106
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 1107
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v6

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 1113
    .local v0, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1, v0, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 1115
    return-void
.end method

.method public synthetic lambda$onEnumerate$5$FingerprintService$1(IIJI)V
    .registers 13
    .param p1, "groupId"    # I
    .param p2, "fingerId"    # I
    .param p3, "deviceId"    # J
    .param p5, "remaining"    # I

    .line 1247
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    const-string v1, ""

    move-object v0, v6

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 1252
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    invoke-static {v1, v0, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$10700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 1255
    return-void
.end method

.method public synthetic lambda$onError$3$FingerprintService$1(JII)V
    .registers 8
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 1210
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->handleError(JII)V

    .line 1214
    const/4 v0, 0x1

    if-ne p3, v0, :cond_29

    .line 1216
    const-string v0, "FingerprintService"

    const-string v1, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    monitor-enter p0

    .line 1218
    :try_start_10
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$10902(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 1219
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-wide/16 v1, 0x0

    # setter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$11002(Lcom/android/server/biometrics/fingerprint/FingerprintService;J)J

    .line 1220
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const/16 v1, -0x2710

    # setter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$11102(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)I

    .line 1221
    monitor-exit p0

    goto :goto_29

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw v0

    .line 1223
    :cond_29
    :goto_29
    return-void
.end method

.method public synthetic lambda$onRemoved$4$FingerprintService$1(IIJI)V
    .registers 14
    .param p1, "groupId"    # I
    .param p2, "fingerId"    # I
    .param p3, "deviceId"    # J
    .param p5, "remaining"    # I

    .line 1230
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$10800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 1231
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    new-instance v7, Landroid/hardware/fingerprint/Fingerprint;

    const-string v2, ""

    move-object v1, v7

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 1237
    .local v1, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v2, v1, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 1240
    return-void
.end method

.method public onAcquired(JII)V
    .registers 5
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 1120
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->onAcquired_2_2(JII)V

    .line 1121
    return-void
.end method

.method public onAcquired_2_2(JII)V
    .registers 13
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 1125
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$10200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$b_tdocKWbLx7EI9JvTg40_nnYoQ;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move v4, p4

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$b_tdocKWbLx7EI9JvTg40_nnYoQ;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJ)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1141
    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .registers 18
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1148
    .local p5, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-wide/16 v0, 0x0

    .line 1149
    .local v0, "delay":J
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v2, :cond_39

    .line 1150
    if-eqz p3, :cond_39

    .line 1151
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v2

    .line 1152
    .local v2, "injector":Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;
    invoke-virtual {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentAuthClientExtensionImpl()Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    move-result-object v3

    .line 1153
    .local v3, "clientExt":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    if-eqz v3, :cond_39

    .line 1154
    invoke-virtual {v3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->isKeyguard()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1155
    invoke-virtual {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_39

    .line 1156
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1157
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "onAuthenticated from HAL"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_33
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->setAuthenticationResult(Z)V

    .line 1160
    const-wide/16 v0, 0xa

    .line 1166
    .end local v2    # "injector":Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;
    .end local v3    # "clientExt":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    :cond_39
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$10300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v10

    new-instance v11, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;

    move-object v3, v11

    move-object v4, p0

    move/from16 v5, p4

    move v6, p3

    move-wide v7, p1

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJLjava/util/ArrayList;)V

    invoke-virtual {v10, v11, v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1200
    return-void
.end method

.method public onEnrollResult(JIII)V
    .registers 15
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 1105
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$10100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7-RPI0PwwgOAZtsXq2j72pQWwMc;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7-RPI0PwwgOAZtsXq2j72pQWwMc;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJI)V

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1116
    return-void
.end method

.method public onEnumerate(JIII)V
    .registers 15
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 1246
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$10600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJI)V

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1257
    return-void
.end method

.method public onError(JII)V
    .registers 13
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 1204
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$10400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$cO88ecWuvWIBecLAEccxr5yeJK4;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$cO88ecWuvWIBecLAEccxr5yeJK4;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;JII)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1224
    return-void
.end method

.method public onRemoved(JIII)V
    .registers 15
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 1229
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$10500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$BJntfNoFTejPmUJ_45WFIwis8Nw;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$BJntfNoFTejPmUJ_45WFIwis8Nw;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJI)V

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1241
    return-void
.end method
