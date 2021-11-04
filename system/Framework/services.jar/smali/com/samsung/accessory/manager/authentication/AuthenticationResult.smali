.class public Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
.super Ljava/lang/Object;
.source "AuthenticationResult.java"


# static fields
.field public static final ADDITIONAL_FIELD_EXTRA_ONLY:I = 0x2

.field public static final ADDITIONAL_FIELD_NONE:I = 0x0

.field public static final ADDITIONAL_FIELD_UNIFIED_EXIST:I = 0x3

.field public static final ADDITIONAL_FIELD_URI_ONLY:I = 0x1

.field public static final API_STATE_DEFAULT:I = 0x0

.field public static final API_STATE_STARTCOVERAUTH:I = 0x1

.field public static final API_STATE_STOPCOVERAUTH:I = 0x3

.field public static final API_STATE_TRANCEIVEAUTHDATA:I = 0x2

.field public static final API_STATE_USB_END_COMMAND:I = 0xb

.field public static final AUTH_FAIL_REASON_AUTHENTICATION_TRANSACTION:I = 0x2d

.field public static final AUTH_FAIL_REASON_AUTH_FAILED:I = 0x1

.field public static final AUTH_FAIL_REASON_COMMAND_DATA_LOST:I = 0x15

.field public static final AUTH_FAIL_REASON_COMMAND_DUPLICATED:I = 0x18

.field public static final AUTH_FAIL_REASON_COMMAND_LENGTH_INVALID:I = 0x19

.field public static final AUTH_FAIL_REASON_COMMAND_NULL:I = 0x1a

.field public static final AUTH_FAIL_REASON_COMMAND_OUT_OF_SEQUENCE:I = 0x17

.field public static final AUTH_FAIL_REASON_COMMAND_REJECTED:I = 0x14

.field public static final AUTH_FAIL_REASON_COMMAND_TIMEOUT:I = 0x16

.field public static final AUTH_FAIL_REASON_COMMAND_UNDEFINED:I = 0x1b

.field public static final AUTH_FAIL_REASON_CONECTIVITY_BUSY:I = 0xd

.field public static final AUTH_FAIL_REASON_CONECTIVITY_DOWN:I = 0xc

.field public static final AUTH_FAIL_REASON_CONECTIVITY_ERROR:I = 0xa

.field public static final AUTH_FAIL_REASON_CONECTIVITY_MAXIMUM_CONNECTION_REACHED:I = 0xb

.field public static final AUTH_FAIL_REASON_CONNECTIVITY_EXCEPTION:I = 0xe

.field public static final AUTH_FAIL_REASON_FIRMWARE_DOWNLOAD:I = 0x29

.field public static final AUTH_FAIL_REASON_HALL_MISMATCH:I = 0x5c

.field public static final AUTH_FAIL_REASON_INTERNAL_ERROR:I = 0x5a

.field public static final AUTH_FAIL_REASON_LED_TRANSACTION:I = 0x28

.field public static final AUTH_FAIL_REASON_NFC_TURNING_OFF:I = 0x2b

.field public static final AUTH_FAIL_REASON_NFC_TURNING_ON:I = 0x2a

.field public static final AUTH_FAIL_REASON_REQUEST_EXTRA:I = 0x5f

.field public static final AUTH_FAIL_REASON_REQUEST_URI:I = 0x5e

.field public static final AUTH_FAIL_REASON_SESSION_BUSY:I = 0x1e

.field public static final AUTH_FAIL_REASON_SESSION_INTERRUPTED:I = 0x20

.field public static final AUTH_FAIL_REASON_SESSION_STOPPED:I = 0x1c

.field public static final AUTH_FAIL_REASON_SESSION_TIMEOUT:I = 0x1f

.field public static final AUTH_FAIL_REASON_TAG_PRESENT:I = 0x2e

.field public static final AUTH_FAIL_REASON_TIMEOUT:I = 0x5b

.field public static final AUTH_FAIL_REASON_WIRELESS_CHARGING:I = 0x2c

.field public static final AUTH_FAIL_REASON_YEAR_MISMATCH:I = 0x5d

