.class Lcom/android/server/PACMService$PAC_Packet;
.super Ljava/lang/Object;
.source "PACMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PACMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PAC_Packet"
.end annotation


# static fields
.field public static final MAX_PACKET_SIZE:I = 0x200

.field public static final PAC_PACKET_CMD_AT_CMD_CHECK:I = 0x1

.field public static final PAC_PACKET_CMD_GET_STATUS:I = 0x0

.field public static final PAC_PACKET_TYPE_AT_CMD:I = 0x2

.field public static final PAC_PACKET_TYPE_AT_CMD_ATD_DDEX:I = 0x4

.field public static final PAC_PACKET_TYPE_AT_CMD_RET:I = 0x3

.field public static final PAC_PACKET_TYPE_MODE:I = 0x0

.field public static final PAC_PACKET_TYPE_MODE_RET:I = 0x1


# direct methods
.method constructor <init>()V
    .registers 1

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommand([B)I
    .registers 4
    .param p0, "buf"    # [B

    .line 594
    const/high16 v0, -0x10000000

    if-nez p0, :cond_5

    .line 595
    return v0

    .line 598
    :cond_5
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_21

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buf len is abnormal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PACMService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return v0

    .line 603
    :cond_21
    new-array v0, v2, [B

    const/4 v1, 0x0

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    .line 604
    .local v0, "cmd":[B
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    return v1
.end method

.method public static getItem([BI)[B
    .registers 11
    .param p0, "buf"    # [B
    .param p1, "item_type"    # I

    .line 608
    const/4 v0, 0x0

    .line 610
    .local v0, "ret":[B
    const/16 v1, 0x200

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 611
    .local v1, "scan":Ljava/nio/ByteBuffer;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 613
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 614
    .local v2, "item_count":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "item_count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PACMService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v3, 0x0

    .local v3, "type":I
    const/4 v5, 0x0

    .line 618
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_40
    if-ge v6, v2, :cond_7b

    .line 619
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 620
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 622
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    if-ne v3, p1, :cond_70

    .line 624
    new-array v0, v5, [B

    .line 625
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 626
    goto :goto_7b

    .line 628
    :cond_70
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 618
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 631
    .end local v6    # "i":I
    :cond_7b
    :goto_7b
    return-object v0
.end method

.method public static getVersion([B)I
    .registers 2
    .param p0, "buf"    # [B

    .line 586
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 587
    return v0

    .line 590
    :cond_4
    aget-byte v0, p0, v0

    return v0
.end method

.method public static initPacket(I)[B
    .registers 5
    .param p0, "cmd"    # I

    .line 635
    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 638
    .local v1, "ret":[B
    const/16 v2, 0x200

    :try_start_5
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 640
    .local v2, "scan":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 641
    int-to-short v3, p0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 643
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 644
    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_20

    .line 648
    nop

    .end local v2    # "scan":Ljava/nio/ByteBuffer;
    goto :goto_25

    .line 645
    :catch_20
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 647
    const/4 v1, 0x0

    .line 650
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_25
    return-object v1
.end method

.method public static putItem([BLjava/lang/Object;I)[B
    .registers 13
    .param p0, "buf"    # [B
    .param p2, "item_type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BTT;I)[B"
        }
    .end annotation

    .line 654
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 655
    .local v1, "scan":Ljava/nio/ByteBuffer;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 656
    const/4 v3, 0x0

    .line 658
    .local v3, "ret":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 659
    .local v4, "item_size":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 661
    const/4 v5, 0x0

    .local v5, "type":I
    const/4 v7, 0x0

    .line 662
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_29
    if-ge v8, v4, :cond_3e

    .line 663
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 664
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 666
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 662
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 669
    .end local v8    # "i":I
    :cond_3e
    if-eq p2, v6, :cond_43

    if-eq p2, v2, :cond_43

    goto :goto_61

    .line 672
    :cond_43
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    const/4 v8, 0x4

    add-int/2addr v6, v8

    if-ge v6, v0, :cond_74

    .line 673
    int-to-short v0, p2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 674
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 675
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 683
    :goto_61
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 684
    .local v0, "total_size":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 686
    new-array v3, v0, [B

    .line 687
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 688
    add-int/lit8 v6, v4, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 690
    return-object v3

    .line 677
    .end local v0    # "total_size":I
    :cond_74
    const-string v0, "PACMService"

    const-string v2, "Packet is full, Can\'t put item to packet"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v0, 0x0

    return-object v0
.end method
