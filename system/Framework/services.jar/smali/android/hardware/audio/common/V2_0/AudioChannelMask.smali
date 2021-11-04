.class public final Landroid/hardware/audio/common/V2_0/AudioChannelMask;
.super Ljava/lang/Object;
.source "AudioChannelMask.java"


# static fields
.field public static final COUNT_MAX:I = 0x1e

.field public static final INDEX_HDR:I = -0x80000000

.field public static final INDEX_MASK_1:I = -0x7fffffff

.field public static final INDEX_MASK_2:I = -0x7ffffffd

.field public static final INDEX_MASK_3:I = -0x7ffffff9

.field public static final INDEX_MASK_4:I = -0x7ffffff1

.field public static final INDEX_MASK_5:I = -0x7fffffe1

.field public static final INDEX_MASK_6:I = -0x7fffffc1

.field public static final INDEX_MASK_7:I = -0x7fffff81

.field public static final INDEX_MASK_8:I = -0x7fffff01

.field public static final INVALID:I = -0x40000000

.field public static final IN_6:I = 0xfc

.field public static final IN_ALL:I = 0xfffc

.field public static final IN_BACK:I = 0x20

.field public static final IN_BACK_PROCESSED:I = 0x200

.field public static final IN_FRONT:I = 0x10

.field public static final IN_FRONT_BACK:I = 0x30

.field public static final IN_FRONT_PROCESSED:I = 0x100

.field public static final IN_LEFT:I = 0x4

.field public static final IN_LEFT_PROCESSED:I = 0x40

.field public static final IN_MONO:I = 0x10

.field public static final IN_PRESSURE:I = 0x400

.field public static final IN_RIGHT:I = 0x8

.field public static final IN_RIGHT_PROCESSED:I = 0x80

.field public static final IN_STEREO:I = 0xc

.field public static final IN_VOICE_CALL_MONO:I = 0xc010

.field public static final IN_VOICE_DNLINK:I = 0x8000

.field public static final IN_VOICE_DNLINK_MONO:I = 0x8010

.field public static final IN_VOICE_UPLINK:I = 0x4000

.field public static final IN_VOICE_UPLINK_MONO:I = 0x4010

.field public static final IN_X_AXIS:I = 0x800

.field public static final IN_Y_AXIS:I = 0x1000

.field public static final IN_Z_AXIS:I = 0x2000

.field public static final NONE:I = 0x0

.field public static final OUT_2POINT1:I = 0xb

.field public static final OUT_5POINT1:I = 0x3f

.field public static final OUT_5POINT1_BACK:I = 0x3f

.field public static final OUT_5POINT1_SIDE:I = 0x60f

.field public static final OUT_6POINT1:I = 0x13f

.field public static final OUT_7POINT1:I = 0x63f

.field public static final OUT_ALL:I = 0x3ffff

.field public static final OUT_BACK_CENTER:I = 0x100

.field public static final OUT_BACK_LEFT:I = 0x10

.field public static final OUT_BACK_RIGHT:I = 0x20

.field public static final OUT_FRONT_CENTER:I = 0x4

.field public static final OUT_FRONT_LEFT:I = 0x1

.field public static final OUT_FRONT_LEFT_OF_CENTER:I = 0x40

.field public static final OUT_FRONT_RIGHT:I = 0x2

.field public static final OUT_FRONT_RIGHT_OF_CENTER:I = 0x80

.field public static final OUT_LOW_FREQUENCY:I = 0x8

.field public static final OUT_MONO:I = 0x1

.field public static final OUT_PENTA:I = 0x37

.field public static final OUT_QUAD:I = 0x33

.field public static final OUT_QUAD_BACK:I = 0x33

.field public static final OUT_QUAD_SIDE:I = 0x603

.field public static final OUT_SIDE_LEFT:I = 0x200

.field public static final OUT_SIDE_RIGHT:I = 0x400

.field public static final OUT_STEREO:I = 0x3

.field public static final OUT_SURROUND:I = 0x107

.field public static final OUT_TOP_BACK_CENTER:I = 0x10000

.field public static final OUT_TOP_BACK_LEFT:I = 0x8000

.field public static final OUT_TOP_BACK_RIGHT:I = 0x20000

.field public static final OUT_TOP_CENTER:I = 0x800

.field public static final OUT_TOP_FRONT_CENTER:I = 0x2000

