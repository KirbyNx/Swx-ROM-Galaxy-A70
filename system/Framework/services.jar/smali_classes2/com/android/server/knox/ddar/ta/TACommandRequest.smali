.class public Lcom/android/server/knox/ddar/ta/TACommandRequest;
.super Ljava/lang/Object;
.source "TACommandRequest.java"


# static fields
.field public static final HEADER_SIZE:I = 0x64

.field public static final MAX_BUFFER_SIZE:I = 0x500000

.field public static final MAX_DATA_TRANSACTION_SIZE:I = 0xc00

.field public static final PAYLOAD_SIZE:I = 0xb9c

.field private static final TAG:Ljava/lang/String; = "TACommandRequest"


# instance fields
.field public mCommandId:I

.field public mLength:I

.field public mMagicNum:[B

.field public mOffset:I

.field public mRequest:[B

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mVersion:I

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mMagicNum:[B

    .line 36
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mLength:I

    .line 37
    iput v2, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mOffset:I

    .line 39
    iput v0, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mCommandId:I

    .line 40
    iput-object v1, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    .line 48
    return-void
.end method


# virtual methods
.method public dump()V
    .registers 7

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mCommandId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TACommandRequest"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    .local v0, "hex":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    iget-object v4, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    array-length v5, v4

    if-ge v2, v5, :cond_6d

    .line 76
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v4, v4, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v1

    const-string v4, "0x%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v4, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    array-length v4, v4

    if-eq v2, v4, :cond_6a

    .line 78
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 80
    .end local v2    # "i":I
    :cond_6d
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "outFile":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 86
    .local v3, "bw":Ljava/io/BufferedWriter;
    :try_start_7e
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/mnt/sdcard/sendbuf.txt"

    invoke-direct {v4, v5, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 87
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v1

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_93} :catch_a8
    .catchall {:try_start_7e .. :try_end_93} :catchall_a6

    .line 93
    nop

    .line 94
    :try_start_94
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 96
    nop

    .line 97
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_9b} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9b} :catch_9c

    .line 103
    :cond_9b
    :goto_9b
    goto :goto_b7

    .line 101
    :catch_9c
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_b7

    .line 99
    :catch_a1
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_9b

    .line 92
    :catchall_a6
    move-exception v1

    goto :goto_b8

    .line 89
    :catch_a8
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    :try_start_a9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_a6

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_b1

    .line 94
    :try_start_ae
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 96
    :cond_b1
    if-eqz v2, :cond_9b

    .line 97
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b6} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b6} :catch_9c

    goto :goto_9b

    .line 105
    :goto_b7
    return-void

    .line 93
    :goto_b8
    if-eqz v3, :cond_c2

    .line 94
    :try_start_ba
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_c2

    .line 101
    :catch_be
    move-exception v4

    goto :goto_c8

    .line 99
    :catch_c0
    move-exception v4

    goto :goto_cc

    .line 96
    :cond_c2
    :goto_c2
    if-eqz v2, :cond_cf

    .line 97
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c7} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c7} :catch_be

    goto :goto_cf

    .line 102
    .local v4, "e":Ljava/lang/Exception;
    :goto_c8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d0

    .line 100
    .local v4, "e":Ljava/io/IOException;
    :goto_cc
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    .end local v4    # "e":Ljava/io/IOException;
    :cond_cf
    :goto_cf
    nop

    .line 104
    :goto_d0
    throw v1
.end method

.method public init(I[BI[B)V
    .registers 7
    .param p1, "version"    # I
    .param p2, "magic"    # [B
    .param p3, "cmdId"    # I
    .param p4, "request"    # [B

    .line 56
    iput p1, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mVersion:I

    .line 57
    iput-object p2, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mMagicNum:[B

    .line 58
    iput p3, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mCommandId:I

    .line 59
    iput-object p4, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mRequest:[B

    .line 60
    const/4 v0, 0x0

    if-eqz p4, :cond_f

    .line 61
    array-length v1, p4

    iput v1, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mLength:I

    goto :goto_11

    .line 63
    :cond_f
    iput v0, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mLength:I

    .line 65
    :goto_11
    iput v0, p0, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mOffset:I

    .line 66
    return-void
.end method
