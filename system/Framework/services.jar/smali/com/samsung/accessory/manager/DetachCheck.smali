.class public Lcom/samsung/accessory/manager/DetachCheck;
.super Ljava/lang/Object;
.source "DetachCheck.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SAccessoryManager_DetachCheck"


# instance fields
.field private mAuthStarted:Z

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private getNfcAdapter()Landroid/nfc/NfcAdapter;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method private requestStartTypeS()[B
    .registers 4

    .line 49
    const-string v0, "SAccessoryManager_DetachCheck"

    const-string v1, "Reqs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    const/4 v1, 0x1

    :try_start_b
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    .line 52
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_21

    .line 54
    :try_start_e
    invoke-direct {p0}, Lcom/samsung/accessory/manager/DetachCheck;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->startCoverAuth()[B

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    .line 55
    :catch_17
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SAccessoryManager_DetachCheck"

    const-string v2, "Fail start cover auth"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0

    .line 52
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method


# virtual methods
.method public isAuthChipExist()Z
    .registers 4

    .line 39
    invoke-direct {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    move-result-object v0

    .line 40
    .local v0, "response":[B
    if-eqz v0, :cond_10

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_10

    .line 41
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    .line 42
    const/4 v1, 0x1

    return v1

    .line 44
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    .line 45
    const/4 v1, 0x0

    return v1
.end method

.method public isAuthChipExistBySensor()I
    .registers 7

    .line 21
    invoke-direct {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    move-result-object v0

    .line 22
    .local v0, "response":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAuthChipExistBySensor length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SAccessoryManager_DetachCheck"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    array-length v2, v0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_54

    aget-byte v2, v0, v1

    const/16 v5, -0x20

    if-eq v2, v5, :cond_39

    aget-byte v2, v0, v1

    const/16 v5, -0x9

    if-ne v2, v5, :cond_54

    .line 25
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFC RF Active or NFC TAG Detected, respose="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    .line 27
    const/4 v1, 0x2

    return v1

    .line 29
    :cond_54
    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5d

    .line 30
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    .line 31
    return v4

    .line 34
    :cond_5d
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    .line 35
    return v1
.end method

.method public requestStopTypeS()V
    .registers 4

    .line 62
    const-string v0, "SAccessoryManager_DetachCheck"

    const-string/jumbo v1, "stopAuth"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_b
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    if-nez v1, :cond_18

    .line 65
    const-string v1, "SAccessoryManager_DetachCheck"

    const-string v2, "Do not call stopAuth because startAuth is not executed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    monitor-exit v0

    return-void

    .line 68
    :cond_18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    .line 69
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_2d

    .line 71
    :try_start_1c
    invoke-direct {p0}, Lcom/samsung/accessory/manager/DetachCheck;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->stopCoverAuth()Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_24

    .line 74
    goto :goto_2c

    .line 72
    :catch_24
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SAccessoryManager_DetachCheck"

    const-string v2, "Fail stop cover auth"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2c
    return-void

    .line 69
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method
