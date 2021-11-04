.class public Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;
.super Ljava/lang/Object;
.source "ExecStringCrypto.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExecStringCrypto"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private getDecryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "ret":Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    const-string v1, "dataType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "dataType":Ljava/lang/String;
    const-string v3, "decryptResult"

    const-string v4, "decryptData"

    if-nez v1, :cond_21

    .line 49
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "data":Ljava/lang/String;
    if-eqz v4, :cond_20

    .line 51
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v5

    .line 52
    invoke-static {v4}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    .line 54
    .end local v4    # "data":Ljava/lang/String;
    :cond_20
    goto :goto_33

    .line 55
    :cond_21
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 56
    .local v4, "data":[B
    if-eqz v4, :cond_33

    .line 57
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v5

    .line 58
    invoke-static {v4}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryption([B)[B

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    .line 62
    .end local v4    # "data":[B
    :cond_33
    :goto_33
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v2

    :cond_39
    return-object v2
.end method

.method private getDecryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "ret":Landroid/os/Bundle;
    const-string v1, "dataType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "dataType":Ljava/lang/String;
    const-string v2, "decryptMultipleResult"

    const-string v3, "decryptMultipleData"

    if-nez v1, :cond_29

    .line 97
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 98
    .local v3, "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v4, "listResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_28

    .line 101
    new-instance v5, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecStringCrypto$K-1VKP37u28LcOyHOwaDhMPJZVs;

    invoke-direct {v5, v4}, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecStringCrypto$K-1VKP37u28LcOyHOwaDhMPJZVs;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 102
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 104
    .end local v3    # "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "listResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_28
    goto :goto_4c

    .line 105
    :cond_29
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 106
    .local v3, "data":[B
    const-string/jumbo v4, "paramList0"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 109
    .local v4, "offsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->mergeEncryptedData([BLjava/util/ArrayList;Z)Landroid/util/Pair;

    move-result-object v5

    .line 110
    .local v5, "result":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/util/ArrayList<Ljava/lang/Integer;>;>;"
    if-eqz v5, :cond_4c

    .line 111
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [B

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 112
    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string/jumbo v6, "paramList1"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 116
    .end local v3    # "data":[B
    .end local v4    # "offsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "result":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_4c
    :goto_4c
    return-object v0
.end method

.method private getEncryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;

    .line 23
    const/4 v0, 0x0

    .line 25
    .local v0, "ret":Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    const-string v1, "dataType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "dataType":Ljava/lang/String;
    const-string v3, "encryptResult"

    const-string v4, "encryptData"

    if-nez v1, :cond_21

    .line 27
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, "data":Ljava/lang/String;
    if-eqz v4, :cond_20

    .line 29
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v5

    .line 30
    invoke-static {v4}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    .line 32
    .end local v4    # "data":Ljava/lang/String;
    :cond_20
    goto :goto_33

    .line 33
    :cond_21
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 34
    .local v4, "data":[B
    if-eqz v4, :cond_33

    .line 35
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v5

    .line 36
    invoke-static {v4}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryption([B)[B

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    .line 40
    .end local v4    # "data":[B
    :cond_33
    :goto_33
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v2

    :cond_39
    return-object v2
.end method

.method private getEncryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "ret":Landroid/os/Bundle;
    const-string v1, "dataType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "dataType":Ljava/lang/String;
    const-string v2, "encryptMultipleResult"

    const-string v3, "encryptMultipleData"

    if-nez v1, :cond_29

    .line 70
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 71
    .local v3, "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v4, "listResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_28

    .line 74
    new-instance v5, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecStringCrypto$Zw4mhVVAOGfDGeLTrVpTc0koK2U;

    invoke-direct {v5, v4}, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecStringCrypto$Zw4mhVVAOGfDGeLTrVpTc0koK2U;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 75
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    .end local v3    # "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "listResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_28
    goto :goto_4c

    .line 78
    :cond_29
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 79
    .local v3, "data":[B
    const-string/jumbo v4, "paramList0"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 82
    .local v4, "offsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->mergeEncryptedData([BLjava/util/ArrayList;Z)Landroid/util/Pair;

    move-result-object v5

    .line 83
    .local v5, "result":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/util/ArrayList<Ljava/lang/Integer;>;>;"
    if-eqz v5, :cond_4c

    .line 84
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [B

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 85
    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string/jumbo v6, "paramList1"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 89
    .end local v3    # "data":[B
    .end local v4    # "offsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "result":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_4c
    :goto_4c
    return-object v0
.end method

.method static synthetic lambda$getDecryptedMultipleData$1(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 3
    .param p0, "listResult"    # Ljava/util/ArrayList;
    .param p1, "data"    # Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getEncryptedMultipleData$0(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 3
    .param p0, "listResult"    # Ljava/util/ArrayList;
    .param p1, "data"    # Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private mergeEncryptedData([BLjava/util/ArrayList;Z)Landroid/util/Pair;
    .registers 15
    .param p1, "data"    # [B
    .param p3, "isEncrypt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 122
    .local p2, "offsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "resultOffsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_82

    if-eqz p2, :cond_82

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_12

    goto :goto_82

    .line 129
    :cond_12
    :try_start_12
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 131
    .local v3, "from":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 132
    .local v5, "offset":I
    move v6, v5

    .line 134
    .local v6, "to":I
    invoke-static {p1, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 135
    .local v7, "cur":[B
    if-eqz p3, :cond_38

    invoke-static {v7}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryption([B)[B

    move-result-object v8

    goto :goto_3c

    :cond_38
    invoke-static {v7}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryption([B)[B

    move-result-object v8

    .line 137
    .local v8, "cry":[B
    :goto_3c
    if-nez v8, :cond_65

    .line 138
    const-string v4, "ExecStringCrypto"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mergeEncryptedData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_50

    const-string v10, "en"

    goto :goto_52

    :cond_50
    const-string v10, "de"

    :goto_52
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "crypt failed !!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    return-object v1

    .line 142
    :cond_65
    array-length v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 145
    add-int/2addr v3, v6

    .line 146
    .end local v5    # "offset":I
    .end local v7    # "cur":[B
    .end local v8    # "cry":[B
    goto :goto_1c

    .line 147
    .end local v6    # "to":I
    :cond_72
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_76} :catch_7d

    .line 151
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "from":I
    .local v1, "resultByteArray":[B
    nop

    .line 153
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 148
    .end local v1    # "resultByteArray":[B
    :catch_7d
    move-exception v2

    .line 149
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 150
    return-object v1

    .line 125
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_82
    :goto_82
    return-object v1
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 7
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "actionNo"    # I

    .line 158
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ExecStringCrypto"

    const-string v2, "ActionSecurityUtil"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    if-eqz p1, :cond_24

    .line 161
    sparse-switch p3, :sswitch_data_26

    goto :goto_24

    .line 172
    :sswitch_10
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->getDecryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 169
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->getEncryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 166
    :sswitch_1a
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->getDecryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 163
    :sswitch_1f
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->getEncryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 177
    :cond_24
    :goto_24
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_26
    .sparse-switch
        0x120003 -> :sswitch_1f
        0x120004 -> :sswitch_1a
        0x120010 -> :sswitch_15
        0x120011 -> :sswitch_10
    .end sparse-switch
.end method
