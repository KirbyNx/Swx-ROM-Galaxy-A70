.class final Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;
.super Landroid/os/Handler;
.source "KnoxCaptureInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KnoxCaptureInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScanEventHandler"
.end annotation


# instance fields
.field private activeScanInput:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/KnoxCaptureInputFilter;

.field private unicodeCodepoint:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 146
    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    .line 147
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;Lcom/android/server/KnoxCaptureInputFilter$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/KnoxCaptureInputFilter;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/server/KnoxCaptureInputFilter$1;

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;-><init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;)V

    return-void
.end method

.method private convertNumpadToString(Landroid/view/KeyEvent;)Ljava/lang/String;
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 274
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 285
    const-string v0, "\u0000"

    return-object v0

    .line 284
    :pswitch_a
    const-string v0, "9"

    return-object v0

    .line 283
    :pswitch_d
    const-string v0, "8"

    return-object v0

    .line 282
    :pswitch_10
    const-string v0, "7"

    return-object v0

    .line 281
    :pswitch_13
    const-string v0, "6"

    return-object v0

    .line 280
    :pswitch_16
    const-string v0, "5"

    return-object v0

    .line 279
    :pswitch_19
    const-string v0, "4"

    return-object v0

    .line 278
    :pswitch_1c
    const-string v0, "3"

    return-object v0

    .line 277
    :pswitch_1f
    const-string v0, "2"

    return-object v0

    .line 276
    :pswitch_22
    const-string v0, "1"

    return-object v0

    .line 275
    :pswitch_25
    const-string v0, "0"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x90
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private getAsciiControlChar(Landroid/view/KeyEvent;)[B
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 291
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_185

    const/16 v4, 0x45

    if-eq v0, v4, :cond_198

    packed-switch v0, :pswitch_data_1b0

    packed-switch v0, :pswitch_data_1e8

    goto/16 :goto_1ab

    .line 292
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_21

    new-array v0, v3, [B

    aput-byte v3, v0, v2

    return-object v0

    .line 293
    :cond_21
    :pswitch_21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-array v0, v3, [B

    const/4 v1, 0x2

    aput-byte v1, v0, v2

    return-object v0

    .line 294
    :cond_2d
    :pswitch_2d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_39

    new-array v0, v3, [B

    const/4 v1, 0x3

    aput-byte v1, v0, v2

    return-object v0

    .line 295
    :cond_39
    :pswitch_39
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_45

    new-array v0, v3, [B

    const/4 v1, 0x4

    aput-byte v1, v0, v2

    return-object v0

    .line 296
    :cond_45
    :pswitch_45
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_51

    new-array v0, v3, [B

    const/4 v1, 0x5

    aput-byte v1, v0, v2

    return-object v0

    .line 297
    :cond_51
    :pswitch_51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_5d

    new-array v0, v3, [B

    const/4 v1, 0x6

    aput-byte v1, v0, v2

    return-object v0

    .line 298
    :cond_5d
    :pswitch_5d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_69

    new-array v0, v3, [B

    const/4 v1, 0x7

    aput-byte v1, v0, v2

    return-object v0

    .line 299
    :cond_69
    :pswitch_69
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_76

    new-array v0, v3, [B

    const/16 v1, 0x8

    aput-byte v1, v0, v2

    return-object v0

    .line 300
    :cond_76
    :pswitch_76
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_83

    new-array v0, v3, [B

    const/16 v1, 0x9

    aput-byte v1, v0, v2

    return-object v0

    .line 301
    :cond_83
    :pswitch_83
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_90

    new-array v0, v3, [B

    const/16 v1, 0xa

    aput-byte v1, v0, v2

    return-object v0

    .line 302
    :cond_90
    :pswitch_90
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_9d

    new-array v0, v3, [B

    const/16 v1, 0xb

    aput-byte v1, v0, v2

    return-object v0

    .line 303
    :cond_9d
    :pswitch_9d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_aa

    new-array v0, v3, [B

    const/16 v1, 0xc

    aput-byte v1, v0, v2

    return-object v0

    .line 304
    :cond_aa
    :pswitch_aa
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_b5

    new-array v0, v3, [B

    aput-byte v1, v0, v2

    return-object v0

    .line 305
    :cond_b5
    :pswitch_b5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_c2

    new-array v0, v3, [B

    const/16 v1, 0xe

    aput-byte v1, v0, v2

    return-object v0

    .line 306
    :cond_c2
    :pswitch_c2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_cf

    new-array v0, v3, [B

    const/16 v1, 0xf

    aput-byte v1, v0, v2

    return-object v0

    .line 307
    :cond_cf
    :pswitch_cf
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_dc

    new-array v0, v3, [B

    const/16 v1, 0x10

    aput-byte v1, v0, v2

    return-object v0

    .line 308
    :cond_dc
    :pswitch_dc
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_e9

    new-array v0, v3, [B

    const/16 v1, 0x11

    aput-byte v1, v0, v2

    return-object v0

    .line 309
    :cond_e9
    :pswitch_e9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_f6

    new-array v0, v3, [B

    const/16 v1, 0x12

    aput-byte v1, v0, v2

    return-object v0

    .line 310
    :cond_f6
    :pswitch_f6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_103

    new-array v0, v3, [B

    const/16 v1, 0x13

    aput-byte v1, v0, v2

    return-object v0

    .line 311
    :cond_103
    :pswitch_103
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_110

    new-array v0, v3, [B

    const/16 v1, 0x14

    aput-byte v1, v0, v2

    return-object v0

    .line 312
    :cond_110
    :pswitch_110
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_11d

    new-array v0, v3, [B

    const/16 v1, 0x15

    aput-byte v1, v0, v2

    return-object v0

    .line 313
    :cond_11d
    :pswitch_11d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_12a

    new-array v0, v3, [B

    const/16 v1, 0x16

    aput-byte v1, v0, v2

    return-object v0

    .line 314
    :cond_12a
    :pswitch_12a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_137

    new-array v0, v3, [B

    const/16 v1, 0x17

    aput-byte v1, v0, v2

    return-object v0

    .line 315
    :cond_137
    :pswitch_137
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_144

    new-array v0, v3, [B

    const/16 v1, 0x18

    aput-byte v1, v0, v2

    return-object v0

    .line 316
    :cond_144
    :pswitch_144
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_151

    new-array v0, v3, [B

    const/16 v1, 0x19

    aput-byte v1, v0, v2

    return-object v0

    .line 317
    :cond_151
    :pswitch_151
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_15e

    new-array v0, v3, [B

    const/16 v1, 0x1a

    aput-byte v1, v0, v2

    return-object v0

    .line 318
    :cond_15e
    :pswitch_15e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_16b

    new-array v0, v3, [B

    const/16 v1, 0x1b

    aput-byte v1, v0, v2

    return-object v0

    .line 319
    :cond_16b
    :pswitch_16b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_178

    new-array v0, v3, [B

    const/16 v1, 0x1c

    aput-byte v1, v0, v2

    return-object v0

    .line 320
    :cond_178
    :pswitch_178
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_185

    new-array v0, v3, [B

    const/16 v1, 0x1d

    aput-byte v1, v0, v2

    return-object v0

    .line 321
    :cond_185
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_198

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_198

    new-array v0, v3, [B

    const/16 v1, 0x1e

    aput-byte v1, v0, v2

    return-object v0

    .line 322
    :cond_198
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_1ab

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_1ab

    new-array v0, v3, [B

    const/16 v1, 0x1f

    aput-byte v1, v0, v2

    return-object v0

    .line 323
    :cond_1ab
    :goto_1ab
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    return-object v0

    :pswitch_data_1b0
    .packed-switch 0x1d
        :pswitch_16
        :pswitch_21
        :pswitch_2d
        :pswitch_39
        :pswitch_45
        :pswitch_51
        :pswitch_5d
        :pswitch_69
        :pswitch_76
        :pswitch_83
        :pswitch_90
        :pswitch_9d
        :pswitch_aa
        :pswitch_b5
        :pswitch_c2
        :pswitch_cf
        :pswitch_dc
        :pswitch_e9
        :pswitch_f6
        :pswitch_103
        :pswitch_110
        :pswitch_11d
        :pswitch_12a
        :pswitch_137
        :pswitch_144
        :pswitch_151
    .end packed-switch

    :pswitch_data_1e8
    .packed-switch 0x47
        :pswitch_15e
        :pswitch_178
        :pswitch_16b
    .end packed-switch
.end method

.method private getUnicodeChar(Ljava/lang/String;)[B
    .registers 11
    .param p1, "codePointStr"    # Ljava/lang/String;

    .line 329
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 330
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    .line 331
    .local v1, "unicodeChars":[C
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 332
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getUnicodeChar codePointStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " codePoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " unicodeChars: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_3b
    array-length v2, v1

    new-array v2, v2, [B

    .line 336
    .local v2, "unicodeBytes":[B
    const/4 v3, 0x0

    .line 337
    .local v3, "i":I
    array-length v4, v1

    const/4 v5, 0x0

    :goto_41
    if-ge v5, v4, :cond_4e

    aget-char v6, v1, v5

    .line 338
    .local v6, "c":C
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    int-to-byte v8, v6

    aput-byte v8, v2, v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4f

    .line 337
    .end local v6    # "c":C
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_41

    .line 341
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_4e
    return-object v2

    .line 342
    .end local v0    # "codePoint":I
    .end local v1    # "unicodeChars":[C
    .end local v2    # "unicodeBytes":[B
    .end local v3    # "i":I
    :catch_4f
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getUnicodeChar exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private isAsciiControlCharacter(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 263
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x36

    if-le v0, v1, :cond_38

    .line 264
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x47

    if-eq v0, v1, :cond_38

    .line 265
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x48

    if-eq v0, v1, :cond_38

    .line 266
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_38

    .line 267
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_38

    .line 268
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_40

    .line 269
    :cond_38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 263
    :goto_41
    return v0
.end method

.method private isUnicodeCodepoint(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 257
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x90

    if-lt v0, v1, :cond_18

    .line 258
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x99

    if-gt v0, v1, :cond_18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 257
    :goto_19
    return v0
.end method

.method private processKeyEvent(Landroid/view/KeyEvent;)[B
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 207
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1f

    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processKeyEvent event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_eb

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "b":[B
    const/4 v1, 0x1

    .line 213
    .local v1, "clearUnicodeCodepoint":Z
    invoke-direct {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->isUnicodeCodepoint(Landroid/view/KeyEvent;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_60

    .line 215
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$100()Z

    move-result v2

    if-eqz v2, :cond_41

    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v4, " processKeyEvent, unicode codepoint"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_41
    iget-object v2, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->convertNumpadToString(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v2, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_5e

    .line 218
    iget-object v2, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->getUnicodeChar(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_c8

    .line 220
    :cond_5e
    const/4 v1, 0x0

    goto :goto_c8

    .line 222
    :cond_60
    invoke-direct {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->isAsciiControlCharacter(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->getAsciiControlChar(Landroid/view/KeyEvent;)[B

    move-result-object v0

    .line 226
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 227
    .local v2, "keyCharacterMap":Landroid/view/KeyCharacterMap;
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$100()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 228
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processKeyEvent, ascii ctrl char="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    .line 228
    invoke-virtual {v2, v6, v7}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v2    # "keyCharacterMap":Landroid/view/KeyCharacterMap;
    :cond_9d
    goto :goto_c8

    .line 233
    :cond_9e
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$100()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 234
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v4, " processKeyEvent, any other character"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_ad
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 237
    .restart local v2    # "keyCharacterMap":Landroid/view/KeyCharacterMap;
    const/4 v4, 0x1

    new-array v4, v4, [B

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 238
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 237
    invoke-virtual {v2, v5, v6}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    move-object v0, v4

    .line 241
    .end local v2    # "keyCharacterMap":Landroid/view/KeyCharacterMap;
    :goto_c8
    if-eqz v1, :cond_ea

    .line 242
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$100()Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 243
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v4, " processKeyEvent, clear unicode codepoint buffer"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_d9
    iget-object v2, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_ea

    .line 246
    iget-object v2, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 250
    :cond_ea
    return-object v0

    .line 252
    .end local v0    # "b":[B
    .end local v1    # "clearUnicodeCodepoint":Z
    :cond_eb
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x353

    if-eq v0, v1, :cond_dd

    const/16 v1, 0x354

    if-eq v0, v1, :cond_c

    goto/16 :goto_f6

    .line 164
    :cond_c
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 165
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanEventHandler, END, activeScanDeviceId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I
    invoke-static {v2}, Lcom/android/server/KnoxCaptureInputFilter;->access$300(Lcom/android/server/KnoxCaptureInputFilter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, "scannedInput":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    iget-object v1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 169
    .local v2, "event":Landroid/view/KeyEvent;
    invoke-direct {p0, v2}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->processKeyEvent(Landroid/view/KeyEvent;)[B

    move-result-object v4

    .line 170
    .local v4, "chars":[B
    if-eqz v4, :cond_5d

    .line 171
    array-length v5, v4

    :goto_4f
    if-ge v3, v5, :cond_5d

    aget-byte v6, v4, v3

    .line 172
    .local v6, "b":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v6    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 175
    .end local v2    # "event":Landroid/view/KeyEvent;
    .end local v4    # "chars":[B
    :cond_5d
    goto :goto_3b

    .line 177
    :cond_5e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b1

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 179
    .local v1, "scannedBytes":[B
    const/4 v2, 0x0

    .line 180
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    .line 181
    .local v5, "b":Ljava/lang/Byte;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v1, v2

    .line 182
    .end local v5    # "b":Ljava/lang/Byte;
    move v2, v6

    goto :goto_6f

    .line 183
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_85
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$100()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 184
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScanEventHandler, END, scannedInput: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_a8
    iget-object v4, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I
    invoke-static {v4}, Lcom/android/server/KnoxCaptureInputFilter;->access$300(Lcom/android/server/KnoxCaptureInputFilter;)I

    move-result v5

    # invokes: Lcom/android/server/KnoxCaptureInputFilter;->updateBarcodeDataFromhw(I[B)V
    invoke-static {v4, v5, v1}, Lcom/android/server/KnoxCaptureInputFilter;->access$400(Lcom/android/server/KnoxCaptureInputFilter;I[B)V

    .line 191
    .end local v1    # "scannedBytes":[B
    .end local v2    # "i":I
    :cond_b1
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 192
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScanEventHandler, END, clearing active scan input"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_c0
    iget-object v1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 195
    iget-object v1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    const/4 v2, -0x1

    # setter for: Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I
    invoke-static {v1, v2}, Lcom/android/server/KnoxCaptureInputFilter;->access$302(Lcom/android/server/KnoxCaptureInputFilter;I)I

    .line 196
    iget-object v1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_f6

    .line 197
    iget-object v1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_f6

    .line 156
    .end local v0    # "scannedInput":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_dd
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 157
    # getter for: Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanEventHandler, MSG_NEXT_KEY_EVENT, new key event"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_ec
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    nop

    .line 204
    :cond_f6
    :goto_f6
    return-void
.end method
