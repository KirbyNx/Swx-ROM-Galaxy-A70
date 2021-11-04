.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;
.super Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;
.source "NTLMType1Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType1Message"

.field private static defaultFlagSet:I


# instance fields
.field private domain:Ljava/lang/String;

.field private type1MessageString:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const v0, 0x88207

    sput v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->defaultFlagSet:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 45
    sget v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->defaultFlagSet:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(II)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "workstation"    # Ljava/lang/String;

    .line 51
    sget v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->defaultFlagSet:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(II)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setFlags(I)V

    .line 53
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .registers 11

    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 60
    return-object v0

    .line 61
    :cond_5
    const/4 v0, 0x0

    .local v0, "domainBytes":[B
    const/4 v1, 0x0

    .line 63
    .local v1, "workstationBytes":[B
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_9} :catch_92

    const-string v3, "Cp850"

    const/4 v4, 0x1

    const/16 v5, 0x1000

    const/4 v6, 0x0

    if-eqz v2, :cond_28

    :try_start_11
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_28

    .line 64
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object v0, v2

    .line 65
    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setThisFlag(IZ)V

    goto :goto_2b

    .line 67
    :cond_28
    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setThisFlag(IZ)V

    .line 69
    :goto_2b
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    const/16 v7, 0x2000

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_48

    .line 70
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object v1, v2

    .line 71
    invoke-virtual {p0, v7, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setThisFlag(IZ)V

    goto :goto_4b

    .line 73
    :cond_48
    invoke-virtual {p0, v7, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setThisFlag(IZ)V

    .line 75
    :goto_4b
    if-nez v0, :cond_4f

    move v2, v6

    goto :goto_50

    :cond_4f
    array-length v2, v0

    .line 76
    :goto_50
    if-nez v1, :cond_54

    move v3, v6

    goto :goto_55

    :cond_54
    array-length v3, v1

    :goto_55
    add-int/2addr v2, v3

    const/16 v3, 0x20

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 77
    .local v2, "finalMessageBytes":[B
    sget-object v8, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->NTLM_HEADER_BYTES:[B

    const/16 v9, 0x8

    invoke-static {v8, v6, v2, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    const/4 v8, 0x4

    invoke-static {v2, v9, v4, v8}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    .line 79
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->getFlags()I

    move-result v9

    invoke-static {v2, v4, v9, v8}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    .line 80
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 81
    const/16 v4, 0x10

    invoke-static {v2, v4, v3, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 82
    :cond_7a
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 83
    const/16 v4, 0x18

    .line 84
    if-nez v0, :cond_85

    goto :goto_86

    :cond_85
    array-length v6, v0

    :goto_86
    add-int/2addr v3, v6

    .line 83
    invoke-static {v2, v4, v3, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 86
    :cond_8a
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;
    :try_end_91
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_91} :catch_92

    .line 87
    return-object v3

    .line 88
    .end local v2    # "finalMessageBytes":[B
    :catch_92
    move-exception v2

    .line 90
    const/4 v2, 0x0

    return-object v2
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    return-void
.end method
