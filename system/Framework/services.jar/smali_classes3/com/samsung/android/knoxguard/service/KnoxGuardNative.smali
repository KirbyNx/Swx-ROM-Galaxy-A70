.class public Lcom/samsung/android/knoxguard/service/KnoxGuardNative;
.super Ljava/lang/Object;
.source "KnoxGuardNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    }
.end annotation


# static fields
.field private static KGTA_FAILED:I

.field private static KGTA_PARAM_DEFAULT:I

.field public static KG_CMD_CHECKING:I

.field public static KG_CMD_GENERATE_DH_REQUEST:I

.field public static KG_CMD_GENERATE_HOTP_CHANLLENGE:I

.field public static KG_CMD_GET_CLIENT_DATA:I

.field public static KG_CMD_GET_KGID:I

.field public static KG_CMD_GET_LOCK_ACTION:I

.field public static KG_CMD_GET_LOCK_OBJECT:I

.field public static KG_CMD_GET_NONCE:I

.field public static KG_CMD_GET_POLICY:I

.field public static KG_CMD_GET_STATUS:I

.field public static KG_CMD_HDM_STATUS:I

.field public static KG_CMD_LOCK:I

.field public static KG_CMD_PROCESS_KG_ROT:I

.field public static KG_CMD_RPMB_RESET:I

.field public static KG_CMD_SET_CLIENT_DATA:I

.field public static KG_CMD_UNLOCK:I

.field public static KG_CMD_VERIFY_COMPLETETOKEN:I

.field public static KG_CMD_VERIFY_DH_RESPONSE:I

.field public static KG_CMD_VERIFY_HOTP_SECRET:I

.field public static KG_CMD_VERIFY_POLICY:I

