.class public Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
.super Lcom/android/server/biometrics/SemClientExtension;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemFaceClientExtImpl"
.end annotation


# instance fields
.field private mFidoRequestData:[B

.field private mFidoResultData:[B

.field private mHashID:I

.field private mPrivilegedAttr:I

.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/ClientMonitor;ILandroid/os/Bundle;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p2, "client"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p3, "type"    # I
    .param p4, "b"    # Landroid/os/Bundle;

    .line 2417
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 2418
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/server/biometrics/SemClientExtension;-><init>(Lcom/android/server/biometrics/ClientMonitor;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 2411
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mPrivilegedAttr:I

    .line 2412
    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mHashID:I

    .line 2420
    invoke-virtual {p2}, Lcom/android/server/biometrics/ClientMonitor;->getIsRestricted()Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mAttr:Landroid/os/Bundle;

    if-eqz v1, :cond_50

    .line 2422
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->isPrompt()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_33

    .line 2423
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mAttr:Landroid/os/Bundle;

    const-string v3, "SEM_KEY_PRIVILEGED_FLAG"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2424
    .local v0, "privileged":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_49

    .line 2425
    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mPrivilegedAttr:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mPrivilegedAttr:I

    goto :goto_49

    .line 2428
    .end local v0    # "privileged":I
    :cond_33
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mAttr:Landroid/os/Bundle;

    const-string/jumbo v3, "sem_privileged_attr"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mPrivilegedAttr:I

    .line 2429
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2430
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mPrivilegedAttr:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mPrivilegedAttr:I

    .line 2433
    :cond_49
    :goto_49
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mPrivilegedAttr:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_50

    .line 2434
    iput-boolean v2, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mCanIgnoreLockout:Z

    .line 2437
    :cond_50
    invoke-virtual {p2}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mHashID:I

    .line 2438
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    .line 2409
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mPrivilegedAttr:I

    return v0
.end method


# virtual methods
.method public getFidoRequestData()[B
    .registers 4

    .line 2441
    sget-boolean v0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 2442
    sget-object v0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fidoRequestData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mFidoRequestData:[B

    if-nez v2, :cond_18

    const-string/jumbo v2, "null"

    goto :goto_1c

    :cond_18
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    :goto_1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_26
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mFidoRequestData:[B

    return-object v0
.end method

.method public getFidoResultData()[B
    .registers 2

    .line 2452
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mFidoResultData:[B

    return-object v0
.end method

.method public getHashID()I
    .registers 2

    .line 2466
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mHashID:I

    return v0
.end method

.method public setFidoRequestData([B)V
    .registers 2
    .param p1, "data"    # [B

    .line 2448
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mFidoRequestData:[B

    .line 2449
    return-void
.end method

.method public setFidoResultData(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 2456
    .local p1, "Object":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mFidoResultData:[B

    .line 2457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 2458
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mFidoResultData:[B

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 2457
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2460
    .end local v0    # "i":I
    :cond_20
    sget-boolean v0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->DEBUG:Z

    if-eqz v0, :cond_40

    .line 2461
    sget-object v0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fidoResultData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mFidoResultData:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    :cond_40
    return-void
.end method