.field public static final OUT_TOP_FRONT_LEFT:I = 0x1000

.field public static final OUT_TOP_FRONT_RIGHT:I = 0x4000

.field public static final REPRESENTATION_INDEX:I = 0x2

.field public static final REPRESENTATION_POSITION:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 17
    .param p0, "o"    # I

    .line 316
    move/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 318
    .local v2, "flipped":I
    const-string v3, "REPRESENTATION_POSITION"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_19

    .line 320
    const-string v3, "REPRESENTATION_INDEX"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    or-int/lit8 v2, v2, 0x2

    .line 323
    :cond_19
    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    const/high16 v3, -0x40000000    # -2.0f

    and-int v5, v0, v3

    if-ne v5, v3, :cond_2a

    .line 325
    const-string v5, "INVALID"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    or-int/2addr v2, v3

    .line 328
    :cond_2a
    and-int/lit8 v3, v0, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_36

    .line 329
    const-string v3, "OUT_FRONT_LEFT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    or-int/lit8 v2, v2, 0x1

    .line 332
    :cond_36
    and-int/lit8 v3, v0, 0x2

    if-ne v3, v4, :cond_41

    .line 333
    const-string v3, "OUT_FRONT_RIGHT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    or-int/lit8 v2, v2, 0x2

    .line 336
    :cond_41
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4d

    .line 337
    const-string v3, "OUT_FRONT_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    or-int/lit8 v2, v2, 0x4

    .line 340
    :cond_4d
    and-int/lit8 v3, v0, 0x8

    const/16 v6, 0x8

    if-ne v3, v6, :cond_5a

    .line 341
    const-string v3, "OUT_LOW_FREQUENCY"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    or-int/lit8 v2, v2, 0x8

    .line 344
    :cond_5a
    and-int/lit8 v3, v0, 0x10

    const/16 v7, 0x10

    if-ne v3, v7, :cond_67

    .line 345
    const-string v3, "OUT_BACK_LEFT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    or-int/lit8 v2, v2, 0x10

    .line 348
    :cond_67
    and-int/lit8 v3, v0, 0x20

    const/16 v8, 0x20

    if-ne v3, v8, :cond_74

    .line 349
    const-string v3, "OUT_BACK_RIGHT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    or-int/lit8 v2, v2, 0x20

    .line 352
    :cond_74
    and-int/lit8 v3, v0, 0x40

    const/16 v9, 0x40

    if-ne v3, v9, :cond_81

    .line 353
    const-string v3, "OUT_FRONT_LEFT_OF_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    or-int/lit8 v2, v2, 0x40

    .line 356
    :cond_81
    and-int/lit16 v3, v0, 0x80

    const/16 v10, 0x80

    if-ne v3, v10, :cond_8e

    .line 357
    const-string v3, "OUT_FRONT_RIGHT_OF_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    or-int/lit16 v2, v2, 0x80

    .line 360
    :cond_8e
    and-int/lit16 v3, v0, 0x100

    const/16 v11, 0x100

    if-ne v3, v11, :cond_9b

    .line 361
    const-string v3, "OUT_BACK_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    or-int/lit16 v2, v2, 0x100

    .line 364
    :cond_9b
    and-int/lit16 v3, v0, 0x200

    const/16 v12, 0x200

    if-ne v3, v12, :cond_a8

    .line 365
    const-string v3, "OUT_SIDE_LEFT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    or-int/lit16 v2, v2, 0x200

    .line 368
    :cond_a8
    and-int/lit16 v3, v0, 0x400

    const/16 v13, 0x400

    if-ne v3, v13, :cond_b5

    .line 369
    const-string v3, "OUT_SIDE_RIGHT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    or-int/lit16 v2, v2, 0x400

    .line 372
    :cond_b5
    and-int/lit16 v3, v0, 0x800

    const/16 v14, 0x800

    if-ne v3, v14, :cond_c2

    .line 373
    const-string v3, "OUT_TOP_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    or-int/lit16 v2, v2, 0x800

    .line 376
    :cond_c2
    and-int/lit16 v3, v0, 0x1000

    const/16 v15, 0x1000

    if-ne v3, v15, :cond_cf

    .line 377
    const-string v3, "OUT_TOP_FRONT_LEFT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    or-int/lit16 v2, v2, 0x1000

    .line 380
    :cond_cf
    and-int/lit16 v3, v0, 0x2000

    const/16 v15, 0x2000

    if-ne v3, v15, :cond_dc

    .line 381
    const-string v3, "OUT_TOP_FRONT_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    or-int/lit16 v2, v2, 0x2000

    .line 384
    :cond_dc
    and-int/lit16 v3, v0, 0x4000

    const/16 v15, 0x4000

    if-ne v3, v15, :cond_e9

    .line 385
    const-string v3, "OUT_TOP_FRONT_RIGHT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    or-int/lit16 v2, v2, 0x4000

    .line 388
    :cond_e9
    const v3, 0x8000

    and-int v15, v0, v3

    if-ne v15, v3, :cond_f6

    .line 389
    const-string v15, "OUT_TOP_BACK_LEFT"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    or-int/2addr v2, v3

    .line 392
    :cond_f6
    const/high16 v15, 0x10000

    and-int v3, v0, v15

    if-ne v3, v15, :cond_102

    .line 393
    const-string v3, "OUT_TOP_BACK_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    or-int/2addr v2, v15

    .line 396
    :cond_102
    const/high16 v3, 0x20000

    and-int v15, v0, v3

    if-ne v15, v3, :cond_10e

    .line 397
    const-string v15, "OUT_TOP_BACK_RIGHT"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    or-int/2addr v2, v3

    .line 400
    :cond_10e
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v5, :cond_119

    .line 401
    const-string v3, "OUT_MONO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    or-int/lit8 v2, v2, 0x1

    .line 404
    :cond_119
    and-int/lit8 v3, v0, 0x3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_125

    .line 405
    const-string v3, "OUT_STEREO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    or-int/lit8 v2, v2, 0x3

    .line 408
    :cond_125
    and-int/lit8 v3, v0, 0xb

    const/16 v5, 0xb

    if-ne v3, v5, :cond_132

    .line 409
    const-string v3, "OUT_2POINT1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    or-int/lit8 v2, v2, 0xb

    .line 412
    :cond_132
    and-int/lit8 v3, v0, 0x33

    const/16 v5, 0x33

    if-ne v3, v5, :cond_13f

    .line 413
    const-string v3, "OUT_QUAD"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    or-int/lit8 v2, v2, 0x33

    .line 416
    :cond_13f
    and-int/lit8 v3, v0, 0x33

    if-ne v3, v5, :cond_14a

    .line 417
    const-string v3, "OUT_QUAD_BACK"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    or-int/lit8 v2, v2, 0x33

    .line 420
    :cond_14a
    and-int/lit16 v3, v0, 0x603

    const/16 v5, 0x603

    if-ne v3, v5, :cond_157

    .line 421
    const-string v3, "OUT_QUAD_SIDE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    or-int/lit16 v2, v2, 0x603

    .line 424
    :cond_157
    and-int/lit16 v3, v0, 0x107

    const/16 v5, 0x107

    if-ne v3, v5, :cond_164

    .line 425
    const-string v3, "OUT_SURROUND"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    or-int/lit16 v2, v2, 0x107

    .line 428
    :cond_164
    and-int/lit8 v3, v0, 0x37

    const/16 v5, 0x37

    if-ne v3, v5, :cond_171

    .line 429
    const-string v3, "OUT_PENTA"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    or-int/lit8 v2, v2, 0x37

    .line 432
    :cond_171
    and-int/lit8 v3, v0, 0x3f

    const/16 v5, 0x3f

    if-ne v3, v5, :cond_17e

    .line 433
    const-string v3, "OUT_5POINT1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    or-int/lit8 v2, v2, 0x3f

    .line 436
    :cond_17e
    and-int/lit8 v3, v0, 0x3f

    if-ne v3, v5, :cond_189

    .line 437
    const-string v3, "OUT_5POINT1_BACK"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    or-int/lit8 v2, v2, 0x3f

    .line 440
    :cond_189
    and-int/lit16 v3, v0, 0x60f

    const/16 v5, 0x60f

    if-ne v3, v5, :cond_196

    .line 441
    const-string v3, "OUT_5POINT1_SIDE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    or-int/lit16 v2, v2, 0x60f

    .line 444
    :cond_196
    and-int/lit16 v3, v0, 0x13f

    const/16 v5, 0x13f

    if-ne v3, v5, :cond_1a3

    .line 445
    const-string v3, "OUT_6POINT1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    or-int/lit16 v2, v2, 0x13f

    .line 448
    :cond_1a3
    and-int/lit16 v3, v0, 0x63f

    const/16 v5, 0x63f

    if-ne v3, v5, :cond_1b0

    .line 449
    const-string v3, "OUT_7POINT1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    or-int/lit16 v2, v2, 0x63f

    .line 452
    :cond_1b0
    const v3, 0x3ffff

    and-int/2addr v3, v0

    const v5, 0x3ffff

    if-ne v3, v5, :cond_1c2

    .line 453
    const-string v3, "OUT_ALL"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    const v3, 0x3ffff

    or-int/2addr v2, v3

    .line 456
    :cond_1c2
    and-int/lit8 v3, v0, 0x4

    if-ne v3, v4, :cond_1cd

    .line 457
    const-string v3, "IN_LEFT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    or-int/lit8 v2, v2, 0x4

    .line 460
    :cond_1cd
    and-int/lit8 v3, v0, 0x8

    if-ne v3, v6, :cond_1d8

    .line 461
    const-string v3, "IN_RIGHT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    or-int/lit8 v2, v2, 0x8

    .line 464
    :cond_1d8
    and-int/lit8 v3, v0, 0x10

    if-ne v3, v7, :cond_1e3

    .line 465
    const-string v3, "IN_FRONT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    or-int/lit8 v2, v2, 0x10

    .line 468
    :cond_1e3
    and-int/lit8 v3, v0, 0x20

    if-ne v3, v8, :cond_1ee

    .line 469
    const-string v3, "IN_BACK"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    or-int/lit8 v2, v2, 0x20

    .line 472
    :cond_1ee
    and-int/lit8 v3, v0, 0x40

    if-ne v3, v9, :cond_1f9

    .line 473
    const-string v3, "IN_LEFT_PROCESSED"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    or-int/lit8 v2, v2, 0x40

    .line 476
    :cond_1f9
    and-int/lit16 v3, v0, 0x80

    if-ne v3, v10, :cond_204

    .line 477
    const-string v3, "IN_RIGHT_PROCESSED"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    or-int/lit16 v2, v2, 0x80

    .line 480
    :cond_204
    and-int/lit16 v3, v0, 0x100

    if-ne v3, v11, :cond_20f

    .line 481
    const-string v3, "IN_FRONT_PROCESSED"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    or-int/lit16 v2, v2, 0x100

    .line 484
    :cond_20f
    and-int/lit16 v3, v0, 0x200

    if-ne v3, v12, :cond_21a

    .line 485
    const-string v3, "IN_BACK_PROCESSED"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    or-int/lit16 v2, v2, 0x200

    .line 488
    :cond_21a
    and-int/lit16 v3, v0, 0x400

    if-ne v3, v13, :cond_225

    .line 489
    const-string v3, "IN_PRESSURE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    or-int/lit16 v2, v2, 0x400

    .line 492
    :cond_225
    and-int/lit16 v3, v0, 0x800

    if-ne v3, v14, :cond_230

    .line 493
    const-string v3, "IN_X_AXIS"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    or-int/lit16 v2, v2, 0x800

    .line 496
    :cond_230
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_23d

    .line 497
    const-string v3, "IN_Y_AXIS"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    or-int/lit16 v2, v2, 0x1000

    .line 500
    :cond_23d
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_24a

    .line 501
    const-string v3, "IN_Z_AXIS"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    or-int/lit16 v2, v2, 0x2000

    .line 504
    :cond_24a
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_257

    .line 505
    const-string v3, "IN_VOICE_UPLINK"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    or-int/lit16 v2, v2, 0x4000

    .line 508
    :cond_257
    const v3, 0x8000

    and-int v4, v0, v3

    if-ne v4, v3, :cond_264

    .line 509
    const-string v4, "IN_VOICE_DNLINK"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    or-int/2addr v2, v3

    .line 512
    :cond_264
    and-int/lit8 v3, v0, 0x10

    if-ne v3, v7, :cond_26f

    .line 513
    const-string v3, "IN_MONO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    or-int/lit8 v2, v2, 0x10

    .line 516
    :cond_26f
    and-int/lit8 v3, v0, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_27c

    .line 517
    const-string v3, "IN_STEREO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    or-int/lit8 v2, v2, 0xc

    .line 520
    :cond_27c
    and-int/lit8 v3, v0, 0x30

    const/16 v4, 0x30

    if-ne v3, v4, :cond_289

    .line 521
    const-string v3, "IN_FRONT_BACK"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    or-int/lit8 v2, v2, 0x30

    .line 524
    :cond_289
    and-int/lit16 v3, v0, 0xfc

    const/16 v4, 0xfc

    if-ne v3, v4, :cond_296

    .line 525
    const-string v3, "IN_6"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    or-int/lit16 v2, v2, 0xfc

    .line 528
    :cond_296
    and-int/lit16 v3, v0, 0x4010

    const/16 v4, 0x4010

    if-ne v3, v4, :cond_2a3

    .line 529
    const-string v3, "IN_VOICE_UPLINK_MONO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    or-int/lit16 v2, v2, 0x4010

    .line 532
    :cond_2a3
    const v3, 0x8010

    and-int/2addr v3, v0

    const v4, 0x8010

    if-ne v3, v4, :cond_2b5

    .line 533
    const-string v3, "IN_VOICE_DNLINK_MONO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    const v3, 0x8010

    or-int/2addr v2, v3

    .line 536
    :cond_2b5
    const v3, 0xc010

    and-int/2addr v3, v0

    const v4, 0xc010

    if-ne v3, v4, :cond_2c7

    .line 537
    const-string v3, "IN_VOICE_CALL_MONO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    const v3, 0xc010

    or-int/2addr v2, v3

    .line 540
    :cond_2c7
    const v3, 0xfffc

    and-int/2addr v3, v0

    const v4, 0xfffc

    if-ne v3, v4, :cond_2d9

    .line 541
    const-string v3, "IN_ALL"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    const v3, 0xfffc

    or-int/2addr v2, v3

    .line 544
    :cond_2d9
    and-int/lit8 v3, v0, 0x1e

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_2e6

    .line 545
    const-string v3, "COUNT_MAX"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    or-int/lit8 v2, v2, 0x1e

    .line 548
    :cond_2e6
    const/high16 v3, -0x80000000

    and-int/2addr v3, v0

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2f5

    .line 549
    const-string v3, "INDEX_HDR"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    .line 552
    :cond_2f5
    const v3, -0x7fffffff

    and-int/2addr v3, v0

    const v4, -0x7fffffff

    if-ne v3, v4, :cond_307

    .line 553
    const-string v3, "INDEX_MASK_1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const v3, -0x7fffffff

    or-int/2addr v2, v3

    .line 556
    :cond_307
    const v3, -0x7ffffffd

    and-int/2addr v3, v0

    const v4, -0x7ffffffd

    if-ne v3, v4, :cond_319

    .line 557
    const-string v3, "INDEX_MASK_2"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    const v3, -0x7ffffffd

    or-int/2addr v2, v3

    .line 560
    :cond_319
    const v3, -0x7ffffff9

    and-int/2addr v3, v0

    const v4, -0x7ffffff9

    if-ne v3, v4, :cond_32b

    .line 561
    const-string v3, "INDEX_MASK_3"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    const v3, -0x7ffffff9

    or-int/2addr v2, v3

    .line 564
    :cond_32b
    const v3, -0x7ffffff1

    and-int/2addr v3, v0

    const v4, -0x7ffffff1

    if-ne v3, v4, :cond_33d

    .line 565
    const-string v3, "INDEX_MASK_4"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    const v3, -0x7ffffff1

    or-int/2addr v2, v3

    .line 568
    :cond_33d
    const v3, -0x7fffffe1

    and-int/2addr v3, v0

    const v4, -0x7fffffe1

    if-ne v3, v4, :cond_34f

    .line 569
    const-string v3, "INDEX_MASK_5"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    const v3, -0x7fffffe1

    or-int/2addr v2, v3

    .line 572
    :cond_34f
    const v3, -0x7fffffc1

    and-int/2addr v3, v0

    const v4, -0x7fffffc1

    if-ne v3, v4, :cond_361

    .line 573
    const-string v3, "INDEX_MASK_6"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    const v3, -0x7fffffc1

    or-int/2addr v2, v3

    .line 576
    :cond_361
    const v3, -0x7fffff81

    and-int/2addr v3, v0

    const v4, -0x7fffff81

    if-ne v3, v4, :cond_373

    .line 577
    const-string v3, "INDEX_MASK_7"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    const v3, -0x7fffff81

    or-int/2addr v2, v3

    .line 580
    :cond_373
    const v3, -0x7fffff01

    and-int/2addr v3, v0

    const v4, -0x7fffff01

    if-ne v3, v4, :cond_385

    .line 581
    const-string v3, "INDEX_MASK_8"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    const v3, -0x7fffff01

    or-int/2addr v2, v3

    .line 584
    :cond_385
    if-eq v0, v2, :cond_3a1

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v4, v2

    and-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_3a1
    const-string v3, " | "

    invoke-static {v3, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 17
    .param p0, "o"    # I

    .line 108
    move/from16 v0, p0

    if-nez v0, :cond_7

    .line 109
    const-string v1, "REPRESENTATION_POSITION"

    return-object v1

    .line 111
    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 112
    const-string v1, "REPRESENTATION_INDEX"

    return-object v1

    .line 114
    :cond_d
    if-nez v0, :cond_12

    .line 115
    const-string v1, "NONE"

    return-object v1

    .line 117
    :cond_12
    const/high16 v2, -0x40000000    # -2.0f

    if-ne v0, v2, :cond_19

    .line 118
    const-string v1, "INVALID"

    return-object v1

    .line 120
    :cond_19
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    .line 121
    const-string v1, "OUT_FRONT_LEFT"

    return-object v1

    .line 123
    :cond_1f
    if-ne v0, v1, :cond_24

    .line 124
    const-string v1, "OUT_FRONT_RIGHT"

    return-object v1

    .line 126
    :cond_24
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 127
    const-string v1, "OUT_FRONT_CENTER"

    return-object v1

    .line 129
    :cond_2a
    const/16 v3, 0x8

    if-ne v0, v3, :cond_31

    .line 130
    const-string v1, "OUT_LOW_FREQUENCY"

    return-object v1

    .line 132
    :cond_31
    const/16 v4, 0x10

    if-ne v0, v4, :cond_38

    .line 133
    const-string v1, "OUT_BACK_LEFT"

    return-object v1

    .line 135
    :cond_38
    const/16 v5, 0x20

    if-ne v0, v5, :cond_3f

    .line 136
    const-string v1, "OUT_BACK_RIGHT"

    return-object v1

    .line 138
    :cond_3f
    const/16 v6, 0x40

    if-ne v0, v6, :cond_46

    .line 139
    const-string v1, "OUT_FRONT_LEFT_OF_CENTER"

    return-object v1

    .line 141
    :cond_46
    const/16 v7, 0x80

    if-ne v0, v7, :cond_4d

    .line 142
    const-string v1, "OUT_FRONT_RIGHT_OF_CENTER"

    return-object v1

    .line 144
    :cond_4d
    const/16 v8, 0x100

    if-ne v0, v8, :cond_54

    .line 145
    const-string v1, "OUT_BACK_CENTER"

    return-object v1

    .line 147
    :cond_54
    const/16 v9, 0x200

    if-ne v0, v9, :cond_5b

    .line 148
    const-string v1, "OUT_SIDE_LEFT"

    return-object v1

    .line 150
    :cond_5b
    const/16 v10, 0x400

    if-ne v0, v10, :cond_62

    .line 151
    const-string v1, "OUT_SIDE_RIGHT"

    return-object v1

    .line 153
    :cond_62
    const/16 v11, 0x800

    if-ne v0, v11, :cond_69

    .line 154
    const-string v1, "OUT_TOP_CENTER"

    return-object v1

    .line 156
    :cond_69
    const/16 v12, 0x1000

    if-ne v0, v12, :cond_70

    .line 157
    const-string v1, "OUT_TOP_FRONT_LEFT"

    return-object v1

    .line 159
    :cond_70
    const/16 v13, 0x2000

    if-ne v0, v13, :cond_77

    .line 160
    const-string v1, "OUT_TOP_FRONT_CENTER"

    return-object v1

    .line 162
    :cond_77
    const/16 v14, 0x4000

    if-ne v0, v14, :cond_7e

    .line 163
    const-string v1, "OUT_TOP_FRONT_RIGHT"

    return-object v1

    .line 165
    :cond_7e
    const v15, 0x8000

    if-ne v0, v15, :cond_86

    .line 166
    const-string v1, "OUT_TOP_BACK_LEFT"

    return-object v1

    .line 168
    :cond_86
    const/high16 v15, 0x10000

    if-ne v0, v15, :cond_8d

    .line 169
    const-string v1, "OUT_TOP_BACK_CENTER"

    return-object v1

    .line 171
    :cond_8d
    const/high16 v15, 0x20000

    if-ne v0, v15, :cond_94

    .line 172
    const-string v1, "OUT_TOP_BACK_RIGHT"

    return-object v1

    .line 174
    :cond_94
    if-ne v0, v2, :cond_99

    .line 175
    const-string v1, "OUT_MONO"

    return-object v1

    .line 177
    :cond_99
    const/4 v2, 0x3

    if-ne v0, v2, :cond_9f

    .line 178
    const-string v1, "OUT_STEREO"

    return-object v1

    .line 180
    :cond_9f
    const/16 v2, 0xb

    if-ne v0, v2, :cond_a6

    .line 181
    const-string v1, "OUT_2POINT1"

    return-object v1

    .line 183
    :cond_a6
    const/16 v2, 0x33

    if-ne v0, v2, :cond_ad

    .line 184
    const-string v1, "OUT_QUAD"

    return-object v1

    .line 186
    :cond_ad
    if-ne v0, v2, :cond_b2

    .line 187
    const-string v1, "OUT_QUAD_BACK"

    return-object v1

    .line 189
    :cond_b2
    const/16 v2, 0x603

    if-ne v0, v2, :cond_b9

    .line 190
    const-string v1, "OUT_QUAD_SIDE"

    return-object v1

    .line 192
    :cond_b9
    const/16 v2, 0x107

    if-ne v0, v2, :cond_c0

    .line 193
    const-string v1, "OUT_SURROUND"

    return-object v1

    .line 195
    :cond_c0
    const/16 v2, 0x37

    if-ne v0, v2, :cond_c7

    .line 196
    const-string v1, "OUT_PENTA"

    return-object v1

    .line 198
    :cond_c7
    const/16 v2, 0x3f

    if-ne v0, v2, :cond_ce

    .line 199
    const-string v1, "OUT_5POINT1"

    return-object v1

    .line 201
    :cond_ce
    if-ne v0, v2, :cond_d3

    .line 202
    const-string v1, "OUT_5POINT1_BACK"

    return-object v1

    .line 204
    :cond_d3
    const/16 v2, 0x60f

    if-ne v0, v2, :cond_da

    .line 205
    const-string v1, "OUT_5POINT1_SIDE"

    return-object v1

    .line 207
    :cond_da
    const/16 v2, 0x13f

    if-ne v0, v2, :cond_e1

    .line 208
    const-string v1, "OUT_6POINT1"

    return-object v1

    .line 210
    :cond_e1
    const/16 v2, 0x63f

    if-ne v0, v2, :cond_e8

    .line 211
    const-string v1, "OUT_7POINT1"

    return-object v1

    .line 213
    :cond_e8
    const v2, 0x3ffff

    if-ne v0, v2, :cond_f0

    .line 214
    const-string v1, "OUT_ALL"

    return-object v1

    .line 216
    :cond_f0
    if-ne v0, v1, :cond_f5

    .line 217
    const-string v1, "IN_LEFT"

    return-object v1

    .line 219
    :cond_f5
    if-ne v0, v3, :cond_fa

    .line 220
    const-string v1, "IN_RIGHT"

    return-object v1

    .line 222
    :cond_fa
    if-ne v0, v4, :cond_ff

    .line 223
    const-string v1, "IN_FRONT"

    return-object v1

    .line 225
    :cond_ff
    if-ne v0, v5, :cond_104

    .line 226
    const-string v1, "IN_BACK"

    return-object v1

    .line 228
    :cond_104
    if-ne v0, v6, :cond_109

    .line 229
    const-string v1, "IN_LEFT_PROCESSED"

    return-object v1

    .line 231
    :cond_109
    if-ne v0, v7, :cond_10e

    .line 232
    const-string v1, "IN_RIGHT_PROCESSED"

    return-object v1

    .line 234
    :cond_10e
    if-ne v0, v8, :cond_113

    .line 235
    const-string v1, "IN_FRONT_PROCESSED"

    return-object v1

    .line 237
    :cond_113
    if-ne v0, v9, :cond_118

    .line 238
    const-string v1, "IN_BACK_PROCESSED"

    return-object v1

    .line 240
    :cond_118
    if-ne v0, v10, :cond_11d

    .line 241
    const-string v1, "IN_PRESSURE"

    return-object v1

    .line 243
    :cond_11d
    if-ne v0, v11, :cond_122

    .line 244
    const-string v1, "IN_X_AXIS"

    return-object v1

    .line 246
    :cond_122
    if-ne v0, v12, :cond_127

    .line 247
    const-string v1, "IN_Y_AXIS"

    return-object v1

    .line 249
    :cond_127
    if-ne v0, v13, :cond_12c

    .line 250
    const-string v1, "IN_Z_AXIS"

    return-object v1

    .line 252
    :cond_12c
    if-ne v0, v14, :cond_131

    .line 253
    const-string v1, "IN_VOICE_UPLINK"

    return-object v1

    .line 255
    :cond_131
    const v1, 0x8000

    if-ne v0, v1, :cond_139

    .line 256
    const-string v1, "IN_VOICE_DNLINK"

    return-object v1

    .line 258
    :cond_139
    if-ne v0, v4, :cond_13e

    .line 259
    const-string v1, "IN_MONO"

    return-object v1

    .line 261
    :cond_13e
    const/16 v1, 0xc

    if-ne v0, v1, :cond_145

    .line 262
    const-string v1, "IN_STEREO"

    return-object v1

    .line 264
    :cond_145
    const/16 v1, 0x30

    if-ne v0, v1, :cond_14c

    .line 265
    const-string v1, "IN_FRONT_BACK"

    return-object v1

    .line 267
    :cond_14c
    const/16 v1, 0xfc

    if-ne v0, v1, :cond_153

    .line 268
    const-string v1, "IN_6"

    return-object v1

    .line 270
    :cond_153
    const/16 v1, 0x4010

    if-ne v0, v1, :cond_15a

    .line 271
    const-string v1, "IN_VOICE_UPLINK_MONO"

    return-object v1

    .line 273
    :cond_15a
    const v1, 0x8010

    if-ne v0, v1, :cond_162

    .line 274
    const-string v1, "IN_VOICE_DNLINK_MONO"

    return-object v1

    .line 276
    :cond_162
    const v1, 0xc010

    if-ne v0, v1, :cond_16a

    .line 277
    const-string v1, "IN_VOICE_CALL_MONO"

    return-object v1

    .line 279
    :cond_16a
    const v1, 0xfffc

    if-ne v0, v1, :cond_172

    .line 280
    const-string v1, "IN_ALL"

    return-object v1

    .line 282
    :cond_172
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_179

    .line 283
    const-string v1, "COUNT_MAX"

    return-object v1

    .line 285
    :cond_179
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_180

    .line 286
    const-string v1, "INDEX_HDR"

    return-object v1

    .line 288
    :cond_180
    const v1, -0x7fffffff

    if-ne v0, v1, :cond_188

    .line 289
    const-string v1, "INDEX_MASK_1"

    return-object v1

    .line 291
    :cond_188
    const v1, -0x7ffffffd

    if-ne v0, v1, :cond_190

    .line 292
    const-string v1, "INDEX_MASK_2"

    return-object v1

    .line 294
    :cond_190
    const v1, -0x7ffffff9

    if-ne v0, v1, :cond_198

    .line 295
    const-string v1, "INDEX_MASK_3"

    return-object v1

    .line 297
    :cond_198
    const v1, -0x7ffffff1

    if-ne v0, v1, :cond_1a0

    .line 298
    const-string v1, "INDEX_MASK_4"

    return-object v1

    .line 300
    :cond_1a0
    const v1, -0x7fffffe1

    if-ne v0, v1, :cond_1a8

    .line 301
    const-string v1, "INDEX_MASK_5"

    return-object v1

    .line 303
    :cond_1a8
    const v1, -0x7fffffc1

    if-ne v0, v1, :cond_1b0

    .line 304
    const-string v1, "INDEX_MASK_6"

    return-object v1

    .line 306
    :cond_1b0
    const v1, -0x7fffff81

    if-ne v0, v1, :cond_1b8

    .line 307
    const-string v1, "INDEX_MASK_7"

    return-object v1

    .line 309
    :cond_1b8
    const v1, -0x7fffff01

    if-ne v0, v1, :cond_1c0

    .line 310
    const-string v1, "INDEX_MASK_8"

    return-object v1

    .line 312
    :cond_1c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
