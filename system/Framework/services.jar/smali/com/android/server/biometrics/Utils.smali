.class public Lcom/android/server/biometrics/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/Utils$ResourceManager;,
        Lcom/android/server/biometrics/Utils$BioBgThread;,
        Lcom/android/server/biometrics/Utils$BioFpMainThread;,
        Lcom/android/server/biometrics/Utils$BioFaceMainThread;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final DEBUG_LEVEL_MID:Ljava/lang/String; = "0x494d"

.field private static final IS_DEBUG_LEVEL_MID:Z

.field private static final RO_BOOT_DEBUG_LEVEL:Ljava/lang/String; = "ro.boot.debug_level"

.field private static final RO_DEBUG_LEVEL:Ljava/lang/String; = "ro.debug_level"

.field private static final TAG:Ljava/lang/String; = "BiometricUtils"

.field private static mDeviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 87
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 92
    const-string/jumbo v0, "ro.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0x494d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 93
    const-string/jumbo v0, "ro.boot.debug_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    sput-boolean v0, Lcom/android/server/biometrics/Utils;->IS_DEBUG_LEVEL_MID:Z

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/biometrics/Utils;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static biometricConstantsToBiometricManager(I)I
    .registers 3
    .param p0, "biometricConstantsCode"    # I

    .line 320
    if-eqz p0, :cond_38

    const/4 v0, 0x1

    if-eq p0, v0, :cond_36

    const/16 v0, 0xb

    if-eq p0, v0, :cond_33

    const/16 v0, 0xc

    if-eq p0, v0, :cond_30

    const/16 v0, 0xe

    if-eq p0, v0, :cond_33

    const/16 v0, 0xf

    if-eq p0, v0, :cond_2d

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x1

    .local v0, "biometricManagerCode":I
    goto :goto_3a

    .line 335
    .end local v0    # "biometricManagerCode":I
    :cond_2d
    const/16 v0, 0xf

    .line 336
    .restart local v0    # "biometricManagerCode":I
    goto :goto_3a

    .line 332
    .end local v0    # "biometricManagerCode":I
    :cond_30
    const/16 v0, 0xc

    .line 333
    .restart local v0    # "biometricManagerCode":I
    goto :goto_3a

    .line 326
    .end local v0    # "biometricManagerCode":I
    :cond_33
    const/16 v0, 0xb

    .line 327
    .restart local v0    # "biometricManagerCode":I
    goto :goto_3a

    .line 329
    .end local v0    # "biometricManagerCode":I
    :cond_36
    const/4 v0, 0x1

    .line 330
    .restart local v0    # "biometricManagerCode":I
    goto :goto_3a

    .line 322
    .end local v0    # "biometricManagerCode":I
    :cond_38
    const/4 v0, 0x0

    .line 323
    .restart local v0    # "biometricManagerCode":I
    nop

    .line 342
    :goto_3a
    return v0
.end method

.method public static combineAuthenticatorBundles(Landroid/os/Bundle;)V
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 167
    nop

    .line 168
    const-string v0, "allow_device_credential"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 169
    .local v2, "deviceCredentialAllowed":Z
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 172
    const-string v0, "authenticators_allowed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 174
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, "authenticators":I
    goto :goto_21

    .line 177
    .end local v1    # "authenticators":I
    :cond_18
    if-eqz v2, :cond_1e

    .line 178
    const v1, 0x80ff

    goto :goto_20

    .line 179
    :cond_1e
    const/16 v1, 0xff

    :goto_20
    nop

    .line 182
    .restart local v1    # "authenticators":I
    :goto_21
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    return-void
.end method

