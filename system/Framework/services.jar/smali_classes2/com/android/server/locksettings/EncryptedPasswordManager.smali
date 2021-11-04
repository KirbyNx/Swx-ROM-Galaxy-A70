.class public Lcom/android/server/locksettings/EncryptedPasswordManager;
.super Ljava/lang/Object;
.source "EncryptedPasswordManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final HDR_CHARS:[C

.field private static final HEADER:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "EncryptedPasswordManager"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/server/locksettings/EncryptedPasswordManager;->HDR_CHARS:[C

    .line 17
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/locksettings/EncryptedPasswordManager;->HDR_CHARS:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/server/locksettings/EncryptedPasswordManager;->HEADER:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/locksettings/EncryptedPasswordManager;->DEBUG:Z

    return-void

    nop

    :array_22
    .array-data 2
        0xdds
        0xdes
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeToHex([B)Ljava/lang/String;
    .registers 9
    .param p0, "bytes"    # [B

    .line 70
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_2e

    .line 72
    .local v0, "DIGITS":[C
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 73
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 75
    .local v2, "c":I
    array-length v3, p0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_28

    aget-byte v5, p0, v4

    .line 76
    .local v5, "b":B
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "c":I
    .local v6, "c":I
    shr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v0, v7

    aput-char v7, v1, v2

    .line 77
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "c":I
    .restart local v2    # "c":I
    and-int/lit8 v7, v5, 0xf

    aget-char v7, v0, v7

    aput-char v7, v1, v6

    .line 75
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 80
    :cond_28
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3

    :array_2e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "password"    # Ljava/lang/String;

    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 38
    .local v0, "pwdBytes":[B
    invoke-static {v0}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encryptPassword([B)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "encryptedPwd":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_18

    .line 41
    const/4 v3, 0x0

    aput-byte v3, v0, v2

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 44
    .end local v2    # "i":I
    :cond_18
    return-object v1
.end method

.method public static encryptPassword([B)Ljava/lang/String;
    .registers 9
    .param p0, "pwBytes"    # [B

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const/4 v0, 0x0

    .line 53
    .local v0, "ep":Ljava/lang/String;
    array-length v1, p0

    .line 54
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x2

    .line 55
    .local v2, "mid":I
    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    .line 56
    .local v3, "payload":[B
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 58
    sget-object v4, Lcom/android/server/locksettings/EncryptedPasswordManager;->HDR_CHARS:[C

    const/4 v5, 0x0

    aget-char v6, v4, v5

    int-to-byte v6, v6

    aget-byte v5, v3, v5

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 59
    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    aget-char v4, v4, v6

    int-to-byte v4, v4

    aget-byte v6, v3, v6

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 60
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2d
    if-ge v4, v1, :cond_3f

    .line 61
    add-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v4

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, v3, v6

    aget-byte v7, p0, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 60
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 64
    .end local v4    # "i":I
    :cond_3f
    invoke-static {v3}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encodeToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0
.end method
