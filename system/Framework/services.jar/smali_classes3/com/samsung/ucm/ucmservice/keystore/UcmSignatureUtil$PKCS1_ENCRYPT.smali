.class Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1_ENCRYPT;
.super Ljava/lang/Object;
.source "UcmSignatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PKCS1_ENCRYPT"
.end annotation


# static fields
.field private static final ALGORITHM_SET:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1_ENCRYPT;->ALGORITHM_SET:Ljava/util/HashSet;

    .line 41
    const-string v1, "rsa/ecb/nopadding"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1_ENCRYPT;->ALGORITHM_SET:Ljava/util/HashSet;

    const-string v1, "rsa/ecb/pkcs1padding"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method static isMDandPrefixNeeded(Ljava/lang/String;)Z
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1_ENCRYPT;->ALGORITHM_SET:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static processInput([BLjava/lang/String;)[B
    .registers 3
    .param p0, "input"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil$PKCS1_ENCRYPT;->isMDandPrefixNeeded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_8
    return-object p0
.end method
