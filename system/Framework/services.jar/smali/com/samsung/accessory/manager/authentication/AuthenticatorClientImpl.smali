.class public Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
.super Lcom/samsung/accessory/manager/authentication/Authenticator;
.source "AuthenticatorClientImpl.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final COMMAND_ATQS:I

.field private final COMMAND_FIRMWARE:I

.field private final COMMAND_KEY_CHANGE:I

.field private final COMMAND_PUB_KEY:I

.field private final COMMAND_READ_ID:I

.field private final COMMAND_REQEXTRA:I

.field private final COMMAND_REQUNIFIED:I

.field private final COMMAND_REQURL:I

.field private final COMMAND_SEC_PUB_KEY:I

.field private final COMMAND_VERIFICATION:I

.field private final COMMAND_WRITE_ID:I

.field private final RETRY_TIME:I

.field private final SW_FAIL:[B

.field private final SW_SECURITY_ATTACK:[B

.field private final SW_SUCCESS:[B

.field private volatile isInterrupted:Z

.field private mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

.field private mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

.field private randNum:[B

.field private statusWord:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    .line 17
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .line 714
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->RETRY_TIME:I

    .line 21
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_ATQS:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_PUB_KEY:I

    .line 23
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_VERIFICATION:I

    .line 24
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_WRITE_ID:I

    .line 25
    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_READ_ID:I

    .line 26
    const/4 v1, 0x6

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_FIRMWARE:I

    .line 27
    const/4 v1, 0x7

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_KEY_CHANGE:I

    .line 28
    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_SEC_PUB_KEY:I

    .line 29
    const/16 v1, 0x9

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQURL:I

    .line 30
    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQEXTRA:I

    .line 31
    const/16 v1, 0xb

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQUNIFIED:I

    .line 33
    new-array v1, v0, [B

    fill-array-data v1, :array_62

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    .line 34
    new-array v1, v0, [B

    fill-array-data v1, :array_68

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    .line 35
    new-array v1, v0, [B

    fill-array-data v1, :array_6e

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 38
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 39
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    .line 40
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    .line 715
    iput p2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    .line 717
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 718
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 719
    return-void

    :array_62
    .array-data 1
        -0x70t
        0x0t
    .end array-data

    nop

    :array_68
    .array-data 1
        0x69t
        -0x7ft
    .end array-data

    nop

    :array_6e
    .array-data 1
        0x69t
        -0x7et
    .end array-data
.end method

.method private authNFC(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 18
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 218
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 219
    .local v3, "resMsg":[B
    const/4 v4, 0x0

    .line 221
    .local v4, "ret":Z
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    .line 223
    .local v5, "isFactoryBinary":Z
    iget-object v0, v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    const/4 v6, 0x0

    if-nez v0, :cond_1d

    .line 224
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onAuthenticationChallenge, mConnection is null!"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 226
    return v6

    .line 230
    :cond_1d
    :try_start_1d
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v0

    move-object v3, v0

    .line 231
    const/4 v0, 0x1

    if-eqz v3, :cond_f2

    .line 232
    sget-object v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received atqS Data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object v7, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    invoke-static {v7, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 237
    array-length v7, v3

    if-ne v7, v0, :cond_d5

    .line 238
    aget-byte v7, v3, v6

    if-ne v7, v0, :cond_52

    .line 239
    const/16 v0, 0x14

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_d1

    .line 240
    :cond_52
    aget-byte v0, v3, v6

    const/16 v7, -0x4f

    if-ne v0, v7, :cond_5f

    .line 241
    const/16 v0, 0x15

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_d1

    .line 242
    :cond_5f
    aget-byte v0, v3, v6

    const/16 v7, -0x4e

    if-ne v0, v7, :cond_6c

    .line 243
    const/16 v0, 0x16

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_d1

    .line 244
    :cond_6c
    aget-byte v0, v3, v6

    const/16 v7, -0x20

    if-ne v0, v7, :cond_78

    .line 245
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_d1

    .line 246
    :cond_78
    aget-byte v0, v3, v6

    const/16 v7, -0xf

    if-ne v0, v7, :cond_84

    .line 247
    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_d1

    .line 248
    :cond_84
    aget-byte v0, v3, v6

    const/16 v7, -0xe

    if-ne v0, v7, :cond_90

    .line 249
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_d1

    .line 250
    :cond_90
    aget-byte v0, v3, v6

    const/16 v7, -0xd

    if-ne v0, v7, :cond_9c

    .line 251
    const/16 v0, 0x2a

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_d1

    .line 252
    :cond_9c
    aget-byte v0, v3, v6

    const/16 v7, -0xc

    if-ne v0, v7, :cond_a8

    .line 253
    const/16 v0, 0x2b

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_d1

    .line 254
    :cond_a8
    aget-byte v0, v3, v6

    const/16 v7, -0xb

    if-ne v0, v7, :cond_b4

    .line 255
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_d1

    .line 256
    :cond_b4
    aget-byte v0, v3, v6

    const/16 v7, -0xa

    if-ne v0, v7, :cond_c0

    .line 257
    const/16 v0, 0x2d

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_d1

    .line 258
    :cond_c0
    aget-byte v0, v3, v6

    const/16 v7, -0x9

    if-ne v0, v7, :cond_cc

    .line 259
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_d1

    .line 261
    :cond_cc
    const/16 v0, 0x1b

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 263
    :goto_d1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 264
    return v6

    .line 265
    :cond_d5
    array-length v7, v3

    const/16 v8, 0x10

    if-ne v7, v8, :cond_e2

    .line 266
    iget-object v7, v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v7, v0, v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v7

    move v4, v7

    goto :goto_f9

    .line 268
    :cond_e2
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v7, "atqS is not correct"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/16 v0, 0x19

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 271
    return v6

    .line 274
    :cond_f2
    sget-object v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v8, " atqS is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_f9
    if-nez v4, :cond_10b

    .line 278
    const/16 v0, 0x1a

    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 279
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v7, "atqS fail, call sendStopAuth()"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 281
    return v6

    .line 284
    :cond_10b
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged()Z

    move-result v7
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_10f} :catch_230

    const-string v8, "3rd data is not exist."

    const-string v10, "Success auth, call sendStopAuth()"

    const/16 v11, 0xa

    const/16 v12, 0x9

    const-string v13, "Read id fail."

    const/4 v14, 0x5

    const/4 v15, 0x2

    const/4 v9, 0x3

    if-nez v7, :cond_191

    .line 285
    :try_start_11e
    invoke-direct {v1, v2, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v7

    move v4, v7

    .line 286
    if-nez v4, :cond_129

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 288
    return v6

    .line 291
    :cond_129
    invoke-direct {v1, v2, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v7

    move v4, v7

    .line 292
    if-nez v4, :cond_134

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 294
    return v6

    .line 297
    :cond_134
    invoke-direct {v1, v2, v14}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v7

    move v4, v7

    .line 298
    if-nez v4, :cond_144

    .line 299
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 301
    return v6

    .line 304
    :cond_144
    iget v7, v2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v7, v0, :cond_15c

    .line 305
    invoke-direct {v1, v2, v12}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v7

    move v4, v7

    .line 306
    if-nez v4, :cond_18c

    .line 307
    sget-object v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v12, "Url is not exist."

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-nez v5, :cond_18c

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 310
    return v6

    .line 313
    :cond_15c
    iget v7, v2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v7, v15, :cond_174

    .line 314
    invoke-direct {v1, v2, v11}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v7

    move v4, v7

    .line 315
    if-nez v4, :cond_18c

    .line 316
    sget-object v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v12, "Extra is not exist."

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-nez v5, :cond_18c

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 319
    return v6

    .line 322
    :cond_174
    iget v7, v2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v7, v9, :cond_18c

    .line 323
    const/16 v7, 0xb

    invoke-direct {v1, v2, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v12

    move v4, v12

    .line 324
    if-nez v4, :cond_18c

    .line 325
    sget-object v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    if-nez v5, :cond_18c

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 328
    return v6

    .line 333
    :cond_18c
    sget-object v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_191
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange()Z

    move-result v7

    if-ne v7, v0, :cond_1aa

    .line 338
    sget-object v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "need to key change, retry authentication throught chaeged key"

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v7, 0x7

    invoke-direct {v1, v2, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v7

    move v4, v7

    .line 341
    if-ne v4, v0, :cond_1aa

    .line 342
    invoke-virtual {v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setKeyChanged(Z)V

    .line 346
    :cond_1aa
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged()Z

    move-result v7

    if-ne v7, v0, :cond_228

    .line 347
    const/16 v7, 0x8

    invoke-direct {v1, v2, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v7

    move v4, v7

    .line 348
    if-nez v4, :cond_1bd

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 350
    return v6

    .line 353
    :cond_1bd
    invoke-direct {v1, v2, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v7

    move v4, v7

    .line 354
    if-nez v4, :cond_1c8

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 356
    return v6

    .line 359
    :cond_1c8
    invoke-direct {v1, v2, v14}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v7

    move v4, v7

    .line 360
    if-nez v4, :cond_1d8

    .line 361
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 363
    return v6

    .line 366
    :cond_1d8
    iget v7, v2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v7, v0, :cond_1f3

    .line 367
    const/16 v7, 0x9

    invoke-direct {v1, v2, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v7

    move v4, v7

    .line 368
    if-nez v4, :cond_223

    .line 369
    sget-object v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "url is not exist."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    if-nez v5, :cond_223

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 372
    return v6

    .line 375
    :cond_1f3
    iget v7, v2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v7, v15, :cond_20b

    .line 376
    invoke-direct {v1, v2, v11}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v7

    move v4, v7

    .line 377
    if-nez v4, :cond_223

    .line 378
    sget-object v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v8, "extra is not exist."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-nez v5, :cond_223

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 381
    return v6

    .line 384
    :cond_20b
    iget v7, v2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v7, v9, :cond_223

    .line 385
    const/16 v7, 0xb

    invoke-direct {v1, v2, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v7

    move v4, v7

    .line 386
    if-nez v4, :cond_223

    .line 387
    sget-object v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-nez v5, :cond_223

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 390
    return v6

    .line 395
    :cond_223
    sget-object v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_228
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z
    :try_end_22b
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_22b} :catch_230

    .line 406
    nop

    .line 408
    invoke-virtual {v2, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 409
    return v0

    .line 400
    :catch_230
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 403
    const/16 v7, 0xe

    invoke-virtual {v2, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 405
    return v6
.end method

.method private authUsb(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 9
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 114
    .local v1, "response":[B
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    const/4 v3, 0x0

    if-nez v2, :cond_15

    .line 115
    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onAuthenticationChallenge, mConnection is null!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 117
    return v3

    .line 120
    :cond_15
    const/4 v2, 0x1

    :try_start_16
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v1, v4

    .line 121
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "response from ccic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    array-length v4, v1

    if-ne v4, v2, :cond_42

    .line 124
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "need define error code"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v3

    .line 128
    :cond_42
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v4

    move v0, v4

    .line 130
    if-nez v0, :cond_5b

    .line 131
    const/16 v4, 0x1a

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 132
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "atqS fail, call sendStopAuth()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 134
    return v3

    .line 137
    :cond_5b
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v5

    move v0, v5

    .line 138
    if-nez v0, :cond_67

    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 140
    return v3

    .line 143
    :cond_67
    const/4 v5, 0x3

    invoke-direct {p0, p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v6

    move v0, v6

    .line 144
    if-nez v0, :cond_73

    .line 145
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 146
    return v3

    .line 149
    :cond_73
    const/4 v6, 0x5

    invoke-direct {p0, p1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v6

    move v0, v6

    .line 150
    if-nez v0, :cond_86

    .line 151
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "Read id fail."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 153
    return v3

    .line 156
    :cond_86
    iget v6, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v6, v2, :cond_9e

    .line 157
    const/16 v4, 0x9

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v0, v4

    .line 158
    if-nez v0, :cond_ce

    .line 159
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "Url is not exist."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 161
    return v3

    .line 163
    :cond_9e
    iget v6, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v6, v4, :cond_b6

    .line 164
    const/16 v4, 0xa

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v0, v4

    .line 165
    if-nez v0, :cond_ce

    .line 166
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "Extra is not exist."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 168
    return v3

    .line 170
    :cond_b6
    iget v4, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v4, v5, :cond_ce

    .line 171
    const/16 v4, 0xb

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v0, v4

    .line 172
    if-nez v0, :cond_ce

    .line 173
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "3rd data is not exist."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 175
    return v3

    .line 179
    :cond_ce
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v5, "Success auth, call sendStopAuth()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_d8} :catch_d9

    .line 186
    goto :goto_e8

    .line 182
    :catch_d9
    move-exception v4

    .line 184
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/16 v5, 0xe

    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 187
    .end local v4    # "e":Ljava/io/IOException;
    :goto_e8
    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 188
    return v2
.end method

.method private authWirelessCharger(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 10
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 70
    .local v1, "response":[B
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    const/4 v3, 0x0

    if-nez v2, :cond_15

    .line 71
    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onAuthenticationChallenge, mConnection is null!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 73
    return v3

    .line 77
    :cond_15
    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_88

    .line 78
    .local v2, "dummySerial":[B
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v0

    .line 81
    :try_start_23
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    move v0, v4

    .line 82
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "open wirelesscharger: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez v0, :cond_51

    .line 85
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "open fail"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 87
    return v3

    .line 89
    :cond_51
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v0, v4

    .line 90
    if-nez v0, :cond_5d

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 92
    return v3

    .line 94
    :cond_5d
    const/4 v4, 0x3

    invoke-direct {p0, p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v4

    move v0, v4

    .line 95
    if-nez v0, :cond_69

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 97
    return v3

    .line 99
    :cond_69
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v6, "Success auth, call sendStopAuth()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_70} :catch_71

    .line 104
    goto :goto_80

    .line 100
    :catch_71
    move-exception v4

    .line 102
    .local v4, "e":Ljava/io/IOException;
    sget-object v6, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/16 v6, 0xe

    invoke-virtual {p1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 105
    .end local v4    # "e":Ljava/io/IOException;
    :goto_80
    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 106
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 107
    return v5

    nop

    :array_88
    .array-data 1
        0x0t
        0x55t
        0x6t
        0x8t
        0x5t
        0x20t
        0x1dt
        0x17t
        0x0t
        0x0t
        0x2t
        0x1t
        -0x62t
        -0x57t
        -0x7ft
        0x2t
    .end array-data
.end method

.method private checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 10
    .param p1, "what"    # I
    .param p2, "resMsg"    # [B
    .param p3, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 643
    const/4 v0, 0x0

    .line 645
    .local v0, "ret":Z
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v1, 0x0

    if-eqz p2, :cond_10e

    array-length v2, p2

    if-nez v2, :cond_23

    goto/16 :goto_10e

    .line 652
    :cond_23
    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ae

    .line 653
    aget-byte v1, p2, v1

    .line 654
    .local v1, "error":B
    if-ne v1, v3, :cond_32

    .line 655
    const/16 v2, 0x14

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_10c

    .line 656
    :cond_32
    const/16 v2, -0x50

    if-ne v1, v2, :cond_3d

    .line 657
    const/16 v2, 0x15

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_10c

    .line 658
    :cond_3d
    const/16 v2, -0x4e

    if-ne v1, v2, :cond_48

    .line 659
    const/16 v2, 0x16

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_10c

    .line 660
    :cond_48
    const/16 v2, -0x20

    if-ne v1, v2, :cond_53

    .line 661
    const/16 v2, 0xd

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_10c

    .line 662
    :cond_53
    const/16 v2, -0xf

    if-ne v1, v2, :cond_5e

    .line 663
    const/16 v2, 0x28

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_10c

    .line 664
    :cond_5e
    const/16 v2, -0xe

    if-ne v1, v2, :cond_69

    .line 665
    const/16 v2, 0x29

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_10c

    .line 666
    :cond_69
    const/16 v2, -0xd

    if-ne v1, v2, :cond_74

    .line 667
    const/16 v2, 0x2a

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_10c

    .line 668
    :cond_74
    const/16 v2, -0xc

    if-ne v1, v2, :cond_7f

    .line 669
    const/16 v2, 0x2b

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_10c

    .line 670
    :cond_7f
    const/16 v2, -0xb

    if-ne v1, v2, :cond_8a

    .line 671
    const/16 v2, 0x2c

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_10c

    .line 672
    :cond_8a
    const/16 v2, -0xa

    if-ne v1, v2, :cond_95

    .line 673
    const/16 v2, 0x2d

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_10c

    .line 674
    :cond_95
    const/16 v2, -0x9

    if-ne v1, v2, :cond_9f

    .line 675
    const/16 v2, 0x2e

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_10c

    .line 676
    :cond_9f
    const/4 v2, -0x2

    if-ne v1, v2, :cond_a8

    .line 677
    const/16 v2, 0x1c

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_10c

    .line 679
    :cond_a8
    const/16 v2, 0x1b

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_10c

    .line 680
    .end local v1    # "error":B
    :cond_ae
    array-length v2, p2

    const/4 v4, 0x3

    if-le v2, v4, :cond_10c

    .line 681
    array-length v2, p2

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    const/4 v5, 0x2

    invoke-static {p2, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 682
    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status Word: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 685
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v0

    .line 686
    if-nez v0, :cond_10d

    .line 687
    invoke-virtual {p3, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 688
    return v1

    .line 690
    :cond_ec
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 691
    const/16 v2, 0x18

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 692
    return v1

    .line 693
    :cond_fc
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 694
    const/16 v2, 0x17

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 695
    return v1

    .line 680
    :cond_10c
    :goto_10c
    nop

    .line 699
    :cond_10d
    return v0

    .line 648
    :cond_10e
    :goto_10e
    const/16 v2, 0xc

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 649
    return v1
.end method

.method private sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z
    .registers 16
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .param p2, "what"    # I

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 415
    .local v1, "reqMsg":[B
    const/4 v2, 0x0

    .line 417
    .local v2, "resMsg":[B
    iget-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_17

    .line 418
    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "interrupted!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 420
    return v5

    .line 422
    :cond_17
    const-string v3, "ExtraData is NULL"

    const-string v6, "URI is NULL"

    const/16 v7, 0x5f

    const/16 v8, 0x5e

    const-string v9, "Send Command "

    const/16 v10, 0xe

    packed-switch p2, :pswitch_data_2a6

    goto/16 :goto_28e

    .line 602
    :pswitch_28
    iget-object v11, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v11}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqUnified3rd()[B

    move-result-object v1

    .line 604
    const/4 v11, 0x0

    .local v11, "i":I
    if-ge v11, v4, :cond_8f

    .line 605
    :try_start_31
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    .line 607
    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    move v0, v4

    .line 608
    if-nez v0, :cond_55

    .line 609
    invoke-virtual {p1, v8}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 610
    return v5

    .line 612
    :cond_55
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v4

    if-eqz v4, :cond_81

    .line 613
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    .line 619
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v4

    if-eqz v4, :cond_78

    .line 620
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V

    goto :goto_8f

    .line 622
    :cond_78
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 624
    return v5

    .line 615
    :cond_81
    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p1, v8}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_89} :catch_8a

    .line 617
    return v5

    .line 629
    .end local v11    # "i":I
    :catch_8a
    move-exception v3

    .line 631
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 632
    return v5

    .line 633
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8f
    :goto_8f
    goto/16 :goto_28e

    .line 575
    :pswitch_91
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqExtra()[B

    move-result-object v1

    .line 577
    const/4 v6, 0x0

    .local v6, "i":I
    if-ge v6, v4, :cond_de

    .line 578
    :try_start_9a
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    .line 580
    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    move v0, v4

    .line 581
    if-nez v0, :cond_be

    .line 582
    invoke-virtual {p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 583
    return v5

    .line 585
    :cond_be
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v4

    if-eqz v4, :cond_d0

    .line 586
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V

    goto :goto_de

    .line 588
    :cond_d0
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p1, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_d8} :catch_d9

    .line 590
    return v5

    .line 595
    .end local v6    # "i":I
    :catch_d9
    move-exception v3

    .line 597
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 598
    return v5

    .line 599
    .end local v3    # "e":Ljava/io/IOException;
    :cond_de
    :goto_de
    goto/16 :goto_28e

    .line 548
    :pswitch_e0
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqUrl()[B

    move-result-object v1

    .line 550
    const/4 v3, 0x0

    .local v3, "i":I
    if-ge v3, v4, :cond_12d

    .line 551
    :try_start_e9
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    .line 553
    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    move v0, v4

    .line 554
    if-nez v0, :cond_10d

    .line 555
    invoke-virtual {p1, v8}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 556
    return v5

    .line 558
    :cond_10d
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v4

    if-eqz v4, :cond_11f

    .line 559
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    goto :goto_12d

    .line 561
    :cond_11f
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {p1, v8}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_127} :catch_128

    .line 563
    return v5

    .line 568
    .end local v3    # "i":I
    :catch_128
    move-exception v3

    .line 570
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 571
    return v5

    .line 572
    .end local v3    # "e":Ljava/io/IOException;
    :cond_12d
    :goto_12d
    goto/16 :goto_28e

    .line 460
    :pswitch_12f
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqPubKey()[B

    move-result-object v1

    .line 462
    const/4 v3, 0x0

    .local v3, "i":I
    if-ge v3, v4, :cond_15e

    .line 463
    :try_start_138
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    .line 466
    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_155} :catch_159

    move v0, v4

    .line 467
    if-nez v0, :cond_15e

    .line 468
    return v5

    .line 472
    .end local v3    # "i":I
    :catch_159
    move-exception v3

    .line 474
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 475
    return v5

    .line 476
    .end local v3    # "e":Ljava/io/IOException;
    :cond_15e
    goto/16 :goto_28e

    .line 529
    :pswitch_160
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getKeyChange()[B

    move-result-object v1

    .line 531
    const/4 v3, 0x0

    .local v3, "i":I
    if-ge v3, v4, :cond_18f

    .line 532
    :try_start_169
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    .line 534
    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_186} :catch_18a

    move v0, v4

    .line 535
    if-nez v0, :cond_18f

    .line 536
    return v5

    .line 540
    .end local v3    # "i":I
    :catch_18a
    move-exception v3

    .line 542
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 543
    return v5

    .line 544
    .end local v3    # "e":Ljava/io/IOException;
    :cond_18f
    nop

    .line 545
    const/4 v0, 0x1

    .line 546
    goto/16 :goto_28e

    .line 424
    :pswitch_193
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqFirmwareVersion()[B

    move-result-object v1

    .line 426
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19a
    if-ge v3, v4, :cond_1bd

    .line 427
    :try_start_19c
    sget-object v6, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v6
    :try_end_1b4
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_1b4} :catch_1b8

    move-object v2, v6

    .line 426
    add-int/lit8 v3, v3, 0x1

    goto :goto_19a

    .line 430
    .end local v3    # "i":I
    :catch_1b8
    move-exception v3

    .line 432
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 433
    return v5

    .line 434
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1bd
    nop

    .line 435
    const/4 v0, 0x1

    .line 436
    goto/16 :goto_28e

    .line 507
    :pswitch_1c1
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReadCoverId()[B

    move-result-object v1

    .line 509
    const/4 v3, 0x0

    .local v3, "i":I
    if-ge v3, v4, :cond_202

    .line 510
    :try_start_1ca
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    .line 512
    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    move v0, v4

    .line 513
    if-nez v0, :cond_1eb

    .line 514
    return v5

    .line 516
    :cond_1eb
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getSerialNumber()[B

    move-result-object v4

    if-eqz v4, :cond_202

    .line 517
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getSerialNumber()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraId([B)V
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1fc} :catch_1fd

    goto :goto_202

    .line 521
    .end local v3    # "i":I
    :catch_1fd
    move-exception v3

    .line 523
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 524
    return v5

    .line 525
    .end local v3    # "e":Ljava/io/IOException;
    :cond_202
    :goto_202
    nop

    .line 526
    const/4 v0, 0x1

    .line 527
    goto/16 :goto_28e

    .line 504
    :pswitch_206
    const/4 v0, 0x1

    .line 505
    goto/16 :goto_28e

    .line 481
    :pswitch_209
    const/4 v3, 0x0

    .local v3, "i":I
    if-ge v3, v4, :cond_24b

    .line 482
    :try_start_20c
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->makeRandomNumber()[B

    .line 483
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getRandNum()[B

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    .line 484
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v6, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->setRandNum([B)V

    .line 485
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getDataVerification()[B

    move-result-object v4

    move-object v1, v4

    .line 487
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    .line 490
    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4
    :try_end_242
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_242} :catch_246

    move v0, v4

    .line 491
    if-nez v0, :cond_24b

    .line 492
    return v5

    .line 496
    .end local v3    # "i":I
    :catch_246
    move-exception v3

    .line 498
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 499
    return v5

    .line 500
    .end local v3    # "e":Ljava/io/IOException;
    :cond_24b
    goto :goto_28e

    .line 438
    :pswitch_24c
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqPubKey()[B

    move-result-object v1

    .line 440
    const/4 v3, 0x0

    .local v3, "i":I
    if-ge v3, v4, :cond_28d

    .line 441
    :try_start_255
    sget-object v4, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v4

    move-object v2, v4

    .line 444
    invoke-direct {p0, p2, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    move v0, v4

    .line 445
    if-nez v0, :cond_276

    .line 446
    return v5

    .line 448
    :cond_276
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getPublicKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28d

    .line 449
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getPublicKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setPublicKey(Ljava/lang/String;)V
    :try_end_287
    .catch Ljava/io/IOException; {:try_start_255 .. :try_end_287} :catch_288

    goto :goto_28d

    .line 453
    .end local v3    # "i":I
    :catch_288
    move-exception v3

    .line 455
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p1, v10}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 456
    return v5

    .line 457
    .end local v3    # "e":Ljava/io/IOException;
    :cond_28d
    :goto_28d
    nop

    .line 637
    :goto_28e
    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive Command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return v0

    nop

    :pswitch_data_2a6
    .packed-switch 0x2
        :pswitch_24c
        :pswitch_209
        :pswitch_206
        :pswitch_1c1
        :pswitch_193
        :pswitch_160
        :pswitch_12f
        :pswitch_e0
        :pswitch_91
        :pswitch_28
    .end packed-switch
.end method

.method private stopAuthentication(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 5
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 213
    goto :goto_c

    .line 210
    :catch_4
    move-exception v0

    .line 212
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "fail stop command"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    :goto_c
    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .registers 7
    .param p1, "input"    # [B

    .line 703
    if-eqz p1, :cond_28

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_23

    .line 706
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p1, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 708
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 710
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_28
    const-string/jumbo v0, "null"

    return-object v0
.end method

.method public onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 5
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 46
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationChallenge, type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->authNFC(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0

    return v0

    .line 49
    :cond_23
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2d

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->authUsb(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0

    return v0

    .line 51
    :cond_2d
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_37

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->authWirelessCharger(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0

    return v0

    .line 53
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method onInterrupted()V
    .registers 2

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    .line 59
    return-void
.end method

.method public setInterrupt(Z)V
    .registers 2
    .param p1, "interrupt"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    .line 64
    return-void
.end method
