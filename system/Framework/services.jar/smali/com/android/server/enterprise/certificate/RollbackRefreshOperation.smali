.class Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.super Ljava/lang/Object;
.source "RollbackRefreshOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;,
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    }
.end annotation


# static fields
.field private static final ALIAS_SEPARATOR:Ljava/lang/String; = "_#_"

.field public static final INIT_ROLLBACK_REFRESH_PENDING_LIST:I = 0x3

.field private static final KEYSTORE_ADD_OPERATION:I = 0x0

.field private static final KEYSTORE_DELETE_OPERATION:I = 0x1

.field public static final KEYSTORE_REFRESH_OPERATION:I = 0x1

.field public static final KEYSTORE_ROLLBACK_OPERATION:I = 0x0

.field public static final KEYSTORE_ROLLBACK_REFRESH_OPERATION:I = 0x2

.field public static final REMOVE_ROLLBACK_REFRESH_PENDING_LIST:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RollbackRefreshOperation"


# instance fields
.field private final mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field private mContext:Landroid/content/Context;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeyStoreLock:Ljava/lang/Object;

.field private mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mOperation:I

.field private mPendingKeystoreAction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPriority:I

.field private mUserId:I

.field private mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Context;)V
    .registers 4
    .param p1, "certPolicy"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p2, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    .line 72
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    .line 82
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    .line 83
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-direct {v0, p2}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 84
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 85
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 86
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 87
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 42
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 42
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/security/KeyStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 42
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .registers 8
    .param p1, "unlockedKeystores"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p2, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    .line 92
    .local v2, "userId":Ljava/lang/Integer;
    const/4 v3, 0x4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    .line 93
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_18

    .line 95
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStore(I)V

    .line 91
    .end local v2    # "userId":Ljava/lang/Integer;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    :cond_1b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 99
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshSystemKeyStoreAsUser(I)V

    .line 100
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_1f

    .line 101
    :cond_37
    return-void
.end method

.method private executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .registers 8
    .param p1, "unlockedKeystores"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p2, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    .line 105
    .local v2, "userId":Ljava/lang/Integer;
    const/4 v3, 0x4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    .line 106
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_18

    .line 108
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStore(I)V

    .line 104
    .end local v2    # "userId":Ljava/lang/Integer;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 111
    :cond_1b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 112
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackSystemKeyStoreAsUser(I)V

    .line 113
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_1f

    .line 114
    :cond_37
    return-void
.end method

