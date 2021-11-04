.class Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
.super Ljava/lang/Object;
.source "SdpServiceKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpServiceKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdpPolicyDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;
    }
.end annotation


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_PKG:Ljava/lang/String; = "pkg_name"

.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final DEBUG:Z = true

.field private static final ELEMENT_OWNER:Ljava/lang/String; = "owner"

.field private static final ELEMENT_PRIVILEGED_APP:Ljava/lang/String; = "privileged_app"

.field private static final ELEMENT_ROOT:Ljava/lang/String; = "engine_policy"

.field private static final MAX_SALT_LENGTH:I = 0x20


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "c"    # Landroid/content/Context;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/SdpServiceKeeper$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/server/SdpServiceKeeper$1;

    .line 525
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
    .param p1, "x1"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "x2"    # Lcom/android/server/sdp/engine/SdpPolicy;

    .line 525
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->putPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
    .param p1, "x1"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 525
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
    .param p1, "x1"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 525
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->removePolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method private byteToHex([B)Ljava/lang/String;
    .registers 9
    .param p1, "bytes"    # [B

    .line 841
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 842
    .local v0, "result":Ljava/lang/StringBuffer;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_21

    aget-byte v4, p1, v3

    .line 843
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 842
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 844
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateHash([BLjava/io/File;)[B
    .registers 11
    .param p1, "salt"    # [B
    .param p2, "f"    # Ljava/io/File;

    .line 771
    const-string v0, "SdpServiceKeeper"

    const-string v1, "SHA-256"

    .line 772
    .local v1, "alg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 777
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_5
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 778
    .local v3, "md":Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 779
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 781
    .local v4, "dataBytes":[B
    const/4 v5, 0x0

    .line 782
    .local v5, "readBytes":I
    :goto_14
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v5, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_21

    .line 783
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_14

    .line 786
    :cond_21
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 790
    .local v6, "sha":[B
    array-length v7, v6

    if-lez v7, :cond_2f

    .line 791
    invoke-direct {p0, v6}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->byteToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_2f} :catch_56
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_2f} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_3c
    .catchall {:try_start_5 .. :try_end_2f} :catchall_3a

    .line 792
    :cond_2f
    nop

    .line 801
    nop

    .line 802
    :try_start_31
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    .line 806
    goto :goto_39

    .line 804
    :catch_35
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 792
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_39
    return-object v6

    .line 800
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "dataBytes":[B
    .end local v5    # "readBytes":I
    .end local v6    # "sha":[B
    :catchall_3a
    move-exception v0

    goto :goto_73

    .line 797
    :catch_3c
    move-exception v0

    .line 798
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    .line 801
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_4b

    .line 802
    :try_start_42
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4b

    .line 804
    :catch_46
    move-exception v0

    .line 805
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 807
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_71

    .line 806
    :cond_4b
    :goto_4b
    goto :goto_71

    .line 795
    :catch_4c
    move-exception v0

    .line 796
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_3a

    .line 801
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_4b

    .line 802
    :try_start_52
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_46

    goto :goto_4b

    .line 793
    :catch_56
    move-exception v3

    .line 794
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to hash : missing algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_57 .. :try_end_6b} :catchall_3a

    .line 801
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz v2, :cond_4b

    .line 802
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_46

    goto :goto_4b

    .line 808
    :goto_71
    const/4 v0, 0x0

    return-object v0

    .line 801
    :goto_73
    if-eqz v2, :cond_7e

    .line 802
    :try_start_75
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_7e

    .line 804
    :catch_79
    move-exception v3

    .line 805
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7f

    .line 806
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7e
    :goto_7e
    nop

    .line 807
    :goto_7f
    throw v0
.end method

.method private generateSalt(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B
    .registers 4
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 830
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 831
    .local v0, "salt":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 836
    return-object v0
.end method

.method private getPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    .registers 10
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 543
    new-instance v0, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;

    invoke-direct {v0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;-><init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 544
    .local v0, "handler":Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;
    const/4 v1, 0x0

    .line 545
    .local v1, "f":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->loadHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v2

    .line 548
    .local v2, "storedHash":[B
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;

    move-result-object v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_10

    move-object v1, v3

    .line 551
    goto :goto_14

    .line 549
    :catch_10
    move-exception v3

    .line 550
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 553
    .end local v3    # "e":Ljava/io/IOException;
    :goto_14
    const/4 v3, 0x0

    const-string v4, "SdpServiceKeeper"

    if-eqz v1, :cond_7e

    if-nez v2, :cond_1c

    goto :goto_7e

    .line 561
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->generateSalt(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->generateHash([BLjava/io/File;)[B

    move-result-object v5

    .line 563
    .local v5, "hash":[B
    if-eqz v5, :cond_5a

    if-eqz v2, :cond_5a

    .line 564
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadPolicy :: generated hash : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->byteToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadPolicy :: stored hash : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->byteToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_5a
    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_66

    .line 569
    const-string v6, "Policy file tempered!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-object v3

    .line 574
    :cond_66
    :try_start_66
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v6, v0}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6e} :catch_74

    .line 579
    nop

    .line 581
    # invokes: Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->getSdpPolicy()Lcom/android/server/sdp/engine/SdpPolicy;
    invoke-static {v0}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->access$400(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v3

    return-object v3

    .line 575
    :catch_74
    move-exception v6

    .line 576
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 577
    const-string v7, "engine_poilcy xml io failed"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-object v3

    .line 554
    .end local v5    # "hash":[B
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7e
    :goto_7e
    const-string v5, "No policy file or its hash"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-object v3
.end method

.method private getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;
    .registers 5
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/sdp_engine_policy_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private loadHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B
    .registers 7
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 822
    .local v0, "token":J
    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_sdp_policy_hash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    .line 822
    invoke-virtual {v2, v3, v4}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v2

    .line 824
    .local v2, "hash":[B
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    return-object v2
.end method

.method private putPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    .registers 19
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "policy"    # Lcom/android/server/sdp/engine/SdpPolicy;

    .line 585
    const-string/jumbo v0, "pkg_name"

    const-string v1, "alias"

    const-string v2, " putPolicyLocked failed"

    const-string v3, "SdpServiceKeeper"

    const/4 v4, 0x0

    .line 587
    .local v4, "f":Ljava/io/File;
    :try_start_a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;

    move-result-object v5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_e9

    move-object v4, v5

    .line 592
    nop

    .line 595
    :try_start_10
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 596
    .local v6, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 598
    .local v7, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 599
    .local v8, "doc":Lorg/w3c/dom/Document;
    const-string v9, "engine_policy"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 600
    .local v9, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 603
    const-string/jumbo v10, "owner"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 604
    .local v10, "owner":Lorg/w3c/dom/Element;
    invoke-interface {v8, v1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 605
    .local v11, "attrAlias":Lorg/w3c/dom/Attr;
    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v12

    .line 607
    .local v12, "attrPkgName":Lorg/w3c/dom/Attr;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 608
    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 610
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/sdp/engine/SdpPolicy;->getOwner()Lcom/samsung/android/knox/sdp/core/SdpDomain;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 611
    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 613
    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 616
    nop

    .end local v10    # "owner":Lorg/w3c/dom/Element;
    .end local v11    # "attrAlias":Lorg/w3c/dom/Attr;
    .end local v12    # "attrPkgName":Lorg/w3c/dom/Attr;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/sdp/engine/SdpPolicy;->getPrivilegedApps()Ljava/util/List;

    move-result-object v10

    .line 617
    .local v10, "domains":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/sdp/core/SdpDomain;>;"
    if-eqz v10, :cond_94

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_94

    .line 618
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_60
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_94

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 619
    .local v12, "domain":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    const-string/jumbo v13, "privileged_app"

    invoke-interface {v8, v13}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 620
    .local v13, "privilegedApp":Lorg/w3c/dom/Element;
    invoke-interface {v8, v1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    .line 621
    .local v14, "attrAlias":Lorg/w3c/dom/Attr;
    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v15

    .line 623
    .local v15, "attrPkgName":Lorg/w3c/dom/Attr;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v5}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 624
    invoke-interface {v13, v14}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 626
    invoke-virtual {v12}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v5}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 627
    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 629
    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 630
    nop

    .end local v12    # "domain":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .end local v13    # "privilegedApp":Lorg/w3c/dom/Element;
    .end local v14    # "attrAlias":Lorg/w3c/dom/Attr;
    .end local v15    # "attrPkgName":Lorg/w3c/dom/Attr;
    goto :goto_60

    .line 634
    :cond_94
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 635
    .local v0, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 636
    .local v1, "transformer":Ljavax/xml/transform/Transformer;
    const-string/jumbo v5, "indent"

    const-string/jumbo v11, "yes"

    invoke-virtual {v1, v5, v11}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 638
    .local v5, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v11, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v11, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 640
    .local v11, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v1, v5, v11}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_b2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_b2} :catch_db
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_b2} :catch_cd

    .line 650
    .end local v0    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v1    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v5    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v6    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "rootElement":Lorg/w3c/dom/Element;
    .end local v10    # "domains":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/sdp/core/SdpDomain;>;"
    .end local v11    # "result":Ljavax/xml/transform/stream/StreamResult;
    nop

    .line 653
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct {v1, v5, v4}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->saveHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 654
    const-string/jumbo v0, "putPolicyLocked :: SUCCESS"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x0

    return v0

    .line 658
    :cond_c5
    const-string v0, "can\'t store hash to key protector"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/16 v2, -0x63

    return v2

    .line 646
    :catch_cd
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 647
    .local v0, "tfe":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 648
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/16 v6, -0x63

    return v6

    .line 642
    .end local v0    # "tfe":Ljavax/xml/transform/TransformerException;
    :catch_db
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    const/16 v6, -0x63

    .line 643
    .local v0, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 644
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return v6

    .line 588
    .end local v0    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_e9
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object v6, v0

    move-object v0, v6

    .line 589
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 590
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/16 v2, -0xc

    return v2
.end method

.method private removePolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 8
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 665
    const-string v0, "SdpServiceKeeper"

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_3b

    .line 670
    .local v1, "f":Ljava/io/File;
    nop

    .line 672
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_12

    .line 673
    const-string v2, "Couldn\'t remove policy file!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 676
    .local v2, "token":J
    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_sdp_policy_hash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    .line 676
    invoke-virtual {v0, v4, v5}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v0

    .line 678
    .local v0, "result":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 679
    return-void

    .line 666
    .end local v0    # "result":Z
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "token":J
    :catch_3b
    move-exception v1

    .line 667
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 668
    const-string v2, " removePolicyLocked  failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method

.method private saveHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/io/File;)Z
    .registers 9
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "f"    # Ljava/io/File;

    .line 812
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->generateSalt(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->generateHash([BLjava/io/File;)[B

    move-result-object v0

    .line 813
    .local v0, "hash":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 814
    .local v1, "token":J
    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_sdp_policy_hash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    .line 814
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v3

    .line 816
    .local v3, "result":Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 817
    return v3
.end method


# virtual methods
.method public parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;

    .line 683
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 684
    .local v1, "saxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 685
    .local v2, "newSAXParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 687
    .local v3, "parser":Lorg/xml/sax/XMLReader;
    invoke-interface {v3, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 688
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_18} :catch_24
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_1f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_18} :catch_19

    .line 697
    .end local v1    # "saxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "newSAXParser":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "parser":Lorg/xml/sax/XMLReader;
    goto :goto_1d

    .line 695
    :catch_19
    move-exception v0

    .line 696
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 699
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1d
    const/4 v0, 0x1

    return v0

    .line 692
    :catch_1f
    move-exception v1

    .line 693
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 694
    return v0

    .line 689
    .end local v1    # "e":Ljava/io/IOException;
    :catch_24
    move-exception v1

    .line 690
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 691
    return v0
.end method
