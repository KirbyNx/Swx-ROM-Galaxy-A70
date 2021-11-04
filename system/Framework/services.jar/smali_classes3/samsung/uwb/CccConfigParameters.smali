.class public Lsamsung/uwb/CccConfigParameters;
.super Lsamsung/uwb/AppConfigParameters;
.source "CccConfigParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsamsung/uwb/CccConfigParameters$Builder;
    }
.end annotation


# static fields
.field public static final CCC_CONFIG_QUIRKS:Ljava/lang/String; = "A1"

.field public static final HOP_MODE_KEY:Ljava/lang/String; = "A0"

.field public static final INVALID_PARAM:Ljava/lang/String; = "FF"

.field private static final MAX_LEN_OF_CCC_APP_PARAMS:I = 0x800

.field public static final PULSESHAPE_COMBO:Ljava/lang/String; = "A5"

.field public static final RANGING_PROTOCOL_VERSION:Ljava/lang/String; = "A3"

.field public static final UWB_CONFIG_ID:Ljava/lang/String; = "A4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lsamsung/uwb/AppConfigParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllParameterList()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCccConfigQuirks()B
    .registers 3

    .line 40
    iget-object v0, p0, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "A1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getConfigMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHopModeKey()[B
    .registers 5

    .line 32
    iget-object v0, p0, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "A0"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 33
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v2, v3, :cond_17

    .line 34
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 36
    :cond_17
    iget-object v2, p0, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getPulseShapeCombo()B
    .registers 3

    .line 60
    iget-object v0, p0, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "A5"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getRangingProtocolVersion()S
    .registers 4

    .line 44
    iget-object v0, p0, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "A3"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 45
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_17

    .line 46
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 48
    :cond_17
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method

.method public getUwbConfigId()S
    .registers 4

    .line 52
    iget-object v0, p0, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    const-string v1, "A4"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 53
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v2, :cond_17

    .line 54
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 56
    :cond_17
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method

.method public hasConfig(Ljava/lang/String;)Z
    .registers 3
    .param p1, "configName"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public size()I
    .registers 2

    .line 78
    iget-object v0, p0, Lsamsung/uwb/CccConfigParameters;->mAppParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
