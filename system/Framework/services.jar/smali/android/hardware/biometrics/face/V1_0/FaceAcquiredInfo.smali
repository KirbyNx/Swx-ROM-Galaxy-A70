.class public final Landroid/hardware/biometrics/face/V1_0/FaceAcquiredInfo;
.super Ljava/lang/Object;
.source "FaceAcquiredInfo.java"


# static fields
.field public static final FACE_OBSCURED:I = 0x13

.field public static final FACE_TOO_HIGH:I = 0x6

.field public static final FACE_TOO_LEFT:I = 0x9

.field public static final FACE_TOO_LOW:I = 0x7

.field public static final FACE_TOO_RIGHT:I = 0x8

.field public static final GOOD:I = 0x0

.field public static final INSUFFICIENT:I = 0x1

.field public static final NOT_DETECTED:I = 0xb

.field public static final PAN_TOO_EXTREME:I = 0x10

.field public static final POOR_GAZE:I = 0xa

.field public static final RECALIBRATE:I = 0xd

.field public static final ROLL_TOO_EXTREME:I = 0x12

.field public static final SENSOR_DIRTY:I = 0x15

.field public static final START:I = 0x14

.field public static final TILT_TOO_EXTREME:I = 0x11

.field public static final TOO_BRIGHT:I = 0x2

.field public static final TOO_CLOSE:I = 0x4

.field public static final TOO_DARK:I = 0x3

.field public static final TOO_DIFFERENT:I = 0xe

.field public static final TOO_FAR:I = 0x5

.field public static final TOO_MUCH_MOTION:I = 0xc

.field public static final TOO_SIMILAR:I = 0xf

.field public static final VENDOR:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 253
    .local v1, "flipped":I
    const-string v2, "GOOD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 255
    const-string v2, "INSUFFICIENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    or-int/lit8 v1, v1, 0x1

    .line 258
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 259
    const-string v2, "TOO_BRIGHT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    or-int/lit8 v1, v1, 0x2

    .line 262
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 263
    const-string v2, "TOO_DARK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    or-int/lit8 v1, v1, 0x3

    .line 266
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 267
    const-string v2, "TOO_CLOSE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    or-int/lit8 v1, v1, 0x4

    .line 270
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 271
    const-string v2, "TOO_FAR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    or-int/lit8 v1, v1, 0x5

    .line 274
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 275
    const-string v2, "FACE_TOO_HIGH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    or-int/lit8 v1, v1, 0x6

    .line 278
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 279
    const-string v2, "FACE_TOO_LOW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    or-int/lit8 v1, v1, 0x7

    .line 282
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 283
    const-string v2, "FACE_TOO_RIGHT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    or-int/lit8 v1, v1, 0x8

    .line 286
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 287
    const-string v2, "FACE_TOO_LEFT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    or-int/lit8 v1, v1, 0x9

    .line 290
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 291
    const-string v2, "POOR_GAZE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    or-int/lit8 v1, v1, 0xa

    .line 294
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 295
    const-string v2, "NOT_DETECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    or-int/lit8 v1, v1, 0xb

    .line 298
    :cond_93
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a0

    .line 299
    const-string v2, "TOO_MUCH_MOTION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    or-int/lit8 v1, v1, 0xc

    .line 302
    :cond_a0
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_ad

    .line 303
    const-string v2, "RECALIBRATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    or-int/lit8 v1, v1, 0xd

    .line 306
    :cond_ad
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_ba

    .line 307
    const-string v2, "TOO_DIFFERENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    or-int/lit8 v1, v1, 0xe

    .line 310
    :cond_ba
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c7

    .line 311
    const-string v2, "TOO_SIMILAR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    or-int/lit8 v1, v1, 0xf

    .line 314
    :cond_c7
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d4

    .line 315
    const-string v2, "PAN_TOO_EXTREME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    or-int/lit8 v1, v1, 0x10

    .line 318
    :cond_d4
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_e1

    .line 319
    const-string v2, "TILT_TOO_EXTREME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    or-int/lit8 v1, v1, 0x11

    .line 322
    :cond_e1
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_ee

    .line 323
    const-string v2, "ROLL_TOO_EXTREME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    or-int/lit8 v1, v1, 0x12

    .line 326
    :cond_ee
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_fb

    .line 327
    const-string v2, "FACE_OBSCURED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    or-int/lit8 v1, v1, 0x13

    .line 330
    :cond_fb
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_108

    .line 331
    const-string v2, "START"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    or-int/lit8 v1, v1, 0x14

    .line 334
    :cond_108
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_115

    .line 335
    const-string v2, "SENSOR_DIRTY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    or-int/lit8 v1, v1, 0x15

    .line 338
    :cond_115
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_122

    .line 339
    const-string v2, "VENDOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    or-int/lit8 v1, v1, 0x16

    .line 342
    :cond_122
    if-eq p0, v1, :cond_13e

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_13e
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 178
    if-nez p0, :cond_5

    .line 179
    const-string v0, "GOOD"

    return-object v0

    .line 181
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 182
    const-string v0, "INSUFFICIENT"

    return-object v0

    .line 184
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 185
    const-string v0, "TOO_BRIGHT"

    return-object v0

    .line 187
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 188
    const-string v0, "TOO_DARK"

    return-object v0

    .line 190
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 191
    const-string v0, "TOO_CLOSE"

    return-object v0

    .line 193
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 194
    const-string v0, "TOO_FAR"

    return-object v0

    .line 196
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 197
    const-string v0, "FACE_TOO_HIGH"

    return-object v0

    .line 199
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 200
    const-string v0, "FACE_TOO_LOW"

    return-object v0

    .line 202
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 203
    const-string v0, "FACE_TOO_RIGHT"

    return-object v0

    .line 205
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 206
    const-string v0, "FACE_TOO_LEFT"

    return-object v0

    .line 208
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 209
    const-string v0, "POOR_GAZE"

    return-object v0

    .line 211
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 212
    const-string v0, "NOT_DETECTED"

    return-object v0

    .line 214
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 215
    const-string v0, "TOO_MUCH_MOTION"

    return-object v0

    .line 217
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 218
    const-string v0, "RECALIBRATE"

    return-object v0

    .line 220
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 221
    const-string v0, "TOO_DIFFERENT"

    return-object v0

    .line 223
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 224
    const-string v0, "TOO_SIMILAR"

    return-object v0

    .line 226
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    .line 227
    const-string v0, "PAN_TOO_EXTREME"

    return-object v0

    .line 229
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    .line 230
    const-string v0, "TILT_TOO_EXTREME"

    return-object v0

    .line 232
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    .line 233
    const-string v0, "ROLL_TOO_EXTREME"

    return-object v0

    .line 235
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    .line 236
    const-string v0, "FACE_OBSCURED"

    return-object v0

    .line 238
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    .line 239
    const-string v0, "START"

    return-object v0

    .line 241
    :cond_8a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_91

    .line 242
    const-string v0, "SENSOR_DIRTY"

    return-object v0

    .line 244
    :cond_91
    const/16 v0, 0x16

    if-ne p0, v0, :cond_98

    .line 245
    const-string v0, "VENDOR"

    return-object v0

    .line 247
    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
