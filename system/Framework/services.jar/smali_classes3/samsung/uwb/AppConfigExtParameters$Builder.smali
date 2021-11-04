.class public Lsamsung/uwb/AppConfigExtParameters$Builder;
.super Ljava/lang/Object;
.source "AppConfigExtParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/AppConfigExtParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfigs:Lsamsung/uwb/AppConfigExtParameters;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lsamsung/uwb/AppConfigExtParameters;

    invoke-direct {v0}, Lsamsung/uwb/AppConfigExtParameters;-><init>()V

    iput-object v0, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    .line 54
    return-void
.end method


# virtual methods
.method public build()Lsamsung/uwb/AppConfigExtParameters;
    .registers 2

    .line 271
    iget-object v0, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    return-object v0
.end method

.method public parse(Ljava/util/HashMap;)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lsamsung/uwb/AppConfigExtParameters$Builder;"
        }
    .end annotation

    .line 262
    .local p1, "configParameterMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 263
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 264
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 265
    .local v3, "value":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v4, v4, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/nio/ByteBuffer;
    goto :goto_8

    .line 267
    :cond_28
    return-object p0
.end method

.method public setAdaptiveHoppingThreshold(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "adaptiveHoppingThreshold"    # B

    .line 187
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 188
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 189
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E30D"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-object p0
.end method

.method public setAntennaPairSelection(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "antennaPairSelection"    # B

    .line 225
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 227
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "F0"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-object p0
.end method

.method public setAuthenticityTag(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "authenticityTag"    # B

    .line 252
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 253
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 254
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E313"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-object p0
.end method

.method public setCirCaptureMode(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "cirCaptureMode"    # B

    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 68
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 69
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E301"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-object p0
.end method

.method public setContentionPhaseUpdateLen(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "contentionPhaseUpdateLen"    # B

    .line 206
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 207
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 208
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E312"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-object p0
.end method

.method public setDualAoaPreambleSts(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "dualAoaPreambleSts"    # B

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
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E30A"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object p0
.end method

.method public setMacPayloadEncryption(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "macPayloadEncryption"    # B

    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 78
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E302"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-object p0
.end method

.method public setMaxContentionPhaseLen(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "maxContentionPhaseLen"    # B

    .line 197
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 199
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E311"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-object p0
.end method

.method public setRxAntennaPairSelection(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "rxAntennaPairSelection"    # B

    .line 234
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 235
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 236
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E30F"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-object p0
.end method

.method public setRxAntennaPolarizationOption(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "rxAntennaPolarizationOption"    # B

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
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E303"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-object p0
.end method

.method public setRxAntennaSelectionRfm(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "rxAntennaSelectionRfm"    # B

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
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E319"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-object p0
.end method

.method public setRxMode(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "rxMode"    # B

    .line 216
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 217
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 218
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E30E"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-object p0
.end method

.method public setScheduledStatusNtf(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "scheduledStatusNtf"    # B

    .line 103
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 104
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 105
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E307"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-object p0
.end method

.method public setSessionInbandDataRxBlocks(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "sessionInbandDataRxBlocks"    # B

    .line 167
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 169
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E317"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-object p0
.end method

.method public setSessionInbandDataTxBlocks(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "sessionInbandDataTxBlocks"    # B

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
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E316"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-object p0
.end method

.method public setSessionSchedAttempts(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "sessionSchedAttempts"    # B

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 96
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E306"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object p0
.end method

.method public setSessionSyncAttempts(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "sessionSyncAttempts"    # B

    .line 85
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 86
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 87
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E305"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-object p0
.end method

.method public setSuspendRanging(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "suspendRanging"    # B

    .line 177
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 178
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 179
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E318"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-object p0
.end method

.method public setToaMode(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "toaMode"    # B

    .line 57
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 58
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 59
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E300"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object p0
.end method

.method public setTxAntennaPairSelection(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "txAntennaPairSelection"    # B

    .line 243
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 244
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 245
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E310"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-object p0
.end method

.method public setTxPowerDeltaFcc(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "txPowerDeltaFcc"    # B

    .line 112
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 113
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 114
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E308"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-object p0
.end method

.method public setTxPowerTempCompensation(B)Lsamsung/uwb/AppConfigExtParameters$Builder;
    .registers 5
    .param p1, "txPowerTempCompensation"    # B

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
    iget-object v1, p0, Lsamsung/uwb/AppConfigExtParameters$Builder;->mConfigs:Lsamsung/uwb/AppConfigExtParameters;

    iget-object v1, v1, Lsamsung/uwb/AppConfigExtParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "E30B"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-object p0
.end method
