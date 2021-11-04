.class public Lsamsung/uwb/AppConfigParameters$Builder;
.super Ljava/lang/Object;
.source "AppConfigParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/AppConfigParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfigs:Lsamsung/uwb/AppConfigParameters;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lsamsung/uwb/AppConfigParameters;

    invoke-direct {v0}, Lsamsung/uwb/AppConfigParameters;-><init>()V

    iput-object v0, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    .line 104
    return-void
.end method

.method public constructor <init>(Lsamsung/uwb/AppConfigParameters;)V
    .registers 2
    .param p1, "config"    # Lsamsung/uwb/AppConfigParameters;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    .line 108
    return-void
.end method


# virtual methods
.method public build()Lsamsung/uwb/AppConfigParameters;
    .registers 2

    .line 697
    iget-object v0, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    return-object v0
.end method

.method public parse(Ljava/util/HashMap;)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lsamsung/uwb/AppConfigParameters$Builder;"
        }
    .end annotation

    .line 682
    .local p1, "configMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 683
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 684
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 685
    .local v3, "value":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 686
    iget-object v4, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v4, v4, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/nio/ByteBuffer;
    goto :goto_8

    .line 688
    :cond_33
    return-object p0
.end method

.method public recoverBuilder(Lsamsung/uwb/AppConfigParameters;)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 2
    .param p1, "appConfigParameters"    # Lsamsung/uwb/AppConfigParameters;

    .line 692
    return-object p0
.end method

