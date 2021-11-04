.class public Lsamsung/uwb/CccConfigParameters$Builder;
.super Ljava/lang/Object;
.source "CccConfigParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/CccConfigParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfigs:Lsamsung/uwb/CccConfigParameters;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lsamsung/uwb/CccConfigParameters;

    invoke-direct {v0}, Lsamsung/uwb/CccConfigParameters;-><init>()V

    iput-object v0, p0, Lsamsung/uwb/CccConfigParameters$Builder;->mConfigs:Lsamsung/uwb/CccConfigParameters;

    .line 94
    return-void
.end method

.method public constructor <init>(Lsamsung/uwb/CccConfigParameters;)V
    .registers 2
    .param p1, "configParameters"    # Lsamsung/uwb/CccConfigParameters;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lsamsung/uwb/CccConfigParameters$Builder;->mConfigs:Lsamsung/uwb/CccConfigParameters;

    .line 98
    return-void
.end method


# virtual methods
.method public build()Lsamsung/uwb/AppConfigParameters;
    .registers 2

    .line 155
    iget-object v0, p0, Lsamsung/uwb/CccConfigParameters$Builder;->mConfigs:Lsamsung/uwb/CccConfigParameters;

    return-object v0
.end method

.method public parse(Ljava/util/HashMap;)Lsamsung/uwb/CccConfigParameters$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lsamsung/uwb/CccConfigParameters$Builder;"
        }
    .end annotation

    .line 146
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

    .line 147
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 149
    .local v3, "value":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 150
    iget-object v4, p0, Lsamsung/uwb/CccConfigParameters$Builder;->mConfigs:Lsamsung/uwb/CccConfigParameters;

    iget-object v4, v4, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/nio/ByteBuffer;
    goto :goto_8

    .line 152
    :cond_33
    return-object p0
.end method

.method public setCccConfigQuirks(B)Lsamsung/uwb/CccConfigParameters$Builder;
    .registers 5
    .param p1, "cccConfigQuirks"    # B

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 112
    iget-object v1, p0, Lsamsung/uwb/CccConfigParameters$Builder;->mConfigs:Lsamsung/uwb/CccConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "A1"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-object p0
.end method

.method public setHopModeKey([B)Lsamsung/uwb/CccConfigParameters$Builder;
    .registers 5
    .param p1, "hopModeKey"    # [B

    .line 101
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 102
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 103
    iget-object v1, p0, Lsamsung/uwb/CccConfigParameters$Builder;->mConfigs:Lsamsung/uwb/CccConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "A0"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object p0
.end method

.method public setPulseShapeCombo(B)Lsamsung/uwb/CccConfigParameters$Builder;
    .registers 5
    .param p1, "pulseShapeCombo"    # B

    .line 137
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 138
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 139
    iget-object v1, p0, Lsamsung/uwb/CccConfigParameters$Builder;->mConfigs:Lsamsung/uwb/CccConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "A5"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-object p0
.end method

.method public setRangingProtocolVersion(S)Lsamsung/uwb/CccConfigParameters$Builder;
    .registers 5
    .param p1, "rangingProtocolVersion"    # S

    .line 119
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 121
    iget-object v1, p0, Lsamsung/uwb/CccConfigParameters$Builder;->mConfigs:Lsamsung/uwb/CccConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "A3"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-object p0
.end method

.method public setUwbConfigId(S)Lsamsung/uwb/CccConfigParameters$Builder;
    .registers 5
    .param p1, "uwbConfigId"    # S

    .line 128
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 129
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 130
    iget-object v1, p0, Lsamsung/uwb/CccConfigParameters$Builder;->mConfigs:Lsamsung/uwb/CccConfigParameters;

    iget-object v1, v1, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v2, "A4"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-object p0
.end method