.field public static KG_CMD_VERIFY_REGISTRATION_INFO:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-string v0, "KnoxGuardTANative"

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_GET_STATUS:I

    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_VERIFY_REGISTRATION_INFO:I

    .line 28
    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_GENERATE_HOTP_CHANLLENGE:I

    .line 29
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_GENERATE_DH_REQUEST:I

    .line 30
    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_VERIFY_DH_RESPONSE:I

    .line 31
    const/4 v0, 0x6

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_VERIFY_HOTP_SECRET:I

    .line 32
    const/4 v0, 0x7

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_VERIFY_POLICY:I

    .line 33
    const/16 v0, 0x8

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_GET_POLICY:I

    .line 34
    const/16 v0, 0x9

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_LOCK:I

    .line 35
    const/16 v0, 0xa

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_UNLOCK:I

    .line 36
    const/16 v0, 0xb

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_VERIFY_COMPLETETOKEN:I

    .line 37
    const/16 v0, 0xc

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_GET_LOCK_OBJECT:I

    .line 38
    const/16 v0, 0xd

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_GET_LOCK_ACTION:I

    .line 39
    const/16 v0, 0xe

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_SET_CLIENT_DATA:I

    .line 40
    const/16 v0, 0xf

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_GET_CLIENT_DATA:I

    .line 41
    const/16 v0, 0x10

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_GET_KGID:I

    .line 42
    const/16 v0, 0x11

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_RPMB_RESET:I

    .line 43
    const/16 v0, 0x12

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_CHECKING:I

    .line 44
    const/16 v0, 0x13

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_HDM_STATUS:I

    .line 45
    const/16 v0, 0x14

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_PROCESS_KG_ROT:I

    .line 46
    const/16 v0, 0x15

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KG_CMD_GET_NONCE:I

    .line 49
    const/16 v0, -0x3e8

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b2s([B)Ljava/lang/String;
    .registers 3
    .param p0, "barray"    # [B

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "ans":Ljava/lang/String;
    if-eqz p0, :cond_9

    .line 518
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .line 520
    :cond_9
    return-object v0
.end method

.method public static generateHotpDHRequest()Ljava/lang/String;
    .registers 2

    .line 114
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->generateHotpDHRequestRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 115
    .local v0, "res":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_8

    .line 116
    const/4 v1, 0x0

    return-object v1

    .line 118
    :cond_8
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateHotpDHRequestRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 378
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getClientData()Ljava/lang/String;
    .registers 4

    .line 239
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getClientDataRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 240
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_8

    .line 241
    const/4 v1, 0x0

    return-object v1

    .line 243
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClientData - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getClientDataRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 484
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getHdmStatus()Ljava/lang/String;
    .registers 4

    .line 275
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getHdmStatusRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 276
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_8

    .line 277
    const/4 v1, 0x0

    return-object v1

    .line 279
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHdmStatus - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHdmStatusRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 491
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getHdmStatus(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getHotpChallenge()Ljava/lang/String;
    .registers 4

    .line 139
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getHotpChallengeRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 140
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_8

    .line 141
    const/4 v1, 0x0

    return-object v1

    .line 143
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHotpChallenge - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHotpChallengeRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 389
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getKGID()Ljava/lang/String;
    .registers 4

    .line 251
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getKGIDRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 252
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_8

    .line 253
    const/4 v1, 0x0

    return-object v1

    .line 255
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKGID - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getKGIDRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 487
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getKGPolicy()Ljava/lang/String;
    .registers 2

    .line 89
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 90
    .local v0, "err":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_8

    .line 91
    const/4 v1, 0x0

    return-object v1

    .line 94
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->getStr()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 7

    .line 353
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    move-result-object v0

    .line 354
    .local v0, "pm":Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 355
    .local v1, "result":I
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->readData()I

    move-result v1

    .line 356
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_26

    .line 357
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readData failed error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-object v3

    .line 360
    :cond_26
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getPolicyRes()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "policy":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getSignature()Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "signature":Ljava/lang/String;
    if-eqz v2, :cond_42

    if-nez v4, :cond_33

    goto :goto_42

    .line 367
    :cond_33
    sget v3, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v3

    return-object v3

    .line 363
    :cond_42
    :goto_42
    sget-object v5, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v6, "GetKG Policy : policy or signature  null "

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-object v3
.end method

.method public static getLockAction()Ljava/lang/String;
    .registers 4

    .line 215
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getLockActionRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 216
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_8

    .line 217
    const/4 v1, 0x0

    return-object v1

    .line 219
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockAction - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLockActionRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 478
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getLockObject()[B
    .registers 4

    .line 227
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getLockObjectRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 228
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_8

    .line 229
    const/4 v1, 0x0

    return-object v1

    .line 231
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockObject - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    return-object v1
.end method

.method public static getLockObjectRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 481
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "serverMsg"    # Ljava/lang/String;
    .param p1, "serverToken"    # Ljava/lang/String;

    .line 287
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getNonceRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 288
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_8

    .line 289
    const/4 v1, 0x0

    return-object v1

    .line 291
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNonce - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNonceRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 5
    .param p0, "serverMsg"    # Ljava/lang/String;
    .param p1, "serverToken"    # Ljava/lang/String;

    .line 510
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getNonce(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getTAState()I
    .registers 3

    .line 77
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAStateRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 78
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_9

    .line 79
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v1

    .line 81
    :cond_9
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 82
    .local v1, "err":I
    if-nez v1, :cond_10

    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    goto :goto_12

    :cond_10
    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    :goto_12
    return v2
.end method

.method public static getTAStateRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 349
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I
    .registers 12
    .param p0, "actionName"    # Ljava/lang/String;
    .param p1, "clientName"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "skipPin"    # Z
    .param p6, "skipSupport"    # Z
    .param p7, "bundle"    # Landroid/os/Bundle;

    .line 202
    invoke-static/range {p0 .. p7}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->lockScreenRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 203
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_9

    .line 204
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v1

    .line 206
    :cond_9
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockScreen - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 208
    .local v1, "err":I
    if-nez v1, :cond_28

    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    goto :goto_2a

    :cond_28
    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    :goto_2a
    return v2
.end method

.method public static lockScreenRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 17
    .param p0, "actionName"    # Ljava/lang/String;
    .param p1, "clientName"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "skipPin"    # Z
    .param p6, "skipSupport"    # Z
    .param p7, "bundle"    # Landroid/os/Bundle;

    .line 431
    new-instance v8, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 432
    .local v0, "kgl":Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->serialize(Ljava/lang/Object;)[B

    move-result-object v1

    .line 433
    .local v1, "serializedObj":[B
    const/4 v2, 0x0

    if-nez p0, :cond_1d

    .line 434
    sget-object v3, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v4, "lockScreen: empty actionName"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-object v2

    .line 437
    :cond_1d
    if-nez v1, :cond_27

    .line 438
    sget-object v3, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v4, "lockScreen: empty serialzeObj"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-object v2

    .line 442
    :cond_27
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_lockScreen(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v2

    return-object v2
.end method

.method public static resetRPMB()I
    .registers 1

    .line 299
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMB(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static resetRPMB(Ljava/lang/String;)I
    .registers 5
    .param p0, "optional"    # Ljava/lang/String;

    .line 306
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 307
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_9

    .line 308
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v1

    .line 310
    :cond_9
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetRPMB - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 312
    .local v1, "err":I
    if-nez v1, :cond_28

    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    goto :goto_2a

    :cond_28
    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    :goto_2a
    return v2
.end method

.method public static resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 3
    .param p0, "optional"    # Ljava/lang/String;

    .line 498
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_resetRPMB(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method private static s2b(Ljava/lang/String;)[B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 524
    if-nez p0, :cond_4

    .line 525
    const/4 v0, 0x0

    return-object v0

    .line 527
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static serialize(Ljava/lang/Object;)[B
    .registers 9
    .param p0, "obj"    # Ljava/lang/Object;

    .line 446
    const-string v0, "Serialize outstream failed IO exception"

    const-string v1, "Serialize failed IO exception"

    const/4 v2, 0x0

    .line 447
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 448
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    const/4 v4, 0x0

    .line 450
    .local v4, "ret":[B
    if-nez p0, :cond_d

    .line 451
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 454
    :cond_d
    :try_start_d
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v5

    .line 455
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v5

    .line 456
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 457
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_20} :catch_3a
    .catchall {:try_start_d .. :try_end_20} :catchall_38

    move-object v4, v5

    .line 462
    nop

    .line 463
    :try_start_22
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 466
    goto :goto_2c

    .line 464
    :catch_26
    move-exception v5

    .line 465
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2c
    nop

    .line 468
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 471
    :goto_30
    goto :goto_50

    .line 469
    :catch_31
    move-exception v1

    .line 470
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_30

    .line 462
    :catchall_38
    move-exception v5

    goto :goto_51

    .line 459
    :catch_3a
    move-exception v5

    .line 460
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_3b
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    .line 462
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_4a

    .line 463
    :try_start_40
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 466
    goto :goto_4a

    .line 464
    :catch_44
    move-exception v5

    .line 465
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4a
    :goto_4a
    if-eqz v3, :cond_50

    .line 468
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_31

    goto :goto_30

    .line 474
    :cond_50
    :goto_50
    return-object v4

    .line 462
    :goto_51
    if-eqz v2, :cond_5d

    .line 463
    :try_start_53
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    .line 466
    goto :goto_5d

    .line 464
    :catch_57
    move-exception v6

    .line 465
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5d
    :goto_5d
    if-eqz v3, :cond_69

    .line 468
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    .line 471
    goto :goto_69

    .line 469
    :catch_63
    move-exception v1

    .line 470
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v1    # "e":Ljava/io/IOException;
    :cond_69
    :goto_69
    throw v5
.end method

.method public static setClientData(Ljava/lang/String;)I
    .registers 5
    .param p0, "clientData"    # Ljava/lang/String;

    .line 332
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->setClientDataRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 333
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_9

    .line 334
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v1

    .line 336
    :cond_9
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setClientData - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 338
    .local v1, "err":I
    if-nez v1, :cond_28

    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    goto :goto_2a

    :cond_28
    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    :goto_2a
    return v2
.end method

.method public static setClientDataRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 3
    .param p0, "clientData"    # Ljava/lang/String;

    .line 504
    if-nez p0, :cond_9

    .line 505
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v1, "setClientData fail: empty input"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_9
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_setClientData(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method static native tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_getHdmStatus(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_getKGPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_getNonce(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_lockScreen(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_resetRPMB(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_setClientData(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_verifyCompleteToken(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_verifyHOTPPin(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_verifyHOTPsecret(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_verifyHotpDhChallenge(I[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_verifyPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method static native tz_verifyRegistrationInfo(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static unlockScreen()I
    .registers 4

    .line 189
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->unlockScreenRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 190
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_9

    .line 191
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v1

    .line 193
    :cond_9
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockScreen - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 195
    .local v1, "err":I
    if-nez v1, :cond_28

    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    goto :goto_2a

    :cond_28
    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    :goto_2a
    return v2
.end method

.method public static unlockScreenRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 427
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static userChecking()I
    .registers 4

    .line 319
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->userCheckingRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 320
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_9

    .line 321
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v1

    .line 323
    :cond_9
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userChecking - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 325
    .local v1, "err":I
    if-nez v1, :cond_28

    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    goto :goto_2a

    :cond_28
    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    :goto_2a
    return v2
.end method

.method public static userCheckingRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 501
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static verifyCompleteToken(Ljava/lang/String;)I
    .registers 5
    .param p0, "serverCompleteToken"    # Ljava/lang/String;

    .line 101
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyCompleteTokenRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 102
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_9

    .line 103
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v1

    .line 105
    :cond_9
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyCompleteToken - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 107
    .local v1, "err":I
    if-nez v1, :cond_28

    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    goto :goto_2a

    :cond_28
    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    :goto_2a
    return v2
.end method

.method public static verifyCompleteTokenRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 3
    .param p0, "serverCompleteToken"    # Ljava/lang/String;

    .line 370
    if-nez p0, :cond_b

    .line 371
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v1, "verifyCompleteToken input string is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    return-object v0

    .line 374
    :cond_b
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyCompleteToken(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static verifyHOTPPin(Ljava/lang/String;)I
    .registers 5
    .param p0, "pin"    # Ljava/lang/String;

    .line 151
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 152
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_9

    .line 153
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v1

    .line 155
    :cond_9
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyHOTPPin - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 157
    .local v1, "err":I
    if-nez v1, :cond_28

    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    goto :goto_2a

    :cond_28
    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    :goto_2a
    return v2
.end method

.method public static verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 3
    .param p0, "pin"    # Ljava/lang/String;

    .line 393
    if-nez p0, :cond_b

    .line 394
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v1, "verifyHotpPin fail, input null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v0, 0x0

    return-object v0

    .line 397
    :cond_b
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHOTPPin(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static verifyHOTPsecret(Ljava/lang/String;)I
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 61
    if-nez p0, :cond_c

    .line 62
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v1, "verifyHOTPsecret input string is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v0

    .line 65
    :cond_c
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPsecretRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 66
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_15

    .line 67
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v1

    .line 69
    :cond_15
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 70
    .local v1, "err":I
    if-nez v1, :cond_1c

    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    goto :goto_1e

    :cond_1c
    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    :goto_1e
    return v2
.end method

.method public static verifyHOTPsecretRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 342
    if-nez p0, :cond_b

    .line 343
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v1, "verifyHOTPsecret input string is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_b
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHOTPsecret(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static verifyHotpDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p0, "serverDhPub"    # Ljava/lang/String;
    .param p1, "serverDhPubSignature"    # Ljava/lang/String;
    .param p2, "challenge"    # Ljava/lang/String;

    .line 126
    invoke-static {p0, p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHotpDHChallengeRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 127
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_9

    .line 128
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v1

    .line 130
    :cond_9
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyHotpDHChallenge - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 132
    .local v1, "err":I
    if-nez v1, :cond_28

    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    goto :goto_2a

    :cond_28
    iget v2, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    :goto_2a
    return v2
.end method

.method public static verifyHotpDHChallengeRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 7
    .param p0, "serverDhPub"    # Ljava/lang/String;
    .param p1, "serverDhPubSignature"    # Ljava/lang/String;
    .param p2, "challenge"    # Ljava/lang/String;

    .line 381
    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    if-nez p2, :cond_7

    goto :goto_1a

    .line 385
    :cond_7
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHotpDhChallenge(I[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0

    .line 382
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v1, "verifyHotpDHChallenge failed: input null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method public static verifyKgRot()Ljava/lang/String;
    .registers 4

    .line 263
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyKgRotRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 264
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_8

    .line 265
    const/4 v1, 0x0

    return-object v1

    .line 267
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyKgRot - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static verifyKgRotRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 1

    .line 494
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "policy"    # Ljava/lang/String;
    .param p1, "signature"    # Ljava/lang/String;

    .line 176
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyPolicyRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 177
    .local v0, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_8

    .line 178
    const/4 v1, 0x0

    return-object v1

    .line 180
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPolicy - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method public static verifyPolicyRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 10
    .param p0, "policy"    # Ljava/lang/String;
    .param p1, "signature"    # Ljava/lang/String;

    .line 407
    const/4 v0, 0x0

    if-eqz p0, :cond_4a

    if-nez p1, :cond_6

    goto :goto_4a

    .line 411
    :cond_6
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v1

    .line 412
    .local v1, "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v1, :cond_1e

    .line 413
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v2, "verifyPolicy failed, empty return from TA"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-object v1

    .line 416
    :cond_1e
    iget-object v2, v1, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    move-result-object v3

    .line 418
    .local v3, "pm":Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    sget v4, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 419
    .local v4, "ret":I
    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->saveData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 420
    sget v5, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I

    if-eq v4, v5, :cond_49

    .line 421
    sget-object v5, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "store the policy to EFS failed ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-object v0

    .line 424
    :cond_49
    return-object v1

    .line 408
    .end local v1    # "wp":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "pm":Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    .end local v4    # "ret":I
    :cond_4a
    :goto_4a
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v2, "verifyPolicy failed, empty intput"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-object v0
.end method

.method public static verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "regInfo"    # Ljava/lang/String;
    .param p1, "regInfoSignature"    # Ljava/lang/String;

    .line 164
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyRegistrationInfoRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    .line 165
    .local v0, "err":Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    if-nez v0, :cond_8

    .line 166
    const/4 v1, 0x0

    return-object v1

    .line 168
    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyRegistrationInfo - errwrapper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static verifyRegistrationInfoRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .registers 5
    .param p0, "regInfo"    # Ljava/lang/String;
    .param p1, "regInfoSignature"    # Ljava/lang/String;

    .line 400
    if-eqz p0, :cond_14

    if-nez p1, :cond_5

    goto :goto_14

    .line 404
    :cond_5
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyRegistrationInfo(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0

    .line 401
    :cond_14
    :goto_14
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v1, "verifyRegistrationInfo failed input null "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v0, 0x0

    return-object v0
.end method