.method public setAdaptiveHoppingThreshold(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "adaptiveHoppingThreshold"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 672
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 673
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 674
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E30D"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    return-object p0
.end method

.method public setAntennaPairSelection(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "antennaPairSelection"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 350
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 351
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "F0"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-object p0
.end method

.method public setAoaResultReq(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "aoaResultReq"    # B

    .line 248
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 249
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 250
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "0D"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-object p0
.end method

.method public setAuthenticityTag(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "authenticityTag"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 620
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 621
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 622
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E313"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    return-object p0
.end method

.method public setBlinkRandomInterval(S)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "blinkRandomInterval"    # S

    .line 600
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 601
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 602
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "33"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    return-object p0
.end method

.method public setBlockStrideLength(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "blockStriding"    # B

    .line 562
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 563
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 564
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "2D"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    return-object p0
.end method

.method public setBprfPhrDataRate(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "bprfPhrDataRate"    # B

    .line 661
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 662
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 663
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "31"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-object p0
.end method

.method public setChannelNumber(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "channelId"    # B

    .line 157
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 158
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 159
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "04"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-object p0
.end method

.method public setContentionPhaseUpdateLen(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "contentionPhaseUpdateLen"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 436
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 437
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E312"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    return-object p0
.end method

.method public setDeviceMacAddress([B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "deviceMacAddress"    # [B

    .line 175
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 176
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 177
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "06"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-object p0
.end method

.method public setDeviceRole(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "deviceRole"    # B

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 113
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "11"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object p0
.end method

.method public setDeviceType(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "deviceType"    # B

    .line 284
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 285
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 286
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "00"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-object p0
.end method

.method public setDstMacAddress([B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "dstMacAddress"    # [B

    .line 184
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 185
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 186
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "07"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-object p0
.end method

.method public setHoppingMode(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "hoppingMode"    # B

    .line 553
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 554
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 555
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "2C"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    return-object p0
.end method

.method public setInBandTerminationAttemptCount(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "inBandTerminationAttemptCount"    # B

    .line 580
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 581
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 582
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "2F"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    return-object p0
.end method

.method public setKeyRotation(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "keyRotation"    # B

    .line 453
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 454
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 455
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "23"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    return-object p0
.end method

.method public setKeyRotationRate(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "keyRotationRate"    # B

    .line 462
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 463
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 464
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "24"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    return-object p0
.end method

.method public setMacAddressMode(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "macAddressMode"    # B

    .line 480
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 481
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 482
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "26"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    return-object p0
.end method

.method public setMacConfig(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 2
    .param p1, "macConfig"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    return-object p0
.end method

.method public setMacFcsType(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "macFcsType"    # B

    .line 230
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 231
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 232
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "0B"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-object p0
.end method

.method public setMaxContentionPhaseLen(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "maxContentionPhaseLen"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 426
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 427
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E311"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    return-object p0
.end method

.method public setMaxNumberOfBlocks(S)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "maxNoOfBlocks"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 631
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 632
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 633
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "32"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    return-object p0
.end method

.method public setMaxNumberOfMeasurements(S)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "maxNoOfMeasurements"    # S

    .line 641
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 642
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 643
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "32"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    return-object p0
.end method

.method public setMaxRrRetry(S)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "maxRrRetry"    # S

    .line 516
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 517
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 518
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "2A"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    return-object p0
.end method

.method public setMultiNodeMode(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "multiNodeMode"    # B

    .line 148
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 149
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 150
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "03"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-object p0
.end method

.method public setNoOfControlee(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "noOfAnchors"    # B

    .line 166
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 167
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 168
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "05"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-object p0
.end method

.method public setNoOfStsSegments(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "noOfStsSegments"    # B

    .line 507
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 508
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 509
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "29"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    return-object p0
.end method

.method public setPreambleCodeIndex(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "preambleId"    # B

    .line 312
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 313
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 314
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "14"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-object p0
.end method

.method public setPreambleDuration(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "preambleDuration"    # B

    .line 339
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 340
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 341
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "17"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    return-object p0
.end method

.method public setPrfMode(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "prfMode"    # B

    .line 415
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 416
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 417
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "1F"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return-object p0
.end method

.method public setPsduDataRate(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "psduDataRate"    # B

    .line 330
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 331
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 332
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "16"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-object p0
.end method

.method public setRangingDataNtf(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "rangingDataNtf"    # B

    .line 257
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 258
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 259
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "0E"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-object p0
.end method

.method public setRangingDataNtfProximityFar(S)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "rangingDataNtfProximityFar"    # S

    .line 275
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 276
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 277
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "10"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-object p0
.end method

.method public setRangingDataNtfProximityNear(S)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "rangingDataNtfProximityNear"    # S

    .line 266
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 267
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 268
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "0F"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-object p0
.end method

.method public setRangingInterval(I)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "rangingInterval"    # I

    .line 212
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 213
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 214
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "09"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-object p0
.end method

.method public setRangingMethod(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "rangingMethod"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 122
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 123
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "01"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object p0
.end method

.method public setRangingRoundControl(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "rangingRoundPhaseControl"    # B

    .line 239
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 240
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 241
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "0C"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-object p0
.end method

.method public setRangingRoundHopping(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "rngRoundHopping"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 544
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 545
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 546
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "2C"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    return-object p0
.end method

.method public setRangingRoundUsage(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "rangingRoundUsage"    # B

    .line 130
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 131
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 132
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "01"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-object p0
.end method

.method public setRangingTimeStruct(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "rangingTimeStruct"    # B

    .line 388
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 389
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 390
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "1A"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return-object p0
.end method

.method public setResponderSlotIndex(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "responderSlotIndex"    # B

    .line 406
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 407
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 408
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "1E"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    return-object p0
.end method

.method public setResultReportConfig(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "resultReportConfig"    # B

    .line 571
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 572
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 573
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "2E"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    return-object p0
.end method

.method public setRframeConfig(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "ppduConfig"    # B

    .line 293
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 294
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 295
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "12"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-object p0
.end method

.method public setRxAntennaPairSelection(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "rxAntennaPairSelection"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 359
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 360
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 361
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E30F"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-object p0
.end method

.method public setRxMode(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "rxMode"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 304
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 305
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E30E"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-object p0
.end method

.method public setScheduledMode(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "scheduledMode"    # B

    .line 444
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 445
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 446
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "22"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    return-object p0
.end method

.method public setSessionPriority(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "sessionPriority"    # B

    .line 471
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 472
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 473
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "25"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-object p0
.end method

.method public setSfdId(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "sfdId"    # B

    .line 321
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 322
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 323
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "15"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-object p0
.end method

.method public setSlotDuration(S)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 7
    .param p1, "slotDuration"    # S

    .line 194
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-double v1, p1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 195
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 196
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "08"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-object p0
.end method

.method public setSlotDurationRstu(S)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "slotDuration"    # S

    .line 203
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 205
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "08"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-object p0
.end method

.method public setSlotsPerRangingRound(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "slotsPerRangingRound"    # B

    .line 525
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 526
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 527
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "1B"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    return-object p0
.end method

.method public setStaticStsIv([B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "staticStsIv"    # [B

    .line 498
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 499
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 500
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "28"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    return-object p0
.end method

.method public setStsConfig(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "stsConfig"    # B

    .line 139
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 140
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 141
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "02"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-object p0
.end method

.method public setStsIndex(I)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "stsIndex"    # I

    .line 221
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 222
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 223
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "0A"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-object p0
.end method

.method public setStsLength(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "stsLength"    # B

    .line 651
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 652
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 653
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "35"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    return-object p0
.end method

.method public setSubSessionId(I)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "subSessionId"    # I

    .line 590
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 591
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 592
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "30"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    return-object p0
.end method

.method public setTdoaReportFreq(S)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "tdoaReportFrequency"    # S

    .line 609
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 610
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 611
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "34"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    return-object p0
.end method

.method public setTxAdaptivePayloadPower(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "txAdaptivePayloadPower"    # B

    .line 397
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 398
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 399
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "1C"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return-object p0
.end method

.method public setTxAntennaPairSelection(B)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "txAntennaPairSelection"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 370
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 371
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E310"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    return-object p0
.end method

.method public setUwbInitiationTime(I)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "rngStartOffset"    # I

    .line 534
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 535
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 536
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "2B"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    return-object p0
.end method

.method public setVendorId(S)Lsamsung/uwb/AppConfigParameters$Builder;
    .registers 5
    .param p1, "vendorId"    # S

    .line 489
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 490
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 491
    iget-object v1, p0, Lsamsung/uwb/AppConfigParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "27"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    return-object p0
.end method
