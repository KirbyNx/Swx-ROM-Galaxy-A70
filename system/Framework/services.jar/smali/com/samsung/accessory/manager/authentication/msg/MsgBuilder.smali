.class public Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;
.super Ljava/lang/Object;
.source "MsgBuilder.java"


# instance fields
.field private mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

.field private mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field private randNum:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    .line 15
    return-void
.end method


# virtual methods
.method public getDataVerification()[B
    .registers 9

    .line 33
    new-instance v7, Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [B

    const/4 v1, 0x0

    const/16 v2, 0x76

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB[B)V

    iput-object v7, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 34
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getKeyChange()[B
    .registers 10

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 71
    .local v0, "changeData":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 72
    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 73
    const/4 v1, 0x2

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    .line 74
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/4 v4, 0x0

    const/16 v5, 0x42

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 75
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1
.end method

.method public getRandNum()[B
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    return-object v0
.end method

.method public getReadCoverId()[B
    .registers 8

    .line 23
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v1, 0x54

    const/16 v2, 0x22

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/16 v5, 0x12

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 24
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getReqExtra()[B
    .registers 8

    .line 43
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v1, 0x54

    const/16 v2, 0x22

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 44
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getReqFirmwareVersion()[B
    .registers 8

    .line 18
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 19
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getReqPubKey()[B
    .registers 8

    .line 10
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/4 v1, 0x0

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x52

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 11
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getReqUnified3rd()[B
    .registers 8

    .line 48
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v1, 0x54

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 49
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getReqUrl()[B
    .registers 8

    .line 38
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v1, 0x54

    const/16 v2, 0x22

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 39
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getStopAuthentication()[B
    .registers 8

    .line 53
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/4 v1, 0x0

    const/16 v2, -0x22

    const/16 v3, -0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 54
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getWriteCoverId([B)[B
    .registers 10
    .param p1, "id"    # [B

    .line 28
    new-instance v7, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [B

    const/16 v1, 0x54

    const/16 v2, 0x20

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/16 v5, 0x12

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB[B)V

    iput-object v7, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 29
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public makeRandomNumber()[B
    .registers 3

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 59
    .local v0, "genNum":[B
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;-><init>()V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 60
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->genRandom()[B

    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    .line 62
    return-object v0
.end method
