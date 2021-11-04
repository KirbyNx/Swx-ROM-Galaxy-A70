.class public Lcom/android/server/accessibility/ColorTransferTable;
.super Ljava/lang/Object;
.source "ColorTransferTable.java"


# static fields
.field public static final BLUE:I = 0x5

.field public static final CYAN:I = 0x4

.field private static final DEUTAN:I = 0x1

.field private static final Deutan_severity:[D

.field private static final Deutan_userParameter:[D

.field public static final GREEN:I = 0x3

.field public static final MAGENTA:I = 0x6

.field private static final MAX:I = 0x0

.field private static final MAX_MIN_COLOR_TRANSFER_NUM:I = 0x2

.field private static final MIN:I = 0x1

.field private static final PROTAN:I = 0x0

.field private static final Protan_severity:[D

.field private static final Protan_userParameter:[D

.field public static final RED:I = 0x1

.field private static final TRITAN:I = 0x2

.field private static final Tritan_severity:[D

.field private static final Tritan_userParameter:[D

.field public static final YELLOW:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 78
    const/16 v0, 0x19

    new-array v1, v0, [D

    fill-array-data v1, :array_2e

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    .line 79
    new-array v1, v0, [D

    fill-array-data v1, :array_96

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    .line 81
    new-array v1, v0, [D

    fill-array-data v1, :array_fe

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    .line 82
    new-array v1, v0, [D

    fill-array-data v1, :array_166

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    .line 85
    new-array v1, v0, [D

    fill-array-data v1, :array_1ce

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    .line 86
    new-array v0, v0, [D

    fill-array-data v0, :array_236

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    return-void

    nop

    :array_2e
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_96
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_fe
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_166
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1ce
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_236
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3ff0000000000000L    # 1.0
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3ff0000000000000L    # 1.0
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method private getMaxMinColorTrnasferValue_BB_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 3154
    const/4 v0, 0x0

    .line 3155
    .local v0, "min":I
    const/4 v1, 0x0

    .line 3157
    .local v1, "max":I
    const/4 v2, 0x0

    .line 3159
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3162
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 3165
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 3167
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 3209
    :pswitch_11
    const/16 v0, 0xfe

    .line 3210
    const/16 v1, 0xfe

    goto :goto_48

    .line 3205
    :pswitch_16
    const/16 v0, 0xfe

    .line 3206
    const/16 v1, 0xfe

    .line 3207
    goto :goto_48

    .line 3201
    :pswitch_1b
    const/16 v0, 0xfe

    .line 3202
    const/16 v1, 0xfe

    .line 3203
    goto :goto_48

    .line 3197
    :pswitch_20
    const/16 v0, 0xfe

    .line 3198
    const/16 v1, 0xfe

    .line 3199
    goto :goto_48

    .line 3193
    :pswitch_25
    const/16 v0, 0xfe

    .line 3194
    const/16 v1, 0xfe

    .line 3195
    goto :goto_48

    .line 3189
    :pswitch_2a
    const/16 v0, 0xfe

    .line 3190
    const/16 v1, 0xfe

    .line 3191
    goto :goto_48

    .line 3185
    :pswitch_2f
    const/16 v0, 0xfe

    .line 3186
    const/16 v1, 0xfe

    .line 3187
    goto :goto_48

    .line 3181
    :pswitch_34
    const/16 v0, 0xfe

    .line 3182
    const/16 v1, 0xfe

    .line 3183
    goto :goto_48

    .line 3177
    :pswitch_39
    const/16 v0, 0xfe

    .line 3178
    const/16 v1, 0xfe

    .line 3179
    goto :goto_48

    .line 3173
    :pswitch_3e
    const/16 v0, 0xfe

    .line 3174
    const/16 v1, 0xfe

    .line 3175
    goto :goto_48

    .line 3169
    :pswitch_43
    const/16 v0, 0xff

    .line 3170
    const/16 v1, 0xff

    .line 3171
    nop

    .line 3211
    :goto_48
    goto/16 :goto_c8

    .line 3215
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 3217
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 3259
    :pswitch_50
    const/16 v0, 0xfe

    .line 3260
    const/16 v1, 0xfe

    goto :goto_87

    .line 3255
    :pswitch_55
    const/16 v0, 0xfe

    .line 3256
    const/16 v1, 0xfe

    .line 3257
    goto :goto_87

    .line 3251
    :pswitch_5a
    const/16 v0, 0xfe

    .line 3252
    const/16 v1, 0xfe

    .line 3253
    goto :goto_87

    .line 3247
    :pswitch_5f
    const/16 v0, 0xfe

    .line 3248
    const/16 v1, 0xfe

    .line 3249
    goto :goto_87

    .line 3243
    :pswitch_64
    const/16 v0, 0xfe

    .line 3244
    const/16 v1, 0xfe

    .line 3245
    goto :goto_87

    .line 3239
    :pswitch_69
    const/16 v0, 0xfe

    .line 3240
    const/16 v1, 0xfe

    .line 3241
    goto :goto_87

    .line 3235
    :pswitch_6e
    const/16 v0, 0xfe

    .line 3236
    const/16 v1, 0xfe

    .line 3237
    goto :goto_87

    .line 3231
    :pswitch_73
    const/16 v0, 0xfe

    .line 3232
    const/16 v1, 0xfe

    .line 3233
    goto :goto_87

    .line 3227
    :pswitch_78
    const/16 v0, 0xfe

    .line 3228
    const/16 v1, 0xfe

    .line 3229
    goto :goto_87

    .line 3223
    :pswitch_7d
    const/16 v0, 0xfe

    .line 3224
    const/16 v1, 0xfe

    .line 3225
    goto :goto_87

    .line 3219
    :pswitch_82
    const/16 v0, 0xff

    .line 3220
    const/16 v1, 0xff

    .line 3221
    nop

    .line 3261
    :goto_87
    goto :goto_c8

    .line 3265
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 3267
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 3309
    :pswitch_8e
    const/16 v0, 0xff

    .line 3310
    const/16 v1, 0xff

    goto :goto_c5

    .line 3305
    :pswitch_93
    const/16 v0, 0xff

    .line 3306
    const/16 v1, 0xff

    .line 3307
    goto :goto_c5

    .line 3301
    :pswitch_98
    const/16 v0, 0xff

    .line 3302
    const/16 v1, 0xff

    .line 3303
    goto :goto_c5

    .line 3297
    :pswitch_9d
    const/16 v0, 0xff

    .line 3298
    const/16 v1, 0xff

    .line 3299
    goto :goto_c5

    .line 3293
    :pswitch_a2
    const/16 v0, 0xff

    .line 3294
    const/16 v1, 0xff

    .line 3295
    goto :goto_c5

    .line 3289
    :pswitch_a7
    const/16 v0, 0xff

    .line 3290
    const/16 v1, 0xff

    .line 3291
    goto :goto_c5

    .line 3285
    :pswitch_ac
    const/16 v0, 0xff

    .line 3286
    const/16 v1, 0xff

    .line 3287
    goto :goto_c5

    .line 3281
    :pswitch_b1
    const/16 v0, 0xff

    .line 3282
    const/16 v1, 0xff

    .line 3283
    goto :goto_c5

    .line 3277
    :pswitch_b6
    const/16 v0, 0xff

    .line 3278
    const/16 v1, 0xff

    .line 3279
    goto :goto_c5

    .line 3273
    :pswitch_bb
    const/16 v0, 0xff

    .line 3274
    const/16 v1, 0xff

    .line 3275
    goto :goto_c5

    .line 3269
    :pswitch_c0
    const/16 v0, 0xff

    .line 3270
    const/16 v1, 0xff

    .line 3271
    nop

    .line 3311
    :goto_c5
    goto :goto_c8

    .line 3315
    :cond_c6
    const/4 v0, -0x1

    .line 3316
    const/4 v1, -0x1

    .line 3319
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 3320
    aput v0, v4, v5

    .line 3322
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 6384
    const/4 v0, 0x0

    .line 6385
    .local v0, "min":I
    const/4 v1, 0x0

    .line 6387
    .local v1, "max":I
    const/4 v2, 0x0

    .line 6389
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 6392
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 6395
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 6397
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 6439
    :pswitch_11
    const/16 v0, 0xfe

    .line 6440
    const/16 v1, 0xfe

    goto :goto_48

    .line 6435
    :pswitch_16
    const/16 v0, 0xfe

    .line 6436
    const/16 v1, 0xfe

    .line 6437
    goto :goto_48

    .line 6431
    :pswitch_1b
    const/16 v0, 0xfe

    .line 6432
    const/16 v1, 0xfe

    .line 6433
    goto :goto_48

    .line 6427
    :pswitch_20
    const/16 v0, 0xfe

    .line 6428
    const/16 v1, 0xfe

    .line 6429
    goto :goto_48

    .line 6423
    :pswitch_25
    const/16 v0, 0xfe

    .line 6424
    const/16 v1, 0xfe

    .line 6425
    goto :goto_48

    .line 6419
    :pswitch_2a
    const/16 v0, 0xcc

    .line 6420
    const/16 v1, 0xc9

    .line 6421
    goto :goto_48

    .line 6415
    :pswitch_2f
    const/16 v0, 0xcc

    .line 6416
    const/16 v1, 0xc9

    .line 6417
    goto :goto_48

    .line 6411
    :pswitch_34
    const/16 v0, 0xcc

    .line 6412
    const/16 v1, 0xca

    .line 6413
    goto :goto_48

    .line 6407
    :pswitch_39
    const/16 v0, 0xcc

    .line 6408
    const/16 v1, 0xca

    .line 6409
    goto :goto_48

    .line 6403
    :pswitch_3e
    const/16 v0, 0xcc

    .line 6404
    const/16 v1, 0xcb

    .line 6405
    goto :goto_48

    .line 6399
    :pswitch_43
    const/16 v0, 0xff

    .line 6400
    const/16 v1, 0xff

    .line 6401
    nop

    .line 6441
    :goto_48
    goto/16 :goto_c8

    .line 6445
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 6447
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 6489
    :pswitch_50
    const/16 v0, 0xfe

    .line 6490
    const/16 v1, 0xfe

    goto :goto_87

    .line 6485
    :pswitch_55
    const/16 v0, 0xfe

    .line 6486
    const/16 v1, 0xfe

    .line 6487
    goto :goto_87

    .line 6481
    :pswitch_5a
    const/16 v0, 0xfe

    .line 6482
    const/16 v1, 0xfe

    .line 6483
    goto :goto_87

    .line 6477
    :pswitch_5f
    const/16 v0, 0xfe

    .line 6478
    const/16 v1, 0xfe

    .line 6479
    goto :goto_87

    .line 6473
    :pswitch_64
    const/16 v0, 0xfe

    .line 6474
    const/16 v1, 0xfe

    .line 6475
    goto :goto_87

    .line 6469
    :pswitch_69
    const/16 v0, 0xcc

    .line 6470
    const/16 v1, 0xce

    .line 6471
    goto :goto_87

    .line 6465
    :pswitch_6e
    const/16 v0, 0xcc

    .line 6466
    const/16 v1, 0xce

    .line 6467
    goto :goto_87

    .line 6461
    :pswitch_73
    const/16 v0, 0xcc

    .line 6462
    const/16 v1, 0xcd

    .line 6463
    goto :goto_87

    .line 6457
    :pswitch_78
    const/16 v0, 0xcc

    .line 6458
    const/16 v1, 0xcd

    .line 6459
    goto :goto_87

    .line 6453
    :pswitch_7d
    const/16 v0, 0xcc

    .line 6454
    const/16 v1, 0xcc

    .line 6455
    goto :goto_87

    .line 6449
    :pswitch_82
    const/16 v0, 0xff

    .line 6450
    const/16 v1, 0xff

    .line 6451
    nop

    .line 6491
    :goto_87
    goto :goto_c8

    .line 6495
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 6497
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 6539
    :pswitch_8e
    const/16 v0, 0xff

    .line 6540
    const/16 v1, 0xff

    goto :goto_c5

    .line 6535
    :pswitch_93
    const/16 v0, 0xff

    .line 6536
    const/16 v1, 0xff

    .line 6537
    goto :goto_c5

    .line 6531
    :pswitch_98
    const/16 v0, 0xff

    .line 6532
    const/16 v1, 0xff

    .line 6533
    goto :goto_c5

    .line 6527
    :pswitch_9d
    const/16 v0, 0xff

    .line 6528
    const/16 v1, 0xff

    .line 6529
    goto :goto_c5

    .line 6523
    :pswitch_a2
    const/16 v0, 0xff

    .line 6524
    const/16 v1, 0xff

    .line 6525
    goto :goto_c5

    .line 6519
    :pswitch_a7
    const/16 v0, 0xcc

    .line 6520
    const/16 v1, 0xf4

    .line 6521
    goto :goto_c5

    .line 6515
    :pswitch_ac
    const/16 v0, 0xcc

    .line 6516
    const/16 v1, 0xed

    .line 6517
    goto :goto_c5

    .line 6511
    :pswitch_b1
    const/16 v0, 0xcc

    .line 6512
    const/16 v1, 0xe7

    .line 6513
    goto :goto_c5

    .line 6507
    :pswitch_b6
    const/16 v0, 0xcc

    .line 6508
    const/16 v1, 0xe1

    .line 6509
    goto :goto_c5

    .line 6503
    :pswitch_bb
    const/16 v0, 0xcc

    .line 6504
    const/16 v1, 0xda

    .line 6505
    goto :goto_c5

    .line 6499
    :pswitch_c0
    const/16 v0, 0xff

    .line 6500
    const/16 v1, 0xff

    .line 6501
    nop

    .line 6541
    :goto_c5
    goto :goto_c8

    .line 6545
    :cond_c6
    const/4 v0, -0x1

    .line 6546
    const/4 v1, -0x1

    .line 6549
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 6550
    aput v0, v4, v5

    .line 6552
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BG_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 2982
    const/4 v0, 0x0

    .line 2983
    .local v0, "min":I
    const/4 v1, 0x0

    .line 2985
    .local v1, "max":I
    const/4 v2, 0x0

    .line 2987
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 2990
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 2993
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 2995
    packed-switch v2, :pswitch_data_96

    goto :goto_32

    .line 3037
    :pswitch_11
    const/4 v0, 0x0

    .line 3038
    const/4 v1, 0x0

    goto :goto_32

    .line 3033
    :pswitch_14
    const/4 v0, 0x0

    .line 3034
    const/4 v1, 0x0

    .line 3035
    goto :goto_32

    .line 3029
    :pswitch_17
    const/4 v0, 0x0

    .line 3030
    const/4 v1, 0x0

    .line 3031
    goto :goto_32

    .line 3025
    :pswitch_1a
    const/4 v0, 0x0

    .line 3026
    const/4 v1, 0x0

    .line 3027
    goto :goto_32

    .line 3021
    :pswitch_1d
    const/4 v0, 0x0

    .line 3022
    const/4 v1, 0x0

    .line 3023
    goto :goto_32

    .line 3017
    :pswitch_20
    const/4 v0, 0x0

    .line 3018
    const/4 v1, 0x0

    .line 3019
    goto :goto_32

    .line 3013
    :pswitch_23
    const/4 v0, 0x0

    .line 3014
    const/4 v1, 0x0

    .line 3015
    goto :goto_32

    .line 3009
    :pswitch_26
    const/4 v0, 0x0

    .line 3010
    const/4 v1, 0x0

    .line 3011
    goto :goto_32

    .line 3005
    :pswitch_29
    const/4 v0, 0x0

    .line 3006
    const/4 v1, 0x0

    .line 3007
    goto :goto_32

    .line 3001
    :pswitch_2c
    const/4 v0, 0x0

    .line 3002
    const/4 v1, 0x0

    .line 3003
    goto :goto_32

    .line 2997
    :pswitch_2f
    const/4 v0, 0x0

    .line 2998
    const/4 v1, 0x0

    .line 2999
    nop

    .line 3039
    :goto_32
    goto/16 :goto_8f

    .line 3043
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 3045
    packed-switch v2, :pswitch_data_b0

    goto :goto_5b

    .line 3087
    :pswitch_3a
    const/4 v0, 0x1

    .line 3088
    const/4 v1, 0x1

    goto :goto_5b

    .line 3083
    :pswitch_3d
    const/4 v0, 0x1

    .line 3084
    const/4 v1, 0x1

    .line 3085
    goto :goto_5b

    .line 3079
    :pswitch_40
    const/4 v0, 0x1

    .line 3080
    const/4 v1, 0x1

    .line 3081
    goto :goto_5b

    .line 3075
    :pswitch_43
    const/4 v0, 0x1

    .line 3076
    const/4 v1, 0x1

    .line 3077
    goto :goto_5b

    .line 3071
    :pswitch_46
    const/4 v0, 0x1

    .line 3072
    const/4 v1, 0x1

    .line 3073
    goto :goto_5b

    .line 3067
    :pswitch_49
    const/4 v0, 0x1

    .line 3068
    const/4 v1, 0x1

    .line 3069
    goto :goto_5b

    .line 3063
    :pswitch_4c
    const/4 v0, 0x1

    .line 3064
    const/4 v1, 0x1

    .line 3065
    goto :goto_5b

    .line 3059
    :pswitch_4f
    const/4 v0, 0x1

    .line 3060
    const/4 v1, 0x1

    .line 3061
    goto :goto_5b

    .line 3055
    :pswitch_52
    const/4 v0, 0x1

    .line 3056
    const/4 v1, 0x1

    .line 3057
    goto :goto_5b

    .line 3051
    :pswitch_55
    const/4 v0, 0x1

    .line 3052
    const/4 v1, 0x1

    .line 3053
    goto :goto_5b

    .line 3047
    :pswitch_58
    const/4 v0, 0x0

    .line 3048
    const/4 v1, 0x0

    .line 3049
    nop

    .line 3089
    :goto_5b
    goto :goto_8f

    .line 3093
    :cond_5c
    if-ne p1, v3, :cond_8d

    .line 3095
    packed-switch v2, :pswitch_data_ca

    goto :goto_8c

    .line 3137
    :pswitch_62
    const/4 v0, 0x0

    .line 3138
    const/16 v1, 0x47

    goto :goto_8c

    .line 3133
    :pswitch_66
    const/4 v0, 0x0

    .line 3134
    const/16 v1, 0x3d

    .line 3135
    goto :goto_8c

    .line 3129
    :pswitch_6a
    const/4 v0, 0x0

    .line 3130
    const/16 v1, 0x33

    .line 3131
    goto :goto_8c

    .line 3125
    :pswitch_6e
    const/4 v0, 0x0

    .line 3126
    const/16 v1, 0x29

    .line 3127
    goto :goto_8c

    .line 3121
    :pswitch_72
    const/4 v0, 0x0

    .line 3122
    const/16 v1, 0x20

    .line 3123
    goto :goto_8c

    .line 3117
    :pswitch_76
    const/4 v0, 0x0

    .line 3118
    const/16 v1, 0x1a

    .line 3119
    goto :goto_8c

    .line 3113
    :pswitch_7a
    const/4 v0, 0x0

    .line 3114
    const/16 v1, 0x15

    .line 3115
    goto :goto_8c

    .line 3109
    :pswitch_7e
    const/4 v0, 0x0

    .line 3110
    const/16 v1, 0x10

    .line 3111
    goto :goto_8c

    .line 3105
    :pswitch_82
    const/4 v0, 0x0

    .line 3106
    const/16 v1, 0xc

    .line 3107
    goto :goto_8c

    .line 3101
    :pswitch_86
    const/4 v0, 0x0

    .line 3102
    const/4 v1, 0x6

    .line 3103
    goto :goto_8c

    .line 3097
    :pswitch_89
    const/4 v0, 0x0

    .line 3098
    const/4 v1, 0x0

    .line 3099
    nop

    .line 3139
    :goto_8c
    goto :goto_8f

    .line 3143
    :cond_8d
    const/4 v0, -0x1

    .line 3144
    const/4 v1, -0x1

    .line 3147
    :goto_8f
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 3148
    aput v0, v4, v5

    .line 3150
    return-object v4

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_89
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 6212
    const/4 v0, 0x0

    .line 6213
    .local v0, "min":I
    const/4 v1, 0x0

    .line 6215
    .local v1, "max":I
    const/4 v2, 0x0

    .line 6217
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 6220
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 6223
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 6225
    packed-switch v2, :pswitch_data_92

    goto :goto_32

    .line 6267
    :pswitch_11
    const/4 v0, 0x0

    .line 6268
    const/4 v1, 0x0

    goto :goto_32

    .line 6263
    :pswitch_14
    const/4 v0, 0x0

    .line 6264
    const/4 v1, 0x0

    .line 6265
    goto :goto_32

    .line 6259
    :pswitch_17
    const/4 v0, 0x0

    .line 6260
    const/4 v1, 0x0

    .line 6261
    goto :goto_32

    .line 6255
    :pswitch_1a
    const/4 v0, 0x0

    .line 6256
    const/4 v1, 0x0

    .line 6257
    goto :goto_32

    .line 6251
    :pswitch_1d
    const/4 v0, 0x0

    .line 6252
    const/4 v1, 0x0

    .line 6253
    goto :goto_32

    .line 6247
    :pswitch_20
    const/4 v0, 0x0

    .line 6248
    const/4 v1, 0x0

    .line 6249
    goto :goto_32

    .line 6243
    :pswitch_23
    const/4 v0, 0x0

    .line 6244
    const/4 v1, 0x0

    .line 6245
    goto :goto_32

    .line 6239
    :pswitch_26
    const/4 v0, 0x0

    .line 6240
    const/4 v1, 0x0

    .line 6241
    goto :goto_32

    .line 6235
    :pswitch_29
    const/4 v0, 0x0

    .line 6236
    const/4 v1, 0x0

    .line 6237
    goto :goto_32

    .line 6231
    :pswitch_2c
    const/4 v0, 0x0

    .line 6232
    const/4 v1, 0x0

    .line 6233
    goto :goto_32

    .line 6227
    :pswitch_2f
    const/4 v0, 0x0

    .line 6228
    const/4 v1, 0x0

    .line 6229
    nop

    .line 6269
    :goto_32
    goto/16 :goto_8b

    .line 6273
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 6275
    packed-switch v2, :pswitch_data_ac

    goto :goto_5b

    .line 6317
    :pswitch_3a
    const/4 v0, 0x1

    .line 6318
    const/4 v1, 0x1

    goto :goto_5b

    .line 6313
    :pswitch_3d
    const/4 v0, 0x1

    .line 6314
    const/4 v1, 0x1

    .line 6315
    goto :goto_5b

    .line 6309
    :pswitch_40
    const/4 v0, 0x1

    .line 6310
    const/4 v1, 0x1

    .line 6311
    goto :goto_5b

    .line 6305
    :pswitch_43
    const/4 v0, 0x1

    .line 6306
    const/4 v1, 0x1

    .line 6307
    goto :goto_5b

    .line 6301
    :pswitch_46
    const/4 v0, 0x1

    .line 6302
    const/4 v1, 0x1

    .line 6303
    goto :goto_5b

    .line 6297
    :pswitch_49
    const/4 v0, 0x0

    .line 6298
    const/4 v1, 0x0

    .line 6299
    goto :goto_5b

    .line 6293
    :pswitch_4c
    const/4 v0, 0x0

    .line 6294
    const/4 v1, 0x0

    .line 6295
    goto :goto_5b

    .line 6289
    :pswitch_4f
    const/4 v0, 0x0

    .line 6290
    const/4 v1, 0x0

    .line 6291
    goto :goto_5b

    .line 6285
    :pswitch_52
    const/4 v0, 0x0

    .line 6286
    const/4 v1, 0x0

    .line 6287
    goto :goto_5b

    .line 6281
    :pswitch_55
    const/4 v0, 0x0

    .line 6282
    const/4 v1, 0x0

    .line 6283
    goto :goto_5b

    .line 6277
    :pswitch_58
    const/4 v0, 0x0

    .line 6278
    const/4 v1, 0x0

    .line 6279
    nop

    .line 6319
    :goto_5b
    goto :goto_8b

    .line 6323
    :cond_5c
    if-ne p1, v3, :cond_89

    .line 6325
    packed-switch v2, :pswitch_data_c6

    goto :goto_88

    .line 6367
    :pswitch_62
    const/4 v0, 0x0

    .line 6368
    const/16 v1, 0x47

    goto :goto_88

    .line 6363
    :pswitch_66
    const/4 v0, 0x0

    .line 6364
    const/16 v1, 0x3d

    .line 6365
    goto :goto_88

    .line 6359
    :pswitch_6a
    const/4 v0, 0x0

    .line 6360
    const/16 v1, 0x33

    .line 6361
    goto :goto_88

    .line 6355
    :pswitch_6e
    const/4 v0, 0x0

    .line 6356
    const/16 v1, 0x29

    .line 6357
    goto :goto_88

    .line 6351
    :pswitch_72
    const/4 v0, 0x0

    .line 6352
    const/16 v1, 0x20

    .line 6353
    goto :goto_88

    .line 6347
    :pswitch_76
    const/4 v0, 0x0

    .line 6348
    const/4 v1, 0x0

    .line 6349
    goto :goto_88

    .line 6343
    :pswitch_79
    const/4 v0, 0x0

    .line 6344
    const/4 v1, 0x0

    .line 6345
    goto :goto_88

    .line 6339
    :pswitch_7c
    const/4 v0, 0x0

    .line 6340
    const/4 v1, 0x0

    .line 6341
    goto :goto_88

    .line 6335
    :pswitch_7f
    const/4 v0, 0x0

    .line 6336
    const/4 v1, 0x0

    .line 6337
    goto :goto_88

    .line 6331
    :pswitch_82
    const/4 v0, 0x0

    .line 6332
    const/4 v1, 0x0

    .line 6333
    goto :goto_88

    .line 6327
    :pswitch_85
    const/4 v0, 0x0

    .line 6328
    const/4 v1, 0x0

    .line 6329
    nop

    .line 6369
    :goto_88
    goto :goto_8b

    .line 6373
    :cond_89
    const/4 v0, -0x1

    .line 6374
    const/4 v1, -0x1

    .line 6377
    :goto_8b
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 6378
    aput v0, v4, v5

    .line 6380
    return-object v4

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BR_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 2810
    const/4 v0, 0x0

    .line 2811
    .local v0, "min":I
    const/4 v1, 0x0

    .line 2813
    .local v1, "max":I
    const/4 v2, 0x0

    .line 2815
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 2818
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 2821
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 2823
    packed-switch v2, :pswitch_data_98

    goto :goto_32

    .line 2865
    :pswitch_11
    const/4 v0, 0x1

    .line 2866
    const/4 v1, 0x1

    goto :goto_32

    .line 2861
    :pswitch_14
    const/4 v0, 0x1

    .line 2862
    const/4 v1, 0x1

    .line 2863
    goto :goto_32

    .line 2857
    :pswitch_17
    const/4 v0, 0x1

    .line 2858
    const/4 v1, 0x1

    .line 2859
    goto :goto_32

    .line 2853
    :pswitch_1a
    const/4 v0, 0x1

    .line 2854
    const/4 v1, 0x1

    .line 2855
    goto :goto_32

    .line 2849
    :pswitch_1d
    const/4 v0, 0x1

    .line 2850
    const/4 v1, 0x1

    .line 2851
    goto :goto_32

    .line 2845
    :pswitch_20
    const/4 v0, 0x1

    .line 2846
    const/4 v1, 0x1

    .line 2847
    goto :goto_32

    .line 2841
    :pswitch_23
    const/4 v0, 0x1

    .line 2842
    const/4 v1, 0x1

    .line 2843
    goto :goto_32

    .line 2837
    :pswitch_26
    const/4 v0, 0x1

    .line 2838
    const/4 v1, 0x1

    .line 2839
    goto :goto_32

    .line 2833
    :pswitch_29
    const/4 v0, 0x1

    .line 2834
    const/4 v1, 0x1

    .line 2835
    goto :goto_32

    .line 2829
    :pswitch_2c
    const/4 v0, 0x1

    .line 2830
    const/4 v1, 0x1

    .line 2831
    goto :goto_32

    .line 2825
    :pswitch_2f
    const/4 v0, 0x0

    .line 2826
    const/4 v1, 0x0

    .line 2827
    nop

    .line 2867
    :goto_32
    goto/16 :goto_92

    .line 2871
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 2873
    packed-switch v2, :pswitch_data_b2

    goto :goto_5b

    .line 2915
    :pswitch_3a
    const/4 v0, 0x0

    .line 2916
    const/4 v1, 0x0

    goto :goto_5b

    .line 2911
    :pswitch_3d
    const/4 v0, 0x0

    .line 2912
    const/4 v1, 0x0

    .line 2913
    goto :goto_5b

    .line 2907
    :pswitch_40
    const/4 v0, 0x0

    .line 2908
    const/4 v1, 0x0

    .line 2909
    goto :goto_5b

    .line 2903
    :pswitch_43
    const/4 v0, 0x0

    .line 2904
    const/4 v1, 0x0

    .line 2905
    goto :goto_5b

    .line 2899
    :pswitch_46
    const/4 v0, 0x0

    .line 2900
    const/4 v1, 0x0

    .line 2901
    goto :goto_5b

    .line 2895
    :pswitch_49
    const/4 v0, 0x0

    .line 2896
    const/4 v1, 0x0

    .line 2897
    goto :goto_5b

    .line 2891
    :pswitch_4c
    const/4 v0, 0x0

    .line 2892
    const/4 v1, 0x0

    .line 2893
    goto :goto_5b

    .line 2887
    :pswitch_4f
    const/4 v0, 0x0

    .line 2888
    const/4 v1, 0x0

    .line 2889
    goto :goto_5b

    .line 2883
    :pswitch_52
    const/4 v0, 0x0

    .line 2884
    const/4 v1, 0x0

    .line 2885
    goto :goto_5b

    .line 2879
    :pswitch_55
    const/4 v0, 0x0

    .line 2880
    const/4 v1, 0x0

    .line 2881
    goto :goto_5b

    .line 2875
    :pswitch_58
    const/4 v0, 0x0

    .line 2876
    const/4 v1, 0x0

    .line 2877
    nop

    .line 2917
    :goto_5b
    goto :goto_92

    .line 2921
    :cond_5c
    if-ne p1, v3, :cond_90

    .line 2923
    packed-switch v2, :pswitch_data_cc

    goto :goto_8f

    .line 2965
    :pswitch_62
    const/16 v0, 0x2f

    .line 2966
    const/16 v1, 0x76

    goto :goto_8f

    .line 2961
    :pswitch_67
    const/16 v0, 0x29

    .line 2962
    const/16 v1, 0x66

    .line 2963
    goto :goto_8f

    .line 2957
    :pswitch_6c
    const/16 v0, 0x20

    .line 2958
    const/16 v1, 0x53

    .line 2959
    goto :goto_8f

    .line 2953
    :pswitch_71
    const/4 v0, 0x0

    .line 2954
    const/16 v1, 0x29

    .line 2955
    goto :goto_8f

    .line 2949
    :pswitch_75
    const/4 v0, 0x0

    .line 2950
    const/16 v1, 0x20

    .line 2951
    goto :goto_8f

    .line 2945
    :pswitch_79
    const/4 v0, 0x0

    .line 2946
    const/16 v1, 0x1a

    .line 2947
    goto :goto_8f

    .line 2941
    :pswitch_7d
    const/4 v0, 0x0

    .line 2942
    const/16 v1, 0x15

    .line 2943
    goto :goto_8f

    .line 2937
    :pswitch_81
    const/4 v0, 0x0

    .line 2938
    const/16 v1, 0x10

    .line 2939
    goto :goto_8f

    .line 2933
    :pswitch_85
    const/4 v0, 0x0

    .line 2934
    const/16 v1, 0xc

    .line 2935
    goto :goto_8f

    .line 2929
    :pswitch_89
    const/4 v0, 0x0

    .line 2930
    const/4 v1, 0x6

    .line 2931
    goto :goto_8f

    .line 2925
    :pswitch_8c
    const/4 v0, 0x0

    .line 2926
    const/4 v1, 0x0

    .line 2927
    nop

    .line 2967
    :goto_8f
    goto :goto_92

    .line 2971
    :cond_90
    const/4 v0, -0x1

    .line 2972
    const/4 v1, -0x1

    .line 2975
    :goto_92
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 2976
    aput v0, v4, v5

    .line 2978
    return-object v4

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 6040
    const/4 v0, 0x0

    .line 6041
    .local v0, "min":I
    const/4 v1, 0x0

    .line 6043
    .local v1, "max":I
    const/4 v2, 0x0

    .line 6045
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 6048
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 6051
    const/4 v5, 0x1

    if-nez p1, :cond_39

    .line 6053
    packed-switch v2, :pswitch_data_a2

    goto :goto_37

    .line 6095
    :pswitch_11
    const/4 v0, 0x1

    .line 6096
    const/4 v1, 0x1

    goto :goto_37

    .line 6091
    :pswitch_14
    const/4 v0, 0x1

    .line 6092
    const/4 v1, 0x1

    .line 6093
    goto :goto_37

    .line 6087
    :pswitch_17
    const/4 v0, 0x1

    .line 6088
    const/4 v1, 0x1

    .line 6089
    goto :goto_37

    .line 6083
    :pswitch_1a
    const/4 v0, 0x1

    .line 6084
    const/4 v1, 0x1

    .line 6085
    goto :goto_37

    .line 6079
    :pswitch_1d
    const/4 v0, 0x1

    .line 6080
    const/4 v1, 0x1

    .line 6081
    goto :goto_37

    .line 6075
    :pswitch_20
    const/4 v0, 0x0

    .line 6076
    const/16 v1, 0x27

    .line 6077
    goto :goto_37

    .line 6071
    :pswitch_24
    const/4 v0, 0x0

    .line 6072
    const/16 v1, 0x1e

    .line 6073
    goto :goto_37

    .line 6067
    :pswitch_28
    const/4 v0, 0x0

    .line 6068
    const/16 v1, 0x16

    .line 6069
    goto :goto_37

    .line 6063
    :pswitch_2c
    const/4 v0, 0x0

    .line 6064
    const/16 v1, 0xf

    .line 6065
    goto :goto_37

    .line 6059
    :pswitch_30
    const/4 v0, 0x0

    .line 6060
    const/16 v1, 0x9

    .line 6061
    goto :goto_37

    .line 6055
    :pswitch_34
    const/4 v0, 0x0

    .line 6056
    const/4 v1, 0x0

    .line 6057
    nop

    .line 6097
    :goto_37
    goto/16 :goto_9b

    .line 6101
    :cond_39
    if-ne p1, v5, :cond_66

    .line 6103
    packed-switch v2, :pswitch_data_bc

    goto :goto_65

    .line 6145
    :pswitch_3f
    const/4 v0, 0x0

    .line 6146
    const/4 v1, 0x0

    goto :goto_65

    .line 6141
    :pswitch_42
    const/4 v0, 0x0

    .line 6142
    const/4 v1, 0x0

    .line 6143
    goto :goto_65

    .line 6137
    :pswitch_45
    const/4 v0, 0x0

    .line 6138
    const/4 v1, 0x0

    .line 6139
    goto :goto_65

    .line 6133
    :pswitch_48
    const/4 v0, 0x0

    .line 6134
    const/4 v1, 0x0

    .line 6135
    goto :goto_65

    .line 6129
    :pswitch_4b
    const/4 v0, 0x0

    .line 6130
    const/4 v1, 0x0

    .line 6131
    goto :goto_65

    .line 6125
    :pswitch_4e
    const/4 v0, 0x0

    .line 6126
    const/16 v1, 0x29

    .line 6127
    goto :goto_65

    .line 6121
    :pswitch_52
    const/4 v0, 0x0

    .line 6122
    const/16 v1, 0x20

    .line 6123
    goto :goto_65

    .line 6117
    :pswitch_56
    const/4 v0, 0x0

    .line 6118
    const/16 v1, 0x18

    .line 6119
    goto :goto_65

    .line 6113
    :pswitch_5a
    const/4 v0, 0x0

    .line 6114
    const/16 v1, 0x11

    .line 6115
    goto :goto_65

    .line 6109
    :pswitch_5e
    const/4 v0, 0x0

    .line 6110
    const/16 v1, 0xb

    .line 6111
    goto :goto_65

    .line 6105
    :pswitch_62
    const/4 v0, 0x0

    .line 6106
    const/4 v1, 0x0

    .line 6107
    nop

    .line 6147
    :goto_65
    goto :goto_9b

    .line 6151
    :cond_66
    if-ne p1, v3, :cond_99

    .line 6153
    packed-switch v2, :pswitch_data_d6

    goto :goto_98

    .line 6195
    :pswitch_6c
    const/16 v0, 0x2f

    .line 6196
    const/16 v1, 0x76

    goto :goto_98

    .line 6191
    :pswitch_71
    const/16 v0, 0x29

    .line 6192
    const/16 v1, 0x66

    .line 6193
    goto :goto_98

    .line 6187
    :pswitch_76
    const/16 v0, 0x20

    .line 6188
    const/16 v1, 0x53

    .line 6189
    goto :goto_98

    .line 6183
    :pswitch_7b
    const/4 v0, 0x0

    .line 6184
    const/16 v1, 0x29

    .line 6185
    goto :goto_98

    .line 6179
    :pswitch_7f
    const/4 v0, 0x0

    .line 6180
    const/16 v1, 0x20

    .line 6181
    goto :goto_98

    .line 6175
    :pswitch_83
    const/4 v0, 0x0

    .line 6176
    const/16 v1, 0xa

    .line 6177
    goto :goto_98

    .line 6171
    :pswitch_87
    const/4 v0, 0x0

    .line 6172
    const/16 v1, 0x9

    .line 6173
    goto :goto_98

    .line 6167
    :pswitch_8b
    const/4 v0, 0x0

    .line 6168
    const/16 v1, 0x8

    .line 6169
    goto :goto_98

    .line 6163
    :pswitch_8f
    const/4 v0, 0x0

    .line 6164
    const/4 v1, 0x6

    .line 6165
    goto :goto_98

    .line 6159
    :pswitch_92
    const/4 v0, 0x0

    .line 6160
    const/4 v1, 0x4

    .line 6161
    goto :goto_98

    .line 6155
    :pswitch_95
    const/4 v0, 0x0

    .line 6156
    const/4 v1, 0x0

    .line 6157
    nop

    .line 6197
    :goto_98
    goto :goto_9b

    .line 6201
    :cond_99
    const/4 v0, -0x1

    .line 6202
    const/4 v1, -0x1

    .line 6205
    :goto_9b
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 6206
    aput v0, v4, v5

    .line 6208
    return-object v4

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CB_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 2638
    const/4 v0, 0x0

    .line 2639
    .local v0, "min":I
    const/4 v1, 0x0

    .line 2641
    .local v1, "max":I
    const/4 v2, 0x0

    .line 2643
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 2646
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 2649
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 2651
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 2693
    :pswitch_11
    const/16 v0, 0xff

    .line 2694
    const/16 v1, 0xff

    goto :goto_48

    .line 2689
    :pswitch_16
    const/16 v0, 0xff

    .line 2690
    const/16 v1, 0xff

    .line 2691
    goto :goto_48

    .line 2685
    :pswitch_1b
    const/16 v0, 0xff

    .line 2686
    const/16 v1, 0xff

    .line 2687
    goto :goto_48

    .line 2681
    :pswitch_20
    const/16 v0, 0xff

    .line 2682
    const/16 v1, 0xff

    .line 2683
    goto :goto_48

    .line 2677
    :pswitch_25
    const/16 v0, 0xff

    .line 2678
    const/16 v1, 0xff

    .line 2679
    goto :goto_48

    .line 2673
    :pswitch_2a
    const/16 v0, 0xff

    .line 2674
    const/16 v1, 0xff

    .line 2675
    goto :goto_48

    .line 2669
    :pswitch_2f
    const/16 v0, 0xff

    .line 2670
    const/16 v1, 0xff

    .line 2671
    goto :goto_48

    .line 2665
    :pswitch_34
    const/16 v0, 0xff

    .line 2666
    const/16 v1, 0xff

    .line 2667
    goto :goto_48

    .line 2661
    :pswitch_39
    const/16 v0, 0xff

    .line 2662
    const/16 v1, 0xff

    .line 2663
    goto :goto_48

    .line 2657
    :pswitch_3e
    const/16 v0, 0xff

    .line 2658
    const/16 v1, 0xff

    .line 2659
    goto :goto_48

    .line 2653
    :pswitch_43
    const/16 v0, 0xff

    .line 2654
    const/16 v1, 0xff

    .line 2655
    nop

    .line 2695
    :goto_48
    goto/16 :goto_c8

    .line 2699
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 2701
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 2743
    :pswitch_50
    const/16 v0, 0xff

    .line 2744
    const/16 v1, 0xff

    goto :goto_87

    .line 2739
    :pswitch_55
    const/16 v0, 0xff

    .line 2740
    const/16 v1, 0xff

    .line 2741
    goto :goto_87

    .line 2735
    :pswitch_5a
    const/16 v0, 0xff

    .line 2736
    const/16 v1, 0xff

    .line 2737
    goto :goto_87

    .line 2731
    :pswitch_5f
    const/16 v0, 0xff

    .line 2732
    const/16 v1, 0xff

    .line 2733
    goto :goto_87

    .line 2727
    :pswitch_64
    const/16 v0, 0xff

    .line 2728
    const/16 v1, 0xff

    .line 2729
    goto :goto_87

    .line 2723
    :pswitch_69
    const/16 v0, 0xff

    .line 2724
    const/16 v1, 0xff

    .line 2725
    goto :goto_87

    .line 2719
    :pswitch_6e
    const/16 v0, 0xff

    .line 2720
    const/16 v1, 0xff

    .line 2721
    goto :goto_87

    .line 2715
    :pswitch_73
    const/16 v0, 0xff

    .line 2716
    const/16 v1, 0xff

    .line 2717
    goto :goto_87

    .line 2711
    :pswitch_78
    const/16 v0, 0xff

    .line 2712
    const/16 v1, 0xff

    .line 2713
    goto :goto_87

    .line 2707
    :pswitch_7d
    const/16 v0, 0xff

    .line 2708
    const/16 v1, 0xff

    .line 2709
    goto :goto_87

    .line 2703
    :pswitch_82
    const/16 v0, 0xff

    .line 2704
    const/16 v1, 0xff

    .line 2705
    nop

    .line 2745
    :goto_87
    goto :goto_c8

    .line 2749
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 2751
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 2793
    :pswitch_8e
    const/16 v0, 0xff

    .line 2794
    const/16 v1, 0xff

    goto :goto_c5

    .line 2789
    :pswitch_93
    const/16 v0, 0xff

    .line 2790
    const/16 v1, 0xff

    .line 2791
    goto :goto_c5

    .line 2785
    :pswitch_98
    const/16 v0, 0xff

    .line 2786
    const/16 v1, 0xff

    .line 2787
    goto :goto_c5

    .line 2781
    :pswitch_9d
    const/16 v0, 0xff

    .line 2782
    const/16 v1, 0xff

    .line 2783
    goto :goto_c5

    .line 2777
    :pswitch_a2
    const/16 v0, 0xff

    .line 2778
    const/16 v1, 0xff

    .line 2779
    goto :goto_c5

    .line 2773
    :pswitch_a7
    const/16 v0, 0xff

    .line 2774
    const/16 v1, 0xff

    .line 2775
    goto :goto_c5

    .line 2769
    :pswitch_ac
    const/16 v0, 0xff

    .line 2770
    const/16 v1, 0xff

    .line 2771
    goto :goto_c5

    .line 2765
    :pswitch_b1
    const/16 v0, 0xff

    .line 2766
    const/16 v1, 0xff

    .line 2767
    goto :goto_c5

    .line 2761
    :pswitch_b6
    const/16 v0, 0xff

    .line 2762
    const/16 v1, 0xff

    .line 2763
    goto :goto_c5

    .line 2757
    :pswitch_bb
    const/16 v0, 0xff

    .line 2758
    const/16 v1, 0xff

    .line 2759
    goto :goto_c5

    .line 2753
    :pswitch_c0
    const/16 v0, 0xff

    .line 2754
    const/16 v1, 0xff

    .line 2755
    nop

    .line 2795
    :goto_c5
    goto :goto_c8

    .line 2799
    :cond_c6
    const/4 v0, -0x1

    .line 2800
    const/4 v1, -0x1

    .line 2803
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 2804
    aput v0, v4, v5

    .line 2806
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 5868
    const/4 v0, 0x0

    .line 5869
    .local v0, "min":I
    const/4 v1, 0x0

    .line 5871
    .local v1, "max":I
    const/4 v2, 0x0

    .line 5873
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5876
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 5879
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 5881
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 5923
    :pswitch_11
    const/16 v0, 0xff

    .line 5924
    const/16 v1, 0xff

    goto :goto_48

    .line 5919
    :pswitch_16
    const/16 v0, 0xff

    .line 5920
    const/16 v1, 0xff

    .line 5921
    goto :goto_48

    .line 5915
    :pswitch_1b
    const/16 v0, 0xff

    .line 5916
    const/16 v1, 0xff

    .line 5917
    goto :goto_48

    .line 5911
    :pswitch_20
    const/16 v0, 0xff

    .line 5912
    const/16 v1, 0xff

    .line 5913
    goto :goto_48

    .line 5907
    :pswitch_25
    const/16 v0, 0xff

    .line 5908
    const/16 v1, 0xff

    .line 5909
    goto :goto_48

    .line 5903
    :pswitch_2a
    const/16 v0, 0xcc

    .line 5904
    const/16 v1, 0xca

    .line 5905
    goto :goto_48

    .line 5899
    :pswitch_2f
    const/16 v0, 0xcc

    .line 5900
    const/16 v1, 0xca

    .line 5901
    goto :goto_48

    .line 5895
    :pswitch_34
    const/16 v0, 0xcc

    .line 5896
    const/16 v1, 0xca

    .line 5897
    goto :goto_48

    .line 5891
    :pswitch_39
    const/16 v0, 0xcc

    .line 5892
    const/16 v1, 0xca

    .line 5893
    goto :goto_48

    .line 5887
    :pswitch_3e
    const/16 v0, 0xcc

    .line 5888
    const/16 v1, 0xcb

    .line 5889
    goto :goto_48

    .line 5883
    :pswitch_43
    const/16 v0, 0xff

    .line 5884
    const/16 v1, 0xff

    .line 5885
    nop

    .line 5925
    :goto_48
    goto/16 :goto_c8

    .line 5929
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 5931
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 5973
    :pswitch_50
    const/16 v0, 0xff

    .line 5974
    const/16 v1, 0xff

    goto :goto_87

    .line 5969
    :pswitch_55
    const/16 v0, 0xff

    .line 5970
    const/16 v1, 0xff

    .line 5971
    goto :goto_87

    .line 5965
    :pswitch_5a
    const/16 v0, 0xff

    .line 5966
    const/16 v1, 0xff

    .line 5967
    goto :goto_87

    .line 5961
    :pswitch_5f
    const/16 v0, 0xff

    .line 5962
    const/16 v1, 0xff

    .line 5963
    goto :goto_87

    .line 5957
    :pswitch_64
    const/16 v0, 0xff

    .line 5958
    const/16 v1, 0xff

    .line 5959
    goto :goto_87

    .line 5953
    :pswitch_69
    const/16 v0, 0xcc

    .line 5954
    const/16 v1, 0xc8

    .line 5955
    goto :goto_87

    .line 5949
    :pswitch_6e
    const/16 v0, 0xcc

    .line 5950
    const/16 v1, 0xc9

    .line 5951
    goto :goto_87

    .line 5945
    :pswitch_73
    const/16 v0, 0xcc

    .line 5946
    const/16 v1, 0xc9

    .line 5947
    goto :goto_87

    .line 5941
    :pswitch_78
    const/16 v0, 0xcc

    .line 5942
    const/16 v1, 0xca

    .line 5943
    goto :goto_87

    .line 5937
    :pswitch_7d
    const/16 v0, 0xcc

    .line 5938
    const/16 v1, 0xcb

    .line 5939
    goto :goto_87

    .line 5933
    :pswitch_82
    const/16 v0, 0xff

    .line 5934
    const/16 v1, 0xff

    .line 5935
    nop

    .line 5975
    :goto_87
    goto :goto_c8

    .line 5979
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 5981
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 6023
    :pswitch_8e
    const/16 v0, 0xff

    .line 6024
    const/16 v1, 0xff

    goto :goto_c5

    .line 6019
    :pswitch_93
    const/16 v0, 0xff

    .line 6020
    const/16 v1, 0xff

    .line 6021
    goto :goto_c5

    .line 6015
    :pswitch_98
    const/16 v0, 0xff

    .line 6016
    const/16 v1, 0xff

    .line 6017
    goto :goto_c5

    .line 6011
    :pswitch_9d
    const/16 v0, 0xff

    .line 6012
    const/16 v1, 0xff

    .line 6013
    goto :goto_c5

    .line 6007
    :pswitch_a2
    const/16 v0, 0xff

    .line 6008
    const/16 v1, 0xff

    .line 6009
    goto :goto_c5

    .line 6003
    :pswitch_a7
    const/16 v0, 0xcc

    .line 6004
    const/16 v1, 0xce

    .line 6005
    goto :goto_c5

    .line 5999
    :pswitch_ac
    const/16 v0, 0xcc

    .line 6000
    const/16 v1, 0xce

    .line 6001
    goto :goto_c5

    .line 5995
    :pswitch_b1
    const/16 v0, 0xcc

    .line 5996
    const/16 v1, 0xce

    .line 5997
    goto :goto_c5

    .line 5991
    :pswitch_b6
    const/16 v0, 0xcc

    .line 5992
    const/16 v1, 0xce

    .line 5993
    goto :goto_c5

    .line 5987
    :pswitch_bb
    const/16 v0, 0xcc

    .line 5988
    const/16 v1, 0xcd

    .line 5989
    goto :goto_c5

    .line 5983
    :pswitch_c0
    const/16 v0, 0xff

    .line 5984
    const/16 v1, 0xff

    .line 5985
    nop

    .line 6025
    :goto_c5
    goto :goto_c8

    .line 6029
    :cond_c6
    const/4 v0, -0x1

    .line 6030
    const/4 v1, -0x1

    .line 6033
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 6034
    aput v0, v4, v5

    .line 6036
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CG_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 2466
    const/4 v0, 0x0

    .line 2467
    .local v0, "min":I
    const/4 v1, 0x0

    .line 2469
    .local v1, "max":I
    const/4 v2, 0x0

    .line 2471
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 2474
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 2477
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 2479
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 2521
    :pswitch_11
    const/16 v0, 0xff

    .line 2522
    const/16 v1, 0xff

    goto :goto_48

    .line 2517
    :pswitch_16
    const/16 v0, 0xff

    .line 2518
    const/16 v1, 0xff

    .line 2519
    goto :goto_48

    .line 2513
    :pswitch_1b
    const/16 v0, 0xff

    .line 2514
    const/16 v1, 0xff

    .line 2515
    goto :goto_48

    .line 2509
    :pswitch_20
    const/16 v0, 0xff

    .line 2510
    const/16 v1, 0xff

    .line 2511
    goto :goto_48

    .line 2505
    :pswitch_25
    const/16 v0, 0xff

    .line 2506
    const/16 v1, 0xff

    .line 2507
    goto :goto_48

    .line 2501
    :pswitch_2a
    const/16 v0, 0xff

    .line 2502
    const/16 v1, 0xff

    .line 2503
    goto :goto_48

    .line 2497
    :pswitch_2f
    const/16 v0, 0xff

    .line 2498
    const/16 v1, 0xff

    .line 2499
    goto :goto_48

    .line 2493
    :pswitch_34
    const/16 v0, 0xff

    .line 2494
    const/16 v1, 0xff

    .line 2495
    goto :goto_48

    .line 2489
    :pswitch_39
    const/16 v0, 0xff

    .line 2490
    const/16 v1, 0xff

    .line 2491
    goto :goto_48

    .line 2485
    :pswitch_3e
    const/16 v0, 0xff

    .line 2486
    const/16 v1, 0xff

    .line 2487
    goto :goto_48

    .line 2481
    :pswitch_43
    const/16 v0, 0xff

    .line 2482
    const/16 v1, 0xff

    .line 2483
    nop

    .line 2523
    :goto_48
    goto/16 :goto_c8

    .line 2527
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 2529
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 2571
    :pswitch_50
    const/16 v0, 0xfe

    .line 2572
    const/16 v1, 0xfe

    goto :goto_87

    .line 2567
    :pswitch_55
    const/16 v0, 0xfe

    .line 2568
    const/16 v1, 0xfe

    .line 2569
    goto :goto_87

    .line 2563
    :pswitch_5a
    const/16 v0, 0xfe

    .line 2564
    const/16 v1, 0xfe

    .line 2565
    goto :goto_87

    .line 2559
    :pswitch_5f
    const/16 v0, 0xfe

    .line 2560
    const/16 v1, 0xfe

    .line 2561
    goto :goto_87

    .line 2555
    :pswitch_64
    const/16 v0, 0xfe

    .line 2556
    const/16 v1, 0xfe

    .line 2557
    goto :goto_87

    .line 2551
    :pswitch_69
    const/16 v0, 0xfe

    .line 2552
    const/16 v1, 0xfe

    .line 2553
    goto :goto_87

    .line 2547
    :pswitch_6e
    const/16 v0, 0xfe

    .line 2548
    const/16 v1, 0xfe

    .line 2549
    goto :goto_87

    .line 2543
    :pswitch_73
    const/16 v0, 0xfe

    .line 2544
    const/16 v1, 0xfe

    .line 2545
    goto :goto_87

    .line 2539
    :pswitch_78
    const/16 v0, 0xfe

    .line 2540
    const/16 v1, 0xfe

    .line 2541
    goto :goto_87

    .line 2535
    :pswitch_7d
    const/16 v0, 0xfe

    .line 2536
    const/16 v1, 0xfe

    .line 2537
    goto :goto_87

    .line 2531
    :pswitch_82
    const/16 v0, 0xff

    .line 2532
    const/16 v1, 0xff

    .line 2533
    nop

    .line 2573
    :goto_87
    goto :goto_c8

    .line 2577
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 2579
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 2621
    :pswitch_8e
    const/16 v0, 0xff

    .line 2622
    const/16 v1, 0xff

    goto :goto_c5

    .line 2617
    :pswitch_93
    const/16 v0, 0xff

    .line 2618
    const/16 v1, 0xff

    .line 2619
    goto :goto_c5

    .line 2613
    :pswitch_98
    const/16 v0, 0xff

    .line 2614
    const/16 v1, 0xff

    .line 2615
    goto :goto_c5

    .line 2609
    :pswitch_9d
    const/16 v0, 0xff

    .line 2610
    const/16 v1, 0xff

    .line 2611
    goto :goto_c5

    .line 2605
    :pswitch_a2
    const/16 v0, 0xff

    .line 2606
    const/16 v1, 0xff

    .line 2607
    goto :goto_c5

    .line 2601
    :pswitch_a7
    const/16 v0, 0xff

    .line 2602
    const/16 v1, 0xff

    .line 2603
    goto :goto_c5

    .line 2597
    :pswitch_ac
    const/16 v0, 0xff

    .line 2598
    const/16 v1, 0xff

    .line 2599
    goto :goto_c5

    .line 2593
    :pswitch_b1
    const/16 v0, 0xff

    .line 2594
    const/16 v1, 0xff

    .line 2595
    goto :goto_c5

    .line 2589
    :pswitch_b6
    const/16 v0, 0xff

    .line 2590
    const/16 v1, 0xff

    .line 2591
    goto :goto_c5

    .line 2585
    :pswitch_bb
    const/16 v0, 0xff

    .line 2586
    const/16 v1, 0xff

    .line 2587
    goto :goto_c5

    .line 2581
    :pswitch_c0
    const/16 v0, 0xff

    .line 2582
    const/16 v1, 0xff

    .line 2583
    nop

    .line 2623
    :goto_c5
    goto :goto_c8

    .line 2627
    :cond_c6
    const/4 v0, -0x1

    .line 2628
    const/4 v1, -0x1

    .line 2631
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 2632
    aput v0, v4, v5

    .line 2634
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 5696
    const/4 v0, 0x0

    .line 5697
    .local v0, "min":I
    const/4 v1, 0x0

    .line 5699
    .local v1, "max":I
    const/4 v2, 0x0

    .line 5701
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5704
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 5707
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 5709
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 5751
    :pswitch_11
    const/16 v0, 0xff

    .line 5752
    const/16 v1, 0xff

    goto :goto_48

    .line 5747
    :pswitch_16
    const/16 v0, 0xff

    .line 5748
    const/16 v1, 0xff

    .line 5749
    goto :goto_48

    .line 5743
    :pswitch_1b
    const/16 v0, 0xff

    .line 5744
    const/16 v1, 0xff

    .line 5745
    goto :goto_48

    .line 5739
    :pswitch_20
    const/16 v0, 0xff

    .line 5740
    const/16 v1, 0xff

    .line 5741
    goto :goto_48

    .line 5735
    :pswitch_25
    const/16 v0, 0xff

    .line 5736
    const/16 v1, 0xff

    .line 5737
    goto :goto_48

    .line 5731
    :pswitch_2a
    const/16 v0, 0xcf

    .line 5732
    const/16 v1, 0xe6

    .line 5733
    goto :goto_48

    .line 5727
    :pswitch_2f
    const/16 v0, 0xcc

    .line 5728
    const/16 v1, 0xe6

    .line 5729
    goto :goto_48

    .line 5723
    :pswitch_34
    const/16 v0, 0xcc

    .line 5724
    const/16 v1, 0xe1

    .line 5725
    goto :goto_48

    .line 5719
    :pswitch_39
    const/16 v0, 0xcc

    .line 5720
    const/16 v1, 0xd7

    .line 5721
    goto :goto_48

    .line 5715
    :pswitch_3e
    const/16 v0, 0xcc

    .line 5716
    const/16 v1, 0xd3

    .line 5717
    goto :goto_48

    .line 5711
    :pswitch_43
    const/16 v0, 0xff

    .line 5712
    const/16 v1, 0xff

    .line 5713
    nop

    .line 5753
    :goto_48
    goto/16 :goto_c8

    .line 5757
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 5759
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 5801
    :pswitch_50
    const/16 v0, 0xfe

    .line 5802
    const/16 v1, 0xfe

    goto :goto_87

    .line 5797
    :pswitch_55
    const/16 v0, 0xfe

    .line 5798
    const/16 v1, 0xfe

    .line 5799
    goto :goto_87

    .line 5793
    :pswitch_5a
    const/16 v0, 0xfe

    .line 5794
    const/16 v1, 0xfe

    .line 5795
    goto :goto_87

    .line 5789
    :pswitch_5f
    const/16 v0, 0xfe

    .line 5790
    const/16 v1, 0xfe

    .line 5791
    goto :goto_87

    .line 5785
    :pswitch_64
    const/16 v0, 0xfe

    .line 5786
    const/16 v1, 0xfe

    .line 5787
    goto :goto_87

    .line 5781
    :pswitch_69
    const/16 v0, 0xcc

    .line 5782
    const/16 v1, 0xfd

    .line 5783
    goto :goto_87

    .line 5777
    :pswitch_6e
    const/16 v0, 0xcc

    .line 5778
    const/16 v1, 0xf2

    .line 5779
    goto :goto_87

    .line 5773
    :pswitch_73
    const/16 v0, 0xcc

    .line 5774
    const/16 v1, 0xe8

    .line 5775
    goto :goto_87

    .line 5769
    :pswitch_78
    const/16 v0, 0xcc

    .line 5770
    const/16 v1, 0xe0

    .line 5771
    goto :goto_87

    .line 5765
    :pswitch_7d
    const/16 v0, 0xcc

    .line 5766
    const/16 v1, 0xd8

    .line 5767
    goto :goto_87

    .line 5761
    :pswitch_82
    const/16 v0, 0xff

    .line 5762
    const/16 v1, 0xff

    .line 5763
    nop

    .line 5803
    :goto_87
    goto :goto_c8

    .line 5807
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 5809
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 5851
    :pswitch_8e
    const/16 v0, 0xff

    .line 5852
    const/16 v1, 0xff

    goto :goto_c5

    .line 5847
    :pswitch_93
    const/16 v0, 0xff

    .line 5848
    const/16 v1, 0xff

    .line 5849
    goto :goto_c5

    .line 5843
    :pswitch_98
    const/16 v0, 0xff

    .line 5844
    const/16 v1, 0xff

    .line 5845
    goto :goto_c5

    .line 5839
    :pswitch_9d
    const/16 v0, 0xff

    .line 5840
    const/16 v1, 0xff

    .line 5841
    goto :goto_c5

    .line 5835
    :pswitch_a2
    const/16 v0, 0xff

    .line 5836
    const/16 v1, 0xff

    .line 5837
    goto :goto_c5

    .line 5831
    :pswitch_a7
    const/16 v0, 0xcc

    .line 5832
    const/16 v1, 0xd2

    .line 5833
    goto :goto_c5

    .line 5827
    :pswitch_ac
    const/16 v0, 0xcc

    .line 5828
    const/16 v1, 0xd3

    .line 5829
    goto :goto_c5

    .line 5823
    :pswitch_b1
    const/16 v0, 0xcc

    .line 5824
    const/16 v1, 0xd3

    .line 5825
    goto :goto_c5

    .line 5819
    :pswitch_b6
    const/16 v0, 0xcc

    .line 5820
    const/16 v1, 0xd2

    .line 5821
    goto :goto_c5

    .line 5815
    :pswitch_bb
    const/16 v0, 0xcc

    .line 5816
    const/16 v1, 0xd0

    .line 5817
    goto :goto_c5

    .line 5811
    :pswitch_c0
    const/16 v0, 0xff

    .line 5812
    const/16 v1, 0xff

    .line 5813
    nop

    .line 5853
    :goto_c5
    goto :goto_c8

    .line 5857
    :cond_c6
    const/4 v0, -0x1

    .line 5858
    const/4 v1, -0x1

    .line 5861
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 5862
    aput v0, v4, v5

    .line 5864
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CR_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 2294
    const/4 v0, 0x0

    .line 2295
    .local v0, "min":I
    const/4 v1, 0x0

    .line 2297
    .local v1, "max":I
    const/4 v2, 0x0

    .line 2299
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 2302
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 2305
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 2307
    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    .line 2349
    :pswitch_11
    const/4 v0, 0x1

    .line 2350
    const/4 v1, 0x1

    goto :goto_32

    .line 2345
    :pswitch_14
    const/4 v0, 0x1

    .line 2346
    const/4 v1, 0x1

    .line 2347
    goto :goto_32

    .line 2341
    :pswitch_17
    const/4 v0, 0x1

    .line 2342
    const/4 v1, 0x1

    .line 2343
    goto :goto_32

    .line 2337
    :pswitch_1a
    const/4 v0, 0x1

    .line 2338
    const/4 v1, 0x1

    .line 2339
    goto :goto_32

    .line 2333
    :pswitch_1d
    const/4 v0, 0x1

    .line 2334
    const/4 v1, 0x1

    .line 2335
    goto :goto_32

    .line 2329
    :pswitch_20
    const/4 v0, 0x1

    .line 2330
    const/4 v1, 0x1

    .line 2331
    goto :goto_32

    .line 2325
    :pswitch_23
    const/4 v0, 0x1

    .line 2326
    const/4 v1, 0x1

    .line 2327
    goto :goto_32

    .line 2321
    :pswitch_26
    const/4 v0, 0x1

    .line 2322
    const/4 v1, 0x1

    .line 2323
    goto :goto_32

    .line 2317
    :pswitch_29
    const/4 v0, 0x1

    .line 2318
    const/4 v1, 0x1

    .line 2319
    goto :goto_32

    .line 2313
    :pswitch_2c
    const/4 v0, 0x1

    .line 2314
    const/4 v1, 0x1

    .line 2315
    goto :goto_32

    .line 2309
    :pswitch_2f
    const/4 v0, 0x0

    .line 2310
    const/4 v1, 0x0

    .line 2311
    nop

    .line 2351
    :goto_32
    goto/16 :goto_86

    .line 2355
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 2357
    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    .line 2399
    :pswitch_3a
    const/4 v0, 0x0

    .line 2400
    const/4 v1, 0x0

    goto :goto_5b

    .line 2395
    :pswitch_3d
    const/4 v0, 0x0

    .line 2396
    const/4 v1, 0x0

    .line 2397
    goto :goto_5b

    .line 2391
    :pswitch_40
    const/4 v0, 0x0

    .line 2392
    const/4 v1, 0x0

    .line 2393
    goto :goto_5b

    .line 2387
    :pswitch_43
    const/4 v0, 0x0

    .line 2388
    const/4 v1, 0x0

    .line 2389
    goto :goto_5b

    .line 2383
    :pswitch_46
    const/4 v0, 0x0

    .line 2384
    const/4 v1, 0x0

    .line 2385
    goto :goto_5b

    .line 2379
    :pswitch_49
    const/4 v0, 0x0

    .line 2380
    const/4 v1, 0x0

    .line 2381
    goto :goto_5b

    .line 2375
    :pswitch_4c
    const/4 v0, 0x0

    .line 2376
    const/4 v1, 0x0

    .line 2377
    goto :goto_5b

    .line 2371
    :pswitch_4f
    const/4 v0, 0x0

    .line 2372
    const/4 v1, 0x0

    .line 2373
    goto :goto_5b

    .line 2367
    :pswitch_52
    const/4 v0, 0x0

    .line 2368
    const/4 v1, 0x0

    .line 2369
    goto :goto_5b

    .line 2363
    :pswitch_55
    const/4 v0, 0x0

    .line 2364
    const/4 v1, 0x0

    .line 2365
    goto :goto_5b

    .line 2359
    :pswitch_58
    const/4 v0, 0x0

    .line 2360
    const/4 v1, 0x0

    .line 2361
    nop

    .line 2401
    :goto_5b
    goto :goto_86

    .line 2405
    :cond_5c
    if-ne p1, v3, :cond_84

    .line 2407
    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    .line 2449
    :pswitch_62
    const/4 v0, 0x0

    .line 2450
    const/4 v1, 0x0

    goto :goto_83

    .line 2445
    :pswitch_65
    const/4 v0, 0x0

    .line 2446
    const/4 v1, 0x0

    .line 2447
    goto :goto_83

    .line 2441
    :pswitch_68
    const/4 v0, 0x0

    .line 2442
    const/4 v1, 0x0

    .line 2443
    goto :goto_83

    .line 2437
    :pswitch_6b
    const/4 v0, 0x0

    .line 2438
    const/4 v1, 0x0

    .line 2439
    goto :goto_83

    .line 2433
    :pswitch_6e
    const/4 v0, 0x0

    .line 2434
    const/4 v1, 0x0

    .line 2435
    goto :goto_83

    .line 2429
    :pswitch_71
    const/4 v0, 0x0

    .line 2430
    const/4 v1, 0x0

    .line 2431
    goto :goto_83

    .line 2425
    :pswitch_74
    const/4 v0, 0x0

    .line 2426
    const/4 v1, 0x0

    .line 2427
    goto :goto_83

    .line 2421
    :pswitch_77
    const/4 v0, 0x0

    .line 2422
    const/4 v1, 0x0

    .line 2423
    goto :goto_83

    .line 2417
    :pswitch_7a
    const/4 v0, 0x0

    .line 2418
    const/4 v1, 0x0

    .line 2419
    goto :goto_83

    .line 2413
    :pswitch_7d
    const/4 v0, 0x0

    .line 2414
    const/4 v1, 0x0

    .line 2415
    goto :goto_83

    .line 2409
    :pswitch_80
    const/4 v0, 0x0

    .line 2410
    const/4 v1, 0x0

    .line 2411
    nop

    .line 2451
    :goto_83
    goto :goto_86

    .line 2455
    :cond_84
    const/4 v0, -0x1

    .line 2456
    const/4 v1, -0x1

    .line 2459
    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 2460
    aput v0, v4, v5

    .line 2462
    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 5524
    const/4 v0, 0x0

    .line 5525
    .local v0, "min":I
    const/4 v1, 0x0

    .line 5527
    .local v1, "max":I
    const/4 v2, 0x0

    .line 5529
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5532
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 5535
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 5537
    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    .line 5579
    :pswitch_11
    const/4 v0, 0x1

    .line 5580
    const/4 v1, 0x1

    goto :goto_32

    .line 5575
    :pswitch_14
    const/4 v0, 0x1

    .line 5576
    const/4 v1, 0x1

    .line 5577
    goto :goto_32

    .line 5571
    :pswitch_17
    const/4 v0, 0x1

    .line 5572
    const/4 v1, 0x1

    .line 5573
    goto :goto_32

    .line 5567
    :pswitch_1a
    const/4 v0, 0x1

    .line 5568
    const/4 v1, 0x1

    .line 5569
    goto :goto_32

    .line 5563
    :pswitch_1d
    const/4 v0, 0x1

    .line 5564
    const/4 v1, 0x1

    .line 5565
    goto :goto_32

    .line 5559
    :pswitch_20
    const/4 v0, 0x0

    .line 5560
    const/4 v1, 0x0

    .line 5561
    goto :goto_32

    .line 5555
    :pswitch_23
    const/4 v0, 0x0

    .line 5556
    const/4 v1, 0x0

    .line 5557
    goto :goto_32

    .line 5551
    :pswitch_26
    const/4 v0, 0x0

    .line 5552
    const/4 v1, 0x0

    .line 5553
    goto :goto_32

    .line 5547
    :pswitch_29
    const/4 v0, 0x0

    .line 5548
    const/4 v1, 0x0

    .line 5549
    goto :goto_32

    .line 5543
    :pswitch_2c
    const/4 v0, 0x0

    .line 5544
    const/4 v1, 0x0

    .line 5545
    goto :goto_32

    .line 5539
    :pswitch_2f
    const/4 v0, 0x0

    .line 5540
    const/4 v1, 0x0

    .line 5541
    nop

    .line 5581
    :goto_32
    goto/16 :goto_86

    .line 5585
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 5587
    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    .line 5629
    :pswitch_3a
    const/4 v0, 0x0

    .line 5630
    const/4 v1, 0x0

    goto :goto_5b

    .line 5625
    :pswitch_3d
    const/4 v0, 0x0

    .line 5626
    const/4 v1, 0x0

    .line 5627
    goto :goto_5b

    .line 5621
    :pswitch_40
    const/4 v0, 0x0

    .line 5622
    const/4 v1, 0x0

    .line 5623
    goto :goto_5b

    .line 5617
    :pswitch_43
    const/4 v0, 0x0

    .line 5618
    const/4 v1, 0x0

    .line 5619
    goto :goto_5b

    .line 5613
    :pswitch_46
    const/4 v0, 0x0

    .line 5614
    const/4 v1, 0x0

    .line 5615
    goto :goto_5b

    .line 5609
    :pswitch_49
    const/4 v0, 0x0

    .line 5610
    const/4 v1, 0x0

    .line 5611
    goto :goto_5b

    .line 5605
    :pswitch_4c
    const/4 v0, 0x0

    .line 5606
    const/4 v1, 0x0

    .line 5607
    goto :goto_5b

    .line 5601
    :pswitch_4f
    const/4 v0, 0x0

    .line 5602
    const/4 v1, 0x0

    .line 5603
    goto :goto_5b

    .line 5597
    :pswitch_52
    const/4 v0, 0x0

    .line 5598
    const/4 v1, 0x0

    .line 5599
    goto :goto_5b

    .line 5593
    :pswitch_55
    const/4 v0, 0x0

    .line 5594
    const/4 v1, 0x0

    .line 5595
    goto :goto_5b

    .line 5589
    :pswitch_58
    const/4 v0, 0x0

    .line 5590
    const/4 v1, 0x0

    .line 5591
    nop

    .line 5631
    :goto_5b
    goto :goto_86

    .line 5635
    :cond_5c
    if-ne p1, v3, :cond_84

    .line 5637
    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    .line 5679
    :pswitch_62
    const/4 v0, 0x0

    .line 5680
    const/4 v1, 0x0

    goto :goto_83

    .line 5675
    :pswitch_65
    const/4 v0, 0x0

    .line 5676
    const/4 v1, 0x0

    .line 5677
    goto :goto_83

    .line 5671
    :pswitch_68
    const/4 v0, 0x0

    .line 5672
    const/4 v1, 0x0

    .line 5673
    goto :goto_83

    .line 5667
    :pswitch_6b
    const/4 v0, 0x0

    .line 5668
    const/4 v1, 0x0

    .line 5669
    goto :goto_83

    .line 5663
    :pswitch_6e
    const/4 v0, 0x0

    .line 5664
    const/4 v1, 0x0

    .line 5665
    goto :goto_83

    .line 5659
    :pswitch_71
    const/4 v0, 0x0

    .line 5660
    const/4 v1, 0x0

    .line 5661
    goto :goto_83

    .line 5655
    :pswitch_74
    const/4 v0, 0x0

    .line 5656
    const/4 v1, 0x0

    .line 5657
    goto :goto_83

    .line 5651
    :pswitch_77
    const/4 v0, 0x0

    .line 5652
    const/4 v1, 0x0

    .line 5653
    goto :goto_83

    .line 5647
    :pswitch_7a
    const/4 v0, 0x0

    .line 5648
    const/4 v1, 0x0

    .line 5649
    goto :goto_83

    .line 5643
    :pswitch_7d
    const/4 v0, 0x0

    .line 5644
    const/4 v1, 0x0

    .line 5645
    goto :goto_83

    .line 5639
    :pswitch_80
    const/4 v0, 0x0

    .line 5640
    const/4 v1, 0x0

    .line 5641
    nop

    .line 5681
    :goto_83
    goto :goto_86

    .line 5685
    :cond_84
    const/4 v0, -0x1

    .line 5686
    const/4 v1, -0x1

    .line 5689
    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 5690
    aput v0, v4, v5

    .line 5692
    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GB_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 1089
    const/4 v0, 0x0

    .line 1090
    .local v0, "min":I
    const/4 v1, 0x0

    .line 1092
    .local v1, "max":I
    const/4 v2, 0x0

    .line 1094
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 1097
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 1100
    const/4 v5, 0x1

    if-nez p1, :cond_48

    .line 1102
    packed-switch v2, :pswitch_data_b4

    goto :goto_46

    .line 1144
    :pswitch_11
    const/16 v0, 0x73

    .line 1145
    const/16 v1, 0x73

    goto :goto_46

    .line 1140
    :pswitch_16
    const/16 v0, 0x6d

    .line 1141
    const/16 v1, 0x6d

    .line 1142
    goto :goto_46

    .line 1136
    :pswitch_1b
    const/16 v0, 0x67

    .line 1137
    const/16 v1, 0x67

    .line 1138
    goto :goto_46

    .line 1132
    :pswitch_20
    const/16 v0, 0x5d

    .line 1133
    const/16 v1, 0x5d

    .line 1134
    goto :goto_46

    .line 1128
    :pswitch_25
    const/16 v0, 0x55

    .line 1129
    const/16 v1, 0x55

    .line 1130
    goto :goto_46

    .line 1124
    :pswitch_2a
    const/16 v0, 0x4b

    .line 1125
    const/16 v1, 0x4b

    .line 1126
    goto :goto_46

    .line 1120
    :pswitch_2f
    const/16 v0, 0x3f

    .line 1121
    const/16 v1, 0x3f

    .line 1122
    goto :goto_46

    .line 1116
    :pswitch_34
    const/16 v0, 0x33

    .line 1117
    const/16 v1, 0x33

    .line 1118
    goto :goto_46

    .line 1112
    :pswitch_39
    const/16 v0, 0x25

    .line 1113
    const/16 v1, 0x25

    .line 1114
    goto :goto_46

    .line 1108
    :pswitch_3e
    const/16 v0, 0x13

    .line 1109
    const/16 v1, 0x13

    .line 1110
    goto :goto_46

    .line 1104
    :pswitch_43
    const/4 v0, 0x0

    .line 1105
    const/4 v1, 0x0

    .line 1106
    nop

    .line 1146
    :goto_46
    goto/16 :goto_ae

    .line 1150
    :cond_48
    if-ne p1, v5, :cond_84

    .line 1152
    packed-switch v2, :pswitch_data_ce

    goto :goto_83

    .line 1194
    :pswitch_4e
    const/16 v0, 0x5e

    .line 1195
    const/16 v1, 0x5e

    goto :goto_83

    .line 1190
    :pswitch_53
    const/16 v0, 0x59

    .line 1191
    const/16 v1, 0x59

    .line 1192
    goto :goto_83

    .line 1186
    :pswitch_58
    const/16 v0, 0x55

    .line 1187
    const/16 v1, 0x55

    .line 1188
    goto :goto_83

    .line 1182
    :pswitch_5d
    const/16 v0, 0x4f

    .line 1183
    const/16 v1, 0x4f

    .line 1184
    goto :goto_83

    .line 1178
    :pswitch_62
    const/16 v0, 0x49

    .line 1179
    const/16 v1, 0x49

    .line 1180
    goto :goto_83

    .line 1174
    :pswitch_67
    const/16 v0, 0x41

    .line 1175
    const/16 v1, 0x41

    .line 1176
    goto :goto_83

    .line 1170
    :pswitch_6c
    const/16 v0, 0x39

    .line 1171
    const/16 v1, 0x39

    .line 1172
    goto :goto_83

    .line 1166
    :pswitch_71
    const/16 v0, 0x2f

    .line 1167
    const/16 v1, 0x2f

    .line 1168
    goto :goto_83

    .line 1162
    :pswitch_76
    const/16 v0, 0x23

    .line 1163
    const/16 v1, 0x23

    .line 1164
    goto :goto_83

    .line 1158
    :pswitch_7b
    const/16 v0, 0x13

    .line 1159
    const/16 v1, 0x13

    .line 1160
    goto :goto_83

    .line 1154
    :pswitch_80
    const/4 v0, 0x0

    .line 1155
    const/4 v1, 0x0

    .line 1156
    nop

    .line 1196
    :goto_83
    goto :goto_ae

    .line 1200
    :cond_84
    if-ne p1, v3, :cond_ac

    .line 1202
    packed-switch v2, :pswitch_data_e8

    goto :goto_ab

    .line 1244
    :pswitch_8a
    const/4 v0, 0x0

    .line 1245
    const/4 v1, 0x0

    goto :goto_ab

    .line 1240
    :pswitch_8d
    const/4 v0, 0x0

    .line 1241
    const/4 v1, 0x0

    .line 1242
    goto :goto_ab

    .line 1236
    :pswitch_90
    const/4 v0, 0x0

    .line 1237
    const/4 v1, 0x0

    .line 1238
    goto :goto_ab

    .line 1232
    :pswitch_93
    const/4 v0, 0x0

    .line 1233
    const/4 v1, 0x0

    .line 1234
    goto :goto_ab

    .line 1228
    :pswitch_96
    const/4 v0, 0x0

    .line 1229
    const/4 v1, 0x0

    .line 1230
    goto :goto_ab

    .line 1224
    :pswitch_99
    const/4 v0, 0x0

    .line 1225
    const/4 v1, 0x0

    .line 1226
    goto :goto_ab

    .line 1220
    :pswitch_9c
    const/4 v0, 0x0

    .line 1221
    const/4 v1, 0x0

    .line 1222
    goto :goto_ab

    .line 1216
    :pswitch_9f
    const/4 v0, 0x0

    .line 1217
    const/4 v1, 0x0

    .line 1218
    goto :goto_ab

    .line 1212
    :pswitch_a2
    const/4 v0, 0x0

    .line 1213
    const/4 v1, 0x0

    .line 1214
    goto :goto_ab

    .line 1208
    :pswitch_a5
    const/4 v0, 0x0

    .line 1209
    const/4 v1, 0x0

    .line 1210
    goto :goto_ab

    .line 1204
    :pswitch_a8
    const/4 v0, 0x0

    .line 1205
    const/4 v1, 0x0

    .line 1206
    nop

    .line 1246
    :goto_ab
    goto :goto_ae

    .line 1250
    :cond_ac
    const/4 v0, -0x1

    .line 1251
    const/4 v1, -0x1

    .line 1254
    :goto_ae
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 1255
    aput v0, v4, v5

    .line 1257
    return-object v4

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_53
        :pswitch_4e
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 4319
    const/4 v0, 0x0

    .line 4320
    .local v0, "min":I
    const/4 v1, 0x0

    .line 4322
    .local v1, "max":I
    const/4 v2, 0x0

    .line 4324
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 4327
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 4330
    const/4 v5, 0x1

    if-nez p1, :cond_3e

    .line 4332
    packed-switch v2, :pswitch_data_a0

    goto :goto_3c

    .line 4374
    :pswitch_11
    const/16 v0, 0x73

    .line 4375
    const/16 v1, 0x73

    goto :goto_3c

    .line 4370
    :pswitch_16
    const/16 v0, 0x6d

    .line 4371
    const/16 v1, 0x6d

    .line 4372
    goto :goto_3c

    .line 4366
    :pswitch_1b
    const/16 v0, 0x67

    .line 4367
    const/16 v1, 0x67

    .line 4368
    goto :goto_3c

    .line 4362
    :pswitch_20
    const/16 v0, 0x5d

    .line 4363
    const/16 v1, 0x5d

    .line 4364
    goto :goto_3c

    .line 4358
    :pswitch_25
    const/16 v0, 0x55

    .line 4359
    const/16 v1, 0x55

    .line 4360
    goto :goto_3c

    .line 4354
    :pswitch_2a
    const/4 v0, 0x0

    .line 4355
    const/4 v1, 0x0

    .line 4356
    goto :goto_3c

    .line 4350
    :pswitch_2d
    const/4 v0, 0x0

    .line 4351
    const/4 v1, 0x0

    .line 4352
    goto :goto_3c

    .line 4346
    :pswitch_30
    const/4 v0, 0x0

    .line 4347
    const/4 v1, 0x0

    .line 4348
    goto :goto_3c

    .line 4342
    :pswitch_33
    const/4 v0, 0x0

    .line 4343
    const/4 v1, 0x0

    .line 4344
    goto :goto_3c

    .line 4338
    :pswitch_36
    const/4 v0, 0x0

    .line 4339
    const/4 v1, 0x0

    .line 4340
    goto :goto_3c

    .line 4334
    :pswitch_39
    const/4 v0, 0x0

    .line 4335
    const/4 v1, 0x0

    .line 4336
    nop

    .line 4376
    :goto_3c
    goto/16 :goto_9a

    .line 4380
    :cond_3e
    if-ne p1, v5, :cond_70

    .line 4382
    packed-switch v2, :pswitch_data_ba

    goto :goto_6f

    .line 4424
    :pswitch_44
    const/16 v0, 0x5e

    .line 4425
    const/16 v1, 0x5e

    goto :goto_6f

    .line 4420
    :pswitch_49
    const/16 v0, 0x59

    .line 4421
    const/16 v1, 0x59

    .line 4422
    goto :goto_6f

    .line 4416
    :pswitch_4e
    const/16 v0, 0x55

    .line 4417
    const/16 v1, 0x55

    .line 4418
    goto :goto_6f

    .line 4412
    :pswitch_53
    const/16 v0, 0x4f

    .line 4413
    const/16 v1, 0x4f

    .line 4414
    goto :goto_6f

    .line 4408
    :pswitch_58
    const/16 v0, 0x49

    .line 4409
    const/16 v1, 0x49

    .line 4410
    goto :goto_6f

    .line 4404
    :pswitch_5d
    const/4 v0, 0x0

    .line 4405
    const/4 v1, 0x0

    .line 4406
    goto :goto_6f

    .line 4400
    :pswitch_60
    const/4 v0, 0x0

    .line 4401
    const/4 v1, 0x0

    .line 4402
    goto :goto_6f

    .line 4396
    :pswitch_63
    const/4 v0, 0x0

    .line 4397
    const/4 v1, 0x0

    .line 4398
    goto :goto_6f

    .line 4392
    :pswitch_66
    const/4 v0, 0x0

    .line 4393
    const/4 v1, 0x0

    .line 4394
    goto :goto_6f

    .line 4388
    :pswitch_69
    const/4 v0, 0x0

    .line 4389
    const/4 v1, 0x0

    .line 4390
    goto :goto_6f

    .line 4384
    :pswitch_6c
    const/4 v0, 0x0

    .line 4385
    const/4 v1, 0x0

    .line 4386
    nop

    .line 4426
    :goto_6f
    goto :goto_9a

    .line 4430
    :cond_70
    if-ne p1, v3, :cond_98

    .line 4432
    packed-switch v2, :pswitch_data_d4

    goto :goto_97

    .line 4474
    :pswitch_76
    const/4 v0, 0x0

    .line 4475
    const/4 v1, 0x0

    goto :goto_97

    .line 4470
    :pswitch_79
    const/4 v0, 0x0

    .line 4471
    const/4 v1, 0x0

    .line 4472
    goto :goto_97

    .line 4466
    :pswitch_7c
    const/4 v0, 0x0

    .line 4467
    const/4 v1, 0x0

    .line 4468
    goto :goto_97

    .line 4462
    :pswitch_7f
    const/4 v0, 0x0

    .line 4463
    const/4 v1, 0x0

    .line 4464
    goto :goto_97

    .line 4458
    :pswitch_82
    const/4 v0, 0x0

    .line 4459
    const/4 v1, 0x0

    .line 4460
    goto :goto_97

    .line 4454
    :pswitch_85
    const/4 v0, 0x0

    .line 4455
    const/4 v1, 0x0

    .line 4456
    goto :goto_97

    .line 4450
    :pswitch_88
    const/4 v0, 0x0

    .line 4451
    const/4 v1, 0x0

    .line 4452
    goto :goto_97

    .line 4446
    :pswitch_8b
    const/4 v0, 0x0

    .line 4447
    const/4 v1, 0x0

    .line 4448
    goto :goto_97

    .line 4442
    :pswitch_8e
    const/4 v0, 0x0

    .line 4443
    const/4 v1, 0x0

    .line 4444
    goto :goto_97

    .line 4438
    :pswitch_91
    const/4 v0, 0x0

    .line 4439
    const/4 v1, 0x0

    .line 4440
    goto :goto_97

    .line 4434
    :pswitch_94
    const/4 v0, 0x0

    .line 4435
    const/4 v1, 0x0

    .line 4436
    nop

    .line 4476
    :goto_97
    goto :goto_9a

    .line 4480
    :cond_98
    const/4 v0, -0x1

    .line 4481
    const/4 v1, -0x1

    .line 4484
    :goto_9a
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 4485
    aput v0, v4, v5

    .line 4487
    return-object v4

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_58
        :pswitch_53
        :pswitch_4e
        :pswitch_49
        :pswitch_44
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GG_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 917
    const/4 v0, 0x0

    .line 918
    .local v0, "min":I
    const/4 v1, 0x0

    .line 920
    .local v1, "max":I
    const/4 v2, 0x0

    .line 922
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 925
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 928
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 930
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 972
    :pswitch_11
    const/16 v0, 0xff

    .line 973
    const/16 v1, 0xff

    goto :goto_48

    .line 968
    :pswitch_16
    const/16 v0, 0xff

    .line 969
    const/16 v1, 0xff

    .line 970
    goto :goto_48

    .line 964
    :pswitch_1b
    const/16 v0, 0xfe

    .line 965
    const/16 v1, 0xfe

    .line 966
    goto :goto_48

    .line 960
    :pswitch_20
    const/16 v0, 0xfe

    .line 961
    const/16 v1, 0xfe

    .line 962
    goto :goto_48

    .line 956
    :pswitch_25
    const/16 v0, 0xff

    .line 957
    const/16 v1, 0xff

    .line 958
    goto :goto_48

    .line 952
    :pswitch_2a
    const/16 v0, 0xff

    .line 953
    const/16 v1, 0xff

    .line 954
    goto :goto_48

    .line 948
    :pswitch_2f
    const/16 v0, 0xff

    .line 949
    const/16 v1, 0xff

    .line 950
    goto :goto_48

    .line 944
    :pswitch_34
    const/16 v0, 0xff

    .line 945
    const/16 v1, 0xff

    .line 946
    goto :goto_48

    .line 940
    :pswitch_39
    const/16 v0, 0xff

    .line 941
    const/16 v1, 0xff

    .line 942
    goto :goto_48

    .line 936
    :pswitch_3e
    const/16 v0, 0xff

    .line 937
    const/16 v1, 0xff

    .line 938
    goto :goto_48

    .line 932
    :pswitch_43
    const/16 v0, 0xff

    .line 933
    const/16 v1, 0xff

    .line 934
    nop

    .line 974
    :goto_48
    goto/16 :goto_c8

    .line 978
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 980
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 1022
    :pswitch_50
    const/16 v0, 0xfe

    .line 1023
    const/16 v1, 0xfe

    goto :goto_87

    .line 1018
    :pswitch_55
    const/16 v0, 0xfe

    .line 1019
    const/16 v1, 0xfe

    .line 1020
    goto :goto_87

    .line 1014
    :pswitch_5a
    const/16 v0, 0xfe

    .line 1015
    const/16 v1, 0xfe

    .line 1016
    goto :goto_87

    .line 1010
    :pswitch_5f
    const/16 v0, 0xfe

    .line 1011
    const/16 v1, 0xfe

    .line 1012
    goto :goto_87

    .line 1006
    :pswitch_64
    const/16 v0, 0xfe

    .line 1007
    const/16 v1, 0xfe

    .line 1008
    goto :goto_87

    .line 1002
    :pswitch_69
    const/16 v0, 0xfe

    .line 1003
    const/16 v1, 0xfe

    .line 1004
    goto :goto_87

    .line 998
    :pswitch_6e
    const/16 v0, 0xfe

    .line 999
    const/16 v1, 0xfe

    .line 1000
    goto :goto_87

    .line 994
    :pswitch_73
    const/16 v0, 0xfe

    .line 995
    const/16 v1, 0xfe

    .line 996
    goto :goto_87

    .line 990
    :pswitch_78
    const/16 v0, 0xfe

    .line 991
    const/16 v1, 0xfe

    .line 992
    goto :goto_87

    .line 986
    :pswitch_7d
    const/16 v0, 0xfe

    .line 987
    const/16 v1, 0xfe

    .line 988
    goto :goto_87

    .line 982
    :pswitch_82
    const/16 v0, 0xff

    .line 983
    const/16 v1, 0xff

    .line 984
    nop

    .line 1024
    :goto_87
    goto :goto_c8

    .line 1028
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 1030
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 1072
    :pswitch_8e
    const/16 v0, 0xff

    .line 1073
    const/16 v1, 0xff

    goto :goto_c5

    .line 1068
    :pswitch_93
    const/16 v0, 0xff

    .line 1069
    const/16 v1, 0xff

    .line 1070
    goto :goto_c5

    .line 1064
    :pswitch_98
    const/16 v0, 0xff

    .line 1065
    const/16 v1, 0xff

    .line 1066
    goto :goto_c5

    .line 1060
    :pswitch_9d
    const/16 v0, 0xff

    .line 1061
    const/16 v1, 0xff

    .line 1062
    goto :goto_c5

    .line 1056
    :pswitch_a2
    const/16 v0, 0xff

    .line 1057
    const/16 v1, 0xff

    .line 1058
    goto :goto_c5

    .line 1052
    :pswitch_a7
    const/16 v0, 0xff

    .line 1053
    const/16 v1, 0xff

    .line 1054
    goto :goto_c5

    .line 1048
    :pswitch_ac
    const/16 v0, 0xff

    .line 1049
    const/16 v1, 0xff

    .line 1050
    goto :goto_c5

    .line 1044
    :pswitch_b1
    const/16 v0, 0xff

    .line 1045
    const/16 v1, 0xff

    .line 1046
    goto :goto_c5

    .line 1040
    :pswitch_b6
    const/16 v0, 0xff

    .line 1041
    const/16 v1, 0xff

    .line 1042
    goto :goto_c5

    .line 1036
    :pswitch_bb
    const/16 v0, 0xff

    .line 1037
    const/16 v1, 0xff

    .line 1038
    goto :goto_c5

    .line 1032
    :pswitch_c0
    const/16 v0, 0xff

    .line 1033
    const/16 v1, 0xff

    .line 1034
    nop

    .line 1074
    :goto_c5
    goto :goto_c8

    .line 1078
    :cond_c6
    const/4 v0, -0x1

    .line 1079
    const/4 v1, -0x1

    .line 1082
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 1083
    aput v0, v4, v5

    .line 1085
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 4147
    const/4 v0, 0x0

    .line 4148
    .local v0, "min":I
    const/4 v1, 0x0

    .line 4150
    .local v1, "max":I
    const/4 v2, 0x0

    .line 4152
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 4155
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 4158
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 4160
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 4202
    :pswitch_11
    const/16 v0, 0xff

    .line 4203
    const/16 v1, 0xff

    goto :goto_48

    .line 4198
    :pswitch_16
    const/16 v0, 0xff

    .line 4199
    const/16 v1, 0xff

    .line 4200
    goto :goto_48

    .line 4194
    :pswitch_1b
    const/16 v0, 0xfe

    .line 4195
    const/16 v1, 0xfe

    .line 4196
    goto :goto_48

    .line 4190
    :pswitch_20
    const/16 v0, 0xfe

    .line 4191
    const/16 v1, 0xfe

    .line 4192
    goto :goto_48

    .line 4186
    :pswitch_25
    const/16 v0, 0xff

    .line 4187
    const/16 v1, 0xff

    .line 4188
    goto :goto_48

    .line 4182
    :pswitch_2a
    const/16 v0, 0xcc

    .line 4183
    const/16 v1, 0xf3

    .line 4184
    goto :goto_48

    .line 4178
    :pswitch_2f
    const/16 v0, 0xcc

    .line 4179
    const/16 v1, 0xeb

    .line 4180
    goto :goto_48

    .line 4174
    :pswitch_34
    const/16 v0, 0xcc

    .line 4175
    const/16 v1, 0xe3

    .line 4176
    goto :goto_48

    .line 4170
    :pswitch_39
    const/16 v0, 0xcc

    .line 4171
    const/16 v1, 0xdd

    .line 4172
    goto :goto_48

    .line 4166
    :pswitch_3e
    const/16 v0, 0xcc

    .line 4167
    const/16 v1, 0xd6

    .line 4168
    goto :goto_48

    .line 4162
    :pswitch_43
    const/16 v0, 0xff

    .line 4163
    const/16 v1, 0xff

    .line 4164
    nop

    .line 4204
    :goto_48
    goto/16 :goto_c8

    .line 4208
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 4210
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 4252
    :pswitch_50
    const/16 v0, 0xfe

    .line 4253
    const/16 v1, 0xfe

    goto :goto_87

    .line 4248
    :pswitch_55
    const/16 v0, 0xfe

    .line 4249
    const/16 v1, 0xfe

    .line 4250
    goto :goto_87

    .line 4244
    :pswitch_5a
    const/16 v0, 0xfe

    .line 4245
    const/16 v1, 0xfe

    .line 4246
    goto :goto_87

    .line 4240
    :pswitch_5f
    const/16 v0, 0xfe

    .line 4241
    const/16 v1, 0xfe

    .line 4242
    goto :goto_87

    .line 4236
    :pswitch_64
    const/16 v0, 0xfe

    .line 4237
    const/16 v1, 0xfe

    .line 4238
    goto :goto_87

    .line 4232
    :pswitch_69
    const/16 v0, 0xcc

    .line 4233
    const/16 v1, 0xff

    .line 4234
    goto :goto_87

    .line 4228
    :pswitch_6e
    const/16 v0, 0xcc

    .line 4229
    const/16 v1, 0xfb

    .line 4230
    goto :goto_87

    .line 4224
    :pswitch_73
    const/16 v0, 0xcc

    .line 4225
    const/16 v1, 0xef

    .line 4226
    goto :goto_87

    .line 4220
    :pswitch_78
    const/16 v0, 0xcc

    .line 4221
    const/16 v1, 0xe5

    .line 4222
    goto :goto_87

    .line 4216
    :pswitch_7d
    const/16 v0, 0xcc

    .line 4217
    const/16 v1, 0xdc

    .line 4218
    goto :goto_87

    .line 4212
    :pswitch_82
    const/16 v0, 0xff

    .line 4213
    const/16 v1, 0xff

    .line 4214
    nop

    .line 4254
    :goto_87
    goto :goto_c8

    .line 4258
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 4260
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 4302
    :pswitch_8e
    const/16 v0, 0xff

    .line 4303
    const/16 v1, 0xff

    goto :goto_c5

    .line 4298
    :pswitch_93
    const/16 v0, 0xff

    .line 4299
    const/16 v1, 0xff

    .line 4300
    goto :goto_c5

    .line 4294
    :pswitch_98
    const/16 v0, 0xff

    .line 4295
    const/16 v1, 0xff

    .line 4296
    goto :goto_c5

    .line 4290
    :pswitch_9d
    const/16 v0, 0xff

    .line 4291
    const/16 v1, 0xff

    .line 4292
    goto :goto_c5

    .line 4286
    :pswitch_a2
    const/16 v0, 0xff

    .line 4287
    const/16 v1, 0xff

    .line 4288
    goto :goto_c5

    .line 4282
    :pswitch_a7
    const/16 v0, 0xcc

    .line 4283
    const/16 v1, 0xda

    .line 4284
    goto :goto_c5

    .line 4278
    :pswitch_ac
    const/16 v0, 0xcc

    .line 4279
    const/16 v1, 0xda

    .line 4280
    goto :goto_c5

    .line 4274
    :pswitch_b1
    const/16 v0, 0xcc

    .line 4275
    const/16 v1, 0xd9

    .line 4276
    goto :goto_c5

    .line 4270
    :pswitch_b6
    const/16 v0, 0xcc

    .line 4271
    const/16 v1, 0xd7

    .line 4272
    goto :goto_c5

    .line 4266
    :pswitch_bb
    const/16 v0, 0xcc

    .line 4267
    const/16 v1, 0xd4

    .line 4268
    goto :goto_c5

    .line 4262
    :pswitch_c0
    const/16 v0, 0xff

    .line 4263
    const/16 v1, 0xff

    .line 4264
    nop

    .line 4304
    :goto_c5
    goto :goto_c8

    .line 4308
    :cond_c6
    const/4 v0, -0x1

    .line 4309
    const/4 v1, -0x1

    .line 4312
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 4313
    aput v0, v4, v5

    .line 4315
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GR_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "min":I
    const/4 v1, 0x0

    .line 748
    .local v1, "max":I
    const/4 v2, 0x0

    .line 750
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 753
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 756
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 758
    packed-switch v2, :pswitch_data_98

    goto :goto_32

    .line 800
    :pswitch_11
    const/4 v0, 0x1

    .line 801
    const/4 v1, 0x1

    goto :goto_32

    .line 796
    :pswitch_14
    const/4 v0, 0x1

    .line 797
    const/4 v1, 0x1

    .line 798
    goto :goto_32

    .line 792
    :pswitch_17
    const/4 v0, 0x1

    .line 793
    const/4 v1, 0x1

    .line 794
    goto :goto_32

    .line 788
    :pswitch_1a
    const/4 v0, 0x1

    .line 789
    const/4 v1, 0x1

    .line 790
    goto :goto_32

    .line 784
    :pswitch_1d
    const/4 v0, 0x1

    .line 785
    const/4 v1, 0x1

    .line 786
    goto :goto_32

    .line 780
    :pswitch_20
    const/4 v0, 0x1

    .line 781
    const/4 v1, 0x1

    .line 782
    goto :goto_32

    .line 776
    :pswitch_23
    const/4 v0, 0x1

    .line 777
    const/4 v1, 0x1

    .line 778
    goto :goto_32

    .line 772
    :pswitch_26
    const/4 v0, 0x1

    .line 773
    const/4 v1, 0x1

    .line 774
    goto :goto_32

    .line 768
    :pswitch_29
    const/4 v0, 0x1

    .line 769
    const/4 v1, 0x1

    .line 770
    goto :goto_32

    .line 764
    :pswitch_2c
    const/4 v0, 0x1

    .line 765
    const/4 v1, 0x1

    .line 766
    goto :goto_32

    .line 760
    :pswitch_2f
    const/4 v0, 0x0

    .line 761
    const/4 v1, 0x0

    .line 762
    nop

    .line 802
    :goto_32
    goto/16 :goto_92

    .line 806
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 808
    packed-switch v2, :pswitch_data_b2

    goto :goto_5b

    .line 850
    :pswitch_3a
    const/4 v0, 0x0

    .line 851
    const/4 v1, 0x0

    goto :goto_5b

    .line 846
    :pswitch_3d
    const/4 v0, 0x0

    .line 847
    const/4 v1, 0x0

    .line 848
    goto :goto_5b

    .line 842
    :pswitch_40
    const/4 v0, 0x0

    .line 843
    const/4 v1, 0x0

    .line 844
    goto :goto_5b

    .line 838
    :pswitch_43
    const/4 v0, 0x1

    .line 839
    const/4 v1, 0x1

    .line 840
    goto :goto_5b

    .line 834
    :pswitch_46
    const/4 v0, 0x0

    .line 835
    const/4 v1, 0x0

    .line 836
    goto :goto_5b

    .line 830
    :pswitch_49
    const/4 v0, 0x0

    .line 831
    const/4 v1, 0x0

    .line 832
    goto :goto_5b

    .line 826
    :pswitch_4c
    const/4 v0, 0x0

    .line 827
    const/4 v1, 0x0

    .line 828
    goto :goto_5b

    .line 822
    :pswitch_4f
    const/4 v0, 0x0

    .line 823
    const/4 v1, 0x0

    .line 824
    goto :goto_5b

    .line 818
    :pswitch_52
    const/4 v0, 0x0

    .line 819
    const/4 v1, 0x0

    .line 820
    goto :goto_5b

    .line 814
    :pswitch_55
    const/4 v0, 0x1

    .line 815
    const/4 v1, 0x1

    .line 816
    goto :goto_5b

    .line 810
    :pswitch_58
    const/4 v0, 0x0

    .line 811
    const/4 v1, 0x0

    .line 812
    nop

    .line 852
    :goto_5b
    goto :goto_92

    .line 856
    :cond_5c
    if-ne p1, v3, :cond_90

    .line 858
    packed-switch v2, :pswitch_data_cc

    goto :goto_8f

    .line 900
    :pswitch_62
    const/16 v0, 0x51

    .line 901
    const/16 v1, 0x51

    goto :goto_8f

    .line 896
    :pswitch_67
    const/16 v0, 0x49

    .line 897
    const/16 v1, 0x49

    .line 898
    goto :goto_8f

    .line 892
    :pswitch_6c
    const/16 v0, 0x3f

    .line 893
    const/16 v1, 0x3f

    .line 894
    goto :goto_8f

    .line 888
    :pswitch_71
    const/16 v0, 0x33

    .line 889
    const/16 v1, 0x33

    .line 890
    goto :goto_8f

    .line 884
    :pswitch_76
    const/16 v0, 0x26

    .line 885
    const/16 v1, 0x26

    .line 886
    goto :goto_8f

    .line 880
    :pswitch_7b
    const/16 v0, 0x15

    .line 881
    const/16 v1, 0x15

    .line 882
    goto :goto_8f

    .line 876
    :pswitch_80
    const/4 v0, 0x0

    .line 877
    const/4 v1, 0x0

    .line 878
    goto :goto_8f

    .line 872
    :pswitch_83
    const/4 v0, 0x0

    .line 873
    const/4 v1, 0x0

    .line 874
    goto :goto_8f

    .line 868
    :pswitch_86
    const/4 v0, 0x0

    .line 869
    const/4 v1, 0x0

    .line 870
    goto :goto_8f

    .line 864
    :pswitch_89
    const/4 v0, 0x0

    .line 865
    const/4 v1, 0x0

    .line 866
    goto :goto_8f

    .line 860
    :pswitch_8c
    const/4 v0, 0x0

    .line 861
    const/4 v1, 0x0

    .line 862
    nop

    .line 902
    :goto_8f
    goto :goto_92

    .line 906
    :cond_90
    const/4 v0, -0x1

    .line 907
    const/4 v1, -0x1

    .line 910
    :goto_92
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 911
    aput v0, v4, v5

    .line 913
    return-object v4

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 3975
    const/4 v0, 0x0

    .line 3976
    .local v0, "min":I
    const/4 v1, 0x0

    .line 3978
    .local v1, "max":I
    const/4 v2, 0x0

    .line 3980
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3983
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 3986
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 3988
    packed-switch v2, :pswitch_data_96

    goto :goto_32

    .line 4030
    :pswitch_11
    const/4 v0, 0x1

    .line 4031
    const/4 v1, 0x1

    goto :goto_32

    .line 4026
    :pswitch_14
    const/4 v0, 0x1

    .line 4027
    const/4 v1, 0x1

    .line 4028
    goto :goto_32

    .line 4022
    :pswitch_17
    const/4 v0, 0x1

    .line 4023
    const/4 v1, 0x1

    .line 4024
    goto :goto_32

    .line 4018
    :pswitch_1a
    const/4 v0, 0x1

    .line 4019
    const/4 v1, 0x1

    .line 4020
    goto :goto_32

    .line 4014
    :pswitch_1d
    const/4 v0, 0x1

    .line 4015
    const/4 v1, 0x1

    .line 4016
    goto :goto_32

    .line 4010
    :pswitch_20
    const/4 v0, 0x0

    .line 4011
    const/4 v1, 0x0

    .line 4012
    goto :goto_32

    .line 4006
    :pswitch_23
    const/4 v0, 0x0

    .line 4007
    const/4 v1, 0x0

    .line 4008
    goto :goto_32

    .line 4002
    :pswitch_26
    const/4 v0, 0x0

    .line 4003
    const/4 v1, 0x0

    .line 4004
    goto :goto_32

    .line 3998
    :pswitch_29
    const/4 v0, 0x0

    .line 3999
    const/4 v1, 0x0

    .line 4000
    goto :goto_32

    .line 3994
    :pswitch_2c
    const/4 v0, 0x0

    .line 3995
    const/4 v1, 0x0

    .line 3996
    goto :goto_32

    .line 3990
    :pswitch_2f
    const/4 v0, 0x0

    .line 3991
    const/4 v1, 0x0

    .line 3992
    nop

    .line 4032
    :goto_32
    goto/16 :goto_90

    .line 4036
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 4038
    packed-switch v2, :pswitch_data_b0

    goto :goto_5b

    .line 4080
    :pswitch_3a
    const/4 v0, 0x0

    .line 4081
    const/4 v1, 0x0

    goto :goto_5b

    .line 4076
    :pswitch_3d
    const/4 v0, 0x0

    .line 4077
    const/4 v1, 0x0

    .line 4078
    goto :goto_5b

    .line 4072
    :pswitch_40
    const/4 v0, 0x0

    .line 4073
    const/4 v1, 0x0

    .line 4074
    goto :goto_5b

    .line 4068
    :pswitch_43
    const/4 v0, 0x1

    .line 4069
    const/4 v1, 0x1

    .line 4070
    goto :goto_5b

    .line 4064
    :pswitch_46
    const/4 v0, 0x0

    .line 4065
    const/4 v1, 0x0

    .line 4066
    goto :goto_5b

    .line 4060
    :pswitch_49
    const/4 v0, 0x0

    .line 4061
    const/4 v1, 0x0

    .line 4062
    goto :goto_5b

    .line 4056
    :pswitch_4c
    const/4 v0, 0x0

    .line 4057
    const/4 v1, 0x0

    .line 4058
    goto :goto_5b

    .line 4052
    :pswitch_4f
    const/4 v0, 0x0

    .line 4053
    const/4 v1, 0x0

    .line 4054
    goto :goto_5b

    .line 4048
    :pswitch_52
    const/4 v0, 0x0

    .line 4049
    const/4 v1, 0x0

    .line 4050
    goto :goto_5b

    .line 4044
    :pswitch_55
    const/4 v0, 0x0

    .line 4045
    const/4 v1, 0x0

    .line 4046
    goto :goto_5b

    .line 4040
    :pswitch_58
    const/4 v0, 0x0

    .line 4041
    const/4 v1, 0x0

    .line 4042
    nop

    .line 4082
    :goto_5b
    goto :goto_90

    .line 4086
    :cond_5c
    if-ne p1, v3, :cond_8e

    .line 4088
    packed-switch v2, :pswitch_data_ca

    goto :goto_8d

    .line 4130
    :pswitch_62
    const/16 v0, 0x51

    .line 4131
    const/16 v1, 0x51

    goto :goto_8d

    .line 4126
    :pswitch_67
    const/16 v0, 0x49

    .line 4127
    const/16 v1, 0x49

    .line 4128
    goto :goto_8d

    .line 4122
    :pswitch_6c
    const/16 v0, 0x3f

    .line 4123
    const/16 v1, 0x3f

    .line 4124
    goto :goto_8d

    .line 4118
    :pswitch_71
    const/16 v0, 0x33

    .line 4119
    const/16 v1, 0x33

    .line 4120
    goto :goto_8d

    .line 4114
    :pswitch_76
    const/16 v0, 0x26

    .line 4115
    const/16 v1, 0x26

    .line 4116
    goto :goto_8d

    .line 4110
    :pswitch_7b
    const/4 v0, 0x0

    .line 4111
    const/4 v1, 0x0

    .line 4112
    goto :goto_8d

    .line 4106
    :pswitch_7e
    const/4 v0, 0x0

    .line 4107
    const/4 v1, 0x0

    .line 4108
    goto :goto_8d

    .line 4102
    :pswitch_81
    const/4 v0, 0x0

    .line 4103
    const/4 v1, 0x0

    .line 4104
    goto :goto_8d

    .line 4098
    :pswitch_84
    const/4 v0, 0x0

    .line 4099
    const/4 v1, 0x0

    .line 4100
    goto :goto_8d

    .line 4094
    :pswitch_87
    const/4 v0, 0x0

    .line 4095
    const/4 v1, 0x0

    .line 4096
    goto :goto_8d

    .line 4090
    :pswitch_8a
    const/4 v0, 0x0

    .line 4091
    const/4 v1, 0x0

    .line 4092
    nop

    .line 4132
    :goto_8d
    goto :goto_90

    .line 4136
    :cond_8e
    const/4 v0, -0x1

    .line 4137
    const/4 v1, -0x1

    .line 4140
    :goto_90
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 4141
    aput v0, v4, v5

    .line 4143
    return-object v4

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MB_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 1605
    const/4 v0, 0x0

    .line 1606
    .local v0, "min":I
    const/4 v1, 0x0

    .line 1608
    .local v1, "max":I
    const/4 v2, 0x0

    .line 1610
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 1613
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 1616
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 1618
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 1661
    :pswitch_11
    const/16 v0, 0x8a

    .line 1662
    const/16 v1, 0xfc

    goto :goto_48

    .line 1657
    :pswitch_16
    const/16 v0, 0x90

    .line 1658
    const/16 v1, 0xfa

    .line 1659
    goto :goto_48

    .line 1652
    :pswitch_1b
    const/16 v0, 0x98

    .line 1653
    const/16 v1, 0xf6

    .line 1654
    goto :goto_48

    .line 1648
    :pswitch_20
    const/16 v0, 0xa1

    .line 1649
    const/16 v1, 0xf0

    .line 1650
    goto :goto_48

    .line 1644
    :pswitch_25
    const/16 v0, 0xa9

    .line 1645
    const/16 v1, 0xea

    .line 1646
    goto :goto_48

    .line 1640
    :pswitch_2a
    const/16 v0, 0xb3

    .line 1641
    const/16 v1, 0xe4

    .line 1642
    goto :goto_48

    .line 1636
    :pswitch_2f
    const/16 v0, 0xbe

    .line 1637
    const/16 v1, 0xe4

    .line 1638
    goto :goto_48

    .line 1632
    :pswitch_34
    const/16 v0, 0xcc

    .line 1633
    const/16 v1, 0xe2

    .line 1634
    goto :goto_48

    .line 1628
    :pswitch_39
    const/16 v0, 0xda

    .line 1629
    const/16 v1, 0xe4

    .line 1630
    goto :goto_48

    .line 1624
    :pswitch_3e
    const/16 v0, 0xea

    .line 1625
    const/16 v1, 0xee

    .line 1626
    goto :goto_48

    .line 1620
    :pswitch_43
    const/16 v0, 0xff

    .line 1621
    const/16 v1, 0xff

    .line 1622
    nop

    .line 1663
    :goto_48
    goto/16 :goto_c8

    .line 1667
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 1669
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 1711
    :pswitch_50
    const/16 v0, 0x8a

    .line 1712
    const/16 v1, 0xfc

    goto :goto_87

    .line 1707
    :pswitch_55
    const/16 v0, 0x90

    .line 1708
    const/16 v1, 0xfa

    .line 1709
    goto :goto_87

    .line 1703
    :pswitch_5a
    const/16 v0, 0x98

    .line 1704
    const/16 v1, 0xf6

    .line 1705
    goto :goto_87

    .line 1699
    :pswitch_5f
    const/16 v0, 0xa1

    .line 1700
    const/16 v1, 0xf0

    .line 1701
    goto :goto_87

    .line 1695
    :pswitch_64
    const/16 v0, 0xa9

    .line 1696
    const/16 v1, 0xea

    .line 1697
    goto :goto_87

    .line 1691
    :pswitch_69
    const/16 v0, 0xb3

    .line 1692
    const/16 v1, 0xe4

    .line 1693
    goto :goto_87

    .line 1687
    :pswitch_6e
    const/16 v0, 0xbe

    .line 1688
    const/16 v1, 0xe4

    .line 1689
    goto :goto_87

    .line 1683
    :pswitch_73
    const/16 v0, 0xcc

    .line 1684
    const/16 v1, 0xe2

    .line 1685
    goto :goto_87

    .line 1679
    :pswitch_78
    const/16 v0, 0xda

    .line 1680
    const/16 v1, 0xe4

    .line 1681
    goto :goto_87

    .line 1675
    :pswitch_7d
    const/16 v0, 0xea

    .line 1676
    const/16 v1, 0xee

    .line 1677
    goto :goto_87

    .line 1671
    :pswitch_82
    const/16 v0, 0xff

    .line 1672
    const/16 v1, 0xff

    .line 1673
    nop

    .line 1713
    :goto_87
    goto :goto_c8

    .line 1717
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 1719
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 1761
    :pswitch_8e
    const/16 v0, 0xff

    .line 1762
    const/16 v1, 0xff

    goto :goto_c5

    .line 1757
    :pswitch_93
    const/16 v0, 0xff

    .line 1758
    const/16 v1, 0xff

    .line 1759
    goto :goto_c5

    .line 1753
    :pswitch_98
    const/16 v0, 0xff

    .line 1754
    const/16 v1, 0xff

    .line 1755
    goto :goto_c5

    .line 1749
    :pswitch_9d
    const/16 v0, 0xff

    .line 1750
    const/16 v1, 0xff

    .line 1751
    goto :goto_c5

    .line 1745
    :pswitch_a2
    const/16 v0, 0xff

    .line 1746
    const/16 v1, 0xff

    .line 1747
    goto :goto_c5

    .line 1741
    :pswitch_a7
    const/16 v0, 0xff

    .line 1742
    const/16 v1, 0xff

    .line 1743
    goto :goto_c5

    .line 1737
    :pswitch_ac
    const/16 v0, 0xff

    .line 1738
    const/16 v1, 0xff

    .line 1739
    goto :goto_c5

    .line 1733
    :pswitch_b1
    const/16 v0, 0xff

    .line 1734
    const/16 v1, 0xff

    .line 1735
    goto :goto_c5

    .line 1729
    :pswitch_b6
    const/16 v0, 0xff

    .line 1730
    const/16 v1, 0xff

    .line 1731
    goto :goto_c5

    .line 1725
    :pswitch_bb
    const/16 v0, 0xff

    .line 1726
    const/16 v1, 0xff

    .line 1727
    goto :goto_c5

    .line 1721
    :pswitch_c0
    const/16 v0, 0xff

    .line 1722
    const/16 v1, 0xff

    .line 1723
    nop

    .line 1763
    :goto_c5
    goto :goto_c8

    .line 1767
    :cond_c6
    const/4 v0, -0x1

    .line 1768
    const/4 v1, -0x1

    .line 1771
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 1772
    aput v0, v4, v5

    .line 1774
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 4835
    const/4 v0, 0x0

    .line 4836
    .local v0, "min":I
    const/4 v1, 0x0

    .line 4838
    .local v1, "max":I
    const/4 v2, 0x0

    .line 4840
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 4843
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 4846
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 4848
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 4891
    :pswitch_11
    const/16 v0, 0x8a

    .line 4892
    const/16 v1, 0xfc

    goto :goto_48

    .line 4887
    :pswitch_16
    const/16 v0, 0x90

    .line 4888
    const/16 v1, 0xfa

    .line 4889
    goto :goto_48

    .line 4882
    :pswitch_1b
    const/16 v0, 0x98

    .line 4883
    const/16 v1, 0xf6

    .line 4884
    goto :goto_48

    .line 4878
    :pswitch_20
    const/16 v0, 0xa1

    .line 4879
    const/16 v1, 0xf0

    .line 4880
    goto :goto_48

    .line 4874
    :pswitch_25
    const/16 v0, 0xa9

    .line 4875
    const/16 v1, 0xea

    .line 4876
    goto :goto_48

    .line 4870
    :pswitch_2a
    const/16 v0, 0xcc

    .line 4871
    const/16 v1, 0xcb

    .line 4872
    goto :goto_48

    .line 4866
    :pswitch_2f
    const/16 v0, 0xcc

    .line 4867
    const/16 v1, 0xcb

    .line 4868
    goto :goto_48

    .line 4862
    :pswitch_34
    const/16 v0, 0xcc

    .line 4863
    const/16 v1, 0xcb

    .line 4864
    goto :goto_48

    .line 4858
    :pswitch_39
    const/16 v0, 0xcc

    .line 4859
    const/16 v1, 0xcb

    .line 4860
    goto :goto_48

    .line 4854
    :pswitch_3e
    const/16 v0, 0xcc

    .line 4855
    const/16 v1, 0xcb

    .line 4856
    goto :goto_48

    .line 4850
    :pswitch_43
    const/16 v0, 0xff

    .line 4851
    const/16 v1, 0xff

    .line 4852
    nop

    .line 4893
    :goto_48
    goto/16 :goto_c8

    .line 4897
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 4899
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 4941
    :pswitch_50
    const/16 v0, 0x8a

    .line 4942
    const/16 v1, 0xfc

    goto :goto_87

    .line 4937
    :pswitch_55
    const/16 v0, 0x90

    .line 4938
    const/16 v1, 0xfa

    .line 4939
    goto :goto_87

    .line 4933
    :pswitch_5a
    const/16 v0, 0x98

    .line 4934
    const/16 v1, 0xf6

    .line 4935
    goto :goto_87

    .line 4929
    :pswitch_5f
    const/16 v0, 0xa1

    .line 4930
    const/16 v1, 0xf0

    .line 4931
    goto :goto_87

    .line 4925
    :pswitch_64
    const/16 v0, 0xa9

    .line 4926
    const/16 v1, 0xea

    .line 4927
    goto :goto_87

    .line 4921
    :pswitch_69
    const/16 v0, 0xcc

    .line 4922
    const/16 v1, 0xd2

    .line 4923
    goto :goto_87

    .line 4917
    :pswitch_6e
    const/16 v0, 0xcc

    .line 4918
    const/16 v1, 0xd1

    .line 4919
    goto :goto_87

    .line 4913
    :pswitch_73
    const/16 v0, 0xcc

    .line 4914
    const/16 v1, 0xcf

    .line 4915
    goto :goto_87

    .line 4909
    :pswitch_78
    const/16 v0, 0xcc

    .line 4910
    const/16 v1, 0xce

    .line 4911
    goto :goto_87

    .line 4905
    :pswitch_7d
    const/16 v0, 0xcc

    .line 4906
    const/16 v1, 0xcd

    .line 4907
    goto :goto_87

    .line 4901
    :pswitch_82
    const/16 v0, 0xff

    .line 4902
    const/16 v1, 0xff

    .line 4903
    nop

    .line 4943
    :goto_87
    goto :goto_c8

    .line 4947
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 4949
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 4991
    :pswitch_8e
    const/16 v0, 0xff

    .line 4992
    const/16 v1, 0xff

    goto :goto_c5

    .line 4987
    :pswitch_93
    const/16 v0, 0xff

    .line 4988
    const/16 v1, 0xff

    .line 4989
    goto :goto_c5

    .line 4983
    :pswitch_98
    const/16 v0, 0xff

    .line 4984
    const/16 v1, 0xff

    .line 4985
    goto :goto_c5

    .line 4979
    :pswitch_9d
    const/16 v0, 0xff

    .line 4980
    const/16 v1, 0xff

    .line 4981
    goto :goto_c5

    .line 4975
    :pswitch_a2
    const/16 v0, 0xff

    .line 4976
    const/16 v1, 0xff

    .line 4977
    goto :goto_c5

    .line 4971
    :pswitch_a7
    const/16 v0, 0xcc

    .line 4972
    const/16 v1, 0xf1

    .line 4973
    goto :goto_c5

    .line 4967
    :pswitch_ac
    const/16 v0, 0xcc

    .line 4968
    const/16 v1, 0xeb

    .line 4969
    goto :goto_c5

    .line 4963
    :pswitch_b1
    const/16 v0, 0xcc

    .line 4964
    const/16 v1, 0xe4

    .line 4965
    goto :goto_c5

    .line 4959
    :pswitch_b6
    const/16 v0, 0xcc

    .line 4960
    const/16 v1, 0xde

    .line 4961
    goto :goto_c5

    .line 4955
    :pswitch_bb
    const/16 v0, 0xcc

    .line 4956
    const/16 v1, 0xd8

    .line 4957
    goto :goto_c5

    .line 4951
    :pswitch_c0
    const/16 v0, 0xff

    .line 4952
    const/16 v1, 0xff

    .line 4953
    nop

    .line 4993
    :goto_c5
    goto :goto_c8

    .line 4997
    :cond_c6
    const/4 v0, -0x1

    .line 4998
    const/4 v1, -0x1

    .line 5001
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 5002
    aput v0, v4, v5

    .line 5004
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MG_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 1433
    const/4 v0, 0x0

    .line 1434
    .local v0, "min":I
    const/4 v1, 0x0

    .line 1436
    .local v1, "max":I
    const/4 v2, 0x0

    .line 1438
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 1441
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 1444
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 1446
    packed-switch v2, :pswitch_data_90

    goto :goto_32

    .line 1488
    :pswitch_11
    const/4 v0, 0x0

    .line 1489
    const/4 v1, 0x0

    goto :goto_32

    .line 1484
    :pswitch_14
    const/4 v0, 0x0

    .line 1485
    const/4 v1, 0x0

    .line 1486
    goto :goto_32

    .line 1480
    :pswitch_17
    const/4 v0, 0x1

    .line 1481
    const/4 v1, 0x0

    .line 1482
    goto :goto_32

    .line 1476
    :pswitch_1a
    const/4 v0, 0x1

    .line 1477
    const/4 v1, 0x0

    .line 1478
    goto :goto_32

    .line 1472
    :pswitch_1d
    const/4 v0, 0x0

    .line 1473
    const/4 v1, 0x0

    .line 1474
    goto :goto_32

    .line 1468
    :pswitch_20
    const/4 v0, 0x0

    .line 1469
    const/4 v1, 0x0

    .line 1470
    goto :goto_32

    .line 1464
    :pswitch_23
    const/4 v0, 0x0

    .line 1465
    const/4 v1, 0x0

    .line 1466
    goto :goto_32

    .line 1460
    :pswitch_26
    const/4 v0, 0x0

    .line 1461
    const/4 v1, 0x0

    .line 1462
    goto :goto_32

    .line 1456
    :pswitch_29
    const/4 v0, 0x0

    .line 1457
    const/4 v1, 0x0

    .line 1458
    goto :goto_32

    .line 1452
    :pswitch_2c
    const/4 v0, 0x0

    .line 1453
    const/4 v1, 0x0

    .line 1454
    goto :goto_32

    .line 1448
    :pswitch_2f
    const/4 v0, 0x0

    .line 1449
    const/4 v1, 0x0

    .line 1450
    nop

    .line 1490
    :goto_32
    goto/16 :goto_89

    .line 1494
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 1496
    packed-switch v2, :pswitch_data_aa

    goto :goto_5b

    .line 1538
    :pswitch_3a
    const/4 v0, 0x1

    .line 1539
    const/4 v1, 0x1

    goto :goto_5b

    .line 1534
    :pswitch_3d
    const/4 v0, 0x1

    .line 1535
    const/4 v1, 0x1

    .line 1536
    goto :goto_5b

    .line 1530
    :pswitch_40
    const/4 v0, 0x1

    .line 1531
    const/4 v1, 0x1

    .line 1532
    goto :goto_5b

    .line 1526
    :pswitch_43
    const/4 v0, 0x1

    .line 1527
    const/4 v1, 0x1

    .line 1528
    goto :goto_5b

    .line 1522
    :pswitch_46
    const/4 v0, 0x1

    .line 1523
    const/4 v1, 0x1

    .line 1524
    goto :goto_5b

    .line 1518
    :pswitch_49
    const/4 v0, 0x1

    .line 1519
    const/4 v1, 0x1

    .line 1520
    goto :goto_5b

    .line 1514
    :pswitch_4c
    const/4 v0, 0x1

    .line 1515
    const/4 v1, 0x1

    .line 1516
    goto :goto_5b

    .line 1510
    :pswitch_4f
    const/4 v0, 0x1

    .line 1511
    const/4 v1, 0x1

    .line 1512
    goto :goto_5b

    .line 1506
    :pswitch_52
    const/4 v0, 0x1

    .line 1507
    const/4 v1, 0x1

    .line 1508
    goto :goto_5b

    .line 1502
    :pswitch_55
    const/4 v0, 0x1

    .line 1503
    const/4 v1, 0x1

    .line 1504
    goto :goto_5b

    .line 1498
    :pswitch_58
    const/4 v0, 0x0

    .line 1499
    const/4 v1, 0x0

    .line 1500
    nop

    .line 1540
    :goto_5b
    goto :goto_89

    .line 1544
    :cond_5c
    if-ne p1, v3, :cond_87

    .line 1546
    packed-switch v2, :pswitch_data_c4

    goto :goto_86

    .line 1588
    :pswitch_62
    const/4 v0, 0x0

    .line 1589
    const/4 v1, 0x0

    goto :goto_86

    .line 1584
    :pswitch_65
    const/4 v0, 0x0

    .line 1585
    const/4 v1, 0x0

    .line 1586
    goto :goto_86

    .line 1580
    :pswitch_68
    const/4 v0, 0x0

    .line 1581
    const/4 v1, 0x0

    .line 1582
    goto :goto_86

    .line 1576
    :pswitch_6b
    const/4 v0, 0x0

    .line 1577
    const/4 v1, 0x0

    .line 1578
    goto :goto_86

    .line 1572
    :pswitch_6e
    const/4 v0, 0x0

    .line 1573
    const/4 v1, 0x0

    .line 1574
    goto :goto_86

    .line 1568
    :pswitch_71
    const/4 v0, 0x0

    .line 1569
    const/4 v1, 0x4

    .line 1570
    goto :goto_86

    .line 1564
    :pswitch_74
    const/4 v0, 0x0

    .line 1565
    const/16 v1, 0xa

    .line 1566
    goto :goto_86

    .line 1560
    :pswitch_78
    const/4 v0, 0x0

    .line 1561
    const/16 v1, 0xd

    .line 1562
    goto :goto_86

    .line 1556
    :pswitch_7c
    const/4 v0, 0x0

    .line 1557
    const/16 v1, 0xb

    .line 1558
    goto :goto_86

    .line 1552
    :pswitch_80
    const/4 v0, 0x0

    .line 1553
    const/4 v1, 0x5

    .line 1554
    goto :goto_86

    .line 1548
    :pswitch_83
    const/4 v0, 0x0

    .line 1549
    const/4 v1, 0x0

    .line 1550
    nop

    .line 1590
    :goto_86
    goto :goto_89

    .line 1594
    :cond_87
    const/4 v0, -0x1

    .line 1595
    const/4 v1, -0x1

    .line 1598
    :goto_89
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 1599
    aput v0, v4, v5

    .line 1601
    return-object v4

    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_83
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 4663
    const/4 v0, 0x0

    .line 4664
    .local v0, "min":I
    const/4 v1, 0x0

    .line 4666
    .local v1, "max":I
    const/4 v2, 0x0

    .line 4668
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 4671
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 4674
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 4676
    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    .line 4718
    :pswitch_11
    const/4 v0, 0x0

    .line 4719
    const/4 v1, 0x0

    goto :goto_32

    .line 4714
    :pswitch_14
    const/4 v0, 0x0

    .line 4715
    const/4 v1, 0x0

    .line 4716
    goto :goto_32

    .line 4710
    :pswitch_17
    const/4 v0, 0x1

    .line 4711
    const/4 v1, 0x0

    .line 4712
    goto :goto_32

    .line 4706
    :pswitch_1a
    const/4 v0, 0x1

    .line 4707
    const/4 v1, 0x0

    .line 4708
    goto :goto_32

    .line 4702
    :pswitch_1d
    const/4 v0, 0x0

    .line 4703
    const/4 v1, 0x0

    .line 4704
    goto :goto_32

    .line 4698
    :pswitch_20
    const/4 v0, 0x0

    .line 4699
    const/4 v1, 0x0

    .line 4700
    goto :goto_32

    .line 4694
    :pswitch_23
    const/4 v0, 0x0

    .line 4695
    const/4 v1, 0x0

    .line 4696
    goto :goto_32

    .line 4690
    :pswitch_26
    const/4 v0, 0x0

    .line 4691
    const/4 v1, 0x0

    .line 4692
    goto :goto_32

    .line 4686
    :pswitch_29
    const/4 v0, 0x0

    .line 4687
    const/4 v1, 0x0

    .line 4688
    goto :goto_32

    .line 4682
    :pswitch_2c
    const/4 v0, 0x0

    .line 4683
    const/4 v1, 0x0

    .line 4684
    goto :goto_32

    .line 4678
    :pswitch_2f
    const/4 v0, 0x0

    .line 4679
    const/4 v1, 0x0

    .line 4680
    nop

    .line 4720
    :goto_32
    goto/16 :goto_86

    .line 4724
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 4726
    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    .line 4768
    :pswitch_3a
    const/4 v0, 0x1

    .line 4769
    const/4 v1, 0x1

    goto :goto_5b

    .line 4764
    :pswitch_3d
    const/4 v0, 0x1

    .line 4765
    const/4 v1, 0x1

    .line 4766
    goto :goto_5b

    .line 4760
    :pswitch_40
    const/4 v0, 0x1

    .line 4761
    const/4 v1, 0x1

    .line 4762
    goto :goto_5b

    .line 4756
    :pswitch_43
    const/4 v0, 0x1

    .line 4757
    const/4 v1, 0x1

    .line 4758
    goto :goto_5b

    .line 4752
    :pswitch_46
    const/4 v0, 0x1

    .line 4753
    const/4 v1, 0x1

    .line 4754
    goto :goto_5b

    .line 4748
    :pswitch_49
    const/4 v0, 0x0

    .line 4749
    const/4 v1, 0x0

    .line 4750
    goto :goto_5b

    .line 4744
    :pswitch_4c
    const/4 v0, 0x0

    .line 4745
    const/4 v1, 0x0

    .line 4746
    goto :goto_5b

    .line 4740
    :pswitch_4f
    const/4 v0, 0x0

    .line 4741
    const/4 v1, 0x0

    .line 4742
    goto :goto_5b

    .line 4736
    :pswitch_52
    const/4 v0, 0x0

    .line 4737
    const/4 v1, 0x0

    .line 4738
    goto :goto_5b

    .line 4732
    :pswitch_55
    const/4 v0, 0x0

    .line 4733
    const/4 v1, 0x0

    .line 4734
    goto :goto_5b

    .line 4728
    :pswitch_58
    const/4 v0, 0x0

    .line 4729
    const/4 v1, 0x0

    .line 4730
    nop

    .line 4770
    :goto_5b
    goto :goto_86

    .line 4774
    :cond_5c
    if-ne p1, v3, :cond_84

    .line 4776
    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    .line 4818
    :pswitch_62
    const/4 v0, 0x0

    .line 4819
    const/4 v1, 0x0

    goto :goto_83

    .line 4814
    :pswitch_65
    const/4 v0, 0x0

    .line 4815
    const/4 v1, 0x0

    .line 4816
    goto :goto_83

    .line 4810
    :pswitch_68
    const/4 v0, 0x0

    .line 4811
    const/4 v1, 0x0

    .line 4812
    goto :goto_83

    .line 4806
    :pswitch_6b
    const/4 v0, 0x0

    .line 4807
    const/4 v1, 0x0

    .line 4808
    goto :goto_83

    .line 4802
    :pswitch_6e
    const/4 v0, 0x0

    .line 4803
    const/4 v1, 0x0

    .line 4804
    goto :goto_83

    .line 4798
    :pswitch_71
    const/4 v0, 0x0

    .line 4799
    const/4 v1, 0x0

    .line 4800
    goto :goto_83

    .line 4794
    :pswitch_74
    const/4 v0, 0x0

    .line 4795
    const/4 v1, 0x0

    .line 4796
    goto :goto_83

    .line 4790
    :pswitch_77
    const/4 v0, 0x0

    .line 4791
    const/4 v1, 0x0

    .line 4792
    goto :goto_83

    .line 4786
    :pswitch_7a
    const/4 v0, 0x0

    .line 4787
    const/4 v1, 0x0

    .line 4788
    goto :goto_83

    .line 4782
    :pswitch_7d
    const/4 v0, 0x0

    .line 4783
    const/4 v1, 0x0

    .line 4784
    goto :goto_83

    .line 4778
    :pswitch_80
    const/4 v0, 0x0

    .line 4779
    const/4 v1, 0x0

    .line 4780
    nop

    .line 4820
    :goto_83
    goto :goto_86

    .line 4824
    :cond_84
    const/4 v0, -0x1

    .line 4825
    const/4 v1, -0x1

    .line 4828
    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 4829
    aput v0, v4, v5

    .line 4831
    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MR_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 1261
    const/4 v0, 0x0

    .line 1262
    .local v0, "min":I
    const/4 v1, 0x0

    .line 1264
    .local v1, "max":I
    const/4 v2, 0x0

    .line 1266
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 1269
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 1272
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 1274
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 1316
    :pswitch_11
    const/16 v0, 0xfe

    .line 1317
    const/16 v1, 0xfe

    goto :goto_48

    .line 1312
    :pswitch_16
    const/16 v0, 0xfe

    .line 1313
    const/16 v1, 0xfe

    .line 1314
    goto :goto_48

    .line 1308
    :pswitch_1b
    const/16 v0, 0xfe

    .line 1309
    const/16 v1, 0xfe

    .line 1310
    goto :goto_48

    .line 1304
    :pswitch_20
    const/16 v0, 0xfe

    .line 1305
    const/16 v1, 0xfe

    .line 1306
    goto :goto_48

    .line 1300
    :pswitch_25
    const/16 v0, 0xfe

    .line 1301
    const/16 v1, 0xfe

    .line 1302
    goto :goto_48

    .line 1296
    :pswitch_2a
    const/16 v0, 0xfe

    .line 1297
    const/16 v1, 0xfe

    .line 1298
    goto :goto_48

    .line 1292
    :pswitch_2f
    const/16 v0, 0xfe

    .line 1293
    const/16 v1, 0xfe

    .line 1294
    goto :goto_48

    .line 1288
    :pswitch_34
    const/16 v0, 0xfe

    .line 1289
    const/16 v1, 0xfe

    .line 1290
    goto :goto_48

    .line 1284
    :pswitch_39
    const/16 v0, 0xfe

    .line 1285
    const/16 v1, 0xfe

    .line 1286
    goto :goto_48

    .line 1280
    :pswitch_3e
    const/16 v0, 0xfe

    .line 1281
    const/16 v1, 0xfe

    .line 1282
    goto :goto_48

    .line 1276
    :pswitch_43
    const/16 v0, 0xff

    .line 1277
    const/16 v1, 0xff

    .line 1278
    nop

    .line 1318
    :goto_48
    goto/16 :goto_c8

    .line 1322
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 1324
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 1366
    :pswitch_50
    const/16 v0, 0xff

    .line 1367
    const/16 v1, 0xff

    goto :goto_87

    .line 1362
    :pswitch_55
    const/16 v0, 0xff

    .line 1363
    const/16 v1, 0xff

    .line 1364
    goto :goto_87

    .line 1358
    :pswitch_5a
    const/16 v0, 0xff

    .line 1359
    const/16 v1, 0xff

    .line 1360
    goto :goto_87

    .line 1354
    :pswitch_5f
    const/16 v0, 0xff

    .line 1355
    const/16 v1, 0xff

    .line 1356
    goto :goto_87

    .line 1350
    :pswitch_64
    const/16 v0, 0xff

    .line 1351
    const/16 v1, 0xff

    .line 1352
    goto :goto_87

    .line 1346
    :pswitch_69
    const/16 v0, 0xff

    .line 1347
    const/16 v1, 0xff

    .line 1348
    goto :goto_87

    .line 1342
    :pswitch_6e
    const/16 v0, 0xff

    .line 1343
    const/16 v1, 0xff

    .line 1344
    goto :goto_87

    .line 1338
    :pswitch_73
    const/16 v0, 0xff

    .line 1339
    const/16 v1, 0xff

    .line 1340
    goto :goto_87

    .line 1334
    :pswitch_78
    const/16 v0, 0xff

    .line 1335
    const/16 v1, 0xff

    .line 1336
    goto :goto_87

    .line 1330
    :pswitch_7d
    const/16 v0, 0xff

    .line 1331
    const/16 v1, 0xfe

    .line 1332
    goto :goto_87

    .line 1326
    :pswitch_82
    const/16 v0, 0xff

    .line 1327
    const/16 v1, 0xff

    .line 1328
    nop

    .line 1368
    :goto_87
    goto :goto_c8

    .line 1372
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 1374
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 1416
    :pswitch_8e
    const/16 v0, 0xb6

    .line 1417
    const/16 v1, 0xb6

    goto :goto_c5

    .line 1412
    :pswitch_93
    const/16 v0, 0xcc

    .line 1413
    const/16 v1, 0xcc

    .line 1414
    goto :goto_c5

    .line 1408
    :pswitch_98
    const/16 v0, 0xdf

    .line 1409
    const/16 v1, 0xdf

    .line 1410
    goto :goto_c5

    .line 1404
    :pswitch_9d
    const/16 v0, 0xf0

    .line 1405
    const/16 v1, 0xf0

    .line 1406
    goto :goto_c5

    .line 1400
    :pswitch_a2
    const/16 v0, 0xff

    .line 1401
    const/16 v1, 0xff

    .line 1402
    goto :goto_c5

    .line 1396
    :pswitch_a7
    const/16 v0, 0xff

    .line 1397
    const/16 v1, 0xff

    .line 1398
    goto :goto_c5

    .line 1392
    :pswitch_ac
    const/16 v0, 0xff

    .line 1393
    const/16 v1, 0xff

    .line 1394
    goto :goto_c5

    .line 1388
    :pswitch_b1
    const/16 v0, 0xff

    .line 1389
    const/16 v1, 0xff

    .line 1390
    goto :goto_c5

    .line 1384
    :pswitch_b6
    const/16 v0, 0xff

    .line 1385
    const/16 v1, 0xff

    .line 1386
    goto :goto_c5

    .line 1380
    :pswitch_bb
    const/16 v0, 0xff

    .line 1381
    const/16 v1, 0xff

    .line 1382
    goto :goto_c5

    .line 1376
    :pswitch_c0
    const/16 v0, 0xff

    .line 1377
    const/16 v1, 0xff

    .line 1378
    nop

    .line 1418
    :goto_c5
    goto :goto_c8

    .line 1422
    :cond_c6
    const/4 v0, -0x1

    .line 1423
    const/4 v1, -0x1

    .line 1426
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 1427
    aput v0, v4, v5

    .line 1429
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 4491
    const/4 v0, 0x0

    .line 4492
    .local v0, "min":I
    const/4 v1, 0x0

    .line 4494
    .local v1, "max":I
    const/4 v2, 0x0

    .line 4496
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 4499
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 4502
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 4504
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 4546
    :pswitch_11
    const/16 v0, 0xfe

    .line 4547
    const/16 v1, 0xfe

    goto :goto_48

    .line 4542
    :pswitch_16
    const/16 v0, 0xfe

    .line 4543
    const/16 v1, 0xfe

    .line 4544
    goto :goto_48

    .line 4538
    :pswitch_1b
    const/16 v0, 0xfe

    .line 4539
    const/16 v1, 0xfe

    .line 4540
    goto :goto_48

    .line 4534
    :pswitch_20
    const/16 v0, 0xfe

    .line 4535
    const/16 v1, 0xfe

    .line 4536
    goto :goto_48

    .line 4530
    :pswitch_25
    const/16 v0, 0xfe

    .line 4531
    const/16 v1, 0xfe

    .line 4532
    goto :goto_48

    .line 4526
    :pswitch_2a
    const/16 v0, 0xcc

    .line 4527
    const/16 v1, 0xff

    .line 4528
    goto :goto_48

    .line 4522
    :pswitch_2f
    const/16 v0, 0xcc

    .line 4523
    const/16 v1, 0xff

    .line 4524
    goto :goto_48

    .line 4518
    :pswitch_34
    const/16 v0, 0xcc

    .line 4519
    const/16 v1, 0xff

    .line 4520
    goto :goto_48

    .line 4514
    :pswitch_39
    const/16 v0, 0xcc

    .line 4515
    const/16 v1, 0xff

    .line 4516
    goto :goto_48

    .line 4510
    :pswitch_3e
    const/16 v0, 0xcc

    .line 4511
    const/16 v1, 0xf9

    .line 4512
    goto :goto_48

    .line 4506
    :pswitch_43
    const/16 v0, 0xff

    .line 4507
    const/16 v1, 0xff

    .line 4508
    nop

    .line 4548
    :goto_48
    goto/16 :goto_c8

    .line 4552
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 4554
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 4596
    :pswitch_50
    const/16 v0, 0xff

    .line 4597
    const/16 v1, 0xff

    goto :goto_87

    .line 4592
    :pswitch_55
    const/16 v0, 0xff

    .line 4593
    const/16 v1, 0xff

    .line 4594
    goto :goto_87

    .line 4588
    :pswitch_5a
    const/16 v0, 0xff

    .line 4589
    const/16 v1, 0xff

    .line 4590
    goto :goto_87

    .line 4584
    :pswitch_5f
    const/16 v0, 0xff

    .line 4585
    const/16 v1, 0xff

    .line 4586
    goto :goto_87

    .line 4580
    :pswitch_64
    const/16 v0, 0xff

    .line 4581
    const/16 v1, 0xff

    .line 4582
    goto :goto_87

    .line 4576
    :pswitch_69
    const/16 v0, 0xcc

    .line 4577
    const/16 v1, 0xff

    .line 4578
    goto :goto_87

    .line 4572
    :pswitch_6e
    const/16 v0, 0xcc

    .line 4573
    const/16 v1, 0xff

    .line 4574
    goto :goto_87

    .line 4568
    :pswitch_73
    const/16 v0, 0xcc

    .line 4569
    const/16 v1, 0xff

    .line 4570
    goto :goto_87

    .line 4564
    :pswitch_78
    const/16 v0, 0xcc

    .line 4565
    const/16 v1, 0xff

    .line 4566
    goto :goto_87

    .line 4560
    :pswitch_7d
    const/16 v0, 0xcc

    .line 4561
    const/16 v1, 0xfa

    .line 4562
    goto :goto_87

    .line 4556
    :pswitch_82
    const/16 v0, 0xff

    .line 4557
    const/16 v1, 0xff

    .line 4558
    nop

    .line 4598
    :goto_87
    goto :goto_c8

    .line 4602
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 4604
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 4646
    :pswitch_8e
    const/16 v0, 0xb6

    .line 4647
    const/16 v1, 0xb6

    goto :goto_c5

    .line 4642
    :pswitch_93
    const/16 v0, 0xcc

    .line 4643
    const/16 v1, 0xcc

    .line 4644
    goto :goto_c5

    .line 4638
    :pswitch_98
    const/16 v0, 0xdf

    .line 4639
    const/16 v1, 0xdf

    .line 4640
    goto :goto_c5

    .line 4634
    :pswitch_9d
    const/16 v0, 0xf0

    .line 4635
    const/16 v1, 0xf0

    .line 4636
    goto :goto_c5

    .line 4630
    :pswitch_a2
    const/16 v0, 0xff

    .line 4631
    const/16 v1, 0xff

    .line 4632
    goto :goto_c5

    .line 4626
    :pswitch_a7
    const/16 v0, 0xcc

    .line 4627
    const/16 v1, 0xec

    .line 4628
    goto :goto_c5

    .line 4622
    :pswitch_ac
    const/16 v0, 0xcc

    .line 4623
    const/16 v1, 0xee

    .line 4624
    goto :goto_c5

    .line 4618
    :pswitch_b1
    const/16 v0, 0xcc

    .line 4619
    const/16 v1, 0xed

    .line 4620
    goto :goto_c5

    .line 4614
    :pswitch_b6
    const/16 v0, 0xcc

    .line 4615
    const/16 v1, 0xe8

    .line 4616
    goto :goto_c5

    .line 4610
    :pswitch_bb
    const/16 v0, 0xcc

    .line 4611
    const/16 v1, 0xe1

    .line 4612
    goto :goto_c5

    .line 4606
    :pswitch_c0
    const/16 v0, 0xff

    .line 4607
    const/16 v1, 0xff

    .line 4608
    nop

    .line 4648
    :goto_c5
    goto :goto_c8

    .line 4652
    :cond_c6
    const/4 v0, -0x1

    .line 4653
    const/4 v1, -0x1

    .line 4656
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 4657
    aput v0, v4, v5

    .line 4659
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RB_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "min":I
    const/4 v1, 0x0

    .line 575
    .local v1, "max":I
    const/4 v2, 0x0

    .line 577
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 580
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 583
    const/4 v5, 0x1

    if-nez p1, :cond_3e

    .line 585
    packed-switch v2, :pswitch_data_a0

    goto :goto_3c

    .line 627
    :pswitch_11
    const/4 v0, 0x0

    .line 628
    const/16 v1, 0xd8

    goto :goto_3c

    .line 623
    :pswitch_15
    const/4 v0, 0x0

    .line 624
    const/16 v1, 0xca

    .line 625
    goto :goto_3c

    .line 619
    :pswitch_19
    const/4 v0, 0x0

    .line 620
    const/16 v1, 0xbc

    .line 621
    goto :goto_3c

    .line 615
    :pswitch_1d
    const/4 v0, 0x0

    .line 616
    const/16 v1, 0xac

    .line 617
    goto :goto_3c

    .line 611
    :pswitch_21
    const/4 v0, 0x0

    .line 612
    const/16 v1, 0x9c

    .line 613
    goto :goto_3c

    .line 607
    :pswitch_25
    const/4 v0, 0x0

    .line 608
    const/16 v1, 0x88

    .line 609
    goto :goto_3c

    .line 603
    :pswitch_29
    const/4 v0, 0x0

    .line 604
    const/16 v1, 0x75

    .line 605
    goto :goto_3c

    .line 599
    :pswitch_2d
    const/4 v0, 0x0

    .line 600
    const/16 v1, 0x5c

    .line 601
    goto :goto_3c

    .line 595
    :pswitch_31
    const/4 v0, 0x0

    .line 596
    const/16 v1, 0x42

    .line 597
    goto :goto_3c

    .line 591
    :pswitch_35
    const/4 v0, 0x0

    .line 592
    const/16 v1, 0x24

    .line 593
    goto :goto_3c

    .line 587
    :pswitch_39
    const/4 v0, 0x0

    .line 588
    const/4 v1, 0x0

    .line 589
    nop

    .line 629
    :goto_3c
    goto/16 :goto_9a

    .line 633
    :cond_3e
    if-ne p1, v5, :cond_70

    .line 635
    packed-switch v2, :pswitch_data_ba

    goto :goto_6f

    .line 677
    :pswitch_44
    const/4 v0, 0x0

    .line 678
    const/16 v1, 0xd8

    goto :goto_6f

    .line 673
    :pswitch_48
    const/4 v0, 0x0

    .line 674
    const/16 v1, 0xca

    .line 675
    goto :goto_6f

    .line 669
    :pswitch_4c
    const/4 v0, 0x0

    .line 670
    const/16 v1, 0xbc

    .line 671
    goto :goto_6f

    .line 665
    :pswitch_50
    const/4 v0, 0x0

    .line 666
    const/16 v1, 0xac

    .line 667
    goto :goto_6f

    .line 661
    :pswitch_54
    const/4 v0, 0x0

    .line 662
    const/16 v1, 0x9c

    .line 663
    goto :goto_6f

    .line 657
    :pswitch_58
    const/4 v0, 0x0

    .line 658
    const/16 v1, 0x88

    .line 659
    goto :goto_6f

    .line 653
    :pswitch_5c
    const/4 v0, 0x0

    .line 654
    const/16 v1, 0x75

    .line 655
    goto :goto_6f

    .line 649
    :pswitch_60
    const/4 v0, 0x0

    .line 650
    const/16 v1, 0x5c

    .line 651
    goto :goto_6f

    .line 645
    :pswitch_64
    const/4 v0, 0x0

    .line 646
    const/16 v1, 0x42

    .line 647
    goto :goto_6f

    .line 641
    :pswitch_68
    const/4 v0, 0x0

    .line 642
    const/16 v1, 0x24

    .line 643
    goto :goto_6f

    .line 637
    :pswitch_6c
    const/4 v0, 0x0

    .line 638
    const/4 v1, 0x0

    .line 639
    nop

    .line 679
    :goto_6f
    goto :goto_9a

    .line 683
    :cond_70
    if-ne p1, v3, :cond_98

    .line 685
    packed-switch v2, :pswitch_data_d4

    goto :goto_97

    .line 727
    :pswitch_76
    const/4 v0, 0x0

    .line 728
    const/4 v1, 0x0

    goto :goto_97

    .line 723
    :pswitch_79
    const/4 v0, 0x0

    .line 724
    const/4 v1, 0x0

    .line 725
    goto :goto_97

    .line 719
    :pswitch_7c
    const/4 v0, 0x0

    .line 720
    const/4 v1, 0x0

    .line 721
    goto :goto_97

    .line 715
    :pswitch_7f
    const/4 v0, 0x0

    .line 716
    const/4 v1, 0x0

    .line 717
    goto :goto_97

    .line 711
    :pswitch_82
    const/4 v0, 0x0

    .line 712
    const/4 v1, 0x0

    .line 713
    goto :goto_97

    .line 707
    :pswitch_85
    const/4 v0, 0x0

    .line 708
    const/4 v1, 0x0

    .line 709
    goto :goto_97

    .line 703
    :pswitch_88
    const/4 v0, 0x0

    .line 704
    const/4 v1, 0x0

    .line 705
    goto :goto_97

    .line 699
    :pswitch_8b
    const/4 v0, 0x0

    .line 700
    const/4 v1, 0x0

    .line 701
    goto :goto_97

    .line 695
    :pswitch_8e
    const/4 v0, 0x0

    .line 696
    const/4 v1, 0x0

    .line 697
    goto :goto_97

    .line 691
    :pswitch_91
    const/4 v0, 0x0

    .line 692
    const/4 v1, 0x0

    .line 693
    goto :goto_97

    .line 687
    :pswitch_94
    const/4 v0, 0x0

    .line 688
    const/4 v1, 0x0

    .line 689
    nop

    .line 729
    :goto_97
    goto :goto_9a

    .line 733
    :cond_98
    const/4 v0, -0x1

    .line 734
    const/4 v1, -0x1

    .line 737
    :goto_9a
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 738
    aput v0, v4, v5

    .line 740
    return-object v4

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 3802
    const/4 v0, 0x0

    .line 3803
    .local v0, "min":I
    const/4 v1, 0x0

    .line 3805
    .local v1, "max":I
    const/4 v2, 0x0

    .line 3807
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3810
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 3813
    const/4 v5, 0x1

    if-nez p1, :cond_39

    .line 3815
    packed-switch v2, :pswitch_data_96

    goto :goto_37

    .line 3857
    :pswitch_11
    const/4 v0, 0x0

    .line 3858
    const/16 v1, 0xd8

    goto :goto_37

    .line 3853
    :pswitch_15
    const/4 v0, 0x0

    .line 3854
    const/16 v1, 0xca

    .line 3855
    goto :goto_37

    .line 3849
    :pswitch_19
    const/4 v0, 0x0

    .line 3850
    const/16 v1, 0xbc

    .line 3851
    goto :goto_37

    .line 3845
    :pswitch_1d
    const/4 v0, 0x0

    .line 3846
    const/16 v1, 0xac

    .line 3847
    goto :goto_37

    .line 3841
    :pswitch_21
    const/4 v0, 0x0

    .line 3842
    const/16 v1, 0x9c

    .line 3843
    goto :goto_37

    .line 3837
    :pswitch_25
    const/4 v0, 0x0

    .line 3838
    const/4 v1, 0x1

    .line 3839
    goto :goto_37

    .line 3833
    :pswitch_28
    const/4 v0, 0x0

    .line 3834
    const/4 v1, 0x1

    .line 3835
    goto :goto_37

    .line 3829
    :pswitch_2b
    const/4 v0, 0x0

    .line 3830
    const/4 v1, 0x1

    .line 3831
    goto :goto_37

    .line 3825
    :pswitch_2e
    const/4 v0, 0x0

    .line 3826
    const/4 v1, 0x1

    .line 3827
    goto :goto_37

    .line 3821
    :pswitch_31
    const/4 v0, 0x0

    .line 3822
    const/4 v1, 0x0

    .line 3823
    goto :goto_37

    .line 3817
    :pswitch_34
    const/4 v0, 0x0

    .line 3818
    const/4 v1, 0x0

    .line 3819
    nop

    .line 3859
    :goto_37
    goto/16 :goto_90

    .line 3863
    :cond_39
    if-ne p1, v5, :cond_66

    .line 3865
    packed-switch v2, :pswitch_data_b0

    goto :goto_65

    .line 3907
    :pswitch_3f
    const/4 v0, 0x0

    .line 3908
    const/16 v1, 0xd8

    goto :goto_65

    .line 3903
    :pswitch_43
    const/4 v0, 0x0

    .line 3904
    const/16 v1, 0xca

    .line 3905
    goto :goto_65

    .line 3899
    :pswitch_47
    const/4 v0, 0x0

    .line 3900
    const/16 v1, 0xbc

    .line 3901
    goto :goto_65

    .line 3895
    :pswitch_4b
    const/4 v0, 0x0

    .line 3896
    const/16 v1, 0xac

    .line 3897
    goto :goto_65

    .line 3891
    :pswitch_4f
    const/4 v0, 0x0

    .line 3892
    const/16 v1, 0x9c

    .line 3893
    goto :goto_65

    .line 3887
    :pswitch_53
    const/4 v0, 0x0

    .line 3888
    const/4 v1, 0x3

    .line 3889
    goto :goto_65

    .line 3883
    :pswitch_56
    const/4 v0, 0x0

    .line 3884
    const/4 v1, 0x2

    .line 3885
    goto :goto_65

    .line 3879
    :pswitch_59
    const/4 v0, 0x0

    .line 3880
    const/4 v1, 0x2

    .line 3881
    goto :goto_65

    .line 3875
    :pswitch_5c
    const/4 v0, 0x0

    .line 3876
    const/4 v1, 0x1

    .line 3877
    goto :goto_65

    .line 3871
    :pswitch_5f
    const/4 v0, 0x0

    .line 3872
    const/4 v1, 0x0

    .line 3873
    goto :goto_65

    .line 3867
    :pswitch_62
    const/4 v0, 0x0

    .line 3868
    const/4 v1, 0x0

    .line 3869
    nop

    .line 3909
    :goto_65
    goto :goto_90

    .line 3913
    :cond_66
    if-ne p1, v3, :cond_8e

    .line 3915
    packed-switch v2, :pswitch_data_ca

    goto :goto_8d

    .line 3957
    :pswitch_6c
    const/4 v0, 0x0

    .line 3958
    const/4 v1, 0x0

    goto :goto_8d

    .line 3953
    :pswitch_6f
    const/4 v0, 0x0

    .line 3954
    const/4 v1, 0x0

    .line 3955
    goto :goto_8d

    .line 3949
    :pswitch_72
    const/4 v0, 0x0

    .line 3950
    const/4 v1, 0x0

    .line 3951
    goto :goto_8d

    .line 3945
    :pswitch_75
    const/4 v0, 0x0

    .line 3946
    const/4 v1, 0x0

    .line 3947
    goto :goto_8d

    .line 3941
    :pswitch_78
    const/4 v0, 0x0

    .line 3942
    const/4 v1, 0x0

    .line 3943
    goto :goto_8d

    .line 3937
    :pswitch_7b
    const/4 v0, 0x0

    .line 3938
    const/4 v1, 0x0

    .line 3939
    goto :goto_8d

    .line 3933
    :pswitch_7e
    const/4 v0, 0x0

    .line 3934
    const/4 v1, 0x0

    .line 3935
    goto :goto_8d

    .line 3929
    :pswitch_81
    const/4 v0, 0x0

    .line 3930
    const/4 v1, 0x0

    .line 3931
    goto :goto_8d

    .line 3925
    :pswitch_84
    const/4 v0, 0x0

    .line 3926
    const/4 v1, 0x0

    .line 3927
    goto :goto_8d

    .line 3921
    :pswitch_87
    const/4 v0, 0x0

    .line 3922
    const/4 v1, 0x0

    .line 3923
    goto :goto_8d

    .line 3917
    :pswitch_8a
    const/4 v0, 0x0

    .line 3918
    const/4 v1, 0x0

    .line 3919
    nop

    .line 3959
    :goto_8d
    goto :goto_90

    .line 3963
    :cond_8e
    const/4 v0, -0x1

    .line 3964
    const/4 v1, -0x1

    .line 3967
    :goto_90
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 3968
    aput v0, v4, v5

    .line 3970
    return-object v4

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RG_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "min":I
    const/4 v1, 0x0

    .line 403
    .local v1, "max":I
    const/4 v2, 0x0

    .line 405
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 408
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 411
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 413
    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    .line 455
    :pswitch_11
    const/4 v0, 0x0

    .line 456
    const/4 v1, 0x0

    goto :goto_32

    .line 451
    :pswitch_14
    const/4 v0, 0x0

    .line 452
    const/4 v1, 0x0

    .line 453
    goto :goto_32

    .line 447
    :pswitch_17
    const/4 v0, 0x0

    .line 448
    const/4 v1, 0x0

    .line 449
    goto :goto_32

    .line 443
    :pswitch_1a
    const/4 v0, 0x0

    .line 444
    const/4 v1, 0x1

    .line 445
    goto :goto_32

    .line 439
    :pswitch_1d
    const/4 v0, 0x0

    .line 440
    const/4 v1, 0x0

    .line 441
    goto :goto_32

    .line 435
    :pswitch_20
    const/4 v0, 0x0

    .line 436
    const/4 v1, 0x0

    .line 437
    goto :goto_32

    .line 431
    :pswitch_23
    const/4 v0, 0x0

    .line 432
    const/4 v1, 0x1

    .line 433
    goto :goto_32

    .line 427
    :pswitch_26
    const/4 v0, 0x0

    .line 428
    const/4 v1, 0x0

    .line 429
    goto :goto_32

    .line 423
    :pswitch_29
    const/4 v0, 0x0

    .line 424
    const/4 v1, 0x0

    .line 425
    goto :goto_32

    .line 419
    :pswitch_2c
    const/4 v0, 0x0

    .line 420
    const/4 v1, 0x0

    .line 421
    goto :goto_32

    .line 415
    :pswitch_2f
    const/4 v0, 0x0

    .line 416
    const/4 v1, 0x0

    .line 417
    nop

    .line 457
    :goto_32
    goto/16 :goto_86

    .line 461
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 463
    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    .line 505
    :pswitch_3a
    const/4 v0, 0x1

    .line 506
    const/4 v1, 0x1

    goto :goto_5b

    .line 501
    :pswitch_3d
    const/4 v0, 0x1

    .line 502
    const/4 v1, 0x1

    .line 503
    goto :goto_5b

    .line 497
    :pswitch_40
    const/4 v0, 0x1

    .line 498
    const/4 v1, 0x1

    .line 499
    goto :goto_5b

    .line 493
    :pswitch_43
    const/4 v0, 0x1

    .line 494
    const/4 v1, 0x1

    .line 495
    goto :goto_5b

    .line 489
    :pswitch_46
    const/4 v0, 0x1

    .line 490
    const/4 v1, 0x1

    .line 491
    goto :goto_5b

    .line 485
    :pswitch_49
    const/4 v0, 0x1

    .line 486
    const/4 v1, 0x1

    .line 487
    goto :goto_5b

    .line 481
    :pswitch_4c
    const/4 v0, 0x1

    .line 482
    const/4 v1, 0x1

    .line 483
    goto :goto_5b

    .line 477
    :pswitch_4f
    const/4 v0, 0x1

    .line 478
    const/4 v1, 0x1

    .line 479
    goto :goto_5b

    .line 473
    :pswitch_52
    const/4 v0, 0x1

    .line 474
    const/4 v1, 0x1

    .line 475
    goto :goto_5b

    .line 469
    :pswitch_55
    const/4 v0, 0x1

    .line 470
    const/4 v1, 0x1

    .line 471
    goto :goto_5b

    .line 465
    :pswitch_58
    const/4 v0, 0x0

    .line 466
    const/4 v1, 0x0

    .line 467
    nop

    .line 507
    :goto_5b
    goto :goto_86

    .line 511
    :cond_5c
    if-ne p1, v3, :cond_84

    .line 513
    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    .line 555
    :pswitch_62
    const/4 v0, 0x0

    .line 556
    const/4 v1, 0x0

    goto :goto_83

    .line 551
    :pswitch_65
    const/4 v0, 0x0

    .line 552
    const/4 v1, 0x0

    .line 553
    goto :goto_83

    .line 547
    :pswitch_68
    const/4 v0, 0x0

    .line 548
    const/4 v1, 0x0

    .line 549
    goto :goto_83

    .line 543
    :pswitch_6b
    const/4 v0, 0x0

    .line 544
    const/4 v1, 0x0

    .line 545
    goto :goto_83

    .line 539
    :pswitch_6e
    const/4 v0, 0x0

    .line 540
    const/4 v1, 0x0

    .line 541
    goto :goto_83

    .line 535
    :pswitch_71
    const/4 v0, 0x0

    .line 536
    const/4 v1, 0x0

    .line 537
    goto :goto_83

    .line 531
    :pswitch_74
    const/4 v0, 0x0

    .line 532
    const/4 v1, 0x0

    .line 533
    goto :goto_83

    .line 527
    :pswitch_77
    const/4 v0, 0x0

    .line 528
    const/4 v1, 0x0

    .line 529
    goto :goto_83

    .line 523
    :pswitch_7a
    const/4 v0, 0x0

    .line 524
    const/4 v1, 0x0

    .line 525
    goto :goto_83

    .line 519
    :pswitch_7d
    const/4 v0, 0x0

    .line 520
    const/4 v1, 0x0

    .line 521
    goto :goto_83

    .line 515
    :pswitch_80
    const/4 v0, 0x0

    .line 516
    const/4 v1, 0x0

    .line 517
    nop

    .line 557
    :goto_83
    goto :goto_86

    .line 561
    :cond_84
    const/4 v0, -0x1

    .line 562
    const/4 v1, -0x1

    .line 565
    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 566
    aput v0, v4, v5

    .line 568
    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 3630
    const/4 v0, 0x0

    .line 3631
    .local v0, "min":I
    const/4 v1, 0x0

    .line 3633
    .local v1, "max":I
    const/4 v2, 0x0

    .line 3635
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3638
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 3641
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 3643
    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    .line 3685
    :pswitch_11
    const/4 v0, 0x0

    .line 3686
    const/4 v1, 0x0

    goto :goto_32

    .line 3681
    :pswitch_14
    const/4 v0, 0x0

    .line 3682
    const/4 v1, 0x0

    .line 3683
    goto :goto_32

    .line 3677
    :pswitch_17
    const/4 v0, 0x0

    .line 3678
    const/4 v1, 0x0

    .line 3679
    goto :goto_32

    .line 3673
    :pswitch_1a
    const/4 v0, 0x0

    .line 3674
    const/4 v1, 0x1

    .line 3675
    goto :goto_32

    .line 3669
    :pswitch_1d
    const/4 v0, 0x0

    .line 3670
    const/4 v1, 0x0

    .line 3671
    goto :goto_32

    .line 3665
    :pswitch_20
    const/4 v0, 0x0

    .line 3666
    const/4 v1, 0x0

    .line 3667
    goto :goto_32

    .line 3661
    :pswitch_23
    const/4 v0, 0x0

    .line 3662
    const/4 v1, 0x0

    .line 3663
    goto :goto_32

    .line 3657
    :pswitch_26
    const/4 v0, 0x0

    .line 3658
    const/4 v1, 0x0

    .line 3659
    goto :goto_32

    .line 3653
    :pswitch_29
    const/4 v0, 0x0

    .line 3654
    const/4 v1, 0x0

    .line 3655
    goto :goto_32

    .line 3649
    :pswitch_2c
    const/4 v0, 0x0

    .line 3650
    const/4 v1, 0x0

    .line 3651
    goto :goto_32

    .line 3645
    :pswitch_2f
    const/4 v0, 0x0

    .line 3646
    const/4 v1, 0x0

    .line 3647
    nop

    .line 3687
    :goto_32
    goto/16 :goto_86

    .line 3691
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 3693
    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    .line 3735
    :pswitch_3a
    const/4 v0, 0x1

    .line 3736
    const/4 v1, 0x1

    goto :goto_5b

    .line 3731
    :pswitch_3d
    const/4 v0, 0x1

    .line 3732
    const/4 v1, 0x1

    .line 3733
    goto :goto_5b

    .line 3727
    :pswitch_40
    const/4 v0, 0x1

    .line 3728
    const/4 v1, 0x1

    .line 3729
    goto :goto_5b

    .line 3723
    :pswitch_43
    const/4 v0, 0x1

    .line 3724
    const/4 v1, 0x1

    .line 3725
    goto :goto_5b

    .line 3719
    :pswitch_46
    const/4 v0, 0x1

    .line 3720
    const/4 v1, 0x1

    .line 3721
    goto :goto_5b

    .line 3715
    :pswitch_49
    const/4 v0, 0x0

    .line 3716
    const/4 v1, 0x0

    .line 3717
    goto :goto_5b

    .line 3711
    :pswitch_4c
    const/4 v0, 0x0

    .line 3712
    const/4 v1, 0x0

    .line 3713
    goto :goto_5b

    .line 3707
    :pswitch_4f
    const/4 v0, 0x0

    .line 3708
    const/4 v1, 0x0

    .line 3709
    goto :goto_5b

    .line 3703
    :pswitch_52
    const/4 v0, 0x0

    .line 3704
    const/4 v1, 0x0

    .line 3705
    goto :goto_5b

    .line 3699
    :pswitch_55
    const/4 v0, 0x0

    .line 3700
    const/4 v1, 0x0

    .line 3701
    goto :goto_5b

    .line 3695
    :pswitch_58
    const/4 v0, 0x0

    .line 3696
    const/4 v1, 0x0

    .line 3697
    nop

    .line 3737
    :goto_5b
    goto :goto_86

    .line 3741
    :cond_5c
    if-ne p1, v3, :cond_84

    .line 3743
    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    .line 3785
    :pswitch_62
    const/4 v0, 0x0

    .line 3786
    const/4 v1, 0x0

    goto :goto_83

    .line 3781
    :pswitch_65
    const/4 v0, 0x0

    .line 3782
    const/4 v1, 0x0

    .line 3783
    goto :goto_83

    .line 3777
    :pswitch_68
    const/4 v0, 0x0

    .line 3778
    const/4 v1, 0x0

    .line 3779
    goto :goto_83

    .line 3773
    :pswitch_6b
    const/4 v0, 0x0

    .line 3774
    const/4 v1, 0x0

    .line 3775
    goto :goto_83

    .line 3769
    :pswitch_6e
    const/4 v0, 0x0

    .line 3770
    const/4 v1, 0x0

    .line 3771
    goto :goto_83

    .line 3765
    :pswitch_71
    const/4 v0, 0x0

    .line 3766
    const/4 v1, 0x0

    .line 3767
    goto :goto_83

    .line 3761
    :pswitch_74
    const/4 v0, 0x0

    .line 3762
    const/4 v1, 0x0

    .line 3763
    goto :goto_83

    .line 3757
    :pswitch_77
    const/4 v0, 0x0

    .line 3758
    const/4 v1, 0x0

    .line 3759
    goto :goto_83

    .line 3753
    :pswitch_7a
    const/4 v0, 0x0

    .line 3754
    const/4 v1, 0x0

    .line 3755
    goto :goto_83

    .line 3749
    :pswitch_7d
    const/4 v0, 0x0

    .line 3750
    const/4 v1, 0x0

    .line 3751
    goto :goto_83

    .line 3745
    :pswitch_80
    const/4 v0, 0x0

    .line 3746
    const/4 v1, 0x0

    .line 3747
    nop

    .line 3787
    :goto_83
    goto :goto_86

    .line 3791
    :cond_84
    const/4 v0, -0x1

    .line 3792
    const/4 v1, -0x1

    .line 3795
    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 3796
    aput v0, v4, v5

    .line 3798
    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RR_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "min":I
    const/4 v1, 0x0

    .line 230
    .local v1, "max":I
    const/4 v2, 0x0

    .line 232
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 235
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 238
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 240
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 282
    :pswitch_11
    const/16 v0, 0xfe

    .line 283
    const/16 v1, 0xfe

    goto :goto_48

    .line 278
    :pswitch_16
    const/16 v0, 0xfe

    .line 279
    const/16 v1, 0xfe

    .line 280
    goto :goto_48

    .line 274
    :pswitch_1b
    const/16 v0, 0xfe

    .line 275
    const/16 v1, 0xfe

    .line 276
    goto :goto_48

    .line 270
    :pswitch_20
    const/16 v0, 0xfe

    .line 271
    const/16 v1, 0xfe

    .line 272
    goto :goto_48

    .line 266
    :pswitch_25
    const/16 v0, 0xfe

    .line 267
    const/16 v1, 0xfe

    .line 268
    goto :goto_48

    .line 262
    :pswitch_2a
    const/16 v0, 0xfe

    .line 263
    const/16 v1, 0xfe

    .line 264
    goto :goto_48

    .line 258
    :pswitch_2f
    const/16 v0, 0xfe

    .line 259
    const/16 v1, 0xfe

    .line 260
    goto :goto_48

    .line 254
    :pswitch_34
    const/16 v0, 0xfe

    .line 255
    const/16 v1, 0xfe

    .line 256
    goto :goto_48

    .line 250
    :pswitch_39
    const/16 v0, 0xfe

    .line 251
    const/16 v1, 0xfe

    .line 252
    goto :goto_48

    .line 246
    :pswitch_3e
    const/16 v0, 0xfe

    .line 247
    const/16 v1, 0xfe

    .line 248
    goto :goto_48

    .line 242
    :pswitch_43
    const/16 v0, 0xff

    .line 243
    const/16 v1, 0xff

    .line 244
    nop

    .line 284
    :goto_48
    goto/16 :goto_c8

    .line 288
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 290
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 332
    :pswitch_50
    const/16 v0, 0xfe

    .line 333
    const/16 v1, 0xff

    goto :goto_87

    .line 328
    :pswitch_55
    const/16 v0, 0xfe

    .line 329
    const/16 v1, 0xff

    .line 330
    goto :goto_87

    .line 324
    :pswitch_5a
    const/16 v0, 0xfe

    .line 325
    const/16 v1, 0xff

    .line 326
    goto :goto_87

    .line 320
    :pswitch_5f
    const/16 v0, 0xfe

    .line 321
    const/16 v1, 0xfe

    .line 322
    goto :goto_87

    .line 316
    :pswitch_64
    const/16 v0, 0xfe

    .line 317
    const/16 v1, 0xff

    .line 318
    goto :goto_87

    .line 312
    :pswitch_69
    const/16 v0, 0xfe

    .line 313
    const/16 v1, 0xff

    .line 314
    goto :goto_87

    .line 308
    :pswitch_6e
    const/16 v0, 0xfe

    .line 309
    const/16 v1, 0xff

    .line 310
    goto :goto_87

    .line 304
    :pswitch_73
    const/16 v0, 0xfe

    .line 305
    const/16 v1, 0xff

    .line 306
    goto :goto_87

    .line 300
    :pswitch_78
    const/16 v0, 0xfe

    .line 301
    const/16 v1, 0xff

    .line 302
    goto :goto_87

    .line 296
    :pswitch_7d
    const/16 v0, 0xfe

    .line 297
    const/16 v1, 0xff

    .line 298
    goto :goto_87

    .line 292
    :pswitch_82
    const/16 v0, 0xff

    .line 293
    const/16 v1, 0xff

    .line 294
    nop

    .line 334
    :goto_87
    goto :goto_c8

    .line 338
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 340
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 382
    :pswitch_8e
    const/16 v0, 0xff

    .line 383
    const/16 v1, 0xff

    goto :goto_c5

    .line 378
    :pswitch_93
    const/16 v0, 0xff

    .line 379
    const/16 v1, 0xff

    .line 380
    goto :goto_c5

    .line 374
    :pswitch_98
    const/16 v0, 0xff

    .line 375
    const/16 v1, 0xff

    .line 376
    goto :goto_c5

    .line 370
    :pswitch_9d
    const/16 v0, 0xff

    .line 371
    const/16 v1, 0xff

    .line 372
    goto :goto_c5

    .line 366
    :pswitch_a2
    const/16 v0, 0xff

    .line 367
    const/16 v1, 0xff

    .line 368
    goto :goto_c5

    .line 362
    :pswitch_a7
    const/16 v0, 0xff

    .line 363
    const/16 v1, 0xff

    .line 364
    goto :goto_c5

    .line 358
    :pswitch_ac
    const/16 v0, 0xff

    .line 359
    const/16 v1, 0xff

    .line 360
    goto :goto_c5

    .line 354
    :pswitch_b1
    const/16 v0, 0xff

    .line 355
    const/16 v1, 0xff

    .line 356
    goto :goto_c5

    .line 350
    :pswitch_b6
    const/16 v0, 0xff

    .line 351
    const/16 v1, 0xff

    .line 352
    goto :goto_c5

    .line 346
    :pswitch_bb
    const/16 v0, 0xff

    .line 347
    const/16 v1, 0xff

    .line 348
    goto :goto_c5

    .line 342
    :pswitch_c0
    const/16 v0, 0xff

    .line 343
    const/16 v1, 0xff

    .line 344
    nop

    .line 384
    :goto_c5
    goto :goto_c8

    .line 388
    :cond_c6
    const/4 v0, -0x1

    .line 389
    const/4 v1, -0x1

    .line 392
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 393
    aput v0, v4, v5

    .line 395
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 3457
    const/4 v0, 0x0

    .line 3458
    .local v0, "min":I
    const/4 v1, 0x0

    .line 3460
    .local v1, "max":I
    const/4 v2, 0x0

    .line 3462
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3465
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 3468
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 3470
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 3512
    :pswitch_11
    const/16 v0, 0xfe

    .line 3513
    const/16 v1, 0xfe

    goto :goto_48

    .line 3508
    :pswitch_16
    const/16 v0, 0xfe

    .line 3509
    const/16 v1, 0xfe

    .line 3510
    goto :goto_48

    .line 3504
    :pswitch_1b
    const/16 v0, 0xfe

    .line 3505
    const/16 v1, 0xfe

    .line 3506
    goto :goto_48

    .line 3500
    :pswitch_20
    const/16 v0, 0xfe

    .line 3501
    const/16 v1, 0xfe

    .line 3502
    goto :goto_48

    .line 3496
    :pswitch_25
    const/16 v0, 0xfe

    .line 3497
    const/16 v1, 0xfe

    .line 3498
    goto :goto_48

    .line 3492
    :pswitch_2a
    const/16 v0, 0xcc

    .line 3493
    const/16 v1, 0xff

    .line 3494
    goto :goto_48

    .line 3488
    :pswitch_2f
    const/16 v0, 0xcc

    .line 3489
    const/16 v1, 0xff

    .line 3490
    goto :goto_48

    .line 3484
    :pswitch_34
    const/16 v0, 0xcc

    .line 3485
    const/16 v1, 0xff

    .line 3486
    goto :goto_48

    .line 3480
    :pswitch_39
    const/16 v0, 0xcc

    .line 3481
    const/16 v1, 0xff

    .line 3482
    goto :goto_48

    .line 3476
    :pswitch_3e
    const/16 v0, 0xcc

    .line 3477
    const/16 v1, 0xef

    .line 3478
    goto :goto_48

    .line 3472
    :pswitch_43
    const/16 v0, 0xff

    .line 3473
    const/16 v1, 0xff

    .line 3474
    nop

    .line 3514
    :goto_48
    goto/16 :goto_c8

    .line 3518
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 3520
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 3562
    :pswitch_50
    const/16 v0, 0xfe

    .line 3563
    const/16 v1, 0xff

    goto :goto_87

    .line 3558
    :pswitch_55
    const/16 v0, 0xfe

    .line 3559
    const/16 v1, 0xff

    .line 3560
    goto :goto_87

    .line 3554
    :pswitch_5a
    const/16 v0, 0xfe

    .line 3555
    const/16 v1, 0xff

    .line 3556
    goto :goto_87

    .line 3550
    :pswitch_5f
    const/16 v0, 0xfe

    .line 3551
    const/16 v1, 0xfe

    .line 3552
    goto :goto_87

    .line 3546
    :pswitch_64
    const/16 v0, 0xfe

    .line 3547
    const/16 v1, 0xff

    .line 3548
    goto :goto_87

    .line 3542
    :pswitch_69
    const/16 v0, 0xcc

    .line 3543
    const/16 v1, 0xff

    .line 3544
    goto :goto_87

    .line 3538
    :pswitch_6e
    const/16 v0, 0xcc

    .line 3539
    const/16 v1, 0xff

    .line 3540
    goto :goto_87

    .line 3534
    :pswitch_73
    const/16 v0, 0xcc

    .line 3535
    const/16 v1, 0xff

    .line 3536
    goto :goto_87

    .line 3530
    :pswitch_78
    const/16 v0, 0xcc

    .line 3531
    const/16 v1, 0xff

    .line 3532
    goto :goto_87

    .line 3526
    :pswitch_7d
    const/16 v0, 0xcc

    .line 3527
    const/16 v1, 0xee

    .line 3528
    goto :goto_87

    .line 3522
    :pswitch_82
    const/16 v0, 0xff

    .line 3523
    const/16 v1, 0xff

    .line 3524
    nop

    .line 3564
    :goto_87
    goto :goto_c8

    .line 3568
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 3570
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 3612
    :pswitch_8e
    const/16 v0, 0xff

    .line 3613
    const/16 v1, 0xff

    goto :goto_c5

    .line 3608
    :pswitch_93
    const/16 v0, 0xff

    .line 3609
    const/16 v1, 0xff

    .line 3610
    goto :goto_c5

    .line 3604
    :pswitch_98
    const/16 v0, 0xff

    .line 3605
    const/16 v1, 0xff

    .line 3606
    goto :goto_c5

    .line 3600
    :pswitch_9d
    const/16 v0, 0xff

    .line 3601
    const/16 v1, 0xff

    .line 3602
    goto :goto_c5

    .line 3596
    :pswitch_a2
    const/16 v0, 0xff

    .line 3597
    const/16 v1, 0xff

    .line 3598
    goto :goto_c5

    .line 3592
    :pswitch_a7
    const/16 v0, 0xcc

    .line 3593
    const/16 v1, 0xe2

    .line 3594
    goto :goto_c5

    .line 3588
    :pswitch_ac
    const/16 v0, 0xcc

    .line 3589
    const/16 v1, 0xe4

    .line 3590
    goto :goto_c5

    .line 3584
    :pswitch_b1
    const/16 v0, 0xcc

    .line 3585
    const/16 v1, 0xe4

    .line 3586
    goto :goto_c5

    .line 3580
    :pswitch_b6
    const/16 v0, 0xcc

    .line 3581
    const/16 v1, 0xe2

    .line 3582
    goto :goto_c5

    .line 3576
    :pswitch_bb
    const/16 v0, 0xcc

    .line 3577
    const/16 v1, 0xdc

    .line 3578
    goto :goto_c5

    .line 3572
    :pswitch_c0
    const/16 v0, 0xff

    .line 3573
    const/16 v1, 0xff

    .line 3574
    nop

    .line 3614
    :goto_c5
    goto :goto_c8

    .line 3618
    :cond_c6
    const/4 v0, -0x1

    .line 3619
    const/4 v1, -0x1

    .line 3622
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 3623
    aput v0, v4, v5

    .line 3625
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YB_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 2122
    const/4 v0, 0x0

    .line 2123
    .local v0, "min":I
    const/4 v1, 0x0

    .line 2125
    .local v1, "max":I
    const/4 v2, 0x0

    .line 2127
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 2130
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 2133
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 2135
    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    .line 2177
    :pswitch_11
    const/4 v0, 0x0

    .line 2178
    const/4 v1, 0x0

    goto :goto_32

    .line 2173
    :pswitch_14
    const/4 v0, 0x0

    .line 2174
    const/4 v1, 0x0

    .line 2175
    goto :goto_32

    .line 2169
    :pswitch_17
    const/4 v0, 0x0

    .line 2170
    const/4 v1, 0x0

    .line 2171
    goto :goto_32

    .line 2165
    :pswitch_1a
    const/4 v0, 0x0

    .line 2166
    const/4 v1, 0x0

    .line 2167
    goto :goto_32

    .line 2161
    :pswitch_1d
    const/4 v0, 0x0

    .line 2162
    const/4 v1, 0x0

    .line 2163
    goto :goto_32

    .line 2157
    :pswitch_20
    const/4 v0, 0x0

    .line 2158
    const/4 v1, 0x0

    .line 2159
    goto :goto_32

    .line 2153
    :pswitch_23
    const/4 v0, 0x0

    .line 2154
    const/4 v1, 0x0

    .line 2155
    goto :goto_32

    .line 2149
    :pswitch_26
    const/4 v0, 0x0

    .line 2150
    const/4 v1, 0x0

    .line 2151
    goto :goto_32

    .line 2145
    :pswitch_29
    const/4 v0, 0x0

    .line 2146
    const/4 v1, 0x0

    .line 2147
    goto :goto_32

    .line 2141
    :pswitch_2c
    const/4 v0, 0x0

    .line 2142
    const/4 v1, 0x0

    .line 2143
    goto :goto_32

    .line 2137
    :pswitch_2f
    const/4 v0, 0x0

    .line 2138
    const/4 v1, 0x0

    .line 2139
    nop

    .line 2179
    :goto_32
    goto/16 :goto_86

    .line 2183
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 2185
    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    .line 2227
    :pswitch_3a
    const/4 v0, 0x0

    .line 2228
    const/4 v1, 0x0

    goto :goto_5b

    .line 2223
    :pswitch_3d
    const/4 v0, 0x0

    .line 2224
    const/4 v1, 0x0

    .line 2225
    goto :goto_5b

    .line 2219
    :pswitch_40
    const/4 v0, 0x0

    .line 2220
    const/4 v1, 0x0

    .line 2221
    goto :goto_5b

    .line 2215
    :pswitch_43
    const/4 v0, 0x0

    .line 2216
    const/4 v1, 0x0

    .line 2217
    goto :goto_5b

    .line 2211
    :pswitch_46
    const/4 v0, 0x0

    .line 2212
    const/4 v1, 0x0

    .line 2213
    goto :goto_5b

    .line 2207
    :pswitch_49
    const/4 v0, 0x0

    .line 2208
    const/4 v1, 0x0

    .line 2209
    goto :goto_5b

    .line 2203
    :pswitch_4c
    const/4 v0, 0x0

    .line 2204
    const/4 v1, 0x0

    .line 2205
    goto :goto_5b

    .line 2199
    :pswitch_4f
    const/4 v0, 0x0

    .line 2200
    const/4 v1, 0x0

    .line 2201
    goto :goto_5b

    .line 2195
    :pswitch_52
    const/4 v0, 0x0

    .line 2196
    const/4 v1, 0x0

    .line 2197
    goto :goto_5b

    .line 2191
    :pswitch_55
    const/4 v0, 0x0

    .line 2192
    const/4 v1, 0x0

    .line 2193
    goto :goto_5b

    .line 2187
    :pswitch_58
    const/4 v0, 0x0

    .line 2188
    const/4 v1, 0x0

    .line 2189
    nop

    .line 2229
    :goto_5b
    goto :goto_86

    .line 2233
    :cond_5c
    if-ne p1, v3, :cond_84

    .line 2235
    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    .line 2277
    :pswitch_62
    const/4 v0, 0x0

    .line 2278
    const/4 v1, 0x0

    goto :goto_83

    .line 2273
    :pswitch_65
    const/4 v0, 0x0

    .line 2274
    const/4 v1, 0x0

    .line 2275
    goto :goto_83

    .line 2269
    :pswitch_68
    const/4 v0, 0x0

    .line 2270
    const/4 v1, 0x0

    .line 2271
    goto :goto_83

    .line 2265
    :pswitch_6b
    const/4 v0, 0x0

    .line 2266
    const/4 v1, 0x0

    .line 2267
    goto :goto_83

    .line 2261
    :pswitch_6e
    const/4 v0, 0x0

    .line 2262
    const/4 v1, 0x0

    .line 2263
    goto :goto_83

    .line 2257
    :pswitch_71
    const/4 v0, 0x0

    .line 2258
    const/4 v1, 0x0

    .line 2259
    goto :goto_83

    .line 2253
    :pswitch_74
    const/4 v0, 0x0

    .line 2254
    const/4 v1, 0x0

    .line 2255
    goto :goto_83

    .line 2249
    :pswitch_77
    const/4 v0, 0x0

    .line 2250
    const/4 v1, 0x0

    .line 2251
    goto :goto_83

    .line 2245
    :pswitch_7a
    const/4 v0, 0x0

    .line 2246
    const/4 v1, 0x0

    .line 2247
    goto :goto_83

    .line 2241
    :pswitch_7d
    const/4 v0, 0x0

    .line 2242
    const/4 v1, 0x0

    .line 2243
    goto :goto_83

    .line 2237
    :pswitch_80
    const/4 v0, 0x0

    .line 2238
    const/4 v1, 0x0

    .line 2239
    nop

    .line 2279
    :goto_83
    goto :goto_86

    .line 2283
    :cond_84
    const/4 v0, -0x1

    .line 2284
    const/4 v1, -0x1

    .line 2287
    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 2288
    aput v0, v4, v5

    .line 2290
    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 5352
    const/4 v0, 0x0

    .line 5353
    .local v0, "min":I
    const/4 v1, 0x0

    .line 5355
    .local v1, "max":I
    const/4 v2, 0x0

    .line 5357
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5360
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 5363
    const/4 v5, 0x1

    if-nez p1, :cond_34

    .line 5365
    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    .line 5407
    :pswitch_11
    const/4 v0, 0x0

    .line 5408
    const/4 v1, 0x0

    goto :goto_32

    .line 5403
    :pswitch_14
    const/4 v0, 0x0

    .line 5404
    const/4 v1, 0x0

    .line 5405
    goto :goto_32

    .line 5399
    :pswitch_17
    const/4 v0, 0x0

    .line 5400
    const/4 v1, 0x0

    .line 5401
    goto :goto_32

    .line 5395
    :pswitch_1a
    const/4 v0, 0x0

    .line 5396
    const/4 v1, 0x0

    .line 5397
    goto :goto_32

    .line 5391
    :pswitch_1d
    const/4 v0, 0x0

    .line 5392
    const/4 v1, 0x0

    .line 5393
    goto :goto_32

    .line 5387
    :pswitch_20
    const/4 v0, 0x0

    .line 5388
    const/4 v1, 0x2

    .line 5389
    goto :goto_32

    .line 5383
    :pswitch_23
    const/4 v0, 0x0

    .line 5384
    const/4 v1, 0x2

    .line 5385
    goto :goto_32

    .line 5379
    :pswitch_26
    const/4 v0, 0x0

    .line 5380
    const/4 v1, 0x1

    .line 5381
    goto :goto_32

    .line 5375
    :pswitch_29
    const/4 v0, 0x0

    .line 5376
    const/4 v1, 0x1

    .line 5377
    goto :goto_32

    .line 5371
    :pswitch_2c
    const/4 v0, 0x0

    .line 5372
    const/4 v1, 0x0

    .line 5373
    goto :goto_32

    .line 5367
    :pswitch_2f
    const/4 v0, 0x0

    .line 5368
    const/4 v1, 0x0

    .line 5369
    nop

    .line 5409
    :goto_32
    goto/16 :goto_86

    .line 5413
    :cond_34
    if-ne p1, v5, :cond_5c

    .line 5415
    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    .line 5457
    :pswitch_3a
    const/4 v0, 0x0

    .line 5458
    const/4 v1, 0x0

    goto :goto_5b

    .line 5453
    :pswitch_3d
    const/4 v0, 0x0

    .line 5454
    const/4 v1, 0x0

    .line 5455
    goto :goto_5b

    .line 5449
    :pswitch_40
    const/4 v0, 0x0

    .line 5450
    const/4 v1, 0x0

    .line 5451
    goto :goto_5b

    .line 5445
    :pswitch_43
    const/4 v0, 0x0

    .line 5446
    const/4 v1, 0x0

    .line 5447
    goto :goto_5b

    .line 5441
    :pswitch_46
    const/4 v0, 0x0

    .line 5442
    const/4 v1, 0x0

    .line 5443
    goto :goto_5b

    .line 5437
    :pswitch_49
    const/4 v0, 0x0

    .line 5438
    const/4 v1, 0x0

    .line 5439
    goto :goto_5b

    .line 5433
    :pswitch_4c
    const/4 v0, 0x0

    .line 5434
    const/4 v1, 0x0

    .line 5435
    goto :goto_5b

    .line 5429
    :pswitch_4f
    const/4 v0, 0x0

    .line 5430
    const/4 v1, 0x0

    .line 5431
    goto :goto_5b

    .line 5425
    :pswitch_52
    const/4 v0, 0x0

    .line 5426
    const/4 v1, 0x0

    .line 5427
    goto :goto_5b

    .line 5421
    :pswitch_55
    const/4 v0, 0x0

    .line 5422
    const/4 v1, 0x0

    .line 5423
    goto :goto_5b

    .line 5417
    :pswitch_58
    const/4 v0, 0x0

    .line 5418
    const/4 v1, 0x0

    .line 5419
    nop

    .line 5459
    :goto_5b
    goto :goto_86

    .line 5463
    :cond_5c
    if-ne p1, v3, :cond_84

    .line 5465
    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    .line 5507
    :pswitch_62
    const/4 v0, 0x0

    .line 5508
    const/4 v1, 0x0

    goto :goto_83

    .line 5503
    :pswitch_65
    const/4 v0, 0x0

    .line 5504
    const/4 v1, 0x0

    .line 5505
    goto :goto_83

    .line 5499
    :pswitch_68
    const/4 v0, 0x0

    .line 5500
    const/4 v1, 0x0

    .line 5501
    goto :goto_83

    .line 5495
    :pswitch_6b
    const/4 v0, 0x0

    .line 5496
    const/4 v1, 0x0

    .line 5497
    goto :goto_83

    .line 5491
    :pswitch_6e
    const/4 v0, 0x0

    .line 5492
    const/4 v1, 0x0

    .line 5493
    goto :goto_83

    .line 5487
    :pswitch_71
    const/4 v0, 0x0

    .line 5488
    const/4 v1, 0x0

    .line 5489
    goto :goto_83

    .line 5483
    :pswitch_74
    const/4 v0, 0x0

    .line 5484
    const/4 v1, 0x0

    .line 5485
    goto :goto_83

    .line 5479
    :pswitch_77
    const/4 v0, 0x0

    .line 5480
    const/4 v1, 0x0

    .line 5481
    goto :goto_83

    .line 5475
    :pswitch_7a
    const/4 v0, 0x0

    .line 5476
    const/4 v1, 0x0

    .line 5477
    goto :goto_83

    .line 5471
    :pswitch_7d
    const/4 v0, 0x0

    .line 5472
    const/4 v1, 0x0

    .line 5473
    goto :goto_83

    .line 5467
    :pswitch_80
    const/4 v0, 0x0

    .line 5468
    const/4 v1, 0x0

    .line 5469
    nop

    .line 5509
    :goto_83
    goto :goto_86

    .line 5513
    :cond_84
    const/4 v0, -0x1

    .line 5514
    const/4 v1, -0x1

    .line 5517
    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 5518
    aput v0, v4, v5

    .line 5520
    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YG_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 1950
    const/4 v0, 0x0

    .line 1951
    .local v0, "min":I
    const/4 v1, 0x0

    .line 1953
    .local v1, "max":I
    const/4 v2, 0x0

    .line 1955
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 1958
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 1961
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 1963
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 2005
    :pswitch_11
    const/16 v0, 0xff

    .line 2006
    const/16 v1, 0xff

    goto :goto_48

    .line 2001
    :pswitch_16
    const/16 v0, 0xff

    .line 2002
    const/16 v1, 0xff

    .line 2003
    goto :goto_48

    .line 1997
    :pswitch_1b
    const/16 v0, 0xff

    .line 1998
    const/16 v1, 0xff

    .line 1999
    goto :goto_48

    .line 1993
    :pswitch_20
    const/16 v0, 0xff

    .line 1994
    const/16 v1, 0xff

    .line 1995
    goto :goto_48

    .line 1989
    :pswitch_25
    const/16 v0, 0xff

    .line 1990
    const/16 v1, 0xff

    .line 1991
    goto :goto_48

    .line 1985
    :pswitch_2a
    const/16 v0, 0xff

    .line 1986
    const/16 v1, 0xff

    .line 1987
    goto :goto_48

    .line 1981
    :pswitch_2f
    const/16 v0, 0xff

    .line 1982
    const/16 v1, 0xff

    .line 1983
    goto :goto_48

    .line 1977
    :pswitch_34
    const/16 v0, 0xff

    .line 1978
    const/16 v1, 0xff

    .line 1979
    goto :goto_48

    .line 1973
    :pswitch_39
    const/16 v0, 0xff

    .line 1974
    const/16 v1, 0xff

    .line 1975
    goto :goto_48

    .line 1969
    :pswitch_3e
    const/16 v0, 0xcc

    .line 1970
    const/16 v1, 0xcf

    .line 1971
    goto :goto_48

    .line 1965
    :pswitch_43
    const/16 v0, 0xff

    .line 1966
    const/16 v1, 0xff

    .line 1967
    nop

    .line 2007
    :goto_48
    goto/16 :goto_c8

    .line 2011
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 2013
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 2055
    :pswitch_50
    const/16 v0, 0xfe

    .line 2056
    const/16 v1, 0xfe

    goto :goto_87

    .line 2051
    :pswitch_55
    const/16 v0, 0xfe

    .line 2052
    const/16 v1, 0xfe

    .line 2053
    goto :goto_87

    .line 2047
    :pswitch_5a
    const/16 v0, 0xfe

    .line 2048
    const/16 v1, 0xfe

    .line 2049
    goto :goto_87

    .line 2043
    :pswitch_5f
    const/16 v0, 0xfe

    .line 2044
    const/16 v1, 0xfe

    .line 2045
    goto :goto_87

    .line 2039
    :pswitch_64
    const/16 v0, 0xfe

    .line 2040
    const/16 v1, 0xfe

    .line 2041
    goto :goto_87

    .line 2035
    :pswitch_69
    const/16 v0, 0xfe

    .line 2036
    const/16 v1, 0xfe

    .line 2037
    goto :goto_87

    .line 2031
    :pswitch_6e
    const/16 v0, 0xfe

    .line 2032
    const/16 v1, 0xfe

    .line 2033
    goto :goto_87

    .line 2027
    :pswitch_73
    const/16 v0, 0xfe

    .line 2028
    const/16 v1, 0xfe

    .line 2029
    goto :goto_87

    .line 2023
    :pswitch_78
    const/16 v0, 0xfe

    .line 2024
    const/16 v1, 0xfe

    .line 2025
    goto :goto_87

    .line 2019
    :pswitch_7d
    const/16 v0, 0xfe

    .line 2020
    const/16 v1, 0xfe

    .line 2021
    goto :goto_87

    .line 2015
    :pswitch_82
    const/16 v0, 0xff

    .line 2016
    const/16 v1, 0xff

    .line 2017
    nop

    .line 2057
    :goto_87
    goto :goto_c8

    .line 2061
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 2063
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 2105
    :pswitch_8e
    const/16 v0, 0xff

    .line 2106
    const/16 v1, 0xff

    goto :goto_c5

    .line 2101
    :pswitch_93
    const/16 v0, 0xff

    .line 2102
    const/16 v1, 0xff

    .line 2103
    goto :goto_c5

    .line 2097
    :pswitch_98
    const/16 v0, 0xff

    .line 2098
    const/16 v1, 0xff

    .line 2099
    goto :goto_c5

    .line 2093
    :pswitch_9d
    const/16 v0, 0xff

    .line 2094
    const/16 v1, 0xff

    .line 2095
    goto :goto_c5

    .line 2089
    :pswitch_a2
    const/16 v0, 0xff

    .line 2090
    const/16 v1, 0xff

    .line 2091
    goto :goto_c5

    .line 2085
    :pswitch_a7
    const/16 v0, 0xff

    .line 2086
    const/16 v1, 0xff

    .line 2087
    goto :goto_c5

    .line 2081
    :pswitch_ac
    const/16 v0, 0xff

    .line 2082
    const/16 v1, 0xff

    .line 2083
    goto :goto_c5

    .line 2077
    :pswitch_b1
    const/16 v0, 0xff

    .line 2078
    const/16 v1, 0xff

    .line 2079
    goto :goto_c5

    .line 2073
    :pswitch_b6
    const/16 v0, 0xff

    .line 2074
    const/16 v1, 0xff

    .line 2075
    goto :goto_c5

    .line 2069
    :pswitch_bb
    const/16 v0, 0xff

    .line 2070
    const/16 v1, 0xff

    .line 2071
    goto :goto_c5

    .line 2065
    :pswitch_c0
    const/16 v0, 0xff

    .line 2066
    const/16 v1, 0xff

    .line 2067
    nop

    .line 2107
    :goto_c5
    goto :goto_c8

    .line 2111
    :cond_c6
    const/4 v0, -0x1

    .line 2112
    const/4 v1, -0x1

    .line 2115
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 2116
    aput v0, v4, v5

    .line 2118
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 5180
    const/4 v0, 0x0

    .line 5181
    .local v0, "min":I
    const/4 v1, 0x0

    .line 5183
    .local v1, "max":I
    const/4 v2, 0x0

    .line 5185
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5188
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 5191
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 5193
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 5235
    :pswitch_11
    const/16 v0, 0xff

    .line 5236
    const/16 v1, 0xff

    goto :goto_48

    .line 5231
    :pswitch_16
    const/16 v0, 0xff

    .line 5232
    const/16 v1, 0xff

    .line 5233
    goto :goto_48

    .line 5227
    :pswitch_1b
    const/16 v0, 0xff

    .line 5228
    const/16 v1, 0xff

    .line 5229
    goto :goto_48

    .line 5223
    :pswitch_20
    const/16 v0, 0xff

    .line 5224
    const/16 v1, 0xff

    .line 5225
    goto :goto_48

    .line 5219
    :pswitch_25
    const/16 v0, 0xff

    .line 5220
    const/16 v1, 0xff

    .line 5221
    goto :goto_48

    .line 5215
    :pswitch_2a
    const/16 v0, 0xcc

    .line 5216
    const/16 v1, 0xd8

    .line 5217
    goto :goto_48

    .line 5211
    :pswitch_2f
    const/16 v0, 0xcc

    .line 5212
    const/16 v1, 0xd5

    .line 5213
    goto :goto_48

    .line 5207
    :pswitch_34
    const/16 v0, 0xcc

    .line 5208
    const/16 v1, 0xd3

    .line 5209
    goto :goto_48

    .line 5203
    :pswitch_39
    const/16 v0, 0xcc

    .line 5204
    const/16 v1, 0xd1

    .line 5205
    goto :goto_48

    .line 5199
    :pswitch_3e
    const/16 v0, 0xcc

    .line 5200
    const/16 v1, 0xcf

    .line 5201
    goto :goto_48

    .line 5195
    :pswitch_43
    const/16 v0, 0xff

    .line 5196
    const/16 v1, 0xff

    .line 5197
    nop

    .line 5237
    :goto_48
    goto/16 :goto_c8

    .line 5241
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 5243
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 5285
    :pswitch_50
    const/16 v0, 0xfe

    .line 5286
    const/16 v1, 0xfe

    goto :goto_87

    .line 5281
    :pswitch_55
    const/16 v0, 0xfe

    .line 5282
    const/16 v1, 0xfe

    .line 5283
    goto :goto_87

    .line 5277
    :pswitch_5a
    const/16 v0, 0xfe

    .line 5278
    const/16 v1, 0xfe

    .line 5279
    goto :goto_87

    .line 5273
    :pswitch_5f
    const/16 v0, 0xfe

    .line 5274
    const/16 v1, 0xfe

    .line 5275
    goto :goto_87

    .line 5269
    :pswitch_64
    const/16 v0, 0xfe

    .line 5270
    const/16 v1, 0xfe

    .line 5271
    goto :goto_87

    .line 5265
    :pswitch_69
    const/16 v0, 0xcc

    .line 5266
    const/16 v1, 0xd8

    .line 5267
    goto :goto_87

    .line 5261
    :pswitch_6e
    const/16 v0, 0xcc

    .line 5262
    const/16 v1, 0xd5

    .line 5263
    goto :goto_87

    .line 5257
    :pswitch_73
    const/16 v0, 0xcc

    .line 5258
    const/16 v1, 0xd3

    .line 5259
    goto :goto_87

    .line 5253
    :pswitch_78
    const/16 v0, 0xcc

    .line 5254
    const/16 v1, 0xd0

    .line 5255
    goto :goto_87

    .line 5249
    :pswitch_7d
    const/16 v0, 0xcc

    .line 5250
    const/16 v1, 0xcf

    .line 5251
    goto :goto_87

    .line 5245
    :pswitch_82
    const/16 v0, 0xff

    .line 5246
    const/16 v1, 0xff

    .line 5247
    nop

    .line 5287
    :goto_87
    goto :goto_c8

    .line 5291
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 5293
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 5335
    :pswitch_8e
    const/16 v0, 0xff

    .line 5336
    const/16 v1, 0xff

    goto :goto_c5

    .line 5331
    :pswitch_93
    const/16 v0, 0xff

    .line 5332
    const/16 v1, 0xff

    .line 5333
    goto :goto_c5

    .line 5327
    :pswitch_98
    const/16 v0, 0xff

    .line 5328
    const/16 v1, 0xff

    .line 5329
    goto :goto_c5

    .line 5323
    :pswitch_9d
    const/16 v0, 0xff

    .line 5324
    const/16 v1, 0xff

    .line 5325
    goto :goto_c5

    .line 5319
    :pswitch_a2
    const/16 v0, 0xff

    .line 5320
    const/16 v1, 0xff

    .line 5321
    goto :goto_c5

    .line 5315
    :pswitch_a7
    const/16 v0, 0xcc

    .line 5316
    const/16 v1, 0xd4

    .line 5317
    goto :goto_c5

    .line 5311
    :pswitch_ac
    const/16 v0, 0xcc

    .line 5312
    const/16 v1, 0xd3

    .line 5313
    goto :goto_c5

    .line 5307
    :pswitch_b1
    const/16 v0, 0xcc

    .line 5308
    const/16 v1, 0xd2

    .line 5309
    goto :goto_c5

    .line 5303
    :pswitch_b6
    const/16 v0, 0xcc

    .line 5304
    const/16 v1, 0xd0

    .line 5305
    goto :goto_c5

    .line 5299
    :pswitch_bb
    const/16 v0, 0xcc

    .line 5300
    const/16 v1, 0xcf

    .line 5301
    goto :goto_c5

    .line 5295
    :pswitch_c0
    const/16 v0, 0xff

    .line 5296
    const/16 v1, 0xff

    .line 5297
    nop

    .line 5337
    :goto_c5
    goto :goto_c8

    .line 5341
    :cond_c6
    const/4 v0, -0x1

    .line 5342
    const/4 v1, -0x1

    .line 5345
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 5346
    aput v0, v4, v5

    .line 5348
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YR_DMC(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 1778
    const/4 v0, 0x0

    .line 1779
    .local v0, "min":I
    const/4 v1, 0x0

    .line 1781
    .local v1, "max":I
    const/4 v2, 0x0

    .line 1783
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 1786
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 1789
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 1791
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 1833
    :pswitch_11
    const/16 v0, 0xfe

    .line 1834
    const/16 v1, 0xfe

    goto :goto_48

    .line 1829
    :pswitch_16
    const/16 v0, 0xfe

    .line 1830
    const/16 v1, 0xfe

    .line 1831
    goto :goto_48

    .line 1825
    :pswitch_1b
    const/16 v0, 0xfe

    .line 1826
    const/16 v1, 0xfe

    .line 1827
    goto :goto_48

    .line 1821
    :pswitch_20
    const/16 v0, 0xfe

    .line 1822
    const/16 v1, 0xfe

    .line 1823
    goto :goto_48

    .line 1817
    :pswitch_25
    const/16 v0, 0xfe

    .line 1818
    const/16 v1, 0xfe

    .line 1819
    goto :goto_48

    .line 1813
    :pswitch_2a
    const/16 v0, 0xfe

    .line 1814
    const/16 v1, 0xfe

    .line 1815
    goto :goto_48

    .line 1809
    :pswitch_2f
    const/16 v0, 0xfe

    .line 1810
    const/16 v1, 0xfe

    .line 1811
    goto :goto_48

    .line 1805
    :pswitch_34
    const/16 v0, 0xfe

    .line 1806
    const/16 v1, 0xfe

    .line 1807
    goto :goto_48

    .line 1801
    :pswitch_39
    const/16 v0, 0xfe

    .line 1802
    const/16 v1, 0xfe

    .line 1803
    goto :goto_48

    .line 1797
    :pswitch_3e
    const/16 v0, 0xfe

    .line 1798
    const/16 v1, 0xfe

    .line 1799
    goto :goto_48

    .line 1793
    :pswitch_43
    const/16 v0, 0xff

    .line 1794
    const/16 v1, 0xff

    .line 1795
    nop

    .line 1835
    :goto_48
    goto/16 :goto_c8

    .line 1839
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 1841
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 1883
    :pswitch_50
    const/16 v0, 0xff

    .line 1884
    const/16 v1, 0xff

    goto :goto_87

    .line 1879
    :pswitch_55
    const/16 v0, 0xff

    .line 1880
    const/16 v1, 0xff

    .line 1881
    goto :goto_87

    .line 1875
    :pswitch_5a
    const/16 v0, 0xff

    .line 1876
    const/16 v1, 0xff

    .line 1877
    goto :goto_87

    .line 1871
    :pswitch_5f
    const/16 v0, 0xff

    .line 1872
    const/16 v1, 0xff

    .line 1873
    goto :goto_87

    .line 1867
    :pswitch_64
    const/16 v0, 0xff

    .line 1868
    const/16 v1, 0xff

    .line 1869
    goto :goto_87

    .line 1863
    :pswitch_69
    const/16 v0, 0xff

    .line 1864
    const/16 v1, 0xff

    .line 1865
    goto :goto_87

    .line 1859
    :pswitch_6e
    const/16 v0, 0xff

    .line 1860
    const/16 v1, 0xff

    .line 1861
    goto :goto_87

    .line 1855
    :pswitch_73
    const/16 v0, 0xff

    .line 1856
    const/16 v1, 0xff

    .line 1857
    goto :goto_87

    .line 1851
    :pswitch_78
    const/16 v0, 0xff

    .line 1852
    const/16 v1, 0xff

    .line 1853
    goto :goto_87

    .line 1847
    :pswitch_7d
    const/16 v0, 0xff

    .line 1848
    const/16 v1, 0xff

    .line 1849
    goto :goto_87

    .line 1843
    :pswitch_82
    const/16 v0, 0xff

    .line 1844
    const/16 v1, 0xff

    .line 1845
    nop

    .line 1885
    :goto_87
    goto :goto_c8

    .line 1889
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 1891
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 1933
    :pswitch_8e
    const/16 v0, 0xff

    .line 1934
    const/16 v1, 0xff

    goto :goto_c5

    .line 1929
    :pswitch_93
    const/16 v0, 0xff

    .line 1930
    const/16 v1, 0xff

    .line 1931
    goto :goto_c5

    .line 1925
    :pswitch_98
    const/16 v0, 0xff

    .line 1926
    const/16 v1, 0xff

    .line 1927
    goto :goto_c5

    .line 1921
    :pswitch_9d
    const/16 v0, 0xff

    .line 1922
    const/16 v1, 0xff

    .line 1923
    goto :goto_c5

    .line 1917
    :pswitch_a2
    const/16 v0, 0xff

    .line 1918
    const/16 v1, 0xff

    .line 1919
    goto :goto_c5

    .line 1913
    :pswitch_a7
    const/16 v0, 0xff

    .line 1914
    const/16 v1, 0xff

    .line 1915
    goto :goto_c5

    .line 1909
    :pswitch_ac
    const/16 v0, 0xff

    .line 1910
    const/16 v1, 0xff

    .line 1911
    goto :goto_c5

    .line 1905
    :pswitch_b1
    const/16 v0, 0xff

    .line 1906
    const/16 v1, 0xff

    .line 1907
    goto :goto_c5

    .line 1901
    :pswitch_b6
    const/16 v0, 0xff

    .line 1902
    const/16 v1, 0xff

    .line 1903
    goto :goto_c5

    .line 1897
    :pswitch_bb
    const/16 v0, 0xff

    .line 1898
    const/16 v1, 0xff

    .line 1899
    goto :goto_c5

    .line 1893
    :pswitch_c0
    const/16 v0, 0xff

    .line 1894
    const/16 v1, 0xff

    .line 1895
    nop

    .line 1935
    :goto_c5
    goto :goto_c8

    .line 1939
    :cond_c6
    const/4 v0, -0x1

    .line 1940
    const/4 v1, -0x1

    .line 1943
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 1944
    aput v0, v4, v5

    .line 1946
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I
    .registers 12
    .param p1, "CVDType"    # I
    .param p2, "severity"    # D
    .param p4, "userParameter"    # D

    .line 5008
    const/4 v0, 0x0

    .line 5009
    .local v0, "min":I
    const/4 v1, 0x0

    .line 5011
    .local v1, "max":I
    const/4 v2, 0x0

    .line 5013
    .local v2, "integerSeverity":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5016
    .local v4, "maxMin":[I
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    .line 5019
    const/4 v5, 0x1

    if-nez p1, :cond_4a

    .line 5021
    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    .line 5063
    :pswitch_11
    const/16 v0, 0xfe

    .line 5064
    const/16 v1, 0xfe

    goto :goto_48

    .line 5059
    :pswitch_16
    const/16 v0, 0xfe

    .line 5060
    const/16 v1, 0xfe

    .line 5061
    goto :goto_48

    .line 5055
    :pswitch_1b
    const/16 v0, 0xfe

    .line 5056
    const/16 v1, 0xfe

    .line 5057
    goto :goto_48

    .line 5051
    :pswitch_20
    const/16 v0, 0xfe

    .line 5052
    const/16 v1, 0xfe

    .line 5053
    goto :goto_48

    .line 5047
    :pswitch_25
    const/16 v0, 0xfe

    .line 5048
    const/16 v1, 0xfe

    .line 5049
    goto :goto_48

    .line 5043
    :pswitch_2a
    const/16 v0, 0xcc

    .line 5044
    const/16 v1, 0xa4

    .line 5045
    goto :goto_48

    .line 5039
    :pswitch_2f
    const/16 v0, 0xcc

    .line 5040
    const/16 v1, 0xad

    .line 5041
    goto :goto_48

    .line 5035
    :pswitch_34
    const/16 v0, 0xcc

    .line 5036
    const/16 v1, 0xb5

    .line 5037
    goto :goto_48

    .line 5031
    :pswitch_39
    const/16 v0, 0xcc

    .line 5032
    const/16 v1, 0xbc

    .line 5033
    goto :goto_48

    .line 5027
    :pswitch_3e
    const/16 v0, 0xcc

    .line 5028
    const/16 v1, 0xc2

    .line 5029
    goto :goto_48

    .line 5023
    :pswitch_43
    const/16 v0, 0xff

    .line 5024
    const/16 v1, 0xff

    .line 5025
    nop

    .line 5065
    :goto_48
    goto/16 :goto_c8

    .line 5069
    :cond_4a
    if-ne p1, v5, :cond_88

    .line 5071
    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    .line 5113
    :pswitch_50
    const/16 v0, 0xff

    .line 5114
    const/16 v1, 0xff

    goto :goto_87

    .line 5109
    :pswitch_55
    const/16 v0, 0xff

    .line 5110
    const/16 v1, 0xff

    .line 5111
    goto :goto_87

    .line 5105
    :pswitch_5a
    const/16 v0, 0xff

    .line 5106
    const/16 v1, 0xff

    .line 5107
    goto :goto_87

    .line 5101
    :pswitch_5f
    const/16 v0, 0xff

    .line 5102
    const/16 v1, 0xff

    .line 5103
    goto :goto_87

    .line 5097
    :pswitch_64
    const/16 v0, 0xff

    .line 5098
    const/16 v1, 0xff

    .line 5099
    goto :goto_87

    .line 5093
    :pswitch_69
    const/16 v0, 0xcc

    .line 5094
    const/16 v1, 0xa2

    .line 5095
    goto :goto_87

    .line 5089
    :pswitch_6e
    const/16 v0, 0xcc

    .line 5090
    const/16 v1, 0xab

    .line 5091
    goto :goto_87

    .line 5085
    :pswitch_73
    const/16 v0, 0xcc

    .line 5086
    const/16 v1, 0xb3

    .line 5087
    goto :goto_87

    .line 5081
    :pswitch_78
    const/16 v0, 0xcc

    .line 5082
    const/16 v1, 0xba

    .line 5083
    goto :goto_87

    .line 5077
    :pswitch_7d
    const/16 v0, 0xcc

    .line 5078
    const/16 v1, 0xc0

    .line 5079
    goto :goto_87

    .line 5073
    :pswitch_82
    const/16 v0, 0xff

    .line 5074
    const/16 v1, 0xff

    .line 5075
    nop

    .line 5115
    :goto_87
    goto :goto_c8

    .line 5119
    :cond_88
    if-ne p1, v3, :cond_c6

    .line 5121
    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    .line 5163
    :pswitch_8e
    const/16 v0, 0xff

    .line 5164
    const/16 v1, 0xff

    goto :goto_c5

    .line 5159
    :pswitch_93
    const/16 v0, 0xff

    .line 5160
    const/16 v1, 0xff

    .line 5161
    goto :goto_c5

    .line 5155
    :pswitch_98
    const/16 v0, 0xff

    .line 5156
    const/16 v1, 0xff

    .line 5157
    goto :goto_c5

    .line 5151
    :pswitch_9d
    const/16 v0, 0xff

    .line 5152
    const/16 v1, 0xff

    .line 5153
    goto :goto_c5

    .line 5147
    :pswitch_a2
    const/16 v0, 0xff

    .line 5148
    const/16 v1, 0xff

    .line 5149
    goto :goto_c5

    .line 5143
    :pswitch_a7
    const/16 v0, 0xcc

    .line 5144
    const/16 v1, 0xc1

    .line 5145
    goto :goto_c5

    .line 5139
    :pswitch_ac
    const/16 v0, 0xcc

    .line 5140
    const/16 v1, 0xc2

    .line 5141
    goto :goto_c5

    .line 5135
    :pswitch_b1
    const/16 v0, 0xcc

    .line 5136
    const/16 v1, 0xc3

    .line 5137
    goto :goto_c5

    .line 5131
    :pswitch_b6
    const/16 v0, 0xcc

    .line 5132
    const/16 v1, 0xc5

    .line 5133
    goto :goto_c5

    .line 5127
    :pswitch_bb
    const/16 v0, 0xcc

    .line 5128
    const/16 v1, 0xc7

    .line 5129
    goto :goto_c5

    .line 5123
    :pswitch_c0
    const/16 v0, 0xff

    .line 5124
    const/16 v1, 0xff

    .line 5125
    nop

    .line 5165
    :goto_c5
    goto :goto_c8

    .line 5169
    :cond_c6
    const/4 v0, -0x1

    .line 5170
    const/4 v1, -0x1

    .line 5173
    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    .line 5174
    aput v0, v4, v5

    .line 5176
    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private roundHalfUp(D)I
    .registers 6
    .param p1, "value"    # D

    .line 6586
    const/4 v0, 0x0

    .line 6588
    .local v0, "roundedValue":I
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v1

    .line 6589
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 6591
    return v0
.end method


# virtual methods
.method public getColorTransferValue_DMC(IIIDD)I
    .registers 25
    .param p1, "firstColor"    # I
    .param p2, "secondColor"    # I
    .param p3, "CVDType"    # I
    .param p4, "severity"    # D
    .param p6, "userParameter"    # D

    .line 110
    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 113
    .local v2, "value":I
    const/4 v3, 0x0

    .line 114
    .local v3, "maxMin":[I
    const/4 v4, 0x0

    .line 115
    .local v4, "integerUserParamter":I
    const/4 v5, 0x0

    .line 119
    .local v5, "difference":I
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v0, v10, :cond_3f

    .line 120
    if-ne v1, v10, :cond_1f

    .line 121
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 123
    :cond_1f
    if-ne v1, v9, :cond_2f

    .line 124
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 126
    :cond_2f
    if-ne v1, v8, :cond_13c

    .line 127
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 131
    :cond_3f
    const/4 v11, 0x2

    if-ne v0, v11, :cond_72

    .line 132
    if-ne v1, v10, :cond_52

    .line 133
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 135
    :cond_52
    if-ne v1, v9, :cond_62

    .line 136
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 138
    :cond_62
    if-ne v1, v8, :cond_13c

    .line 139
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 143
    :cond_72
    if-ne v0, v9, :cond_a4

    .line 144
    if-ne v1, v10, :cond_84

    .line 145
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 147
    :cond_84
    if-ne v1, v9, :cond_94

    .line 148
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 150
    :cond_94
    if-ne v1, v8, :cond_13c

    .line 151
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 155
    :cond_a4
    const/4 v12, 0x4

    if-ne v0, v12, :cond_d7

    .line 156
    if-ne v1, v10, :cond_b7

    .line 157
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 159
    :cond_b7
    if-ne v1, v9, :cond_c7

    .line 160
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 162
    :cond_c7
    if-ne v1, v8, :cond_13c

    .line 163
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 167
    :cond_d7
    if-ne v0, v8, :cond_106

    .line 168
    if-ne v1, v10, :cond_e8

    .line 169
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_DMC(IDD)[I

    move-result-object v3

    goto :goto_13c

    .line 171
    :cond_e8
    if-ne v1, v9, :cond_f7

    .line 172
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_DMC(IDD)[I

    move-result-object v3

    goto :goto_13c

    .line 174
    :cond_f7
    if-ne v1, v8, :cond_13c

    .line 175
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_DMC(IDD)[I

    move-result-object v3

    goto :goto_13c

    .line 179
    :cond_106
    const/4 v12, 0x6

    if-ne v0, v12, :cond_136

    .line 180
    if-ne v1, v10, :cond_118

    .line 181
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_DMC(IDD)[I

    move-result-object v3

    goto :goto_13c

    .line 183
    :cond_118
    if-ne v1, v9, :cond_127

    .line 184
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_DMC(IDD)[I

    move-result-object v3

    goto :goto_13c

    .line 186
    :cond_127
    if-ne v1, v8, :cond_13c

    .line 187
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_DMC(IDD)[I

    move-result-object v3

    goto :goto_13c

    .line 192
    :cond_136
    new-array v3, v11, [I

    .line 193
    aput v7, v3, v6

    .line 194
    aput v7, v3, v10

    .line 198
    :cond_13c
    :goto_13c
    if-eqz v3, :cond_163

    aget v8, v3, v6

    if-ne v8, v7, :cond_149

    aget v8, v3, v10

    if-ne v8, v7, :cond_149

    move-object/from16 v8, p0

    goto :goto_165

    .line 203
    :cond_149
    aget v6, v3, v6

    aget v7, v3, v10

    sub-int/2addr v6, v7

    .line 206
    .end local v5    # "difference":I
    .local v6, "difference":I
    move-object/from16 v8, p0

    move-wide/from16 v11, p6

    invoke-direct {v8, v11, v12}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v4

    .line 210
    int-to-double v13, v6

    int-to-double v10, v4

    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    div-double/2addr v10, v15

    mul-double/2addr v13, v10

    const/4 v5, 0x1

    aget v5, v3, v5

    int-to-double v9, v5

    add-double/2addr v13, v9

    double-to-int v2, v13

    .line 213
    return v2

    .line 198
    .end local v6    # "difference":I
    .restart local v5    # "difference":I
    :cond_163
    move-object/from16 v8, p0

    .line 199
    :goto_165
    return v7
.end method

.method public getColorTransferValue_Hybrid(IIIDD)I
    .registers 25
    .param p1, "firstColor"    # I
    .param p2, "secondColor"    # I
    .param p3, "CVDType"    # I
    .param p4, "severity"    # D
    .param p6, "userParameter"    # D

    .line 3340
    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 3343
    .local v2, "value":I
    const/4 v3, 0x0

    .line 3344
    .local v3, "maxMin":[I
    const/4 v4, 0x0

    .line 3345
    .local v4, "integerUserParamter":I
    const/4 v5, 0x0

    .line 3349
    .local v5, "difference":I
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v0, v10, :cond_3f

    .line 3350
    if-ne v1, v10, :cond_1f

    .line 3351
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 3353
    :cond_1f
    if-ne v1, v9, :cond_2f

    .line 3354
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 3356
    :cond_2f
    if-ne v1, v8, :cond_13c

    .line 3357
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 3361
    :cond_3f
    const/4 v11, 0x2

    if-ne v0, v11, :cond_72

    .line 3362
    if-ne v1, v10, :cond_52

    .line 3363
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 3365
    :cond_52
    if-ne v1, v9, :cond_62

    .line 3366
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 3368
    :cond_62
    if-ne v1, v8, :cond_13c

    .line 3369
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 3373
    :cond_72
    if-ne v0, v9, :cond_a4

    .line 3374
    if-ne v1, v10, :cond_84

    .line 3375
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 3377
    :cond_84
    if-ne v1, v9, :cond_94

    .line 3378
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 3380
    :cond_94
    if-ne v1, v8, :cond_13c

    .line 3381
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 3385
    :cond_a4
    const/4 v12, 0x4

    if-ne v0, v12, :cond_d7

    .line 3386
    if-ne v1, v10, :cond_b7

    .line 3387
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 3389
    :cond_b7
    if-ne v1, v9, :cond_c7

    .line 3390
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 3392
    :cond_c7
    if-ne v1, v8, :cond_13c

    .line 3393
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    .line 3397
    :cond_d7
    if-ne v0, v8, :cond_106

    .line 3398
    if-ne v1, v10, :cond_e8

    .line 3399
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I

    move-result-object v3

    goto :goto_13c

    .line 3401
    :cond_e8
    if-ne v1, v9, :cond_f7

    .line 3402
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I

    move-result-object v3

    goto :goto_13c

    .line 3404
    :cond_f7
    if-ne v1, v8, :cond_13c

    .line 3405
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I

    move-result-object v3

    goto :goto_13c

    .line 3409
    :cond_106
    const/4 v12, 0x6

    if-ne v0, v12, :cond_136

    .line 3410
    if-ne v1, v10, :cond_118

    .line 3411
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I

    move-result-object v3

    goto :goto_13c

    .line 3413
    :cond_118
    if-ne v1, v9, :cond_127

    .line 3414
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I

    move-result-object v3

    goto :goto_13c

    .line 3416
    :cond_127
    if-ne v1, v8, :cond_13c

    .line 3417
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I

    move-result-object v3

    goto :goto_13c

    .line 3422
    :cond_136
    new-array v3, v11, [I

    .line 3423
    aput v7, v3, v6

    .line 3424
    aput v7, v3, v10

    .line 3428
    :cond_13c
    :goto_13c
    if-eqz v3, :cond_163

    aget v8, v3, v6

    if-ne v8, v7, :cond_149

    aget v8, v3, v10

    if-ne v8, v7, :cond_149

    move-object/from16 v8, p0

    goto :goto_165

    .line 3433
    :cond_149
    aget v6, v3, v6

    aget v7, v3, v10

    sub-int/2addr v6, v7

    .line 3436
    .end local v5    # "difference":I
    .local v6, "difference":I
    move-object/from16 v8, p0

    move-wide/from16 v11, p6

    invoke-direct {v8, v11, v12}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v4

    .line 3440
    int-to-double v13, v6

    int-to-double v10, v4

    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    div-double/2addr v10, v15

    mul-double/2addr v13, v10

    const/4 v5, 0x1

    aget v5, v3, v5

    int-to-double v9, v5

    add-double/2addr v13, v9

    double-to-int v2, v13

    .line 3443
    return v2

    .line 3428
    .end local v6    # "difference":I
    .restart local v5    # "difference":I
    :cond_163
    move-object/from16 v8, p0

    .line 3429
    :goto_165
    return v7
.end method

.method public getPredefinedValueForEachType(II)[D
    .registers 10
    .param p1, "CVDType"    # I
    .param p2, "intensity"    # I

    .line 6557
    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 6559
    .local v1, "values":[D
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_29

    if-eq v2, v4, :cond_1c

    if-eq v2, v0, :cond_f

    .line 6573
    const/4 v0, 0x0

    return-object v0

    .line 6569
    :cond_f
    sget-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    aget-wide v5, v0, p2

    aput-wide v5, v1, v3

    .line 6570
    sget-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    aget-wide v2, v0, p2

    aput-wide v2, v1, v4

    .line 6571
    goto :goto_36

    .line 6565
    :cond_1c
    sget-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    aget-wide v5, v0, p2

    aput-wide v5, v1, v3

    .line 6566
    sget-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    aget-wide v2, v0, p2

    aput-wide v2, v1, v4

    .line 6567
    goto :goto_36

    .line 6561
    :cond_29
    sget-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    aget-wide v5, v0, p2

    aput-wide v5, v1, v3

    .line 6562
    sget-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    aget-wide v2, v0, p2

    aput-wide v2, v1, v4

    .line 6563
    nop

    .line 6575
    :goto_36
    return-object v1
.end method
