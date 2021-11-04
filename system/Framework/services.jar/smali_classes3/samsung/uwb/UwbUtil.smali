.class public final Lsamsung/uwb/UwbUtil;
.super Ljava/lang/Object;
.source "UwbUtil.java"


# static fields
.field private static HEXCHARS:[C = null

.field public static final TAG_TYPE_APP:I = 0x0

.field public static final TAG_TYPE_APP_EXT:I = 0x1

.field public static final TAG_TYPE_DEBUG:I = 0x3

.field public static final TAG_TYPE_DEVICE:I = 0x2

.field public static final TAG_TYPE_TEST:I = 0x4

.field public static final TYPE_BYTE:B = 0x1t

.field public static final TYPE_BYTE_ARRAY:B = 0x4t

.field public static final TYPE_INT:B = 0x3t

.field public static final TYPE_SHORT:B = 0x2t

.field private static digits:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Lsamsung/uwb/UwbUtil;->HEXCHARS:[C

    .line 27
    const-string v0, "0123456789abcdef"

    sput-object v0, Lsamsung/uwb/UwbUtil;->digits:Ljava/lang/String;

    return-void

    :array_e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertQFormatToFloat(III)F
    .registers 10
    .param p0, "qIn"    # I
    .param p1, "nInts"    # I
    .param p2, "nFracs"    # I

    .line 176
    shr-int v0, p0, p2

    .line 177
    .local v0, "intPart":I
    const/4 v1, 0x1

    shl-int v2, v1, p2

    sub-int/2addr v2, v1

    and-int v1, p0, v2

    int-to-double v1, v1

    .line 178
    .local v1, "fracPart":D
    neg-int v3, p2

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v1

    .line 179
    .end local v1    # "fracPart":D
    .local v3, "fracPart":D
    int-to-float v1, v0

    float-to-double v1, v1

    add-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method private static convertToIntArrayFormat([B)V
    .registers 4
    .param p0, "byteArray"    # [B

    .line 145
    if-nez p0, :cond_3

    .line 146
    return-void

    .line 148
    :cond_3
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    .line 149
    .local v0, "intArray":[I
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 150
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 151
    return-void
.end method

.method public static convertToRequiredFormat([BB)V
    .registers 3
    .param p0, "byteArray"    # [B
    .param p1, "type"    # B

    .line 154
    if-nez p0, :cond_3

    .line 155
    return-void

    .line 157
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 158
    invoke-static {p0}, Lsamsung/uwb/UwbUtil;->convertToShortArrayFormat([B)V

    goto :goto_10

    .line 159
    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 160
    invoke-static {p0}, Lsamsung/uwb/UwbUtil;->convertToIntArrayFormat([B)V

    .line 162
    :cond_10
    :goto_10
    return-void
.end method

.method private static convertToShortArrayFormat([B)V
    .registers 4
    .param p0, "byteArray"    # [B

    .line 136
    if-nez p0, :cond_3

    .line 137
    return-void

    .line 139
    :cond_3
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 140
    .local v0, "shortArray":[S
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 141
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 142
    return-void
.end method

.method public static get3dAoAAzimuth(IFF)F
    .registers 19
    .param p0, "dist"    # I
    .param p1, "aoa_x"    # F
    .param p2, "aoa_z"    # F

    move/from16 v1, p0

    .line 219
    int-to-double v2, v1

    const/high16 v0, 0x43340000    # 180.0f

    div-float v4, p1, v0

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    :try_start_e
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 220
    .local v2, "x_cord":D
    int-to-double v4, v1

    div-float v0, p2, v0

    float-to-double v8, v0

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    .line 221
    .local v4, "z_cord":D
    const-wide/16 v8, 0x0

    .line 222
    .local v8, "y_cord":D
    int-to-double v10, v1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v10, v14

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v10, v14

    const-wide/16 v14, 0x0

    cmpl-double v0, v10, v14

    if-lez v0, :cond_4a

    .line 223
    int-to-double v10, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v10, v14

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-wide v8, v10

    .line 225
    :cond_4a
    div-double v10, v8, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_50} :catch_59

    div-double/2addr v10, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v6

    double-to-float v0, v10

    return v0

    .line 226
    .end local v2    # "x_cord":D
    .end local v4    # "z_cord":D
    .end local v8    # "y_cord":D
    :catch_59
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid AoA values "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3DAoA"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v2, 0x0

    return v2
.end method

.method public static get3dAoAElevation(F)F
    .registers 2
    .param p0, "aoa_z"    # F

    .line 239
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method private static getAppParameterValueType(Ljava/lang/String;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;

    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x608

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v1, :cond_7d

    const/16 v1, 0x609

    if-eq v0, v1, :cond_73

    const/16 v1, 0x611

    if-eq v0, v1, :cond_69

    const/16 v1, 0x616

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x61f

    if-eq v0, v1, :cond_55

    const/16 v1, 0x645

    if-eq v0, v1, :cond_4b

    const/16 v1, 0x65d

    if-eq v0, v1, :cond_41

    const/16 v1, 0x64f

    if-eq v0, v1, :cond_37

    const/16 v1, 0x650

    if-eq v0, v1, :cond_2c

    :cond_2b
    goto :goto_87

    :cond_2c
    const-string v0, "2B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x8

    goto :goto_88

    :cond_37
    const-string v0, "2A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x4

    goto :goto_88

    :cond_41
    const-string v0, "30"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x7

    goto :goto_88

    :cond_4b
    const-string v0, "27"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v3

    goto :goto_88

    :cond_55
    const-string v0, "10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v4

    goto :goto_88

    :cond_5f
    const-string v0, "0F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v2

    goto :goto_88

    :cond_69
    const-string v0, "0A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x6

    goto :goto_88

    :cond_73
    const-string v0, "09"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x5

    goto :goto_88

    :cond_7d
    const-string v0, "08"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    goto :goto_88

    :goto_87
    const/4 v0, -0x1

    :goto_88
    packed-switch v0, :pswitch_data_8e

    .line 310
    return v2

    .line 308
    :pswitch_8c
    return v3

    .line 302
    :pswitch_8d
    return v4

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
    .end packed-switch
.end method

.method public static getByteArray(I)[B
    .registers 3
    .param p0, "value"    # I

    .line 103
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 104
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static getByteArray(S)[B
    .registers 3
    .param p0, "value"    # S

    .line 86
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static getByteArray([I)[B
    .registers 4
    .param p0, "valueArray"    # [I

    .line 109
    if-nez p0, :cond_4

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_4
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 113
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 114
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 116
    .end local v1    # "i":I
    :cond_17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static getByteArray([S)[B
    .registers 4
    .param p0, "valueArray"    # [S

    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_4
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 97
    aget-short v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 99
    .end local v1    # "i":I
    :cond_17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static getConfigMapFromList(Ljava/util/List;I)Ljava/util/HashMap;
    .registers 10
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsamsung/uwb/ConfigParamTlv;",
            ">;I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 243
    .local p0, "configList":Ljava/util/List;, "Ljava/util/List<Lsamsung/uwb/ConfigParamTlv;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v0, "configMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsamsung/uwb/ConfigParamTlv;

    .line 245
    .local v2, "configParam":Lsamsung/uwb/ConfigParamTlv;
    invoke-virtual {v2}, Lsamsung/uwb/ConfigParamTlv;->getType()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v2}, Lsamsung/uwb/ConfigParamTlv;->getLength()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 247
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Lsamsung/uwb/ConfigParamTlv;->getValue()[B

    move-result-object v5

    .line 248
    .local v5, "valueArray":[B
    invoke-static {v3, p1}, Lsamsung/uwb/UwbUtil;->getValueType(Ljava/lang/String;I)I

    move-result v6

    .line 250
    .local v6, "valueType":I
    const/4 v7, 0x2

    if-ne v6, v7, :cond_30

    .line 251
    invoke-static {v5}, Lsamsung/uwb/UwbUtil;->convertToShortArrayFormat([B)V

    goto :goto_36

    .line 252
    :cond_30
    const/4 v7, 0x3

    if-ne v6, v7, :cond_36

    .line 253
    invoke-static {v5}, Lsamsung/uwb/UwbUtil;->convertToIntArrayFormat([B)V

    .line 255
    :cond_36
    :goto_36
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 256
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 257
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .end local v2    # "configParam":Lsamsung/uwb/ConfigParamTlv;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "valueArray":[B
    .end local v6    # "valueType":I
    goto :goto_9

    .line 259
    :cond_40
    return-object v0
.end method

.method private static getExtAppParameterValueType(Ljava/lang/String;)I
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public static getReverseArray([B)V
    .registers 5
    .param p0, "array"    # [B

    .line 120
    if-nez p0, :cond_3

    .line 121
    return-void

    .line 123
    :cond_3
    const/4 v0, 0x0

    .line 124
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 126
    .local v1, "j":I
    :goto_7
    if-le v1, v0, :cond_16

    .line 127
    aget-byte v2, p0, v1

    .line 128
    .local v2, "tmp":B
    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    .line 129
    aput-byte v2, p0, v0

    .line 130
    add-int/lit8 v1, v1, -0x1

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 133
    .end local v2    # "tmp":B
    :cond_16
    return-void
.end method

.method private static getValueType(Ljava/lang/String;I)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 287
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 291
    return v0

    .line 289
    :cond_6
    invoke-static {p0}, Lsamsung/uwb/UwbUtil;->getExtAppParameterValueType(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 288
    :cond_b
    invoke-static {p0}, Lsamsung/uwb/UwbUtil;->getAppParameterValueType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final toHexString(B)Ljava/lang/String;
    .registers 4
    .param p0, "b"    # B

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 41
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget-object v1, Lsamsung/uwb/UwbUtil;->HEXCHARS:[C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    sget-object v1, Lsamsung/uwb/UwbUtil;->HEXCHARS:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final toHexString(I)Ljava/lang/String;
    .registers 8
    .param p0, "var"    # I

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 61
    .local v0, "byteArray":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 62
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 63
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 64
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, v0

    :goto_27
    if-ge v2, v3, :cond_42

    aget-byte v4, v0, v2

    .line 67
    .local v4, "b":B
    sget-object v5, Lsamsung/uwb/UwbUtil;->HEXCHARS:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    sget-object v5, Lsamsung/uwb/UwbUtil;->HEXCHARS:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .end local v4    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 70
    :cond_42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toHexString(S)Ljava/lang/String;
    .registers 8
    .param p0, "var"    # S

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 75
    .local v0, "byteArray":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 76
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, v0

    :goto_17
    if-ge v2, v3, :cond_32

    aget-byte v4, v0, v2

    .line 79
    .local v4, "b":B
    sget-object v5, Lsamsung/uwb/UwbUtil;->HEXCHARS:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    sget-object v5, Lsamsung/uwb/UwbUtil;->HEXCHARS:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .end local v4    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 82
    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v0, "buf":Ljava/lang/StringBuffer;
    if-nez p0, :cond_9

    .line 49
    const/4 v1, 0x0

    return-object v1

    .line 51
    :cond_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    if-eq v1, v2, :cond_2a

    .line 52
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 53
    .local v2, "v":I
    sget-object v3, Lsamsung/uwb/UwbUtil;->digits:Ljava/lang/String;

    shr-int/lit8 v4, v2, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    sget-object v3, Lsamsung/uwb/UwbUtil;->digits:Ljava/lang/String;

    and-int/lit8 v4, v2, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 51
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 56
    .end local v1    # "i":I
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toSignedFloat(III)F
    .registers 6
    .param p0, "nIntput"    # I
    .param p1, "nBits"    # I
    .param p2, "nDivider"    # I

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "value":F
    if-lez p2, :cond_9

    .line 185
    sub-int v1, p0, p1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    .end local v0    # "value":F
    .local v1, "value":F
    goto :goto_a

    .line 187
    .end local v1    # "value":F
    .restart local v0    # "value":F
    :cond_9
    int-to-float v1, p0

    .line 189
    .end local v0    # "value":F
    .restart local v1    # "value":F
    :goto_a
    return v1
.end method

.method public static twos_compliment(II)I
    .registers 4
    .param p0, "nInput"    # I
    .param p1, "nBits"    # I

    .line 200
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_b

    .line 201
    shl-int v0, v1, p1

    sub-int/2addr p0, v0

    .line 203
    :cond_b
    return p0
.end method
