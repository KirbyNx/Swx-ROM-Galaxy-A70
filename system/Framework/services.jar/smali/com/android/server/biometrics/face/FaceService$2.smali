.class Lcom/android/server/biometrics/face/FaceService$2;
.super Ljava/lang/Object;
.source "FaceService.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 1728
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(JI)I
    .registers 20
    .param p1, "operationId"    # J
    .param p3, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1731
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v3}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v3

    .line 1732
    .local v3, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const-string v4, "GFaceService"

    if-nez v3, :cond_15

    .line 1733
    const-string v5, "authenticate(): no face HAL!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const/4 v4, 0x3

    return v4

    .line 1736
    :cond_15
    sget-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v5, :cond_1e

    .line 1737
    invoke-interface {v3, v1, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    move-result v4

    return v4

    .line 1739
    :cond_1e
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v5

    const/4 v6, 0x2

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->startOperation(I)V
    invoke-static {v5, v6}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$18300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V

    .line 1741
    sget-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FACE_JDM_HAL:Z

    const-string/jumbo v6, "ms) RESULT: "

    if-eqz v5, :cond_55

    .line 1742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1743
    .local v7, "begin":J
    invoke-interface {v3, v1, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    move-result v5

    .line 1744
    .local v5, "result":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "authenticate FINISH ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    .end local v7    # "begin":J
    goto :goto_b7

    .line 1746
    .end local v5    # "result":I
    :cond_55
    const/4 v5, 0x0

    .line 1747
    .local v5, "fidoRequestData":[B
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1748
    .local v7, "inVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v8, v0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v8}, Lcom/android/server/biometrics/face/FaceService;->getFaceClientExtImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    .line 1749
    .local v8, "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    if-eqz v8, :cond_69

    .line 1750
    invoke-virtual {v8}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->getFidoRequestData()[B

    move-result-object v5

    .line 1752
    :cond_69
    if-eqz v5, :cond_7e

    array-length v9, v5

    if-lez v9, :cond_7e

    .line 1753
    array-length v9, v5

    const/4 v10, 0x0

    :goto_70
    if-ge v10, v9, :cond_7e

    aget-byte v11, v5, v10

    .line 1754
    .local v11, "b":B
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    .end local v11    # "b":B
    add-int/lit8 v10, v10, 0x1

    goto :goto_70

    .line 1757
    :cond_7e
    iget-object v9, v0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v9}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v9

    check-cast v9, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    .line 1758
    .local v9, "sehDaemon":Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1759
    .local v10, "begin":J
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v12

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getSecurityMode()I
    invoke-static {v12}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$18400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v12

    invoke-interface {v9, v1, v2, v12, v7}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehAuthenticate(JILjava/util/ArrayList;)I

    move-result v12

    .line 1760
    .local v12, "result":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sehAuthenticate FINISH ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v12

    .line 1762
    .end local v7    # "inVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v8    # "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    .end local v9    # "sehDaemon":Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
    .end local v10    # "begin":J
    .end local v12    # "result":I
    .local v5, "result":I
    :goto_b7
    return v5
.end method

.method public cancel()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1768
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1769
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const-string v1, "GFaceService"

    if-nez v0, :cond_11

    .line 1770
    const-string v2, "cancel(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const/4 v1, 0x3

    return v1

    .line 1773
    :cond_11
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v2, :cond_1a

    .line 1774
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I

    move-result v1

    return v1

    .line 1776
    :cond_1a
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v2

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getLockoutMode()I
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$18500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    .line 1777
    const-string v2, "cancel(): ignore cancel() in lockout mode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    return v3

    .line 1780
    :cond_2b
    const/4 v2, 0x3

    .line 1781
    .local v2, "result":I
    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v4}, Lcom/android/server/biometrics/face/FaceService;->access$18600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 1782
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->cancelDaemon()I
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v2

    .line 1783
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsOperationStarted:Z
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1785
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getHalDeviceId()J

    move-result-wide v4

    const/4 v6, 0x5

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->semClientOnError(JII)V
    invoke-static {v1, v4, v5, v6, v3}, Lcom/android/server/biometrics/face/FaceService;->access$18701(Lcom/android/server/biometrics/face/FaceService;JII)V

    .line 1787
    :cond_50
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->stopOperation()V
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    goto :goto_5d

    .line 1789
    :cond_58
    const-string v3, "cancel(): skipped as currentClinet is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :goto_5d
    return v2
.end method

.method public enroll([BIILjava/util/ArrayList;)I
    .registers 14
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

    .line 1824
    .local p4, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1825
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const/4 v1, 0x3

    const-string v2, "GFaceService"

    if-nez v0, :cond_11

    .line 1826
    const-string v3, "enroll(): no face HAL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    return v1

    .line 1829
    :cond_11
    if-eqz p1, :cond_86

    array-length v3, p1

    if-nez v3, :cond_17

    goto :goto_86

    .line 1833
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1834
    .local v1, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    array-length v4, p1

    if-ge v3, v4, :cond_2c

    .line 1835
    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1837
    .end local v3    # "i":I
    :cond_2c
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v3, :cond_35

    .line 1838
    invoke-interface {v0, v1, p3, p4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result v2

    return v2

    .line 1840
    :cond_35
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->startOperation(I)V
    invoke-static {v3, v4}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$18300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V

    .line 1842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "daemon token  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4d

    const-string/jumbo v4, "null"

    goto :goto_51

    :cond_4d
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    :goto_51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1845
    .local v3, "begin":J
    invoke-interface {v0, v1, p3, p4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result v5

    .line 1846
    .local v5, "result":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enroll FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    return v5

    .line 1830
    .end local v1    # "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "begin":J
    .end local v5    # "result":I
    :cond_86
    :goto_86
    const-string v3, "enroll(): token is null or 0"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    return v1
.end method

.method public enumerate()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1810
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1811
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const-string v1, "GFaceService"

    if-nez v0, :cond_11

    .line 1812
    const-string v2, "enumerate(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const/4 v1, 0x3

    return v1

    .line 1815
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1816
    .local v2, "begin":J
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enumerate()I

    move-result v4

    .line 1817
    .local v4, "result":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enumerate FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    return v4
.end method

.method public remove(II)I
    .registers 11
    .param p1, "groupId"    # I
    .param p2, "biometricId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1797
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1798
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const-string v1, "GFaceService"

    if-nez v0, :cond_12

    .line 1799
    const-string/jumbo v2, "remove(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    const/4 v1, 0x3

    return v1

    .line 1802
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1803
    .local v2, "begin":J
    invoke-interface {v0, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->remove(I)I

    move-result v4

    .line 1804
    .local v4, "result":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    return v4
.end method

.method public resetLockout([B)V
    .registers 10
    .param p1, "cryptoToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1853
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1854
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const-string v1, "GFaceService"

    if-nez v0, :cond_11

    .line 1855
    const-string/jumbo v2, "resetLockout(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    return-void

    .line 1858
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1859
    .local v2, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v4, p1

    if-ge v3, v4, :cond_26

    .line 1860
    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1859
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1862
    .end local v3    # "i":I
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1863
    .local v3, "begin":J
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->resetLockout(Ljava/util/ArrayList;)I

    .line 1864
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetLockout FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    return-void
.end method

.method public sehInstallTAEnd([B)I
    .registers 12
    .param p1, "data"    # [B

    .line 1916
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    .line 1917
    .local v0, "daemon":Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
    const/4 v1, 0x3

    const-string v2, "GFaceService"

    if-nez v0, :cond_14

    .line 1918
    const-string/jumbo v3, "sehInstallTAEnd(): no face HAL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    return v1

    .line 1922
    :cond_14
    :try_start_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1923
    .local v3, "inVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-eqz p1, :cond_2f

    array-length v4, p1

    if-lez v4, :cond_2f

    .line 1924
    array-length v4, p1

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_2f

    aget-byte v6, p1, v5

    .line 1925
    .local v6, "b":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    nop

    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 1928
    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1929
    .local v4, "begin":J
    invoke-interface {v0, v3}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehFinishTaInstallation(Ljava/util/ArrayList;)I

    move-result v6

    .line 1930
    .local v6, "result":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sehFinishTaInstallation FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_5a} :catch_5b

    .line 1931
    return v6

    .line 1932
    .end local v3    # "inVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "begin":J
    .end local v6    # "result":I
    :catch_5b
    move-exception v3

    .line 1933
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehInstallTAEnd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    .end local v3    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public sehInstallTAStart()I
    .registers 10

    .line 1870
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    .line 1871
    .local v0, "daemon":Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
    const/4 v1, 0x3

    const-string v2, "GFaceService"

    if-nez v0, :cond_14

    .line 1872
    const-string/jumbo v3, "sehInstallTAStart(): no face HAL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    return v1

    .line 1876
    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1877
    .local v3, "begin":J
    invoke-interface {v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPrepareTaInstallation()I

    move-result v5

    .line 1878
    .local v5, "result":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sehPrepareTaInstallation FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3f} :catch_40

    .line 1879
    return v5

    .line 1880
    .end local v3    # "begin":J
    .end local v5    # "result":I
    :catch_40
    move-exception v3

    .line 1881
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehInstallTAStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    .end local v3    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public sehInstallTAWrite([B)I
    .registers 12
    .param p1, "data"    # [B

    .line 1889
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    .line 1890
    .local v0, "daemon":Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
    const/4 v1, 0x0

    .line 1891
    .local v1, "hidlMem":Landroid/os/HidlMemory;
    const/4 v2, 0x3

    const-string v3, "GFaceService"

    if-nez v0, :cond_15

    .line 1892
    const-string/jumbo v4, "sehInstallTAWrite(): no face HAL!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return v2

    .line 1896
    :cond_15
    :try_start_15
    invoke-static {p1}, Landroid/os/HidlMemoryUtil;->byteArrayToHidlMemory([B)Landroid/os/HidlMemory;

    move-result-object v4

    move-object v1, v4

    .line 1897
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1898
    .local v4, "begin":J
    invoke-interface {v0, v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehInstallTaDataChunk(Landroid/os/HidlMemory;)I

    move-result v6

    .line 1899
    .local v6, "result":I
    invoke-virtual {v1}, Landroid/os/HidlMemory;->close()V

    .line 1900
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sehInstallTaDataChunk FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_48} :catch_49

    .line 1901
    return v6

    .line 1902
    .end local v4    # "begin":J
    .end local v6    # "result":I
    :catch_49
    move-exception v4

    .line 1903
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sehInstallTAWrite: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    if-eqz v1, :cond_6a

    .line 1906
    :try_start_65
    invoke-virtual {v1}, Landroid/os/HidlMemory;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    .line 1908
    goto :goto_6a

    .line 1907
    :catch_69
    move-exception v3

    .line 1911
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6a
    :goto_6a
    return v2
.end method