.method private static containsFlag(II)Z
    .registers 3
    .param p0, "haystack"    # I
    .param p1, "needle"    # I

    .line 149
    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static generateClassFieldNameMap(Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 14
    .param p0, "classInfo"    # Ljava/lang/Class;
    .param p1, "prefixs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 643
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 644
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "BiometricUtils"

    if-eqz p0, :cond_55

    if-nez p1, :cond_c

    goto :goto_55

    .line 648
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 650
    .local v2, "fields":[Ljava/lang/reflect/Field;
    :try_start_10
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ge v5, v3, :cond_39

    aget-object v6, v2, v5

    .line 651
    .local v6, "field":Ljava/lang/reflect/Field;
    array-length v7, p1

    move v8, v4

    :goto_19
    if-ge v8, v7, :cond_36

    aget-object v9, p1, v8

    .line 652
    .local v9, "prefix":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 653
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    .line 654
    .local v10, "fieldValue":I
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_33} :catch_3a

    .line 651
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v10    # "fieldValue":I
    :cond_33
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 650
    .end local v6    # "field":Ljava/lang/reflect/Field;
    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 660
    :cond_39
    goto :goto_54

    .line 658
    :catch_3a
    move-exception v3

    .line 659
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "generateClassFieldNameMap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_54
    return-object v0

    .line 645
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_55
    :goto_55
    const-string/jumbo v2, "generateClassFieldNameMap: Invalid param"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-object v0
.end method

.method public static getAuthenticationTypeForResult(I)I
    .registers 4
    .param p0, "reason"    # I

    .line 358
    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v1, 0x4

    if-eq p0, v1, :cond_21

    const/4 v1, 0x7

    if-ne p0, v1, :cond_a

    .line 360
    return v0

    .line 367
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dismissal reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_21
    const/4 v0, 0x2

    return v0
.end method

.method public static getFloatDb(Landroid/content/Context;Ljava/lang/String;ZF)F
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Ljava/lang/String;
    .param p2, "isSecure"    # Z
    .param p3, "defValue"    # F

    .line 738
    move v0, p3

    .line 739
    .local v0, "ret":F
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 741
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, -0x2

    if-eqz p2, :cond_e

    .line 742
    :try_start_8
    invoke-static {v1, p1, p3, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    move v0, v2

    goto :goto_13

    .line 744
    :cond_e
    invoke-static {v1, p1, p3, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_14

    move v0, v2

    .line 748
    :goto_13
    goto :goto_30

    .line 746
    :catch_14
    move-exception v2

    .line 747
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getIntDb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_30
    return v0
.end method

.method public static getHexStringFromByteArray([B)Ljava/lang/String;
    .registers 8
    .param p0, "data"    # [B

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_23

    aget-byte v4, p0, v3

    .line 755
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v6, v4, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x "

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 757
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Ljava/lang/String;
    .param p2, "isSecure"    # Z
    .param p3, "defValue"    # I

    .line 704
    const/4 v0, -0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZII)I

    move-result v0

    return v0
.end method

.method public static getIntDb(Landroid/content/Context;Ljava/lang/String;ZII)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Ljava/lang/String;
    .param p2, "isSecure"    # Z
    .param p3, "defValue"    # I
    .param p4, "userId"    # I

    .line 708
    move v0, p3

    .line 709
    .local v0, "ret":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 711
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz p2, :cond_d

    .line 712
    :try_start_7
    invoke-static {v1, p1, p3, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    move v0, v2

    goto :goto_12

    .line 714
    :cond_d
    invoke-static {v1, p1, p3, p4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_13

    move v0, v2

    .line 718
    :goto_12
    goto :goto_2f

    .line 716
    :catch_13
    move-exception v2

    .line 717
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getIntDb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2f
    return v0
.end method

.method public static getLogFormat(Landroid/os/Message;)Ljava/lang/String;
    .registers 7
    .param p0, "msg"    # Landroid/os/Message;

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleMessage = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 859
    .local v0, "log":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 860
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v2, :cond_49

    .line 861
    const-string v2, ", { when="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {p0}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 863
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_44

    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    :cond_44
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLongDb(Landroid/content/Context;Ljava/lang/String;ZJI)J
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Ljava/lang/String;
    .param p2, "isSecure"    # Z
    .param p3, "defValue"    # J
    .param p5, "userId"    # I

    .line 723
    move-wide v0, p3

    .line 724
    .local v0, "ret":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 726
    .local v2, "cr":Landroid/content/ContentResolver;
    if-eqz p2, :cond_d

    .line 727
    :try_start_7
    invoke-static {v2, p1, p3, p4, p5}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v3

    move-wide v0, v3

    goto :goto_12

    .line 729
    :cond_d
    invoke-static {v2, p1, p3, p4, p5}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_13

    move-wide v0, v3

    .line 733
    :goto_12
    goto :goto_2f

    .line 731
    :catch_13
    move-exception v3

    .line 732
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLongDb: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BiometricUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2f
    return-wide v0
.end method

.method public static getPublicBiometricStrength(I)I
    .registers 2
    .param p0, "authenticators"    # I

    .line 209
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getPublicBiometricStrength(Landroid/os/Bundle;)I
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 219
    nop

    .line 220
    const-string v0, "authenticators_allowed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 219
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result v0

    return v0
.end method

.method public static getSensorConfiguration()[Ljava/lang/String;
    .registers 2

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v0, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "0:2:15"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    const-string v1, "1:8:255"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getTopTaskPackageName()Ljava/lang/String;
    .registers 6

    .line 872
    const-string v0, "BiometricUtils"

    const-string v1, ""

    .line 873
    .local v1, "topPackage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 875
    .local v2, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :try_start_5
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/app/IActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 876
    if-eqz v2, :cond_25

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 877
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_24} :catch_26

    move-object v1, v3

    .line 881
    :cond_25
    goto :goto_40

    .line 879
    :catch_26
    move-exception v3

    .line 880
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTopTaskPackageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_40
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v3, :cond_58

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Top: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_58
    return-object v1
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 532
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isAtLeastStrength(II)Z
    .registers 6
    .param p0, "sensorStrength"    # I
    .param p1, "requestedStrength"    # I

    .line 240
    and-int/lit16 p0, p0, 0x7fff

    .line 243
    not-int v0, p1

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 244
    return v1

    .line 247
    :cond_8
    const/4 v0, 0x1

    .line 248
    .local v0, "i":I
    :goto_9
    if-gt v0, p1, :cond_14

    .line 249
    const/4 v2, 0x1

    if-ne v0, p0, :cond_f

    .line 250
    return v2

    .line 248
    :cond_f
    shl-int/lit8 v3, v0, 0x1

    or-int/lit8 v0, v3, 0x1

    goto :goto_9

    .line 254
    .end local v0    # "i":I
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sensorStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestedStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricService"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v1
.end method

.method public static isAutoTime(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 902
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method public static isBiometricRequested(Landroid/os/Bundle;)Z
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 230
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isCredentialRequested(I)Z
    .registers 2
    .param p0, "authenticators"    # I

    .line 190
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isCredentialRequested(Landroid/os/Bundle;)Z
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 198
    const-string v0, "authenticators_allowed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v0

    return v0
.end method

.method public static isCutoutNotchHidden(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_cutout_hide_notch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method public static isDebugEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetUserId"    # I

    .line 99
    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p1, v1, :cond_6

    .line 100
    return v0

    .line 103
    :cond_6
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-nez v1, :cond_f

    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_f

    .line 104
    return v0

    .line 107
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "biometric_debug_enabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1c

    .line 110
    return v0

    .line 112
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public static isDebugLevelMid()Z
    .registers 1

    .line 500
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->IS_DEBUG_LEVEL_MID:Z

    return v0
.end method

.method public static isDexMode(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualDexMode(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public static isFactoryBinary()Z
    .registers 2

    .line 574
    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    const-string v1, "factory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 574
    return v0
.end method

.method public static isFlipFolded(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 891
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 892
    return v1

    .line 894
    :cond_6
    const-string/jumbo v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result v0

    .line 895
    .local v0, "lidState":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b

    .line 896
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    move v1, v2

    :cond_1a
    return v1

    .line 898
    :cond_1b
    return v1
.end method

.method public static isForeground(II)Z
    .registers 9
    .param p0, "callingUid"    # I
    .param p1, "callingPid"    # I

    .line 118
    const-string v0, "BiometricUtils"

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v2, 0x1

    if-nez v1, :cond_13

    .line 120
    const-string v3, "No running app processes found, defaulting to true"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v2

    .line 124
    :cond_13
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 125
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 126
    .local v4, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_2f

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p0, :cond_2f

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2a} :catch_33

    const/16 v6, 0x7d

    if-gt v5, v6, :cond_2f

    .line 128
    return v2

    .line 124
    .end local v4    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 133
    .end local v1    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "i":I
    :cond_32
    goto :goto_39

    .line 131
    :catch_33
    move-exception v1

    .line 132
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "am.getRunningAppProcesses() failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_39
    const/4 v0, 0x0

    return v0
.end method

.method public static isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 138
    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 141
    .local v0, "hasPermission":Z
    :goto_d
    nop

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10402f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 143
    .local v3, "keyguardComponent":Landroid/content/ComponentName;
    if-eqz v3, :cond_24

    .line 144
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_25

    :cond_24
    const/4 v4, 0x0

    .line 145
    .local v4, "keyguardPackage":Ljava/lang/String;
    :goto_25
    if-eqz v0, :cond_30

    if-eqz v4, :cond_30

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    return v1
.end method

.method public static isOneHandMode(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 617
    const-string v0, "any_screen_running"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v1, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZII)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v1, v2

    :cond_c
    return v1
.end method

.method public static isSmartViewDisplayWithFitToAspectRatio(Landroid/content/Context;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 623
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 624
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    nop

    .line 625
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_23

    .line 626
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_23

    move v1, v2

    goto :goto_24

    :cond_23
    move v1, v3

    .line 627
    .local v1, "isWifiDisplayConnected":Z
    :goto_24
    const/4 v4, 0x4

    .line 628
    .local v4, "ROUTE_TYPE_REMOTE_DISPLAY":I
    const-string/jumbo v5, "media_router"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRouter;

    .line 629
    .local v5, "router":Landroid/media/MediaRouter;
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v7

    .line 631
    .local v7, "selectedRoute":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v8

    and-int/2addr v6, v8

    if-eqz v6, :cond_65

    .line 632
    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->semGetDeviceAddress()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_65

    .line 633
    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->semGetStatusCode()I

    move-result v6

    const/4 v8, 0x6

    if-ne v6, v8, :cond_65

    .line 634
    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v6

    if-nez v6, :cond_63

    .line 635
    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_65

    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Audio"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_65

    :cond_63
    move v6, v2

    goto :goto_66

    :cond_65
    move v6, v3

    .line 636
    .local v6, "isGoogleCastConnected":Z
    :goto_66
    if-nez v1, :cond_6a

    if-eqz v6, :cond_71

    :cond_6a
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semIsFitToActiveDisplay()Z

    move-result v8

    if-eqz v8, :cond_71

    .line 637
    return v2

    .line 639
    :cond_71
    return v3
.end method

.method public static isTablet()Z
    .registers 2

    .line 838
    sget-object v0, Lcom/android/server/biometrics/Utils;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 839
    sget-object v0, Lcom/android/server/biometrics/Utils;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 841
    :cond_14
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/Utils;->mDeviceType:Ljava/lang/String;

    .line 842
    if-eqz v0, :cond_27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 606
    nop

    .line 607
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 608
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .registers 9
    .param p0, "lpu"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "user"    # I

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    .line 154
    .local v0, "strongAuth":I
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v2

    .line 155
    .local v2, "isEncrypted":Z
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1c

    const/16 v3, 0x20

    .line 156
    invoke-static {v0, v3}, Lcom/android/server/biometrics/Utils;->containsFlag(II)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_1c

    :cond_1a
    move v3, v4

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v3, v1

    .line 157
    .local v3, "isLockDown":Z
    :goto_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isEncrypted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isLockdown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BiometricUtils"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-nez v2, :cond_42

    if-eqz v3, :cond_41

    goto :goto_42

    :cond_41
    move v1, v4

    :cond_42
    :goto_42
    return v1
.end method

.method public static isValidAuthenticatorConfig(I)Z
    .registers 7
    .param p0, "authenticators"    # I

    .line 276
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 277
    return v0

    .line 282
    :cond_4
    const/high16 v1, -0x10000

    .line 284
    .local v1, "testBits":I
    const/high16 v2, -0x10000

    and-int/2addr v2, p0

    const/4 v3, 0x0

    const-string v4, "BiometricService"

    if-eqz v2, :cond_23

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-biometric, non-credential bits found. Authenticators: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v3

    .line 292
    :cond_23
    and-int/lit16 v2, p0, 0x7fff

    .line 293
    .local v2, "biometricBits":I
    if-nez v2, :cond_2e

    .line 294
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 295
    return v0

    .line 296
    :cond_2e
    const/16 v5, 0xf

    if-ne v2, v5, :cond_33

    .line 297
    return v0

    .line 298
    :cond_33
    const/16 v5, 0xff

    if-ne v2, v5, :cond_38

    .line 299
    return v0

    .line 302
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported biometric flags. Authenticators: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return v3
.end method

.method public static isValidAuthenticatorConfig(Landroid/os/Bundle;)Z
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 265
    const-string v0, "authenticators_allowed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 266
    .local v0, "authenticators":I
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result v1

    return v1
.end method

.method public static putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Ljava/lang/String;
    .param p2, "isSecure"    # Z
    .param p3, "value"    # I

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 667
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, -0x2

    if-eqz p2, :cond_b

    .line 668
    :try_start_7
    invoke-static {v0, p1, p3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_e

    .line 670
    :cond_b
    invoke-static {v0, p1, p3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 674
    :goto_e
    goto :goto_2b

    .line 672
    :catch_f
    move-exception v1

    .line 673
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "putIntDb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public static putIntDb(Landroid/content/Context;Ljava/lang/String;ZII)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Ljava/lang/String;
    .param p2, "isSecure"    # Z
    .param p3, "value"    # I
    .param p4, "userId"    # I

    .line 678
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 680
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p2, :cond_a

    .line 681
    :try_start_6
    invoke-static {v0, p1, p3, p4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_d

    .line 683
    :cond_a
    invoke-static {v0, p1, p3, p4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    .line 687
    :goto_d
    goto :goto_2a

    .line 685
    :catch_e
    move-exception v1

    .line 686
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "putIntDb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method public static putLongDb(Landroid/content/Context;Ljava/lang/String;ZJI)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Ljava/lang/String;
    .param p2, "isSecure"    # Z
    .param p3, "value"    # J
    .param p5, "userId"    # I

    .line 691
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 693
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p2, :cond_a

    .line 694
    :try_start_6
    invoke-static {v0, p1, p3, p4, p5}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    goto :goto_d

    .line 696
    :cond_a
    invoke-static {v0, p1, p3, p4, p5}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    .line 700
    :goto_d
    goto :goto_2a

    .line 698
    :catch_e
    move-exception v1

    .line 699
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "putLongDb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method public static readFile(Ljava/io/File;)[B
    .registers 8
    .param p0, "file"    # Ljava/io/File;

    .line 537
    const-string v0, "failed to close file"

    const-string v1, "BiometricUtils"

    if-eqz p0, :cond_67

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_67

    .line 541
    :cond_d
    const/4 v2, 0x0

    .line 542
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 544
    .local v3, "buffer":[B
    :try_start_f
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 545
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [B

    move-object v3, v4

    .line 546
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_3a
    .catchall {:try_start_f .. :try_end_21} :catchall_38

    if-lez v4, :cond_2e

    .line 547
    nop

    .line 553
    nop

    .line 554
    :try_start_25
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    .line 558
    goto :goto_2d

    .line 556
    :catch_29
    move-exception v4

    .line 557
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2d
    return-object v3

    .line 553
    :cond_2e
    nop

    .line 554
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    .line 558
    :cond_32
    :goto_32
    goto :goto_59

    .line 556
    :catch_33
    move-exception v4

    .line 557
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_59

    .line 552
    :catchall_38
    move-exception v4

    goto :goto_5a

    .line 549
    :catch_3a
    move-exception v4

    .line 550
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failure to read file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_38

    .line 553
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_32

    .line 554
    :try_start_55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_33

    goto :goto_32

    .line 560
    :goto_59
    return-object v3

    .line 553
    :goto_5a
    if-eqz v2, :cond_65

    .line 554
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_65

    .line 556
    :catch_60
    move-exception v5

    .line 557
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    .line 558
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_65
    :goto_65
    nop

    .line 559
    :goto_66
    throw v4

    .line 538
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "buffer":[B
    :cond_67
    :goto_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file info, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v0, 0x0

    return-object v0
.end method

.method public static registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "intent"    # Landroid/content/IntentFilter;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 581
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v5, p4

    :try_start_6
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    .line 584
    goto :goto_13

    .line 582
    :catch_a
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BiometricUtils"

    const-string/jumbo v2, "registerBroadcast: failed to set receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13
    return-void
.end method

.method public static registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "intent"    # Landroid/content/IntentFilter;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "perm"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 590
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    :try_start_6
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    .line 593
    goto :goto_13

    .line 591
    :catch_a
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BiometricUtils"

    const-string/jumbo v2, "registerBroadcast: failed to set receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13
    return-void
.end method

.method public static unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 598
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 601
    goto :goto_d

    .line 599
    :catch_4
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BiometricUtils"

    const-string/jumbo v2, "unregisterBroadcast: failed to set receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    return-void
.end method

.method public static useOwnerBiometrics(I)Z
    .registers 4
    .param p0, "userId"    # I

    .line 762
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "BiometricUtils"

    if-eqz v0, :cond_10

    .line 763
    const-string/jumbo v0, "useOwnerBiometrics: SecureFolder profile!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return v1

    .line 767
    :cond_10
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 768
    const-string/jumbo v0, "useOwnerBiometrics: DualApp profile!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return v1

    .line 771
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public static writeFile(Ljava/io/File;[B)Z
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "buffer"    # [B

    .line 564
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_17

    .line 565
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 566
    const/4 v1, 0x1

    .line 567
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_17

    .line 566
    return v1

    .line 564
    :catchall_d
    move-exception v1

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v2

    :try_start_13
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "buffer":[B
    :goto_16
    throw v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_17

    .line 567
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "buffer":[B
    :catch_17
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BiometricUtils"

    const-string/jumbo v2, "writeFile: failed to write file"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method