.method private getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;
    .registers 21
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "keystoreType"    # I
    .param p3, "userId"    # I
    .param p4, "keyChainCRUDRef"    # Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 529
    .local v4, "removedCerts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    const/4 v5, 0x0

    .line 530
    .local v5, "aliasList":[Ljava/lang/String;
    const/16 v6, 0x3f2

    const/4 v7, 0x4

    if-ne v2, v7, :cond_18

    .line 531
    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_21

    .line 532
    :cond_18
    const/4 v8, 0x2

    if-ne v2, v8, :cond_21

    .line 533
    iget-object v8, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v1, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 535
    :cond_21
    :goto_21
    if-nez v5, :cond_24

    .line 536
    return-object v4

    .line 538
    :cond_24
    array-length v8, v5

    const/4 v9, 0x0

    :goto_26
    if-ge v9, v8, :cond_a1

    aget-object v10, v5, v9

    .line 539
    .local v10, "alias":Ljava/lang/String;
    const/4 v11, 0x0

    .line 540
    .local v11, "certBytes":[B
    if-ne v2, v7, :cond_32

    .line 541
    invoke-virtual {v3, v10, v1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    goto :goto_47

    .line 544
    :cond_32
    iget-object v12, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v11

    .line 546
    :goto_47
    if-nez v11, :cond_4a

    .line 547
    return-object v4

    .line 549
    :cond_4a
    invoke-static {v11}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v12

    .line 550
    .local v12, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_55

    .line 551
    return-object v4

    .line 553
    :cond_55
    const/4 v13, 0x1

    .line 554
    .local v13, "i":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_97

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    .line 555
    .local v15, "cert":Ljava/security/cert/X509Certificate;
    if-nez v15, :cond_69

    .line 556
    goto :goto_5a

    .line 558
    :cond_69
    iget-object v6, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v7, 0x3

    move/from16 v0, p3

    invoke-virtual {v6, v15, v7, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v6

    if-nez v6, :cond_8e

    .line 561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_#_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_8e
    nop

    .end local v15    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v13, v13, 0x1

    .line 564
    const/16 v6, 0x3f2

    const/4 v7, 0x4

    move-object/from16 v0, p0

    goto :goto_5a

    .line 554
    :cond_97
    move/from16 v0, p3

    .line 538
    .end local v10    # "alias":Ljava/lang/String;
    .end local v11    # "certBytes":[B
    .end local v12    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v13    # "i":I
    add-int/lit8 v9, v9, 0x1

    const/16 v6, 0x3f2

    const/4 v7, 0x4

    move-object/from16 v0, p0

    goto :goto_26

    .line 566
    :cond_a1
    move/from16 v0, p3

    return-object v4
.end method

.method private getUsersKeystoreUnlocked(I)[Ljava/lang/Integer;
    .registers 6
    .param p1, "callingUserId"    # I

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v0, "userKeystoresUnlocked":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v1

    .line 779
    .local v1, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_27

    .line 780
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 781
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 782
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 784
    :cond_25
    const/4 v2, 0x0

    return-object v2

    .line 787
    :cond_27
    :goto_27
    move-object v2, v1

    .line 788
    .local v2, "finalUserIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$zTdJDc8ojYyi7Nt8Lrksp60u3SY;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$zTdJDc8ojYyi7Nt8Lrksp60u3SY;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 797
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    return-object v3
.end method

.method private isNativeKeyStoreUnlockedAsUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 818
    const/4 v0, 0x0

    .line 820
    .local v0, "isUnlocked":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_4} :catch_14

    .line 821
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-eq v2, v3, :cond_f

    .line 822
    const/4 v0, 0x1

    .line 824
    :cond_f
    monitor-exit v1

    .line 830
    goto :goto_30

    .line 824
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    .end local v0    # "isUnlocked":Z
    .end local p0    # "this":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .end local p1    # "userId":I
    :try_start_13
    throw v2
    :try_end_14
    .catch Ljava/lang/AssertionError; {:try_start_13 .. :try_end_14} :catch_14

    .line 825
    .restart local v0    # "isUnlocked":Z
    .restart local p0    # "this":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .restart local p1    # "userId":I
    :catch_14
    move-exception v1

    .line 828
    .local v1, "e":Ljava/lang/AssertionError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keystore State Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RollbackRefreshOperation"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v0, 0x0

    .line 831
    .end local v1    # "e":Ljava/lang/AssertionError;
    :goto_30
    return v0
.end method

.method private pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 179
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 180
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 181
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_22

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_22

    .line 182
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 183
    add-int/lit8 v0, v0, -0x1

    .line 179
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "i":I
    :cond_25
    return-object p1
.end method

.method private refreshNativeKeyStore(I)V
    .registers 3
    .param p1, "keystoreType"    # I

    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    .line 464
    return-void
.end method

.method private refreshNativeKeyStoreAsUser(II)V
    .registers 15
    .param p1, "keystoreType"    # I
    .param p2, "userId"    # I

    .line 473
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "keystoreTypeKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 479
    .local v1, "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x3f2

    .line 480
    .local v2, "keystoreUid":I
    const/4 v3, 0x4

    if-ne p1, v3, :cond_10

    .line 481
    move v2, p2

    .line 487
    :cond_10
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 488
    invoke-virtual {v4, v1, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v4

    .line 491
    .local v4, "removedUserNativeKeyStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v5

    .line 492
    const/4 v6, 0x0

    .line 493
    .local v6, "keyChainCRUD":Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
    const/4 v7, 0x0

    .line 494
    .local v7, "aliasList":[Ljava/lang/String;
    if-ne p1, v3, :cond_28

    .line 495
    :try_start_1d
    new-instance v3, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object v8, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    move-object v6, v3

    goto :goto_2d

    .line 513
    .end local v6    # "keyChainCRUD":Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
    .end local v7    # "aliasList":[Ljava/lang/String;
    :catchall_26
    move-exception v3

    goto :goto_70

    .line 496
    .restart local v6    # "keyChainCRUD":Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
    .restart local v7    # "aliasList":[Ljava/lang/String;
    :cond_28
    const/4 v3, 0x2

    if-eq p1, v3, :cond_2d

    .line 498
    monitor-exit v5

    return-void

    .line 500
    :cond_2d
    :goto_2d
    const-string v3, "CACERT_"

    .line 501
    invoke-direct {p0, v3, p1, p2, v6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;

    move-result-object v3

    .line 500
    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 505
    const-string v3, "USRCERT_"

    .line 506
    invoke-direct {p0, v3, p1, p2, v6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;

    move-result-object v3

    .line 505
    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 510
    if-eqz v6, :cond_44

    .line 511
    invoke-virtual {v6}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 513
    .end local v6    # "keyChainCRUD":Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
    .end local v7    # "aliasList":[Ljava/lang/String;
    :cond_44
    monitor-exit v5
    :try_end_45
    .catchall {:try_start_1d .. :try_end_45} :catchall_26

    .line 515
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;I)Ljava/util/List;

    .line 518
    new-instance v3, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;

    const/4 v7, 0x1

    .line 519
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v3

    move-object v6, p0

    move v8, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    .line 521
    .local v3, "nativeSystemOperation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 524
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v0, v6, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 525
    return-void

    .line 513
    .end local v3    # "nativeSystemOperation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
    :goto_70
    :try_start_70
    monitor-exit v5
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_26

    throw v3
.end method

.method private refreshSystemKeyStoreAsUser(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 356
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemDisabledList"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 358
    .local v0, "disabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemPrevDisabledList"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 360
    .local v1, "prevDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 361
    const-string/jumbo v4, "userRemovedList"

    invoke-virtual {v3, v4, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 360
    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v8

    .line 363
    .local v8, "removedUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    new-instance v9, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, v0

    move-object v6, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    invoke-static {v9}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 457
    return-void
.end method

.method private rollbackNativeKeyStore(I)V
    .registers 3
    .param p1, "keystoreUid"    # I

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    .line 301
    return-void
.end method

.method private rollbackNativeKeyStoreAsUser(II)V
    .registers 20
    .param p1, "keystoreUid"    # I
    .param p2, "userId"    # I

    .line 305
    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, "keystoreTypeKey":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v0, v9, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 311
    .local v10, "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x3f2

    .line 312
    .local v0, "keystoreTypeUid":I
    const/4 v1, 0x4

    move/from16 v11, p1

    if-ne v11, v1, :cond_19

    .line 313
    move/from16 v0, p2

    move v12, v0

    goto :goto_1a

    .line 312
    :cond_19
    move v12, v0

    .line 319
    .end local v0    # "keystoreTypeUid":I
    .local v12, "keystoreTypeUid":I
    :goto_1a
    iget-object v0, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 320
    invoke-virtual {v0, v10, v12}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v13

    .line 323
    .local v13, "removedNativeKeyStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 326
    .local v14, "removeEdmNativeAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v15, v0

    .line 329
    .local v15, "installNativeCerts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 330
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 331
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_63

    iget-object v3, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 333
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v15, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_63
    goto :goto_34

    .line 338
    :cond_64
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 339
    .local v1, "alias":Ljava/lang/String;
    invoke-interface {v13, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .end local v1    # "alias":Ljava/lang/String;
    goto :goto_68

    .line 343
    :cond_78
    new-instance v16, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    .line 345
    .local v0, "nativeSystemOperation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 348
    iget-object v1, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v1, v14, v12}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    .line 351
    iget-object v1, v7, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v9, v2, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 352
    return-void
.end method

.method private rollbackSystemKeyStoreAsUser(I)V
    .registers 14
    .param p1, "userId"    # I

    .line 194
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v1, "systemDisabledList"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, "disabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemPrevDisabledList"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, "prevDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "userRemovedList"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 201
    .local v10, "removedUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v7, "installCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v9, "enabledUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;

    move-object v2, v11

    move-object v3, p0

    move v4, p1

    move-object v5, v0

    move-object v6, v1

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v11}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 294
    return-void
.end method

.method private selectNativeKeystoreUid(I)Ljava/lang/String;
    .registers 4
    .param p1, "keystoreUid"    # I

    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 572
    const-string/jumbo v0, "nativeRemovedList_wifi"

    goto :goto_e

    .line 573
    :cond_8
    const/4 v1, 0x4

    if-ne p1, v1, :cond_e

    .line 574
    const-string/jumbo v0, "nativeRemovedList"

    .line 576
    :cond_e
    :goto_e
    return-object v0
.end method


# virtual methods
.method public execute(II)V
    .registers 12
    .param p1, "operation"    # I
    .param p2, "userId"    # I

    .line 117
    iput p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    .line 118
    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    .line 120
    iget v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 122
    iget v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getUsersKeystoreUnlocked(I)[Ljava/lang/Integer;

    move-result-object v0

    .line 123
    .local v0, "unlockedKeystores":[Ljava/lang/Integer;
    if-nez v0, :cond_12

    .line 124
    return-void

    .line 128
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersInfo()Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    if-nez v3, :cond_23

    .line 131
    move-object v1, v2

    goto :goto_3d

    .line 133
    :cond_23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 134
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    iget v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    if-ne v5, v6, :cond_3c

    .line 135
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_3c
    goto :goto_27

    .line 138
    :cond_3d
    :goto_3d
    move-object v3, v1

    .line 139
    .local v3, "finalPrunedUsersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v4, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$h4NWFjGb4uT0TbKtO5X9WHckN0E;

    invoke-direct {v4, p0, v3}, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$h4NWFjGb4uT0TbKtO5X9WHckN0E;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/util/List;

    .line 149
    move-object v4, v1

    .line 150
    .local v4, "finalOperatedUsersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v5, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$q3VgaEy4uYYk2YY5q1Hu1T97uSw;

    invoke-direct {v5, p0, v0, v4}, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$q3VgaEy4uYYk2YY5q1Hu1T97uSw;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;[Ljava/lang/Integer;Ljava/util/List;)V

    invoke-static {v5}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 170
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings(I)V

    .line 171
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_57

    .line 173
    :cond_71
    return-void
.end method

.method hasPendingActionForUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 801
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method initPendingActionList()V
    .registers 6

    .line 809
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v0

    .line 810
    .local v0, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 811
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-nez v3, :cond_29

    .line 812
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 814
    .end local v2    # "userId":I
    :cond_29
    goto :goto_a

    .line 815
    :cond_2a
    return-void
.end method

.method public synthetic lambda$execute$0$RollbackRefreshOperation(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .param p1, "finalPrunedUsersList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, "versionInfo":Landroid/os/Bundle;
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 146
    :cond_18
    return-object p1
.end method

.method public synthetic lambda$execute$1$RollbackRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .registers 5
    .param p1, "unlockedKeystores"    # [Ljava/lang/Integer;
    .param p2, "finalOperatedUsersList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    iget v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_1a

    .line 159
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    .line 161
    goto :goto_1a

    .line 153
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    .line 154
    goto :goto_1a

    .line 156
    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    .line 157
    nop

    .line 165
    :goto_1a
    return-void
.end method

.method public synthetic lambda$getUsersKeystoreUnlocked$4$RollbackRefreshOperation(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "finalUserIdsList"    # Ljava/util/List;
    .param p2, "userKeystoresUnlocked"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 789
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 790
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 791
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 793
    :cond_22
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 795
    .end local v1    # "userId":I
    :goto_2b
    goto :goto_4

    .line 796
    :cond_2c
    return-void
.end method

.method public synthetic lambda$refreshSystemKeyStoreAsUser$3$RollbackRefreshOperation(ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 27
    .param p1, "userId"    # I
    .param p2, "disabledSystem"    # Ljava/util/List;
    .param p3, "prevDisabledSystem"    # Ljava/util/List;
    .param p4, "removedUser"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 365
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const-string v13, ") "

    const-string/jumbo v14, "refreshSystemKeyStoreAsUser("

    const-string/jumbo v15, "refreshSystemKeyStoreAsUser "

    const-string v7, "RollbackRefreshOperation"

    :try_start_14
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1f} :catch_1cd
    .catch Ljava/lang/AssertionError; {:try_start_14 .. :try_end_1f} :catch_1b2
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1f} :catch_197

    move-object/from16 v16, v0

    .line 368
    .local v16, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_21
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_25} :catch_175
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_160
    .catch Ljava/security/cert/CertificateException; {:try_start_21 .. :try_end_25} :catch_148
    .catchall {:try_start_21 .. :try_end_25} :catchall_145

    .line 369
    .local v0, "keyChainService":Landroid/security/IKeyChainService;
    if-nez v0, :cond_2b

    .line 443
    :try_start_27
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_1cd
    .catch Ljava/lang/AssertionError; {:try_start_27 .. :try_end_2a} :catch_1b2
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2a} :catch_197

    .line 370
    return-void

    .line 374
    :cond_2b
    :try_start_2b
    invoke-interface {v0}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v1

    .line 375
    .local v17, "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 377
    .local v2, "alias":Ljava/lang/String;
    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 378
    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v3

    .line 381
    .local v3, "certData":[B
    if-eqz v3, :cond_8c

    .line 382
    invoke-static {v3}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v4

    .line 383
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_56
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 384
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_7e

    move-object/from16 v18, v1

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v3

    .end local v3    # "certData":[B
    .local v19, "certData":[B
    const/4 v3, 0x2

    invoke-virtual {v1, v6, v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v1

    if-nez v1, :cond_82

    .line 386
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-interface {v0, v2}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 390
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 384
    .end local v19    # "certData":[B
    .restart local v3    # "certData":[B
    :cond_7e
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    .line 393
    .end local v3    # "certData":[B
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v19    # "certData":[B
    :cond_82
    :goto_82
    move-object/from16 v1, v18

    move-object/from16 v3, v19

    goto :goto_56

    .line 383
    .end local v19    # "certData":[B
    .restart local v3    # "certData":[B
    :cond_87
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    .end local v3    # "certData":[B
    .restart local v19    # "certData":[B
    goto :goto_93

    .line 381
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "certData":[B
    .restart local v3    # "certData":[B
    :cond_8c
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    .end local v3    # "certData":[B
    .restart local v19    # "certData":[B
    goto :goto_93

    .line 377
    .end local v19    # "certData":[B
    :cond_91
    move-object/from16 v18, v1

    .line 396
    .end local v2    # "alias":Ljava/lang/String;
    :goto_93
    move-object/from16 v1, v18

    goto :goto_35

    .line 399
    :cond_96
    invoke-interface {v0}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v1

    move-object/from16 v18, v1

    .line 400
    .local v18, "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_f1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 401
    .restart local v2    # "alias":Ljava/lang/String;
    invoke-interface {v0, v2, v6}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v3

    .line 403
    .restart local v3    # "certData":[B
    if-eqz v3, :cond_e8

    .line 404
    invoke-static {v3}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v4

    .line 405
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 406
    .restart local v6    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_da

    move-object/from16 v19, v0

    .end local v0    # "keyChainService":Landroid/security/IKeyChainService;
    .local v19, "keyChainService":Landroid/security/IKeyChainService;
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v20, v1

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v0

    if-nez v0, :cond_de

    .line 408
    invoke-interface {v12, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_de

    .line 406
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v0    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_da
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    .line 410
    .end local v0    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_de
    :goto_de
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    goto :goto_bb

    .line 405
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v0    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_e3
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    .end local v0    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    goto :goto_ec

    .line 403
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v0    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_e8
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    .line 412
    .end local v0    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "certData":[B
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_ec
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    goto :goto_a0

    .line 415
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v0    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_f1
    move-object/from16 v19, v0

    .end local v0    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v12, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;I)Ljava/util/List;

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v0, "deleteAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 420
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 421
    new-instance v20, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    :try_end_109
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_109} :catch_175
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_109} :catch_160
    .catch Ljava/security/cert/CertificateException; {:try_start_2b .. :try_end_109} :catch_148
    .catchall {:try_start_2b .. :try_end_109} :catchall_145

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object v4, v0

    move/from16 v6, p1

    move-object v12, v7

    move-object/from16 v7, v21

    :try_start_117
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    move-object/from16 v1, v20

    .line 423
    .local v1, "operation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 426
    iget-object v2, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "systemDisabledList"

    invoke-virtual {v2, v3, v10, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 428
    iget-object v2, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "systemPrevDisabledList"

    invoke-virtual {v2, v3, v11, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 430
    iget-object v2, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "userRemovedList"

    .line 431
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 430
    invoke-virtual {v2, v3, v4, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_13e
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_13e} :catch_143
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_13e} :catch_141
    .catch Ljava/security/cert/CertificateException; {:try_start_117 .. :try_end_13e} :catch_13f
    .catchall {:try_start_117 .. :try_end_13e} :catchall_18b

    goto :goto_15c

    .line 439
    .end local v0    # "deleteAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "operation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    .end local v17    # "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_13f
    move-exception v0

    goto :goto_14a

    .line 436
    :catch_141
    move-exception v0

    goto :goto_162

    .line 433
    :catch_143
    move-exception v0

    goto :goto_177

    .line 443
    :catchall_145
    move-exception v0

    move-object v12, v7

    goto :goto_18c

    .line 439
    :catch_148
    move-exception v0

    move-object v12, v7

    .line 440
    .local v0, "e":Ljava/security/cert/CertificateException;
    :goto_14a
    :try_start_14a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15c
    .catchall {:try_start_14a .. :try_end_15c} :catchall_18b

    .line 443
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :goto_15c
    :try_start_15c
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_15f
    .catch Ljava/lang/InterruptedException; {:try_start_15c .. :try_end_15f} :catch_195
    .catch Ljava/lang/AssertionError; {:try_start_15c .. :try_end_15f} :catch_193
    .catch Ljava/lang/RuntimeException; {:try_start_15c .. :try_end_15f} :catch_191

    goto :goto_18a

    .line 436
    :catch_160
    move-exception v0

    move-object v12, v7

    .line 437
    .local v0, "e":Ljava/io/IOException;
    :goto_162
    :try_start_162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15c

    .line 433
    .end local v0    # "e":Ljava/io/IOException;
    :catch_175
    move-exception v0

    move-object v12, v7

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    :goto_177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_189
    .catchall {:try_start_162 .. :try_end_189} :catchall_18b

    goto :goto_15c

    .line 444
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18a
    goto :goto_1e1

    .line 443
    :catchall_18b
    move-exception v0

    :goto_18c
    :try_start_18c
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 444
    nop

    .end local p0    # "this":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .end local p1    # "userId":I
    .end local p2    # "disabledSystem":Ljava/util/List;
    .end local p3    # "prevDisabledSystem":Ljava/util/List;
    .end local p4    # "removedUser":Ljava/util/Map;
    throw v0
    :try_end_191
    .catch Ljava/lang/InterruptedException; {:try_start_18c .. :try_end_191} :catch_195
    .catch Ljava/lang/AssertionError; {:try_start_18c .. :try_end_191} :catch_193
    .catch Ljava/lang/RuntimeException; {:try_start_18c .. :try_end_191} :catch_191

    .line 451
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "this":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .restart local p1    # "userId":I
    .restart local p2    # "disabledSystem":Ljava/util/List;
    .restart local p3    # "prevDisabledSystem":Ljava/util/List;
    .restart local p4    # "removedUser":Ljava/util/Map;
    :catch_191
    move-exception v0

    goto :goto_199

    .line 447
    :catch_193
    move-exception v0

    goto :goto_1b4

    .line 445
    :catch_195
    move-exception v0

    goto :goto_1cf

    .line 451
    :catch_197
    move-exception v0

    move-object v12, v7

    .line 454
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e2

    .line 447
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1b2
    move-exception v0

    move-object v12, v7

    .line 450
    .local v0, "e":Ljava/lang/AssertionError;
    :goto_1b4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/AssertionError;
    goto :goto_1e1

    .line 445
    :catch_1cd
    move-exception v0

    move-object v12, v7

    .line 446
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_1cf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1e1
    nop

    .line 456
    :goto_1e2
    return-void
.end method

.method public synthetic lambda$rollbackSystemKeyStoreAsUser$2$RollbackRefreshOperation(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 31
    .param p1, "userId"    # I
    .param p2, "disabledSystem"    # Ljava/util/List;
    .param p3, "prevDisabledSystem"    # Ljava/util/List;
    .param p4, "installCerts"    # Ljava/util/List;
    .param p5, "removedUser"    # Ljava/util/List;
    .param p6, "enabledUser"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    const-string v15, ") "

    const-string/jumbo v7, "rollbackSystemKeyStoreAsUser("

    const-string/jumbo v6, "rollbackSystemKeyStoreAsUser "

    const-string v5, "RollbackRefreshOperation"

    :try_start_18
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_23} :catch_220
    .catch Ljava/lang/AssertionError; {:try_start_18 .. :try_end_23} :catch_204
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_23} :catch_1e8

    move-object/from16 v16, v0

    .line 209
    .local v16, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_25
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_29} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_29} :catch_1aa
    .catch Ljava/security/cert/CertificateException; {:try_start_25 .. :try_end_29} :catch_183
    .catchall {:try_start_25 .. :try_end_29} :catchall_17e

    .line 210
    .local v0, "keyChainService":Landroid/security/IKeyChainService;
    if-nez v0, :cond_2f

    .line 280
    :try_start_2b
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_220
    .catch Ljava/lang/AssertionError; {:try_start_2b .. :try_end_2e} :catch_204
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2e} :catch_1e8

    .line 211
    return-void

    .line 215
    :cond_2f
    :try_start_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    .line 216
    .local v4, "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3d} :catch_179
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3d} :catch_174
    .catch Ljava/security/cert/CertificateException; {:try_start_2f .. :try_end_3d} :catch_183
    .catchall {:try_start_2f .. :try_end_3d} :catchall_17e

    if-eqz v2, :cond_a9

    :try_start_3f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    .local v2, "alias":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v3

    .line 219
    .local v3, "certData":[B
    if-eqz v3, :cond_98

    .line 220
    invoke-static {v3}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v17

    .line 221
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_54
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_91

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/security/cert/X509Certificate;

    move-object/from16 v20, v19

    .line 222
    .local v20, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v19, v0

    move-object/from16 v0, v20

    .end local v20    # "cert":Ljava/security/cert/X509Certificate;
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    .local v19, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v0, :cond_86

    move-object/from16 v20, v1

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v21, v3

    .end local v3    # "certData":[B
    .local v21, "certData":[B
    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 226
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 228
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 230
    :cond_82
    invoke-interface {v11, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_85} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_85} :catch_1aa
    .catch Ljava/security/cert/CertificateException; {:try_start_3f .. :try_end_85} :catch_183
    .catchall {:try_start_3f .. :try_end_85} :catchall_a3

    goto :goto_8a

    .line 222
    .end local v21    # "certData":[B
    .restart local v3    # "certData":[B
    :cond_86
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    .line 233
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "certData":[B
    .restart local v21    # "certData":[B
    :cond_8a
    :goto_8a
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v3, v21

    goto :goto_54

    .line 221
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v21    # "certData":[B
    .local v0, "keyChainService":Landroid/security/IKeyChainService;
    .restart local v3    # "certData":[B
    :cond_91
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    .end local v0    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v3    # "certData":[B
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v21    # "certData":[B
    goto :goto_9e

    .line 219
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v21    # "certData":[B
    .restart local v0    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v3    # "certData":[B
    :cond_98
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    .line 235
    .end local v0    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "certData":[B
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_9e
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    goto :goto_39

    .line 280
    .end local v4    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    :catchall_a3
    move-exception v0

    move-object v3, v5

    move-object v2, v6

    move-object v12, v7

    goto/16 :goto_1dd

    .line 236
    .restart local v0    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v4    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a9
    move-object/from16 v19, v0

    .end local v0    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    :try_start_ab
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_af
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_b3} :catch_179
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b3} :catch_174
    .catch Ljava/security/cert/CertificateException; {:try_start_ab .. :try_end_b3} :catch_183
    .catchall {:try_start_ab .. :try_end_b3} :catchall_17e

    if-eqz v1, :cond_c0

    :try_start_b5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    .local v1, "alias":Ljava/lang/String;
    invoke-interface {v10, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_be} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_be} :catch_1aa
    .catch Ljava/security/cert/CertificateException; {:try_start_b5 .. :try_end_be} :catch_183
    .catchall {:try_start_b5 .. :try_end_be} :catchall_a3

    .line 238
    nop

    .end local v1    # "alias":Ljava/lang/String;
    goto :goto_af

    .line 241
    :cond_c0
    :try_start_c0
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 242
    invoke-virtual {v0, v13, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v0

    .line 243
    .local v0, "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_d2} :catch_179
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_d2} :catch_174
    .catch Ljava/security/cert/CertificateException; {:try_start_c0 .. :try_end_d2} :catch_183
    .catchall {:try_start_c0 .. :try_end_d2} :catchall_17e

    if-eqz v2, :cond_10e

    :try_start_d4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 244
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 245
    .local v3, "alias":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v17

    .line 246
    .local v18, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "cert":Ljava/security/cert/X509Certificate;
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    .local v17, "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    if-eqz v0, :cond_105

    move-object/from16 v18, v1

    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v20, v2

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 250
    invoke-interface {v13, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_104} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_104} :catch_1aa
    .catch Ljava/security/cert/CertificateException; {:try_start_d4 .. :try_end_104} :catch_183
    .catchall {:try_start_d4 .. :try_end_104} :catchall_a3

    goto :goto_109

    .line 246
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    :cond_105
    move-object/from16 v18, v1

    move-object/from16 v20, v2

    .line 254
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "alias":Ljava/lang/String;
    :cond_109
    :goto_109
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    goto :goto_ce

    .line 257
    .end local v17    # "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .local v0, "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    :cond_10e
    move-object/from16 v17, v0

    .end local v0    # "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .restart local v17    # "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    :try_start_110
    iget-object v0, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, v14, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    .line 260
    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    :try_end_117
    .catch Landroid/os/RemoteException; {:try_start_110 .. :try_end_117} :catch_179
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_117} :catch_174
    .catch Ljava/security/cert/CertificateException; {:try_start_110 .. :try_end_117} :catch_183
    .catchall {:try_start_110 .. :try_end_117} :catchall_17e

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v21, v4

    .end local v4    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v21, "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v4, v18

    move-object/from16 v22, v5

    move-object/from16 v5, p4

    move-object/from16 v23, v6

    move/from16 v6, p1

    move-object v12, v7

    move-object/from16 v7, v20

    :try_start_12e
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    .line 262
    .local v0, "operation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 265
    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemDisabledList"

    invoke-virtual {v1, v2, v10, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 267
    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemPrevDisabledList"

    invoke-virtual {v1, v2, v11, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 269
    iget-object v1, v8, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "userRemovedList"

    invoke-virtual {v1, v2, v13, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_14f
    .catch Landroid/os/RemoteException; {:try_start_12e .. :try_end_14f} :catch_16d
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_14f} :catch_167
    .catch Ljava/security/cert/CertificateException; {:try_start_12e .. :try_end_14f} :catch_165
    .catchall {:try_start_12e .. :try_end_14f} :catchall_1a4

    .line 280
    .end local v0    # "operation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    .end local v17    # "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v21    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_14f
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_152
    .catch Ljava/lang/InterruptedException; {:try_start_14f .. :try_end_152} :catch_15e
    .catch Ljava/lang/AssertionError; {:try_start_14f .. :try_end_152} :catch_159
    .catch Ljava/lang/RuntimeException; {:try_start_14f .. :try_end_152} :catch_154

    goto/16 :goto_1db

    .line 288
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_154
    move-exception v0

    move-object/from16 v3, v22

    goto/16 :goto_1eb

    .line 284
    :catch_159
    move-exception v0

    move-object/from16 v3, v22

    goto/16 :goto_207

    .line 282
    :catch_15e
    move-exception v0

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    goto/16 :goto_223

    .line 277
    .restart local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_165
    move-exception v0

    goto :goto_189

    .line 275
    :catch_167
    move-exception v0

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    goto :goto_1ae

    .line 272
    :catch_16d
    move-exception v0

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    goto/16 :goto_1c8

    .line 275
    :catch_174
    move-exception v0

    move-object v12, v7

    move-object v3, v5

    move-object v2, v6

    goto :goto_1ae

    .line 272
    :catch_179
    move-exception v0

    move-object v12, v7

    move-object v3, v5

    move-object v2, v6

    goto :goto_1c8

    .line 280
    :catchall_17e
    move-exception v0

    move-object v12, v7

    move-object v3, v5

    move-object v2, v6

    goto :goto_1dd

    .line 277
    :catch_183
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object v12, v7

    .line 278
    .local v0, "e":Ljava/security/cert/CertificateException;
    :goto_189
    :try_start_189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18e
    .catchall {:try_start_189 .. :try_end_18e} :catchall_1a4

    move-object/from16 v2, v23

    :try_start_190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_19a
    .catchall {:try_start_190 .. :try_end_19a} :catchall_1a0

    move-object/from16 v3, v22

    :try_start_19c
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c0

    .line 280
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catchall_1a0
    move-exception v0

    move-object/from16 v3, v22

    goto :goto_1dd

    :catchall_1a4
    move-exception v0

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    goto :goto_1dd

    .line 275
    :catch_1aa
    move-exception v0

    move-object v3, v5

    move-object v2, v6

    move-object v12, v7

    .line 276
    .local v0, "e":Ljava/io/IOException;
    :goto_1ae
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c0
    .catchall {:try_start_19c .. :try_end_1c0} :catchall_1dc

    .line 280
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1c0
    :try_start_1c0
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1c3
    .catch Ljava/lang/InterruptedException; {:try_start_1c0 .. :try_end_1c3} :catch_1e6
    .catch Ljava/lang/AssertionError; {:try_start_1c0 .. :try_end_1c3} :catch_1e4
    .catch Ljava/lang/RuntimeException; {:try_start_1c0 .. :try_end_1c3} :catch_1e2

    goto :goto_1db

    .line 272
    :catch_1c4
    move-exception v0

    move-object v3, v5

    move-object v2, v6

    move-object v12, v7

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1c8
    :try_start_1c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1da
    .catchall {:try_start_1c8 .. :try_end_1da} :catchall_1dc

    goto :goto_1c0

    .line 281
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1db
    goto :goto_235

    .line 280
    :catchall_1dc
    move-exception v0

    :goto_1dd
    :try_start_1dd
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 281
    nop

    .end local p0    # "this":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .end local p1    # "userId":I
    .end local p2    # "disabledSystem":Ljava/util/List;
    .end local p3    # "prevDisabledSystem":Ljava/util/List;
    .end local p4    # "installCerts":Ljava/util/List;
    .end local p5    # "removedUser":Ljava/util/List;
    .end local p6    # "enabledUser":Ljava/util/List;
    throw v0
    :try_end_1e2
    .catch Ljava/lang/InterruptedException; {:try_start_1dd .. :try_end_1e2} :catch_1e6
    .catch Ljava/lang/AssertionError; {:try_start_1dd .. :try_end_1e2} :catch_1e4
    .catch Ljava/lang/RuntimeException; {:try_start_1dd .. :try_end_1e2} :catch_1e2

    .line 288
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "this":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .restart local p1    # "userId":I
    .restart local p2    # "disabledSystem":Ljava/util/List;
    .restart local p3    # "prevDisabledSystem":Ljava/util/List;
    .restart local p4    # "installCerts":Ljava/util/List;
    .restart local p5    # "removedUser":Ljava/util/List;
    .restart local p6    # "enabledUser":Ljava/util/List;
    :catch_1e2
    move-exception v0

    goto :goto_1eb

    .line 284
    :catch_1e4
    move-exception v0

    goto :goto_207

    .line 282
    :catch_1e6
    move-exception v0

    goto :goto_223

    .line 288
    :catch_1e8
    move-exception v0

    move-object v3, v5

    move-object v12, v7

    .line 291
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1eb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_236

    .line 284
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_204
    move-exception v0

    move-object v3, v5

    move-object v12, v7

    .line 287
    .local v0, "e":Ljava/lang/AssertionError;
    :goto_207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/AssertionError;
    goto :goto_235

    .line 282
    :catch_220
    move-exception v0

    move-object v3, v5

    move-object v2, v6

    .line 283
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_235
    nop

    .line 293
    :goto_236
    return-void
.end method

.method removeUserIdFromPendingList(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 805
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
