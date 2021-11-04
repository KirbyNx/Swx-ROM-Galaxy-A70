.class public Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
.super Ljava/lang/Object;
.source "CoverInfo.java"


# instance fields
.field private HexDecimalTable:[Ljava/lang/String;

.field private chip_id:[B

.field private color:I

.field private cover_id:[B

.field private id:Ljava/lang/String;

.field private idVersion:I

.field private model:I

.field private month:I

.field private reserved:B

.field private serial:Ljava/lang/String;

.field private smapp:I

.field private sn:[B

.field private type:I

.field private url:I

.field private valid:Z

.field private vendorInfo:[B

.field private year:I


# direct methods
.method public constructor <init>([B)V
    .registers 42
    .param p1, "id"    # [B

    .line 23
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v2, 0x17

    new-array v3, v2, [B

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    .line 6
    const/16 v3, 0xe

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->sn:[B

    .line 7
    const/16 v3, 0x9

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->cover_id:[B

    .line 18
    const/4 v3, 0x2

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    .line 21
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    .line 111
    const-string v4, "0"

    const-string v5, "1"

    const-string v6, "2"

    const-string v7, "3"

    const-string v8, "4"

    const-string v9, "5"

    const-string v10, "6"

    const-string v11, "7"

    const-string v12, "8"

    const-string v13, "9"

    const-string v14, "A"

    const-string v15, "B"

    const-string v16, "C"

    const-string v17, "D"

    const-string v18, "E"

    const-string v19, "F"

    const-string v20, "G"

    const-string v21, "H"

    const-string v22, "J"

    const-string v23, "K"

    const-string v24, "L"

    const-string v25, "M"

    const-string v26, "N"

    const-string v27, "P"

    const-string v28, "Q"

    const-string v29, "R"

    const-string v30, "S"

    const-string v31, "T"

    const-string v32, "V"

    const-string v33, "W"

    const-string v34, "X"

    const-string v35, "Y"

    const-string v36, "Z"

    const-string v37, "I"

    const-string v38, "O"

    const-string v39, "U"

    filled-new-array/range {v4 .. v39}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    .line 24
    if-eqz v1, :cond_82

    array-length v3, v1

    if-ne v3, v2, :cond_82

    .line 25
    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    .line 26
    invoke-direct/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->setId()V

    .line 27
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    .line 29
    :cond_82
    return-void
.end method

.method private convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "hex"    # Ljava/lang/String;

    .line 119
    if-eqz p1, :cond_48

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_48

    .line 123
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 125
    .local v1, "index":I
    :goto_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 126
    add-int/lit8 v2, v1, 0x2

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "subString":Ljava/lang/String;
    const/16 v3, 0x10

    :try_start_1d
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 129
    .local v3, "_hexIndex":I
    const/16 v4, 0xff

    if-ne v3, v4, :cond_2b

    .line 130
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 131
    :cond_2b
    if-ltz v3, :cond_3a

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3a

    .line 132
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 134
    :cond_3a
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_3f} :catch_40

    .line 138
    .end local v3    # "_hexIndex":I
    :goto_3f
    goto :goto_41

    .line 136
    :catch_40
    move-exception v3

    .line 139
    .end local v1    # "subString":Ljava/lang/String;
    :goto_41
    move v1, v2

    goto :goto_f

    .line 140
    .end local v2    # "index":I
    .local v1, "index":I
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 120
    .end local v0    # "result":Ljava/lang/StringBuilder;
    .end local v1    # "index":I
    :cond_48
    :goto_48
    const/4 v0, 0x0

    return-object v0
.end method

.method private setId()V
    .registers 6

    .line 33
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->sn:[B

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->cover_id:[B

    const/16 v4, 0x9

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->sn:[B

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->cover_id:[B

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->id:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->year:I

    .line 38
    const/4 v1, 0x4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->month:I

    .line 39
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->model:I

    .line 40
    const/16 v1, 0xf

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->smapp:I

    .line 41
    const/16 v1, 0x10

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->color:I

    .line 42
    const/16 v1, 0x11

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 44
    const/16 v1, 0x12

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->idVersion:I

    .line 45
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    const/16 v3, 0x13

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    .line 46
    const/16 v2, 0x14

    aget-byte v2, v0, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 47
    const/16 v1, 0x15

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    .line 48
    const/16 v1, 0x16

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->reserved:B

    .line 49
    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .registers 7
    .param p1, "input"    # [B

    .line 144
    if-eqz p1, :cond_28

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_23

    .line 147
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p1, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 149
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 151
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_28
    const-string/jumbo v0, "null"

    return-object v0
.end method

.method public getColor()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->color:I

    return v0
.end method

.method public getCoverId()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()[B
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    return-object v0
.end method

.method public getIdVersion()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->idVersion:I

    return v0
.end method

.method public getModel()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->model:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->month:I

    return v0
.end method

.method public getReserved()B
    .registers 2

    .line 108
    iget-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->reserved:B

    return v0
.end method

.method public getSmapp()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->smapp:I

    return v0
.end method

.method public getSn()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    return v0
.end method

.method public getUrl()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    return v0
.end method

.method public getVendorInfo()[B
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->vendorInfo:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->year:I

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    return v0
.end method

.method public setTYpe(I)V
    .registers 2
    .param p1, "coverType"    # I

    .line 92
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 93
    return-void
.end method
