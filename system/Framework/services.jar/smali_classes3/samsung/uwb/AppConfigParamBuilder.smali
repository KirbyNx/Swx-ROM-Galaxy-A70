.class public Lsamsung/uwb/AppConfigParamBuilder;
.super Ljava/lang/Object;
.source "AppConfigParamBuilder.java"


# instance fields
.field appConfig:Lsamsung/uwb/ConfigParamTlv;

.field mAppConfigParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsamsung/uwb/ConfigParamTlv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->mAppConfigParamList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addToList(Lsamsung/uwb/ConfigParamTlv;)V
    .registers 4
    .param p1, "appConfigParam"    # Lsamsung/uwb/ConfigParamTlv;

    .line 321
    iget-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->mAppConfigParamList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 322
    iget-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->mAppConfigParamList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 323
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 324
    iget-object v1, p0, Lsamsung/uwb/AppConfigParamBuilder;->mAppConfigParamList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v0    # "index":I
    :cond_16
    goto :goto_1c

    .line 327
    :cond_17
    iget-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->mAppConfigParamList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :goto_1c
    return-void
.end method

.method public get()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsamsung/uwb/ConfigParamTlv;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->mAppConfigParamList:Ljava/util/List;

    return-object v0
.end method

.method public setAntennaPairSelection(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "antennaPairSelection"    # B

    .line 171
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "F0"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 172
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 173
    return-object p0
.end method

.method public setAoaResultReq(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "aoaResultReq"    # B

    .line 103
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "0D"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 104
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 105
    return-object p0
.end method

.method public setChannelId(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "channelId"    # B

    .line 48
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "04"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 49
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 50
    return-object p0
.end method

.method public setContentionPhaseUpdateLen(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "contentionPhaseUpdateLen"    # B

    .line 225
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "21"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 226
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 227
    return-object p0
.end method

.method public setDeviceMacAddress([B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 5
    .param p1, "deviceMacAddress"    # [B

    .line 60
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    array-length v1, p1

    const-string v2, "06"

    invoke-direct {v0, v2, v1, p1}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 61
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 62
    return-object p0
.end method

.method public setDeviceRole(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "deviceRole"    # B

    .line 24
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "11"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 25
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 26
    return-object p0
.end method

.method public setDeviceType(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "deviceType"    # B

    .line 129
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "00"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 130
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 131
    return-object p0
.end method

.method public setDstMacAddress([B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 5
    .param p1, "dstMacAddress"    # [B

    .line 66
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    array-length v1, p1

    const-string v2, "07"

    invoke-direct {v0, v2, v1, p1}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 67
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 68
    return-object p0
.end method

.method public setInBandTerminationAttemptCount(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "inBandTerminationAttemptCount"    # B

    .line 309
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "2F"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 310
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 311
    return-object p0
.end method

.method public setKeyRotation(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "keyRotation"    # B

    .line 237
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "23"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 238
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 239
    return-object p0
.end method

.method public setKeyRotationRate(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "keyRotationRate"    # B

    .line 243
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "24"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 244
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 245
    return-object p0
.end method

.method public setMacAddressMode(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "macAddressMode"    # B

    .line 255
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "26"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 256
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 257
    return-object p0
.end method

.method public setMacConfig(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "macConfig"    # B

    .line 189
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "19"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 190
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 191
    return-object p0
.end method

.method public setMacFcsType(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "macFcsType"    # B

    .line 91
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "0B"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 92
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 93
    return-object p0
.end method

.method public setMaxContentionPhaseLen(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "maxContentionPhaseLen"    # B

    .line 219
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "20"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 220
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 221
    return-object p0
.end method

.method public setMaxRrRetry(S)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "maxRrRetry"    # S

    .line 279
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    invoke-static {p1}, Lsamsung/uwb/UwbUtil;->getByteArray(S)[B

    move-result-object v1

    const-string v2, "2A"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 280
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 281
    return-object p0
.end method

.method public setMultiNodeMode(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "multiNodeMode"    # B

    .line 42
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "03"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 43
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 44
    return-object p0
.end method

.method public setNoOfAnchors(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "noOfAnchors"    # B

    .line 54
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "05"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 55
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 56
    return-object p0
.end method

.method public setNoOfStsSegments(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "noOfStsSegments"    # B

    .line 273
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "29"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 274
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 275
    return-object p0
.end method

.method public setPpduConfig(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "ppduConfig"    # B

    .line 135
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "12"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 136
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 137
    return-object p0
.end method

.method public setPreambleDuration(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "preambleDuration"    # B

    .line 165
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "17"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 166
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 167
    return-object p0
.end method

.method public setPreambleId(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "preambleId"    # B

    .line 147
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "14"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 148
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 149
    return-object p0
.end method

.method public setPrfMode(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "prfMode"    # B

    .line 213
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "1F"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 214
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 215
    return-object p0
.end method

.method public setPsduDataRate(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "psduDataRate"    # B

    .line 159
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "16"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 160
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 161
    return-object p0
.end method

.method public setRangingDataNtf(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "rangingDataNtf"    # B

    .line 109
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "0E"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 110
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 111
    return-object p0
.end method

.method public setRangingDataNtfProximityFar(S)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "rangingDataNtfProximityFar"    # S

    .line 122
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    .line 123
    invoke-static {p1}, Lsamsung/uwb/UwbUtil;->getByteArray(S)[B

    move-result-object v1

    const-string v2, "10"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 124
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 125
    return-object p0
.end method

.method public setRangingDataNtfProximityNear(S)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "rangingDataNtfProximityNear"    # S

    .line 115
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    .line 116
    invoke-static {p1}, Lsamsung/uwb/UwbUtil;->getByteArray(S)[B

    move-result-object v1

    const-string v2, "0F"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 117
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 118
    return-object p0
.end method

.method public setRangingInterval(S)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 7
    .param p1, "rangingInterval"    # S

    .line 78
    move v0, p1

    .line 79
    .local v0, "interval":I
    new-instance v1, Lsamsung/uwb/ConfigParamTlv;

    invoke-static {v0}, Lsamsung/uwb/UwbUtil;->getByteArray(I)[B

    move-result-object v2

    const-string v3, "09"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v1, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 80
    invoke-virtual {p0, v1}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 81
    return-object p0
.end method

.method public setRangingMethod(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "rangingMethod"    # B

    .line 30
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "01"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 31
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 32
    return-object p0
.end method

.method public setRangingRoundHopping(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "rngRoundHopping"    # B

    .line 297
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "2C"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 298
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 299
    return-object p0
.end method

.method public setRangingRoundPhaseControl(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "rangingRoundPhaseControl"    # B

    .line 97
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "0C"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 98
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 99
    return-object p0
.end method

.method public setRangingStartOffset(I)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "rngStartOffset"    # I

    .line 291
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    invoke-static {p1}, Lsamsung/uwb/UwbUtil;->getByteArray(I)[B

    move-result-object v1

    const-string v2, "2B"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 292
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 293
    return-object p0
.end method

.method public setRangingTimeStruct(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "rangingTimeStruct"    # B

    .line 195
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "1A"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 196
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 197
    return-object p0
.end method

.method public setResponderSlotIndex(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "responderSlotIndex"    # B

    .line 207
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "1E"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 208
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 209
    return-object p0
.end method

.method public setResultReportConfig(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "resultReportConfig"    # B

    .line 303
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "2E"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 304
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 305
    return-object p0
.end method

.method public setRxAntennaPairSelection(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "rxAntennaPairSelection"    # B

    .line 177
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "18"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 178
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 179
    return-object p0
.end method

.method public setRxMode(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "rxMode"    # B

    .line 141
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "13"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 142
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 143
    return-object p0
.end method

.method public setScheduledMode(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "scheduledMode"    # B

    .line 231
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "22"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 232
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 233
    return-object p0
.end method

.method public setSessionPriority(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "sessionPriority"    # B

    .line 249
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "25"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 250
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 251
    return-object p0
.end method

.method public setSfdId(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "sfdId"    # B

    .line 153
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "15"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 154
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 155
    return-object p0
.end method

.method public setSlotLen(S)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 7
    .param p1, "slotLen"    # S

    .line 72
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    int-to-double v1, p1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-short v1, v1

    invoke-static {v1}, Lsamsung/uwb/UwbUtil;->getByteArray(S)[B

    move-result-object v1

    const-string v2, "08"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 73
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 74
    return-object p0
.end method

.method public setSlotsPerRangingRound(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "slotsPerRangingRound"    # B

    .line 285
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "1B"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 286
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 287
    return-object p0
.end method

.method public setStaticStsIv([B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 5
    .param p1, "staticStsIv"    # [B

    .line 267
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    array-length v1, p1

    const-string v2, "28"

    invoke-direct {v0, v2, v1, p1}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 268
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 269
    return-object p0
.end method

.method public setStsConfig(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "stsConfig"    # B

    .line 36
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "02"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 37
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 38
    return-object p0
.end method

.method public setStsIndex(I)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "stsIndex"    # I

    .line 85
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    invoke-static {p1}, Lsamsung/uwb/UwbUtil;->getByteArray(I)[B

    move-result-object v1

    const-string v2, "0A"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 86
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 87
    return-object p0
.end method

.method public setSubSessionId(I)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "subSessionId"    # I

    .line 315
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    invoke-static {p1}, Lsamsung/uwb/UwbUtil;->getByteArray(I)[B

    move-result-object v1

    const-string v2, "30"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 316
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 317
    return-object p0
.end method

.method public setTxAdaptivePayloadPower(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "txAdaptivePayloadPower"    # B

    .line 201
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "1C"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 202
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 203
    return-object p0
.end method

.method public setTxAntennaPairSelection(B)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "txAntennaPairSelection"    # B

    .line 183
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const-string v3, "1D"

    invoke-direct {v0, v3, v1, v2}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 184
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 185
    return-object p0
.end method

.method public setVendorId(S)Lsamsung/uwb/AppConfigParamBuilder;
    .registers 6
    .param p1, "vendorId"    # S

    .line 261
    new-instance v0, Lsamsung/uwb/ConfigParamTlv;

    invoke-static {p1}, Lsamsung/uwb/UwbUtil;->getByteArray(S)[B

    move-result-object v1

    const-string v2, "27"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lsamsung/uwb/ConfigParamTlv;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParamBuilder;->appConfig:Lsamsung/uwb/ConfigParamTlv;

    .line 262
    invoke-virtual {p0, v0}, Lsamsung/uwb/AppConfigParamBuilder;->addToList(Lsamsung/uwb/ConfigParamTlv;)V

    .line 263
    return-object p0
.end method
