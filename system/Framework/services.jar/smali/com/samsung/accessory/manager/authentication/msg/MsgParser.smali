.class public Lcom/samsung/accessory/manager/authentication/msg/MsgParser;
.super Ljava/lang/Object;
.source "MsgParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;
    }
.end annotation


# static fields
.field public static final PRODUCT_T9MF:I = 0x33

.field public static final PRODUCT_W6MA:I = 0x55


# instance fields
.field private final RES_ATQS:I

.field private final RES_FIRMWARE:I

.field private final RES_KEY_CHANGE:I

.field private final RES_PUB_KEY:I

.field private final RES_READ_ID:I

.field private final RES_REQ_EXTRA:I

.field private final RES_REQ_UNIFIED3RD:I

.field private final RES_REQ_URL:I

.field private final RES_SEC_PUB_KEY:I

.field private final RES_VERIFICATION:I

.field private final RES_WRITE_ID:I

.field private final ROOTPUBKEY:I

.field private final SEC_ROOTPUBKEY:I

.field private TAG:Ljava/lang/String;

.field private extraData:[B

.field private keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

.field private mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

.field private mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field private managerUrl:[B

.field private productId:B

.field private publicKey:Ljava/lang/String;

.field private randNum:[B

.field private serialNumber:[B

.field private urlExtra:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "SAccessoryManager_MsgParser"

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->ROOTPUBKEY:I

    .line 13
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->SEC_ROOTPUBKEY:I

    .line 14
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_ATQS:I

    .line 15
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_PUB_KEY:I

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_VERIFICATION:I

    .line 17
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_WRITE_ID:I

    .line 18
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_READ_ID:I

    .line 19
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_FIRMWARE:I

    .line 20
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_KEY_CHANGE:I

    .line 21
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_SEC_PUB_KEY:I

    .line 22
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_REQ_URL:I

    .line 23
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_REQ_EXTRA:I

    .line 24
    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_REQ_UNIFIED3RD:I

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    .line 105
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 106
    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .registers 7
    .param p1, "input"    # [B

    .line 274
    if-eqz p1, :cond_28

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_23

    .line 277
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

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 279
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 281
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_28
    const-string/jumbo v0, "null"

    return-object v0
.end method

.method public checkAtqs()Z
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_42

    .line 158
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    .line 159
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "productId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-byte v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    invoke-direct {v0, p0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;-><init>(Lcom/samsung/accessory/manager/authentication/msg/MsgParser;B)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 162
    return v1

    .line 164
    :cond_42
    const/4 v0, 0x0

    return v0
.end method

.method public checkExtra()Z
    .registers 7

    .line 223
    const/4 v0, 0x1

    .line 224
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    .line 225
    array-length v2, v1

    .line 226
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    .line 227
    int-to-byte v4, v2

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 228
    const/4 v4, 0x1

    invoke-static {v1, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extra Data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return v0
.end method

.method public checkPubKey(I)Z
    .registers 9
    .param p1, "what"    # I

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->isValidCertificate(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 171
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->setCertificateOfChip([B)V

    .line 173
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3e

    .line 174
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    .line 175
    invoke-virtual {p0, v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    .line 176
    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v5, v5, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    .line 177
    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->verify_certificate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_5c

    .line 179
    :cond_3e
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    .line 180
    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v5, v5, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    .line 181
    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v6, v6, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    .line 182
    invoke-virtual {p0, v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    .line 179
    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->verify_certificate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 185
    :goto_5c
    if-ne v0, v1, :cond_68

    .line 186
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->publicKey:Ljava/lang/String;

    .line 188
    :cond_68
    return v0
.end method

.method public checkReadId()Z
    .registers 3

    .line 206
    const/4 v0, 0x1

    .line 207
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->serialNumber:[B

    .line 208
    return v0
.end method

.method public checkUnified3rd()Z
    .registers 9

    .line 234
    const/4 v0, 0x1

    .line 235
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    .line 236
    const/4 v2, 0x0

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    .line 237
    .local v3, "urlLength":I
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 238
    .local v4, "extraLength":I
    add-int/lit8 v5, v3, 0x1

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    .line 239
    add-int/lit8 v6, v4, 0x1

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    .line 240
    add-int/lit8 v6, v3, 0x1

    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    add-int/lit8 v7, v4, 0x1

    invoke-static {v1, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extra Data: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v0
.end method

.method public checkUrl()Z
    .registers 7

    .line 212
    const/4 v0, 0x1

    .line 213
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    .line 214
    array-length v2, v1

    .line 215
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    .line 216
    int-to-byte v4, v2

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 217
    const/4 v4, 0x1

    invoke-static {v1, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v0
.end method

.method public checkVerification()Z
    .registers 7

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->isValidSignature(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 195
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->setSignatueOfRandomValue([B)V

    .line 196
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    .line 197
    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    .line 198
    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v5, v5, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    .line 199
    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->verify_rand_signature(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_44

    .line 201
    :cond_3c
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "signature is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_44
    return v0
.end method

.method public getExtraData()[B
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    return-object v0
.end method

.method public getManagerUrl()[B
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    return-object v0
.end method

.method public getProductId()B
    .registers 2

    .line 270
    iget-byte v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    return v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->publicKey:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 253
    const-string v0, ""

    return-object v0

    .line 254
    :cond_7
    return-object v0
.end method

.method public getSerialNumber()[B
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->serialNumber:[B

    return-object v0
.end method

.method public parseData(I[B)Z
    .registers 8
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .line 109
    const/4 v0, 0x1

    .line 111
    .local v0, "result":Z
    const/4 v1, 0x1

    if-eq p1, v1, :cond_a2

    const-string v1, ":"

    const-string v2, "command "

    const/4 v3, 0x2

    if-eq p1, v3, :cond_7c

    const/4 v3, 0x3

    if-eq p1, v3, :cond_56

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4a

    packed-switch p1, :pswitch_data_b0

    goto/16 :goto_ae

    .line 149
    :pswitch_16
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 150
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkUnified3rd()Z

    move-result v0

    goto/16 :goto_ae

    .line 145
    :pswitch_23
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkExtra()Z

    move-result v0

    .line 147
    goto/16 :goto_ae

    .line 141
    :pswitch_30
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 142
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkUrl()Z

    move-result v0

    .line 143
    goto :goto_ae

    .line 135
    :pswitch_3c
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 136
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkPubKey(I)Z

    move-result v0

    .line 137
    goto :goto_ae

    .line 129
    :cond_4a
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 130
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkReadId()Z

    move-result v0

    .line 131
    goto :goto_ae

    .line 122
    :cond_56
    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 123
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkVerification()Z

    move-result v0

    .line 124
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    goto :goto_ae

    .line 117
    :cond_7c
    new-instance v4, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v4, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v4, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 118
    invoke-virtual {p0, v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkPubKey(I)Z

    move-result v0

    .line 119
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    goto :goto_ae

    .line 113
    :cond_a2
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkAtqs()Z

    move-result v0

    .line 115
    nop

    .line 153
    :goto_ae
    return v0

    nop

    :pswitch_data_b0
    .packed-switch 0x8
        :pswitch_3c
        :pswitch_30
        :pswitch_23
        :pswitch_16
    .end packed-switch
.end method

.method public setRandNum([B)V
    .registers 3
    .param p1, "randNum"    # [B

    .line 248
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    .line 249
    return-void
.end method
