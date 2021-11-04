.class public Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
.super Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.source "PrimitiveBerTLV.java"


# instance fields
.field private mValue:[B


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V
    .registers 6
    .param p1, "tag"    # Lcom/samsung/ucm/ucmservice/scp/Tag;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrimitiveBerTLV :: tag:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BERTLV::Prim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->isSpecialPrimitiveTag(B)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_3b

    .line 11
    :cond_33
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v1, "Inconsistent tag"

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLevel:I

    .line 14
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    .line 15
    array-length v1, p2

    iput v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    .line 16
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    .line 17
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    return-void
.end method

.method protected constructor <init>([BIII)V
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    .line 21
    iput p4, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLevel:I

    .line 22
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>([BI)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    .line 23
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v0

    add-int/2addr p2, v0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->parseLength([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 25
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getFullLen()I

    move-result v0

    if-gt v0, p3, :cond_2b

    .line 28
    iget v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    .line 29
    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    return-void

    .line 26
    :cond_2b
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format exception (buffer size max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getFullLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 3
    .param p1, "tag"    # Lcom/samsung/ucm/ucmservice/scp/Tag;

    .line 67
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0, p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 68
    return-object p0

    .line 70
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()[B
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    return-object v0
.end method

.method public remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
    .registers 2
    .param p1, "tag"    # Lcom/samsung/ucm/ucmservice/scp/Tag;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->updateLength()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_30

    .line 37
    nop

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLevel:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_21

    .line 41
    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 43
    .end local v1    # "i":I
    :cond_21
    const-string v1, "Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 35
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :catch_30
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method public updateLength()V
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->updateLenLength()V

    .line 64
    return-void
.end method

.method public write([BI)I
    .registers 7
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->updateLenLength()V

    .line 54
    move v0, p2

    .line 55
    .local v0, "offset":I
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->write([BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->writeLen([BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mValue:[B

    iget v2, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget v1, p0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->mLen:I

    add-int/2addr v0, v1

    .line 59
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getFullLen()I

    move-result v1

    return v1
.end method
