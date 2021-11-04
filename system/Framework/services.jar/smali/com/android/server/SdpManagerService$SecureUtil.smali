.class public Lcom/android/server/SdpManagerService$SecureUtil;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureUtil"
.end annotation


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field public static final ORDER_BASE:I = 0x1

.field public static final ORDER_EPHEM_DRIVEN:I = 0x4

.field public static final ORDER_MANAGED_DRIVEN:I = 0x8

.field public static final ORDER_PASSWORD_DRIVEN:I = 0x1

.field public static final ORDER_SCORE_DRIVEN:I = 0x10

.field public static final ORDER_TOKEN_DRIVEN:I = 0x2

.field public static final RESET_TOKEN:Ljava/lang/String; = "SdpResetToken"

.field public static final SECURE_DATA_KEY:Ljava/lang/String; = "SdpSecureDataKey"

.field public static final TOKEN_HANDLE:Ljava/lang/String; = "SdpTokenHandle"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 8
    .param p0, "bytes"    # [B

    .line 4354
    const-string v0, ""

    .line 4355
    .local v0, "ret":Ljava/lang/String;
    if-nez p0, :cond_8

    .line 4356
    const-string/jumbo v0, "null"

    goto :goto_50

    .line 4358
    :cond_8
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_50

    aget-byte v3, p0, v2

    .line 4359
    .local v3, "b":B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    const-string v6, "0123456789ABCDEF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v3, 0xf

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4358
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4364
    :cond_50
    :goto_50
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static clear(Ljava/lang/String;)V
    .registers 1
    .param p0, "string"    # Ljava/lang/String;

    .line 4322
    nop

    .line 4325
    return-void
.end method

.method public static clear([B)V
    .registers 3
    .param p0, "bytes"    # [B

    .line 4317
    if-nez p0, :cond_3

    return-void

    .line 4318
    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 4319
    return-void
.end method

.method public static varargs clearAll([Ljava/lang/Object;)V
    .registers 5
    .param p0, "objs"    # [Ljava/lang/Object;

    .line 4300
    if-eqz p0, :cond_25

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_25

    .line 4304
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_24

    aget-object v2, p0, v1

    .line 4305
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, [B

    if-eqz v3, :cond_17

    .line 4306
    move-object v3, v2

    check-cast v3, [B

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 4307
    goto :goto_21

    .line 4309
    :cond_17
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_21

    .line 4310
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->clear(Ljava/lang/String;)V

    .line 4304
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4314
    :cond_24
    return-void

    .line 4301
    :cond_25
    :goto_25
    return-void
.end method

.method public static copy(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .line 4328
    if-nez p0, :cond_4

    .line 4329
    const/4 v0, 0x0

    return-object v0

    .line 4331
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateRandomBytes(I)[B
    .registers 2
    .param p0, "length"    # I

    .line 4339
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs isAnyoneEmptyHere([Ljava/lang/Object;)Z
    .registers 7
    .param p0, "objs"    # [Ljava/lang/Object;

    .line 4288
    const/4 v0, 0x1

    if-eqz p0, :cond_19

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_19

    .line 4291
    :cond_7
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_18

    aget-object v4, p0, v3

    .line 4292
    .local v4, "obj":Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 4293
    return v0

    .line 4291
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 4296
    :cond_18
    return v2

    .line 4289
    :cond_19
    :goto_19
    return v0
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 4282
    if-eqz p0, :cond_1c

    instance-of v0, p0, [B

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, [B

    array-length v0, v0

    if-eqz v0, :cond_1c

    :cond_c
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 4284
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    .line 4282
    :goto_1d
    return v0
.end method

.method public static isFailed(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 4277
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_d
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 4278
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 4277
    :goto_1d
    return v0
.end method

.method public static record(Z)Z
    .registers 4
    .param p0, "result"    # Z

    .line 4343
    if-nez p0, :cond_29

    .line 4344
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 4347
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 4344
    const-string v1, "Unexpected failure with a process [ UID : %d, PID : %d ]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4348
    .local v0, "errorMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/Exception;)V

    .line 4350
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_29
    return p0
.end method

.method public static safe(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 4335
    .local p0, "unsafe":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method
