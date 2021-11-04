.class public Lcom/samsung/ucm/ucmservice/EFSPropertiesHelper;
.super Ljava/lang/Object;
.source "EFSPropertiesHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EFSPropertiesHelper"

.field private static final UCM_ODE_MODE_FILE_PATH:Ljava/lang/String; = "/efs/sec_efs/ucm_ode_mode"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getODESettingsConfiguration()Landroid/os/Bundle;
    .registers 8

    .line 24
    const-string v0, "EFSPropertiesHelper"

    const-string v1, "getODESettingsConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v1, "responseBundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v2

    .line 29
    .local v2, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    if-nez v2, :cond_13

    .line 31
    return-object v1

    .line 35
    :cond_13
    const/4 v3, 0x0

    .line 36
    .local v3, "isUcmEnabled":Z
    :try_start_14
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/efs/sec_efs/ucm_ode_mode"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_20} :catch_42
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_20} :catch_40
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_20} :catch_3b

    .line 37
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_20
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "str":Ljava/lang/String;
    const-string v6, "2"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_31

    if-eqz v6, :cond_2d

    .line 39
    const/4 v3, 0x1

    .line 41
    .end local v5    # "str":Ljava/lang/String;
    :cond_2d
    :try_start_2d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_30} :catch_42
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_30} :catch_40
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_3b

    goto :goto_43

    .line 36
    :catchall_31
    move-exception v5

    :try_start_32
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception v6

    :try_start_37
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "responseBundle":Landroid/os/Bundle;
    .end local v2    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v3    # "isUcmEnabled":Z
    :goto_3a
    throw v5
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3b} :catch_42
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_3b} :catch_40
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3b} :catch_3b

    .line 43
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "responseBundle":Landroid/os/Bundle;
    .restart local v2    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v3    # "isUcmEnabled":Z
    :catch_3b
    move-exception v4

    .line 44
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    .line 42
    .end local v4    # "e":Ljava/io/IOException;
    :catch_40
    move-exception v4

    goto :goto_43

    .line 41
    :catch_42
    move-exception v4

    .line 45
    :goto_43
    nop

    .line 47
    :goto_44
    if-eqz v3, :cond_51

    .line 48
    const-string v4, "Device is encrypted as UCM"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v4, 0x1

    const-string v5, "odeEnabled"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    :cond_51
    iget-object v4, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 53
    .local v4, "csNameByte":[B
    if-eqz v4, :cond_92

    array-length v5, v4

    if-lez v5, :cond_92

    .line 55
    :try_start_58
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 56
    .local v5, "agentId":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "agentId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v6, "id"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_58 .. :try_end_78} :catch_79

    .line 60
    .end local v5    # "agentId":Ljava/lang/String;
    goto :goto_92

    .line 58
    :catch_79
    move-exception v5

    .line 59
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The exception occurs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_92
    :goto_92
    iget-object v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    const-string v5, "odeSignature"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 63
    iget-object v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    const-string v5, "aid"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 64
    iget v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSPropertiesHelper;->isVaildStorageType(I)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 65
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    iget v5, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    aget-object v0, v0, v5

    const-string v5, "storagetype"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_b3
    iget v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSPropertiesHelper;->isVaildSCPType(I)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 67
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    iget v5, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    aget-object v0, v0, v5

    const-string v5, "scptype"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_c6
    return-object v1
.end method

.method private static isVaildSCPType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 79
    if-ltz p0, :cond_9

    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_9

    .line 80
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private static isVaildStorageType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 73
    if-ltz p0, :cond_9

    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_9

    .line 74
    const/4 v0, 0x1

    return v0

    .line 75
    :cond_9
    const/4 v0, 0x0

    return v0
.end method
