.class public final Landroid/hardware/audio/common/V2_0/AudioDevice;
.super Ljava/lang/Object;
.source "AudioDevice.java"


# static fields
.field public static final BIT_DEFAULT:I = 0x40000000

.field public static final BIT_IN:I = -0x80000000

.field public static final IN_ALL:I = -0x3ce00001

.field public static final IN_ALL_SCO:I = -0x7ffffff8

.field public static final IN_ALL_USB:I = -0x7dffe800

.field public static final IN_AMBIENT:I = -0x7ffffffe

.field public static final IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final IN_BACK_MIC:I = -0x7fffff80

.field public static final IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final IN_BUS:I = -0x7ff00000

.field public static final IN_COMMUNICATION:I = -0x7fffffff

.field public static final IN_DEFAULT:I = -0x40000000

.field public static final IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final IN_FM_TUNER:I = -0x7fffe000

.field public static final IN_HDMI:I = -0x7fffffe0

.field public static final IN_IP:I = -0x7ff80000

.field public static final IN_LINE:I = -0x7fff8000

.field public static final IN_LOOPBACK:I = -0x7ffc0000

.field public static final IN_PROXY:I = -0x7f000000

.field public static final IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final IN_SPDIF:I = -0x7fff0000

.field public static final IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final IN_TV_TUNER:I = -0x7fffc000

.field public static final IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final IN_USB_DEVICE:I = -0x7ffff000

.field public static final IN_USB_HEADSET:I = -0x7e000000

.field public static final IN_VOICE_CALL:I = -0x7fffffc0

.field public static final IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final NONE:I = 0x0

.field public static final OUT_ALL:I = 0x47ffffff

.field public static final OUT_ALL_A2DP:I = 0x380

.field public static final OUT_ALL_SCO:I = 0x70

.field public static final OUT_ALL_USB:I = 0x4006000

.field public static final OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final OUT_AUX_DIGITAL:I = 0x400

.field public static final OUT_AUX_LINE:I = 0x200000

.field public static final OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final OUT_BLUETOOTH_SCO:I = 0x10

.field public static final OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final OUT_BUS:I = 0x1000000

.field public static final OUT_DEFAULT:I = 0x40000000

.field public static final OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final OUT_EARPIECE:I = 0x1

.field public static final OUT_FM:I = 0x100000

.field public static final OUT_HDMI:I = 0x400

.field public static final OUT_HDMI_ARC:I = 0x40000

.field public static final OUT_IP:I = 0x800000

.field public static final OUT_LINE:I = 0x20000

.field public static final OUT_PROXY:I = 0x2000000

.field public static final OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final OUT_SPDIF:I = 0x80000

.field public static final OUT_SPEAKER:I = 0x2

.field public static final OUT_SPEAKER_SAFE:I = 0x400000

.field public static final OUT_TELEPHONY_TX:I = 0x10000

.field public static final OUT_USB_ACCESSORY:I = 0x2000

.field public static final OUT_USB_DEVICE:I = 0x4000

.field public static final OUT_USB_HEADSET:I = 0x4000000

.field public static final OUT_WIRED_HEADPHONE:I = 0x8

