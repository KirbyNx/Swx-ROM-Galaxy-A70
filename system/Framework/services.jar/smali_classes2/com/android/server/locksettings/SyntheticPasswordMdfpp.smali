.class public Lcom/android/server/locksettings/SyntheticPasswordMdfpp;
.super Ljava/lang/Object;
.source "SyntheticPasswordMdfpp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;,
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;,
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;,
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$SecureMode;
    }
.end annotation


# static fields
.field public static final AES256_KEY_LENGTH:I = 0x20

.field public static final CONTEXT_AAD:Ljava/lang/String; = "ForAuthenticationData"

.field public static final CONTEXT_APP:Ljava/lang/String; = "ForApplicationId"

.field public static final CONTEXT_AUTH:Ljava/lang/String; = "ForUserAuthentication"

.field public static final CONTEXT_FS:Ljava/lang/String; = "ForFileSystem"

.field public static final CONTEXT_GK:Ljava/lang/String; = "ForGateKeeper"

.field public static final CONTEXT_KS:Ljava/lang/String; = "ForKeyStore"

.field public static final CONTEXT_RST:Ljava/lang/String; = "ForResetPasswordToken"

.field public static final CONTEXT_SDP:Ljava/lang/String; = "ForSdpMasterKey"

.field public static final DEFAULT_ITERATION_CNT:I = 0x4000

.field public static final DEFAULT_KEY_LENGTH:I = 0x20

.field public static final LABEL_KEK:Ljava/lang/String; = "KeyEncryptionKey"

.field public static final MAX_CONTEXT_SIZE:I = 0x40

.field public static final MAX_LABEL_SIZE:I = 0x20

.field public static final SMK_VERSION_1:I = 0x1

.field public static final SMK_VERSION_KEY:Ljava/lang/String; = "smk_ver"

.field public static final SMK_VERSION_LATEST:I = 0x1

.field public static final SMK_VERSION_X:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordMdfpp"

.field private static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordMdfpp_SDP"

.field private static final mCredentialTypeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSecureModeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheCredentialType(II)V
    .registers 5
    .param p0, "userId"    # I
    .param p1, "credType"    # I

    .line 178
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 179
    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static cacheSecureMode(II)V
    .registers 5
    .param p0, "userId"    # I
    .param p1, "mode"    # I

    .line 166
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 167
    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static deleteCredentialType(I)V
    .registers 3
    .param p0, "userId"    # I

    .line 195
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 196
    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static deleteSecureMode(I)V
    .registers 3
    .param p0, "userId"    # I

    .line 172
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 173
    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static deriveResetTokenForDualDAR([B)[B
    .registers 3
    .param p0, "token"    # [B

    .line 245
    if-eqz p0, :cond_17

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_17

    .line 248
    :cond_6
    const-string v0, "KeyEncryptionKey"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "ForResetPasswordToken"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->doSp800Derivation([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 246
    :cond_17
    :goto_17
    return-object p0
.end method

.method private static doSp800Derivation([B[B[B)[B
    .registers 4
    .param p0, "keyInput"    # [B
    .param p1, "label"    # [B
    .param p2, "context"    # [B

    .line 252
    new-instance v0, Lcom/android/server/locksettings/SP800Derive;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/SP800Derive;-><init>([B)V

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/SP800Derive;->withContext([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateAAD([BI)[B
    .registers 4
    .param p0, "token"    # [B
    .param p1, "secureMode"    # I

    .line 221
    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForAuthenticationData"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateAppId([BI)[B
    .registers 4
    .param p0, "token"    # [B
    .param p1, "secureMode"    # I

    .line 217
    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForApplicationId"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateFileSystemKey([BI)[B
    .registers 4
    .param p0, "syntheticPassword"    # [B
    .param p1, "secureMode"    # I

    .line 235
    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForFileSystem"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateGatekeeperPassword([BI)[B
    .registers 4
    .param p0, "syntheticPassword"    # [B
    .param p1, "secureMode"    # I

    .line 230
    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForGateKeeper"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateGkInput([BI)[B
    .registers 4
    .param p0, "token"    # [B
    .param p1, "secureMode"    # I

    .line 213
    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForUserAuthentication"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateKeystorePassword([BI)[B
    .registers 4
    .param p0, "syntheticPassword"    # [B
    .param p1, "secureMode"    # I

    .line 225
    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForKeyStore"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateSdpMasterKey([BI)[B
    .registers 4
    .param p0, "syntheticPassword"    # [B
    .param p1, "secureMode"    # I

    .line 240
    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForSdpMasterKey"

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getCredentialType(I)I
    .registers 6
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 186
    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 187
    .local v1, "intObj":Ljava/lang/Integer;
    if-eqz v1, :cond_13

    .line 190
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    .line 188
    :cond_13
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty credential type for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;-><init>(Ljava/lang/String;)V

    .end local p0    # "userId":I
    throw v2

    .line 191
    .end local v1    # "intObj":Ljava/lang/Integer;
    .restart local p0    # "userId":I
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public static getSecureMode(I)I
    .registers 6
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 157
    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 158
    .local v1, "intObj":Ljava/lang/Integer;
    if-eqz v1, :cond_13

    .line 161
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    .line 159
    :cond_13
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty secure mode for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;-><init>(Ljava/lang/String;)V

    .end local p0    # "userId":I
    throw v2

    .line 162
    .end local v1    # "intObj":Ljava/lang/Integer;
    .restart local p0    # "userId":I
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public static removeUser(I)V
    .registers 1
    .param p0, "userId"    # I

    .line 208
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deleteSecureMode(I)V

    .line 209
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deleteCredentialType(I)V

    .line 210
    return-void
.end method

.method public static validateCredentialType(I)Z
    .registers 3
    .param p0, "credType"    # I

    .line 201
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_e

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    if-eq p0, v0, :cond_e

    const/4 v1, -0x1

    if-ne p0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0
.end method
