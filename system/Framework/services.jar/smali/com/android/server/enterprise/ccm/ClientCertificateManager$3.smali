.class synthetic Lcom/android/server/enterprise/ccm/ClientCertificateManager$3;
.super Ljava/lang/Object;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$knox$keystore$CCMProfile$AccessControlMethod:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 6463
    invoke-static {}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->values()[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$3;->$SwitchMap$com$samsung$android$knox$keystore$CCMProfile$AccessControlMethod:[I

    :try_start_9
    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->USER_AUTH:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    return-void
.end method
