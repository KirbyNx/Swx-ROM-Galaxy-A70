.class public abstract Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.super Ljava/lang/Object;
.source "BerTLV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
    }
.end annotation


# instance fields
.field protected mLen:I

.field protected mLenLength:I

.field protected mLevel:I

.field protected mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method protected static isSpecialPrimitiveTag(B)Z
    .registers 2
    .param p0, "tagVal"    # B

    .line 49
    const/16 v0, -0x50

    if-eq p0, v0, :cond_b

    const/16 v0, -0x10

    if-ne p0, v0, :cond_9

    goto :goto_b

    .line 52
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public static parse([B)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 3
    .param p0, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 19
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v0

    return-object v0
.end method

.method public static parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 6
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 24
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->isSpecialPrimitiveTag(B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 25
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    return-object v0

    .line 28
    :cond_f
    aget-byte v0, p0, p1

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1c

    .line 29
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>([BIII)V

    return-object v0

    .line 31
    :cond_1c
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    return-object v0
.end method

.method protected static parse([BIII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 6
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 37
    aget-byte v0, p0, p1

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->isSpecialPrimitiveTag(B)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 38
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    return-object v0

    .line 41
    :cond_10
    aget-byte v0, p0, p1

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1f

    .line 42
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>([BIII)V

    return-object v0

    .line 44
    :cond_1f
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    return-object v0
.end method


# virtual methods
.method public getFullLen()I
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v0

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLen()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    return v0
.end method

.method public abstract getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.end method

.method public getTag()Lcom/samsung/ucm/ucmservice/scp/Tag;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    return-object v0
.end method

.method protected parseLength([BI)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    .line 57
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 58
    const/16 v2, 0x7f

    if-le v1, v2, :cond_5d

    .line 59
    and-int/lit16 v1, v1, -0x81

    int-to-short v1, v1

    .line 60
    .local v1, "size":S
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 61
    if-eq v1, v0, :cond_4b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_33

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2b

    .line 63
    add-int/lit8 p2, p2, 0x1

    .line 64
    const/4 v2, 0x0

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    goto :goto_33

    .line 79
    :cond_2b
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v2, "Invalid format (size)"

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_33
    :goto_33
    add-int/2addr p2, v0

    .line 68
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 71
    :cond_3f
    add-int/2addr p2, v0

    .line 72
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 75
    :cond_4b
    add-int/2addr p2, v0

    .line 76
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    .line 77
    nop

    .line 81
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    .line 83
    .end local v1    # "size":S
    :cond_5d
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    return v0
.end method

.method public abstract remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
.end method

.method public setLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .line 94
    iput p1, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLevel:I

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "( tag_len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", len_length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method public updateLenLength()V
    .registers 3

    .line 111
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_a

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    goto :goto_19

    .line 113
    :cond_a
    const/16 v1, 0x100

    if-ge v0, v1, :cond_12

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    goto :goto_19

    .line 115
    :cond_12
    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_19

    .line 116
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLenLength:I

    .line 118
    :cond_19
    :goto_19
    return-void
.end method

.method public abstract updateLength()V
.end method

.method public abstract write([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public write()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->updateLength()V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v0

    new-array v0, v0, [B

    .line 151
    .local v0, "res":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write([BI)I

    .line 152
    return-object v0
.end method

.method public writeLen([BI)I
    .registers 6
    .param p1, "out"    # [B
    .param p2, "outoffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->mLen:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_d

    .line 122
    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 123
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_d
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1e

    .line 125
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outoffset":I
    .local v1, "outoffset":I
    const/16 v2, -0x7f

    aput-byte v2, p1, p2

    .line 126
    and-int/lit16 p2, v0, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    .line 127
    const/4 p2, 0x2

    return p2

    .line 128
    .end local v1    # "outoffset":I
    .restart local p2    # "outoffset":I
    :cond_1e
    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_3a

    .line 129
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outoffset":I
    .restart local v1    # "outoffset":I
    const/16 v2, -0x7e

    aput-byte v2, p1, p2

    .line 130
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "outoffset":I
    .restart local p2    # "outoffset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 131
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "outoffset":I
    .restart local v1    # "outoffset":I
    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 132
    const/4 p2, 0x3

    return p2

    .line 134
    .end local v1    # "outoffset":I
    .restart local p2    # "outoffset":I
    :cond_3a
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