.field public static final OUT_WIRED_HEADSET:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 6
    .param p0, "o"    # I

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 332
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const/high16 v2, -0x80000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_17

    .line 334
    const-string v3, "BIT_IN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    or-int/2addr v1, v2

    .line 337
    :cond_17
    const/high16 v2, 0x40000000    # 2.0f

    and-int v3, p0, v2

    if-ne v3, v2, :cond_23

    .line 338
    const-string v3, "BIT_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    or-int/2addr v1, v2

    .line 341
    :cond_23
    and-int/lit8 v3, p0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    .line 342
    const-string v3, "OUT_EARPIECE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    or-int/lit8 v1, v1, 0x1

    .line 345
    :cond_2f
    and-int/lit8 v3, p0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    .line 346
    const-string v3, "OUT_SPEAKER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    or-int/lit8 v1, v1, 0x2

    .line 349
    :cond_3b
    and-int/lit8 v3, p0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_47

    .line 350
    const-string v3, "OUT_WIRED_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    or-int/lit8 v1, v1, 0x4

    .line 353
    :cond_47
    and-int/lit8 v3, p0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_54

    .line 354
    const-string v3, "OUT_WIRED_HEADPHONE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    or-int/lit8 v1, v1, 0x8

    .line 357
    :cond_54
    and-int/lit8 v3, p0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_61

    .line 358
    const-string v3, "OUT_BLUETOOTH_SCO"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    or-int/lit8 v1, v1, 0x10

    .line 361
    :cond_61
    and-int/lit8 v3, p0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6e

    .line 362
    const-string v3, "OUT_BLUETOOTH_SCO_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    or-int/lit8 v1, v1, 0x20

    .line 365
    :cond_6e
    and-int/lit8 v3, p0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7b

    .line 366
    const-string v3, "OUT_BLUETOOTH_SCO_CARKIT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    or-int/lit8 v1, v1, 0x40

    .line 369
    :cond_7b
    and-int/lit16 v3, p0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_88

    .line 370
    const-string v3, "OUT_BLUETOOTH_A2DP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    or-int/lit16 v1, v1, 0x80

    .line 373
    :cond_88
    and-int/lit16 v3, p0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_95

    .line 374
    const-string v3, "OUT_BLUETOOTH_A2DP_HEADPHONES"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    or-int/lit16 v1, v1, 0x100

    .line 377
    :cond_95
    and-int/lit16 v3, p0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_a2

    .line 378
    const-string v3, "OUT_BLUETOOTH_A2DP_SPEAKER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    or-int/lit16 v1, v1, 0x200

    .line 381
    :cond_a2
    and-int/lit16 v3, p0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_af

    .line 382
    const-string v3, "OUT_AUX_DIGITAL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    or-int/lit16 v1, v1, 0x400

    .line 385
    :cond_af
    and-int/lit16 v3, p0, 0x400

    if-ne v3, v4, :cond_ba

    .line 386
    const-string v3, "OUT_HDMI"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    or-int/lit16 v1, v1, 0x400

    .line 389
    :cond_ba
    and-int/lit16 v3, p0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_c7

    .line 390
    const-string v3, "OUT_ANLG_DOCK_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    or-int/lit16 v1, v1, 0x800

    .line 393
    :cond_c7
    and-int/lit16 v3, p0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_d4

    .line 394
    const-string v3, "OUT_DGTL_DOCK_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    or-int/lit16 v1, v1, 0x1000

    .line 397
    :cond_d4
    and-int/lit16 v3, p0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_e1

    .line 398
    const-string v3, "OUT_USB_ACCESSORY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    or-int/lit16 v1, v1, 0x2000

    .line 401
    :cond_e1
    and-int/lit16 v3, p0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_ee

    .line 402
    const-string v3, "OUT_USB_DEVICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    or-int/lit16 v1, v1, 0x4000

    .line 405
    :cond_ee
    const v3, 0x8000

    and-int v4, p0, v3

    if-ne v4, v3, :cond_fb

    .line 406
    const-string v4, "OUT_REMOTE_SUBMIX"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    or-int/2addr v1, v3

    .line 409
    :cond_fb
    const/high16 v3, 0x10000

    and-int v4, p0, v3

    if-ne v4, v3, :cond_107

    .line 410
    const-string v4, "OUT_TELEPHONY_TX"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    or-int/2addr v1, v3

    .line 413
    :cond_107
    const/high16 v3, 0x20000

    and-int/2addr v3, p0

    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_116

    .line 414
    const-string v3, "OUT_LINE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    const/high16 v3, 0x20000

    or-int/2addr v1, v3

    .line 417
    :cond_116
    const/high16 v3, 0x40000

    and-int/2addr v3, p0

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_125

    .line 418
    const-string v3, "OUT_HDMI_ARC"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    const/high16 v3, 0x40000

    or-int/2addr v1, v3

    .line 421
    :cond_125
    const/high16 v3, 0x80000

    and-int/2addr v3, p0

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_134

    .line 422
    const-string v3, "OUT_SPDIF"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    const/high16 v3, 0x80000

    or-int/2addr v1, v3

    .line 425
    :cond_134
    const/high16 v3, 0x100000

    and-int/2addr v3, p0

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_143

    .line 426
    const-string v3, "OUT_FM"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    const/high16 v3, 0x100000

    or-int/2addr v1, v3

    .line 429
    :cond_143
    const/high16 v3, 0x200000

    and-int/2addr v3, p0

    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_152

    .line 430
    const-string v3, "OUT_AUX_LINE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    const/high16 v3, 0x200000

    or-int/2addr v1, v3

    .line 433
    :cond_152
    const/high16 v3, 0x400000

    and-int/2addr v3, p0

    const/high16 v4, 0x400000

    if-ne v3, v4, :cond_161

    .line 434
    const-string v3, "OUT_SPEAKER_SAFE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    const/high16 v3, 0x400000

    or-int/2addr v1, v3

    .line 437
    :cond_161
    const/high16 v3, 0x800000

    and-int/2addr v3, p0

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_170

    .line 438
    const-string v3, "OUT_IP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    const/high16 v3, 0x800000

    or-int/2addr v1, v3

    .line 441
    :cond_170
    const/high16 v3, 0x1000000

    and-int/2addr v3, p0

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_17f

    .line 442
    const-string v3, "OUT_BUS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    const/high16 v3, 0x1000000

    or-int/2addr v1, v3

    .line 445
    :cond_17f
    const/high16 v3, 0x2000000

    and-int/2addr v3, p0

    const/high16 v4, 0x2000000

    if-ne v3, v4, :cond_18e

    .line 446
    const-string v3, "OUT_PROXY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    const/high16 v3, 0x2000000

    or-int/2addr v1, v3

    .line 449
    :cond_18e
    const/high16 v3, 0x4000000

    and-int/2addr v3, p0

    const/high16 v4, 0x4000000

    if-ne v3, v4, :cond_19d

    .line 450
    const-string v3, "OUT_USB_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    const/high16 v3, 0x4000000

    or-int/2addr v1, v3

    .line 453
    :cond_19d
    and-int v3, p0, v2

    if-ne v3, v2, :cond_1a7

    .line 454
    const-string v3, "OUT_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    or-int/2addr v1, v2

    .line 457
    :cond_1a7
    const v2, 0x47ffffff

    and-int/2addr v2, p0

    const v3, 0x47ffffff

    if-ne v2, v3, :cond_1b9

    .line 458
    const-string v2, "OUT_ALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    const v2, 0x47ffffff

    or-int/2addr v1, v2

    .line 461
    :cond_1b9
    and-int/lit16 v2, p0, 0x380

    const/16 v3, 0x380

    if-ne v2, v3, :cond_1c6

    .line 462
    const-string v2, "OUT_ALL_A2DP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    or-int/lit16 v1, v1, 0x380

    .line 465
    :cond_1c6
    and-int/lit8 v2, p0, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_1d3

    .line 466
    const-string v2, "OUT_ALL_SCO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    or-int/lit8 v1, v1, 0x70

    .line 469
    :cond_1d3
    const v2, 0x4006000

    and-int/2addr v2, p0

    const v3, 0x4006000

    if-ne v2, v3, :cond_1e5

    .line 470
    const-string v2, "OUT_ALL_USB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    const v2, 0x4006000

    or-int/2addr v1, v2

    .line 473
    :cond_1e5
    const v2, -0x7fffffff

    and-int/2addr v2, p0

    const v3, -0x7fffffff

    if-ne v2, v3, :cond_1f7

    .line 474
    const-string v2, "IN_COMMUNICATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    const v2, -0x7fffffff

    or-int/2addr v1, v2

    .line 477
    :cond_1f7
    const v2, -0x7ffffffe

    and-int/2addr v2, p0

    const v3, -0x7ffffffe

    if-ne v2, v3, :cond_209

    .line 478
    const-string v2, "IN_AMBIENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    const v2, -0x7ffffffe

    or-int/2addr v1, v2

    .line 481
    :cond_209
    const v2, -0x7ffffffc

    and-int/2addr v2, p0

    const v3, -0x7ffffffc

    if-ne v2, v3, :cond_21b

    .line 482
    const-string v2, "IN_BUILTIN_MIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    const v2, -0x7ffffffc

    or-int/2addr v1, v2

    .line 485
    :cond_21b
    const v2, -0x7ffffff8

    and-int v3, p0, v2

    if-ne v3, v2, :cond_228

    .line 486
    const-string v3, "IN_BLUETOOTH_SCO_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    or-int/2addr v1, v2

    .line 489
    :cond_228
    const v3, -0x7ffffff0

    and-int/2addr v3, p0

    const v4, -0x7ffffff0

    if-ne v3, v4, :cond_23a

    .line 490
    const-string v3, "IN_WIRED_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    const v3, -0x7ffffff0

    or-int/2addr v1, v3

    .line 493
    :cond_23a
    const v3, -0x7fffffe0

    and-int v4, p0, v3

    if-ne v4, v3, :cond_247

    .line 494
    const-string v4, "IN_AUX_DIGITAL"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    or-int/2addr v1, v3

    .line 497
    :cond_247
    and-int v4, p0, v3

    if-ne v4, v3, :cond_251

    .line 498
    const-string v4, "IN_HDMI"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    or-int/2addr v1, v3

    .line 501
    :cond_251
    const v3, -0x7fffffc0

    and-int v4, p0, v3

    if-ne v4, v3, :cond_25e

    .line 502
    const-string v4, "IN_VOICE_CALL"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    or-int/2addr v1, v3

    .line 505
    :cond_25e
    and-int v4, p0, v3

    if-ne v4, v3, :cond_268

    .line 506
    const-string v4, "IN_TELEPHONY_RX"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    or-int/2addr v1, v3

    .line 509
    :cond_268
    const v3, -0x7fffff80

    and-int/2addr v3, p0

    const v4, -0x7fffff80

    if-ne v3, v4, :cond_27a

    .line 510
    const-string v3, "IN_BACK_MIC"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    const v3, -0x7fffff80

    or-int/2addr v1, v3

    .line 513
    :cond_27a
    const v3, -0x7fffff00

    and-int/2addr v3, p0

    const v4, -0x7fffff00

    if-ne v3, v4, :cond_28c

    .line 514
    const-string v3, "IN_REMOTE_SUBMIX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const v3, -0x7fffff00

    or-int/2addr v1, v3

    .line 517
    :cond_28c
    const v3, -0x7ffffe00

    and-int/2addr v3, p0

    const v4, -0x7ffffe00

    if-ne v3, v4, :cond_29e

    .line 518
    const-string v3, "IN_ANLG_DOCK_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    const v3, -0x7ffffe00

    or-int/2addr v1, v3

    .line 521
    :cond_29e
    const v3, -0x7ffffc00

    and-int/2addr v3, p0

    const v4, -0x7ffffc00

    if-ne v3, v4, :cond_2b0

    .line 522
    const-string v3, "IN_DGTL_DOCK_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    const v3, -0x7ffffc00

    or-int/2addr v1, v3

    .line 525
    :cond_2b0
    const v3, -0x7ffff800

    and-int/2addr v3, p0

    const v4, -0x7ffff800

    if-ne v3, v4, :cond_2c2

    .line 526
    const-string v3, "IN_USB_ACCESSORY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    const v3, -0x7ffff800

    or-int/2addr v1, v3

    .line 529
    :cond_2c2
    const v3, -0x7ffff000

    and-int/2addr v3, p0

    const v4, -0x7ffff000

    if-ne v3, v4, :cond_2d4

    .line 530
    const-string v3, "IN_USB_DEVICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    const v3, -0x7ffff000

    or-int/2addr v1, v3

    .line 533
    :cond_2d4
    const v3, -0x7fffe000

    and-int/2addr v3, p0

    const v4, -0x7fffe000

    if-ne v3, v4, :cond_2e6

    .line 534
    const-string v3, "IN_FM_TUNER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    const v3, -0x7fffe000

    or-int/2addr v1, v3

    .line 537
    :cond_2e6
    const v3, -0x7fffc000

    and-int/2addr v3, p0

    const v4, -0x7fffc000

    if-ne v3, v4, :cond_2f8

    .line 538
    const-string v3, "IN_TV_TUNER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const v3, -0x7fffc000

    or-int/2addr v1, v3

    .line 541
    :cond_2f8
    const v3, -0x7fff8000

    and-int/2addr v3, p0

    const v4, -0x7fff8000

    if-ne v3, v4, :cond_30a

    .line 542
    const-string v3, "IN_LINE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    const v3, -0x7fff8000

    or-int/2addr v1, v3

    .line 545
    :cond_30a
    const/high16 v3, -0x7fff0000

    and-int/2addr v3, p0

    const/high16 v4, -0x7fff0000

    if-ne v3, v4, :cond_319

    .line 546
    const-string v3, "IN_SPDIF"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    const/high16 v3, -0x7fff0000

    or-int/2addr v1, v3

    .line 549
    :cond_319
    const/high16 v3, -0x7ffe0000

    and-int/2addr v3, p0

    const/high16 v4, -0x7ffe0000

    if-ne v3, v4, :cond_328

    .line 550
    const-string v3, "IN_BLUETOOTH_A2DP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    const/high16 v3, -0x7ffe0000

    or-int/2addr v1, v3

    .line 553
    :cond_328
    const/high16 v3, -0x7ffc0000

    and-int/2addr v3, p0

    const/high16 v4, -0x7ffc0000

    if-ne v3, v4, :cond_337

    .line 554
    const-string v3, "IN_LOOPBACK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    const/high16 v3, -0x7ffc0000

    or-int/2addr v1, v3

    .line 557
    :cond_337
    const/high16 v3, -0x7ff80000

    and-int/2addr v3, p0

    const/high16 v4, -0x7ff80000

    if-ne v3, v4, :cond_346

    .line 558
    const-string v3, "IN_IP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    const/high16 v3, -0x7ff80000

    or-int/2addr v1, v3

    .line 561
    :cond_346
    const/high16 v3, -0x7ff00000

    and-int/2addr v3, p0

    const/high16 v4, -0x7ff00000

    if-ne v3, v4, :cond_355

    .line 562
    const-string v3, "IN_BUS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    const/high16 v3, -0x7ff00000

    or-int/2addr v1, v3

    .line 565
    :cond_355
    const/high16 v3, -0x7f000000

    and-int/2addr v3, p0

    const/high16 v4, -0x7f000000

    if-ne v3, v4, :cond_364

    .line 566
    const-string v3, "IN_PROXY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    const/high16 v3, -0x7f000000

    or-int/2addr v1, v3

    .line 569
    :cond_364
    const/high16 v3, -0x7e000000

    and-int/2addr v3, p0

    const/high16 v4, -0x7e000000

    if-ne v3, v4, :cond_373

    .line 570
    const-string v3, "IN_USB_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    const/high16 v3, -0x7e000000

    or-int/2addr v1, v3

    .line 573
    :cond_373
    const/high16 v3, -0x40000000    # -2.0f

    and-int/2addr v3, p0

    const/high16 v4, -0x40000000    # -2.0f

    if-ne v3, v4, :cond_382

    .line 574
    const-string v3, "IN_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    const/high16 v3, -0x40000000    # -2.0f

    or-int/2addr v1, v3

    .line 577
    :cond_382
    const v3, -0x3ce00001    # -159.99998f

    and-int/2addr v3, p0

    const v4, -0x3ce00001    # -159.99998f

    if-ne v3, v4, :cond_394

    .line 578
    const-string v3, "IN_ALL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    const v3, -0x3ce00001    # -159.99998f

    or-int/2addr v1, v3

    .line 581
    :cond_394
    and-int v3, p0, v2

    if-ne v3, v2, :cond_39e

    .line 582
    const-string v3, "IN_ALL_SCO"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    or-int/2addr v1, v2

    .line 585
    :cond_39e
    const v2, -0x7dffe800

    and-int/2addr v2, p0

    const v3, -0x7dffe800

    if-ne v2, v3, :cond_3b0

    .line 586
    const-string v2, "IN_ALL_USB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    const v2, -0x7dffe800

    or-int/2addr v1, v2

    .line 589
    :cond_3b0
    if-eq p0, v1, :cond_3cc

    .line 590
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

    .line 592
    :cond_3cc
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 131
    if-nez p0, :cond_5

    .line 132
    const-string v0, "NONE"

    return-object v0

    .line 134
    :cond_5
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_c

    .line 135
    const-string v0, "BIT_IN"

    return-object v0

    .line 137
    :cond_c
    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_13

    .line 138
    const-string v0, "BIT_DEFAULT"

    return-object v0

    .line 140
    :cond_13
    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    .line 141
    const-string v0, "OUT_EARPIECE"

    return-object v0

    .line 143
    :cond_19
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1f

    .line 144
    const-string v0, "OUT_SPEAKER"

    return-object v0

    .line 146
    :cond_1f
    const/4 v1, 0x4

    if-ne p0, v1, :cond_25

    .line 147
    const-string v0, "OUT_WIRED_HEADSET"

    return-object v0

    .line 149
    :cond_25
    const/16 v1, 0x8

    if-ne p0, v1, :cond_2c

    .line 150
    const-string v0, "OUT_WIRED_HEADPHONE"

    return-object v0

    .line 152
    :cond_2c
    const/16 v1, 0x10

    if-ne p0, v1, :cond_33

    .line 153
    const-string v0, "OUT_BLUETOOTH_SCO"

    return-object v0

    .line 155
    :cond_33
    const/16 v1, 0x20

    if-ne p0, v1, :cond_3a

    .line 156
    const-string v0, "OUT_BLUETOOTH_SCO_HEADSET"

    return-object v0

    .line 158
    :cond_3a
    const/16 v1, 0x40

    if-ne p0, v1, :cond_41

    .line 159
    const-string v0, "OUT_BLUETOOTH_SCO_CARKIT"

    return-object v0

    .line 161
    :cond_41
    const/16 v1, 0x80

    if-ne p0, v1, :cond_48

    .line 162
    const-string v0, "OUT_BLUETOOTH_A2DP"

    return-object v0

    .line 164
    :cond_48
    const/16 v1, 0x100

    if-ne p0, v1, :cond_4f

    .line 165
    const-string v0, "OUT_BLUETOOTH_A2DP_HEADPHONES"

    return-object v0

    .line 167
    :cond_4f
    const/16 v1, 0x200

    if-ne p0, v1, :cond_56

    .line 168
    const-string v0, "OUT_BLUETOOTH_A2DP_SPEAKER"

    return-object v0

    .line 170
    :cond_56
    const/16 v1, 0x400

    if-ne p0, v1, :cond_5d

    .line 171
    const-string v0, "OUT_AUX_DIGITAL"

    return-object v0

    .line 173
    :cond_5d
    if-ne p0, v1, :cond_62

    .line 174
    const-string v0, "OUT_HDMI"

    return-object v0

    .line 176
    :cond_62
    const/16 v1, 0x800

    if-ne p0, v1, :cond_69

    .line 177
    const-string v0, "OUT_ANLG_DOCK_HEADSET"

    return-object v0

    .line 179
    :cond_69
    const/16 v1, 0x1000

    if-ne p0, v1, :cond_70

    .line 180
    const-string v0, "OUT_DGTL_DOCK_HEADSET"

    return-object v0

    .line 182
    :cond_70
    const/16 v1, 0x2000

    if-ne p0, v1, :cond_77

    .line 183
    const-string v0, "OUT_USB_ACCESSORY"

    return-object v0

    .line 185
    :cond_77
    const/16 v1, 0x4000

    if-ne p0, v1, :cond_7e

    .line 186
    const-string v0, "OUT_USB_DEVICE"

    return-object v0

    .line 188
    :cond_7e
    const v1, 0x8000

    if-ne p0, v1, :cond_86

    .line 189
    const-string v0, "OUT_REMOTE_SUBMIX"

    return-object v0

    .line 191
    :cond_86
    const/high16 v1, 0x10000

    if-ne p0, v1, :cond_8d

    .line 192
    const-string v0, "OUT_TELEPHONY_TX"

    return-object v0

    .line 194
    :cond_8d
    const/high16 v1, 0x20000

    if-ne p0, v1, :cond_94

    .line 195
    const-string v0, "OUT_LINE"

    return-object v0

    .line 197
    :cond_94
    const/high16 v1, 0x40000

    if-ne p0, v1, :cond_9b

    .line 198
    const-string v0, "OUT_HDMI_ARC"

    return-object v0

    .line 200
    :cond_9b
    const/high16 v1, 0x80000

    if-ne p0, v1, :cond_a2

    .line 201
    const-string v0, "OUT_SPDIF"

    return-object v0

    .line 203
    :cond_a2
    const/high16 v1, 0x100000

    if-ne p0, v1, :cond_a9

    .line 204
    const-string v0, "OUT_FM"

    return-object v0

    .line 206
    :cond_a9
    const/high16 v1, 0x200000

    if-ne p0, v1, :cond_b0

    .line 207
    const-string v0, "OUT_AUX_LINE"

    return-object v0

    .line 209
    :cond_b0
    const/high16 v1, 0x400000

    if-ne p0, v1, :cond_b7

    .line 210
    const-string v0, "OUT_SPEAKER_SAFE"

    return-object v0

    .line 212
    :cond_b7
    const/high16 v1, 0x800000

    if-ne p0, v1, :cond_be

    .line 213
    const-string v0, "OUT_IP"

    return-object v0

    .line 215
    :cond_be
    const/high16 v1, 0x1000000

    if-ne p0, v1, :cond_c5

    .line 216
    const-string v0, "OUT_BUS"

    return-object v0

    .line 218
    :cond_c5
    const/high16 v1, 0x2000000

    if-ne p0, v1, :cond_cc

    .line 219
    const-string v0, "OUT_PROXY"

    return-object v0

    .line 221
    :cond_cc
    const/high16 v1, 0x4000000

    if-ne p0, v1, :cond_d3

    .line 222
    const-string v0, "OUT_USB_HEADSET"

    return-object v0

    .line 224
    :cond_d3
    if-ne p0, v0, :cond_d8

    .line 225
    const-string v0, "OUT_DEFAULT"

    return-object v0

    .line 227
    :cond_d8
    const v0, 0x47ffffff

    if-ne p0, v0, :cond_e0

    .line 228
    const-string v0, "OUT_ALL"

    return-object v0

    .line 230
    :cond_e0
    const/16 v0, 0x380

    if-ne p0, v0, :cond_e7

    .line 231
    const-string v0, "OUT_ALL_A2DP"

    return-object v0

    .line 233
    :cond_e7
    const/16 v0, 0x70

    if-ne p0, v0, :cond_ee

    .line 234
    const-string v0, "OUT_ALL_SCO"

    return-object v0

    .line 236
    :cond_ee
    const v0, 0x4006000

    if-ne p0, v0, :cond_f6

    .line 237
    const-string v0, "OUT_ALL_USB"

    return-object v0

    .line 239
    :cond_f6
    const v0, -0x7fffffff

    if-ne p0, v0, :cond_fe

    .line 240
    const-string v0, "IN_COMMUNICATION"

    return-object v0

    .line 242
    :cond_fe
    const v0, -0x7ffffffe

    if-ne p0, v0, :cond_106

    .line 243
    const-string v0, "IN_AMBIENT"

    return-object v0

    .line 245
    :cond_106
    const v0, -0x7ffffffc

    if-ne p0, v0, :cond_10e

    .line 246
    const-string v0, "IN_BUILTIN_MIC"

    return-object v0

    .line 248
    :cond_10e
    const v0, -0x7ffffff8

    if-ne p0, v0, :cond_116

    .line 249
    const-string v0, "IN_BLUETOOTH_SCO_HEADSET"

    return-object v0

    .line 251
    :cond_116
    const v1, -0x7ffffff0

    if-ne p0, v1, :cond_11e

    .line 252
    const-string v0, "IN_WIRED_HEADSET"

    return-object v0

    .line 254
    :cond_11e
    const v1, -0x7fffffe0

    if-ne p0, v1, :cond_126

    .line 255
    const-string v0, "IN_AUX_DIGITAL"

    return-object v0

    .line 257
    :cond_126
    if-ne p0, v1, :cond_12b

    .line 258
    const-string v0, "IN_HDMI"

    return-object v0

    .line 260
    :cond_12b
    const v1, -0x7fffffc0

    if-ne p0, v1, :cond_133

    .line 261
    const-string v0, "IN_VOICE_CALL"

    return-object v0

    .line 263
    :cond_133
    if-ne p0, v1, :cond_138

    .line 264
    const-string v0, "IN_TELEPHONY_RX"

    return-object v0

    .line 266
    :cond_138
    const v1, -0x7fffff80

    if-ne p0, v1, :cond_140

    .line 267
    const-string v0, "IN_BACK_MIC"

    return-object v0

    .line 269
    :cond_140
    const v1, -0x7fffff00

    if-ne p0, v1, :cond_148

    .line 270
    const-string v0, "IN_REMOTE_SUBMIX"

    return-object v0

    .line 272
    :cond_148
    const v1, -0x7ffffe00

    if-ne p0, v1, :cond_150

    .line 273
    const-string v0, "IN_ANLG_DOCK_HEADSET"

    return-object v0

    .line 275
    :cond_150
    const v1, -0x7ffffc00

    if-ne p0, v1, :cond_158

    .line 276
    const-string v0, "IN_DGTL_DOCK_HEADSET"

    return-object v0

    .line 278
    :cond_158
    const v1, -0x7ffff800

    if-ne p0, v1, :cond_160

    .line 279
    const-string v0, "IN_USB_ACCESSORY"

    return-object v0

    .line 281
    :cond_160
    const v1, -0x7ffff000

    if-ne p0, v1, :cond_168

    .line 282
    const-string v0, "IN_USB_DEVICE"

    return-object v0

    .line 284
    :cond_168
    const v1, -0x7fffe000

    if-ne p0, v1, :cond_170

    .line 285
    const-string v0, "IN_FM_TUNER"

    return-object v0

    .line 287
    :cond_170
    const v1, -0x7fffc000

    if-ne p0, v1, :cond_178

    .line 288
    const-string v0, "IN_TV_TUNER"

    return-object v0

    .line 290
    :cond_178
    const v1, -0x7fff8000

    if-ne p0, v1, :cond_180

    .line 291
    const-string v0, "IN_LINE"

    return-object v0

    .line 293
    :cond_180
    const/high16 v1, -0x7fff0000

    if-ne p0, v1, :cond_187

    .line 294
    const-string v0, "IN_SPDIF"

    return-object v0

    .line 296
    :cond_187
    const/high16 v1, -0x7ffe0000

    if-ne p0, v1, :cond_18e

    .line 297
    const-string v0, "IN_BLUETOOTH_A2DP"

    return-object v0

    .line 299
    :cond_18e
    const/high16 v1, -0x7ffc0000

    if-ne p0, v1, :cond_195

    .line 300
    const-string v0, "IN_LOOPBACK"

    return-object v0

    .line 302
    :cond_195
    const/high16 v1, -0x7ff80000

    if-ne p0, v1, :cond_19c

    .line 303
    const-string v0, "IN_IP"

    return-object v0

    .line 305
    :cond_19c
    const/high16 v1, -0x7ff00000

    if-ne p0, v1, :cond_1a3

    .line 306
    const-string v0, "IN_BUS"

    return-object v0

    .line 308
    :cond_1a3
    const/high16 v1, -0x7f000000

    if-ne p0, v1, :cond_1aa

    .line 309
    const-string v0, "IN_PROXY"

    return-object v0

    .line 311
    :cond_1aa
    const/high16 v1, -0x7e000000

    if-ne p0, v1, :cond_1b1

    .line 312
    const-string v0, "IN_USB_HEADSET"

    return-object v0

    .line 314
    :cond_1b1
    const/high16 v1, -0x40000000    # -2.0f

    if-ne p0, v1, :cond_1b8

    .line 315
    const-string v0, "IN_DEFAULT"

    return-object v0

    .line 317
    :cond_1b8
    const v1, -0x3ce00001    # -159.99998f

    if-ne p0, v1, :cond_1c0

    .line 318
    const-string v0, "IN_ALL"

    return-object v0

    .line 320
    :cond_1c0
    if-ne p0, v0, :cond_1c5

    .line 321
    const-string v0, "IN_ALL_SCO"

    return-object v0

    .line 323
    :cond_1c5
    const v0, -0x7dffe800

    if-ne p0, v0, :cond_1cd

    .line 324
    const-string v0, "IN_ALL_USB"

    return-object v0

    .line 326
    :cond_1cd
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
