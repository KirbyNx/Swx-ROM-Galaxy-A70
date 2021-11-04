.class public Lcom/samsung/ucm/ucmservice/scp/TADriver;
.super Ljava/lang/Object;
.source "TADriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Protocol;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$ErrorCode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "UCM.SCP.TADriver"


# instance fields
.field private _config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

.field certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;-><init>(Lcom/samsung/ucm/ucmservice/scp/TADriver$1;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    .line 19
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    .line 74
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mContext:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    .line 76
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    .line 77
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    .line 78
    return-void
.end method

.method private static native constructSecureChannel(II[B)[B
.end method

.method private static native deleteCACert(ILjava/lang/String;)I
.end method

.method private static native destorySecureChannel(I)I
.end method

.method private static native encodeAPDU(I[BZ)[B
.end method

.method private forwardApdu(I[B)[B
    .registers 4
    .param p1, "uid"    # I
    .param p2, "apdu"    # [B

    .line 304
    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->forwardApduResponse(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static native forwardApduResponse(I[B)[B
.end method

.method private getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 7
    .param p1, "status"    # I
    .param p2, "tzError"    # I

    .line 65
    new-instance v0, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v1

    const/16 v2, 0x191

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v0
.end method

.method private getSDKErrorCode(I)I
    .registers 6
    .param p1, "internalCode"    # I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSDKErrorCode internalCode-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UCM.SCP.TADriver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "errorCode":I
    const/4 v2, 0x1

    if-eq p1, v2, :cond_59

    const/4 v2, 0x2

    if-eq p1, v2, :cond_59

    const/4 v2, 0x3

    if-eq p1, v2, :cond_56

    const/4 v2, 0x4

    if-eq p1, v2, :cond_53

    const/16 v2, 0xf

    if-eq p1, v2, :cond_59

    const/16 v2, 0xf0

    if-eq p1, v2, :cond_50

    packed-switch p1, :pswitch_data_72

    packed-switch p1, :pswitch_data_80

    packed-switch p1, :pswitch_data_92

    goto :goto_5c

    .line 131
    :pswitch_35
    const/16 v0, 0x3d

    .line 132
    goto :goto_5c

    .line 128
    :pswitch_38
    const/16 v0, 0x3c

    .line 129
    goto :goto_5c

    .line 125
    :pswitch_3b
    const/16 v0, 0x3b

    .line 126
    goto :goto_5c

    .line 122
    :pswitch_3e
    const/16 v0, 0x3a

    .line 123
    goto :goto_5c

    .line 119
    :pswitch_41
    const/16 v0, 0x39

    .line 120
    goto :goto_5c

    .line 109
    :pswitch_44
    const/16 v0, 0x38

    .line 110
    goto :goto_5c

    .line 106
    :pswitch_47
    const/16 v0, 0x37

    .line 107
    goto :goto_5c

    .line 103
    :pswitch_4a
    const/16 v0, 0x36

    .line 104
    goto :goto_5c

    .line 100
    :pswitch_4d
    const/16 v0, 0x35

    .line 101
    goto :goto_5c

    .line 134
    :cond_50
    const/16 v0, 0x42

    goto :goto_5c

    .line 96
    :cond_53
    :pswitch_53
    const/16 v0, 0x34

    .line 97
    goto :goto_5c

    .line 92
    :cond_56
    const/16 v0, 0x33

    .line 93
    goto :goto_5c

    .line 89
    :cond_59
    :pswitch_59
    const/16 v0, 0x32

    .line 90
    nop

    .line 137
    :goto_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSDKErrorCode errorCode-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v0

    nop

    :pswitch_data_72
    .packed-switch 0x7
        :pswitch_4d
        :pswitch_59
        :pswitch_4a
        :pswitch_4d
        :pswitch_59
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x11
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_41
        :pswitch_41
        :pswitch_41
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x21
        :pswitch_3b
        :pswitch_38
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_35
        :pswitch_53
        :pswitch_41
    .end packed-switch
.end method

.method private getSW([B)S
    .registers 5
    .param p1, "apdu"    # [B

    .line 308
    array-length v0, p1

    .line 310
    .local v0, "length":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/16 v1, 0x6700

    return v1

    .line 311
    :cond_7
    add-int/lit8 v1, v0, -0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method public static native getStringFromJNI()Ljava/lang/String;
.end method

.method private static native installCACert(ILjava/lang/String;[B)I
.end method

.method private isEncryptableResp(S)Z
    .registers 5
    .param p1, "sw"    # S

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "ret":Z
    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 210
    .local v1, "bsw":B
    const/16 v2, -0x7000

    if-eq p1, v2, :cond_14

    const/16 v2, 0x62

    if-eq v1, v2, :cond_14

    const/16 v2, 0x63

    if-ne v1, v2, :cond_15

    .line 213
    :cond_14
    const/4 v0, 0x1

    .line 216
    :cond_15
    return v0
.end method


# virtual methods
.method public createSecureChannel(IILcom/samsung/ucm/ucmservice/scp/CreationParam;)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 12
    .param p1, "uid"    # I
    .param p2, "protocol"    # I
    .param p3, "param"    # Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    .line 169
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    invoke-virtual {v0, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->isSupported(I)Z

    move-result v0

    const-string v1, "UCM.SCP.TADriver"

    const/4 v2, 0x1

    if-nez v0, :cond_19

    .line 170
    const-string v0, "Not supported protocol"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/16 v0, 0x8

    invoke-direct {p0, v2, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    .line 175
    :cond_19
    const/4 v0, 0x0

    .line 178
    .local v0, "resp":[B
    :try_start_1a
    invoke-virtual {p3}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toTLV()[B

    move-result-object v3

    invoke-static {p1, p2, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->constructSecureChannel(II[B)[B

    move-result-object v3

    move-object v0, v3

    .line 179
    if-eqz v0, :cond_5a

    array-length v3, v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_66

    if-gtz v3, :cond_29

    goto :goto_5a

    .line 186
    :cond_29
    nop

    .line 188
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    .line 189
    .local v4, "tzRet":I
    const/4 v5, 0x5

    if-eq v4, v5, :cond_49

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown TZ response : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0, v2, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v1

    return-object v1

    .line 191
    :cond_49
    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v5

    const/16 v6, 0x190

    array-length v7, v0

    .line 193
    invoke-static {v0, v2, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    .line 191
    return-object v1

    .line 180
    .end local v4    # "tzRet":I
    :cond_5a
    :goto_5a
    :try_start_5a
    const-string v3, "Invalid msg returned from SCPConstructSecureChannel(in)"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v1, 0xb

    invoke-direct {p0, v2, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v1
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_65} :catch_66

    return-object v1

    .line 183
    :catch_66
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v2

    return-object v2
.end method

.method public deleteCACerttificate(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 161
    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->deleteCACert(ILjava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "ret":I
    if-nez v0, :cond_8

    .line 163
    const/4 v1, 0x1

    return v1

    .line 165
    :cond_8
    const/4 v1, 0x0

    return v1
.end method

.method public destroySecureChannel(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 203
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->destorySecureChannel(I)I

    move-result v0

    return v0
.end method

.method public installCACerttificate(Ljava/lang/String;[BI)Z
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # [B
    .param p3, "userId"    # I

    .line 146
    const/4 v0, 0x0

    .line 149
    .local v0, "modified_cert":[B
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-virtual {v2, p2}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->updateTlvCaCert([B)[B

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_13

    move-object v0, v2

    .line 152
    nop

    .line 153
    invoke-static {p3, p1, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACert(ILjava/lang/String;[B)I

    move-result v2

    .line 154
    .local v2, "ret":I
    if-nez v2, :cond_12

    .line 155
    const/4 v1, 0x1

    return v1

    .line 157
    :cond_12
    return v1

    .line 150
    .end local v2    # "ret":I
    :catch_13
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    return v1
.end method

.method public processMsg(II[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 13
    .param p1, "uid"    # I
    .param p2, "type"    # I
    .param p3, "msg"    # [B

    .line 220
    const/16 v0, 0x191

    const/16 v1, 0xb

    const/16 v2, 0x12d

    const-string v3, "UCM.SCP.TADriver"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_126

    .line 300
    const/4 v0, 0x2

    invoke-direct {p0, v4, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    .line 271
    :pswitch_13
    invoke-direct {p0, p1, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->forwardApdu(I[B)[B

    move-result-object v2

    .line 273
    .local v2, "resp":[B
    if-eqz v2, :cond_5c

    array-length v6, v2

    if-gtz v6, :cond_1d

    goto :goto_5c

    .line 279
    :cond_1d
    aget-byte v1, v2, v5

    .line 280
    .local v1, "tzRet":I
    const/4 v6, 0x5

    if-eq v1, v6, :cond_4b

    const/4 v6, 0x6

    if-eq v1, v6, :cond_3e

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown TZ response : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0, v4, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    .line 282
    :cond_3e
    new-instance v3, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    const/16 v4, 0x12c

    .line 283
    invoke-direct {p0, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    .line 282
    return-object v3

    .line 288
    :cond_4b
    new-instance v0, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v3

    const/16 v6, 0x190

    array-length v7, v2

    .line 290
    invoke-static {v2, v4, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v0, v5, v3, v6, v4}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    .line 288
    return-object v0

    .line 274
    .end local v1    # "tzRet":I
    :cond_5c
    :goto_5c
    const-string v0, "Invalid msg returned from SCPForwardApduMessage()"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, v4, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    .line 243
    .end local v2    # "resp":[B
    :pswitch_66
    invoke-direct {p0, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSW([B)S

    move-result v6

    .line 244
    .local v6, "sw":S
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SW of response : 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->isEncryptableResp(S)Z

    move-result v7

    if-nez v7, :cond_a6

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure response : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x4

    invoke-direct {p0, v4, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    .line 252
    :cond_a6
    invoke-static {p1, p3, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->encodeAPDU(I[BZ)[B

    move-result-object v7

    .line 253
    .local v7, "plain_apdu":[B
    if-nez v7, :cond_b6

    .line 254
    const-string v0, "Failed to decode APDU"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0, v2, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    .line 258
    :cond_b6
    aget-byte v1, v7, v5

    .line 259
    .restart local v1    # "tzRet":I
    if-eqz v1, :cond_d7

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode APDU 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0, v2, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    .line 264
    :cond_d7
    new-instance v2, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    .line 265
    invoke-direct {p0, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v3

    array-length v8, v7

    .line 267
    invoke-static {v7, v4, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v2, v5, v3, v0, v4}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    .line 264
    return-object v2

    .line 223
    .end local v1    # "tzRet":I
    .end local v6    # "sw":S
    .end local v7    # "plain_apdu":[B
    :pswitch_e6
    invoke-static {p1, p3, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->encodeAPDU(I[BZ)[B

    move-result-object v6

    .line 224
    .local v6, "encrypted_apdu":[B
    if-nez v6, :cond_f6

    .line 225
    const-string v0, "Failed to encode APDU"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0, v2, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    .line 230
    :cond_f6
    aget-byte v1, v6, v5

    .line 231
    .restart local v1    # "tzRet":I
    if-eqz v1, :cond_117

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to encode APDU 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0, v2, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    .line 236
    :cond_117
    new-instance v2, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    .line 237
    invoke-direct {p0, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v3

    array-length v7, v6

    .line 239
    invoke-static {v6, v4, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v2, v5, v3, v0, v4}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    .line 236
    return-object v2

    :pswitch_data_126
    .packed-switch 0xc8
        :pswitch_e6
        :pswitch_66
        :pswitch_13
    .end packed-switch
.end method
