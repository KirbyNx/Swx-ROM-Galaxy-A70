.class Lcom/android/server/biometrics/fingerprint/FingerprintService$2;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRequestResult:I

.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 1264
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(JI)I
    .registers 7
    .param p1, "operationId"    # J
    .param p3, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1273
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_11

    .line 1274
    const-string v1, "FingerprintService"

    const-string v2, "authenticate(): no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/4 v1, 0x3

    return v1

    .line 1277
    :cond_11
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I

    move-result v1

    return v1
.end method

.method public cancel()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1283
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_11

    .line 1284
    const-string v1, "FingerprintService"

    const-string v2, "cancel(): no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v1, 0x3

    return v1

    .line 1287
    :cond_11
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v1

    return v1
.end method

.method public enroll([BIILjava/util/ArrayList;)I
    .registers 8
    .param p1, "cryptoToken"    # [B
    .param p2, "groupId"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1313
    .local p4, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1314
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_11

    .line 1315
    const-string v1, "FingerprintService"

    const-string v2, "enroll(): no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const/4 v1, 0x3

    return v1

    .line 1320
    :cond_11
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_AOSP_CONCEPT:Z

    if-nez v1, :cond_16

    .line 1321
    const/4 p3, 0x0

    .line 1325
    :cond_16
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I

    move-result v1

    return v1
.end method

.method public enumerate()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1302
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1303
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_11

    .line 1304
    const-string v1, "FingerprintService"

    const-string v2, "enumerate(): no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/4 v1, 0x3

    return v1

    .line 1307
    :cond_11
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enumerate()I

    move-result v1

    return v1
.end method

.method public getAuthenticatorId()J
    .registers 8

    .line 1339
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1340
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const-wide/16 v1, 0x0

    const-string v3, "FingerprintService"

    if-nez v0, :cond_13

    .line 1341
    const-string/jumbo v4, "getAuthenticatorId(): no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return-wide v1

    .line 1345
    :cond_13
    :try_start_13
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_18

    return-wide v1

    .line 1346
    :catch_18
    move-exception v4

    .line 1347
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAuthenticatorId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    .end local v4    # "e":Ljava/lang/Exception;
    return-wide v1
.end method

.method public synthetic lambda$request$0$FingerprintService$2(Z[BILjava/util/ArrayList;)V
    .registers 8
    .param p1, "hasOutputBuffer"    # Z
    .param p2, "output"    # [B
    .param p3, "ret"    # I
    .param p4, "outBuf"    # Ljava/util/ArrayList;

    .line 1376
    invoke-static {}, Lcom/android/server/biometrics/Utils;->isDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    if-nez p4, :cond_1d

    const/4 v1, -0x1

    goto :goto_21

    :cond_1d
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1377
    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_2d
    iput p3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->mRequestResult:I

    .line 1381
    if-nez p3, :cond_50

    if-eqz p1, :cond_50

    .line 1382
    array-length v0, p2

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1383
    .local v0, "copySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    if-ge v1, v0, :cond_4e

    .line 1384
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, p2, v1

    .line 1383
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 1386
    .end local v1    # "i":I
    :cond_4e
    iput v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->mRequestResult:I

    .line 1388
    .end local v0    # "copySize":I
    :cond_50
    return-void
.end method

.method public remove(II)I
    .registers 6
    .param p1, "groupId"    # I
    .param p2, "biometricId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1292
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1293
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_12

    .line 1294
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "remove(): no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const/4 v1, 0x3

    return v1

    .line 1297
    :cond_12
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->remove(II)I

    move-result v1

    return v1
.end method

.method public request(II[B[B)I
    .registers 14
    .param p1, "cmd"    # I
    .param p2, "param"    # I
    .param p3, "input"    # [B
    .param p4, "output"    # [B

    .line 1354
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1355
    return v1

    .line 1357
    :cond_6
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->mRequestResult:I

    .line 1358
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    .line 1359
    .local v0, "daemon":Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;
    const-string v2, "FingerprintService"

    if-nez v0, :cond_1e

    .line 1360
    const-string/jumbo v1, "request: no fingerprint HAL!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->mRequestResult:I

    return v1

    .line 1364
    :cond_1e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    .local v3, "inVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-eqz p3, :cond_38

    array-length v4, p3

    if-lez v4, :cond_38

    .line 1366
    array-length v4, p3

    move v5, v1

    :goto_2a
    if-ge v5, v4, :cond_38

    aget-byte v6, p3, v5

    .line 1367
    .local v6, "b":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 1371
    :cond_38
    if-eqz p4, :cond_3e

    array-length v4, p4

    if-lez v4, :cond_3e

    const/4 v1, 0x1

    .line 1374
    .local v1, "hasOutputBuffer":Z
    :cond_3e
    :try_start_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1375
    .local v4, "begin":J
    new-instance v6, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$2$4fdE7qldFKwFKtVp6Wtw8INVvA0;

    invoke-direct {v6, p0, v1, p4}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$2$4fdE7qldFKwFKtVp6Wtw8INVvA0;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$2;Z[B)V

    invoke-interface {v0, p1, p2, v3, v6}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V

    .line 1390
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] FP_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->mRequestResult:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_77} :catch_79

    .line 1395
    nop

    .end local v4    # "begin":J
    goto :goto_93

    .line 1393
    :catch_79
    move-exception v4

    .line 1394
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_93
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->mRequestResult:I

    return v2
.end method

.method public resetLockout([B)V
    .registers 4
    .param p1, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1331
    const-string v0, "FingerprintService"

    const-string v1, "Not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    return-void
.end method

.method public sehInstallTAEnd([B)I
    .registers 5
    .param p1, "data"    # [B

    .line 1438
    const/16 v0, 0x2711

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->request(II[B[B)I

    move-result v0

    return v0
.end method

.method public sehInstallTAStart()I
    .registers 4

    .line 1426
    const/16 v0, 0x2711

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->request(II[B[B)I

    move-result v0

    return v0
.end method

.method public sehInstallTAWrite([B)I
    .registers 5
    .param p1, "data"    # [B

    .line 1432
    const/16 v0, 0x2711

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->request(II[B[B)I

    move-result v0

    return v0
.end method
