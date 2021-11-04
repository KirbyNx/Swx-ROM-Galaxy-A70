.class public Lcom/android/server/knox/ddar/ta/TACommandResponse;
.super Ljava/lang/Object;
.source "TACommandResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TACommandResponse"


# instance fields
.field public mErrorMsg:Ljava/lang/String;

.field public mResponse:[B

.field public mResponseCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponseCode:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .registers 5
    .param p1, "responseId"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "response"    # [B

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponseCode:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    .line 41
    iput p1, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponseCode:I

    .line 42
    iput-object p2, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    .line 44
    return-void
.end method


# virtual methods
.method public dump()V
    .registers 7

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TACommandResponse"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    .local v0, "hex":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    iget-object v4, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    array-length v5, v4

    if-ge v2, v5, :cond_58

    .line 51
    if-lez v2, :cond_3f

    aget-byte v5, v4, v2

    if-eqz v5, :cond_3f

    add-int/lit8 v5, v2, -0x1

    aget-byte v4, v4, v5

    if-nez v4, :cond_3f

    .line 52
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_3f
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    aget-byte v5, v5, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%02X "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 56
    .end local v2    # "i":I
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "outFile":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 61
    .local v3, "bw":Ljava/io/BufferedWriter;
    :try_start_63
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/mnt/sdcard/respbuf.txt"

    invoke-direct {v4, v5, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 62
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v1

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_78} :catch_8d
    .catchall {:try_start_63 .. :try_end_78} :catchall_8b

    .line 68
    nop

    .line 69
    :try_start_79
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 71
    nop

    .line 72
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_80} :catch_86
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_80} :catch_81

    .line 78
    :cond_80
    :goto_80
    goto :goto_9c

    .line 76
    :catch_81
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_9c

    .line 74
    :catch_86
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_80

    .line 67
    :catchall_8b
    move-exception v1

    goto :goto_9d

    .line 64
    :catch_8d
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_8b

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_96

    .line 69
    :try_start_93
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 71
    :cond_96
    if-eqz v2, :cond_80

    .line 72
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9b} :catch_86
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9b} :catch_81

    goto :goto_80

    .line 80
    :goto_9c
    return-void

    .line 68
    :goto_9d
    if-eqz v3, :cond_a7

    .line 69
    :try_start_9f
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_a7

    .line 76
    :catch_a3
    move-exception v4

    goto :goto_ad

    .line 74
    :catch_a5
    move-exception v4

    goto :goto_b1

    .line 71
    :cond_a7
    :goto_a7
    if-eqz v2, :cond_b4

    .line 72
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_ac} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_ac} :catch_a3

    goto :goto_b4

    .line 77
    .local v4, "e":Ljava/lang/Exception;
    :goto_ad
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b5

    .line 75
    .local v4, "e":Ljava/io/IOException;
    :goto_b1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    .end local v4    # "e":Ljava/io/IOException;
    :cond_b4
    :goto_b4
    nop

    .line 79
    :goto_b5
    throw v1
.end method