.field public static final AUTH_REASON:Ljava/lang/String; = "reason"

.field public static final AUTH_SUCCESS:I = 0x0

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_AUTHENTICATION_ADDRESS:Ljava/lang/String; = "address"

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "connectivity_type"

.field public static final EXTRA_ID:Ljava/lang/String; = "extra_id"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field apiState:I

.field isKeyChanged:Z

.field isUrlExist:I

.field mAuthenticationResult:Z

.field private mBundle:Landroid/os/Bundle;

.field mByteArrayExtraData:[B

.field mByteArrayManagerURI:[B

.field mConnectivityType:I

.field mExtraID:[B

.field mReason:I

.field mRequestPkg:Ljava/lang/String;

.field mStringExtraData:Ljava/lang/String;

.field mStringManagerURI:Ljava/lang/String;

.field needKeyChange:Z

.field private publicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mAuthenticationResult:Z

    .line 86
    const/16 v1, 0x5a

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 87
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 91
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .registers 7
    .param p1, "input"    # [B

    .line 226
    if-eqz p1, :cond_28

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_23

    .line 229
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

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 231
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 233
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_28
    const-string/jumbo v0, "null"

    return-object v0
.end method

.method public getApiState()I
    .registers 2

    .line 218
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    return v0
.end method

.method public getByteArrayExtraData()[B
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    return-object v0
.end method

.method public getByteArrayManagerURI()[B
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    return-object v0
.end method

.method public getConnectivityType()I
    .registers 2

    .line 184
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    return v0
.end method

.method public getExtraId()[B
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .registers 2

    .line 202
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    return v0
.end method

.method public getRequestPackage()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getResultBundle()Landroid/os/Bundle;
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    if-eqz v0, :cond_b

    .line 189
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const-string v2, "extra"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 190
    :cond_b
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStringExtraData()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getStringManagerURI()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    return-object v0
.end method

.method public isKeyChanged()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    return v0
.end method

.method public needKeyChange()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    return v0
.end method

.method public setApiState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 222
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 223
    return-void
.end method

.method public setConnectivityType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 180
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    .line 181
    return-void
.end method

.method public setExtraData([B)V
    .registers 4
    .param p1, "data"    # [B

    .line 133
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    .line 134
    if-eqz p1, :cond_1a

    .line 136
    :try_start_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    .line 137
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_14} :catch_15

    .line 140
    goto :goto_1a

    .line 138
    :catch_15
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    .line 142
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method public setExtraId([B)V
    .registers 5
    .param p1, "data"    # [B

    .line 150
    if-eqz p1, :cond_2b

    .line 151
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    .line 152
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    array-length v0, p1

    const/16 v1, 0x17

    if-ne v0, v1, :cond_33

    .line 154
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    const/16 v1, 0x15

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 155
    .local v0, "url":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 156
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_33

    .line 157
    :cond_1f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 158
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_33

    .line 159
    :cond_25
    const/4 v1, 0x3

    if-ne v0, v1, :cond_33

    .line 160
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_33

    .line 163
    .end local v0    # "url":I
    :cond_2b
    sget-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setExtraId : data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_33
    :goto_33
    return-void
.end method

.method public setKeyChanged(Z)V
    .registers 2
    .param p1, "isKeyChanged"    # Z

    .line 198
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    .line 199
    return-void
.end method

.method public setManagerURI([B)V
    .registers 4
    .param p1, "uri"    # [B

    .line 117
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    .line 118
    if-eqz p1, :cond_1a

    .line 120
    :try_start_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_14} :catch_15

    .line 124
    goto :goto_1a

    .line 122
    :catch_15
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    .line 126
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method public setNeedKeyChange(Z)V
    .registers 2
    .param p1, "needKeyChange"    # Z

    .line 113
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    .line 114
    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setReason(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 206
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 207
    const-string/jumbo v0, "reason"

    if-nez p1, :cond_12

    .line 208
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    .line 210
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    .line 211
    return-void

    .line 214
    :cond_12
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    return-void
.end method

.method public setRequestPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 172
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    .line 173
    return-void
.end method
